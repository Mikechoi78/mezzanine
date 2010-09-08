
from django.conf import settings
from django.contrib.auth.models import User
from django.core.urlresolvers import reverse
from django.db import connection
from django.template import Context, Template
from django.test import TestCase

from mezzanine.blog.models import BlogPost, Comment
from mezzanine.forms.models import Form, FIELD_CHOICES
from mezzanine.pages.models import Page
from mezzanine.settings import BLOG_SLUG, CONTENT_STATUS_DRAFT, \
    CONTENT_STATUS_PUBLISHED, MOBILE_USER_AGENTS


class Tests(TestCase):
    """
    Mezzanine tests.
    """

    fixtures = ["initial_data.json"]

    def setUp(self):
        """
        Create an admin user.
        """
        self._username = "test"
        self._password = "test"
        args = self._username, "example@example.com", self._password
        self._user = User.objects.create_superuser(*args)

    def test_draft_page(self):
        """
        Test a draft page as only being viewable by a staff member.
        """
        self.client.logout()
        draft = Page.objects.create(title="Draft", status=CONTENT_STATUS_DRAFT)
        response = self.client.get(draft.get_absolute_url())
        self.assertEqual(response.status_code, 404)
        self.client.login(username=self._username, password=self._password)
        response = self.client.get(draft.get_absolute_url())
        self.assertEqual(response.status_code, 200)

    def test_overriden_page(self):
        """
        Test that a page with a slug matching a non-page urlpattern return
        True for its overriden property. The blog page from the fixtures
        should classify as this case.
        """
        self.assertTrue(Page.objects.get(slug=BLOG_SLUG).overridden())

    def test_mobile_middleware(self):
        """
        Test that an alternate template is rendered when a mobile device is
        used.
        """
        template_name = lambda t: t.name if hasattr(t, "name") else t[0].name
        default = template_name(self.client.get(reverse("home")).template)
        mobile = template_name(self.client.get(reverse("home"),
            HTTP_USER_AGENT=MOBILE_USER_AGENTS[0]).template)
        self.assertNotEqual(default, mobile)
        self.assertEqual(default, mobile.replace(".mobile", "", 1))

    def test_blog_views(self):
        """
        Basic status code test for blog views.
        """
        response = self.client.get(reverse("blog_post_list"))
        self.assertEqual(response.status_code, 200)
        blog_post = BlogPost.objects.create(title="Post", user=self._user,
            status=CONTENT_STATUS_PUBLISHED)
        response = self.client.get(blog_post.get_absolute_url())
        self.assertEqual(response.status_code, 200)

    def queries_used_for_template(self, template, **context):
        """
        Return the number of queries used when rendering a template string.
        """
        settings.DEBUG = True
        connection.queries = []
        t = Template(template)
        t.render(Context(context))
        settings.DEBUG = False
        return len(connection.queries)

    def create_recursive_objects(self, model, parent_field, **kwargs):
        """
        Create multiple levels of recursive objects.
        """
        per_level = range(3)
        for _ in per_level:
            kwargs[parent_field] = None
            level1 = model.objects.create(**kwargs)
            for _ in per_level:
                kwargs[parent_field] = level1
                level2 = model.objects.create(**kwargs)
                for _ in per_level:
                    kwargs[parent_field] = level2
                    model.objects.create(**kwargs)

    def test_comments(self):
        """
        Test that rendering the blog comments executes the same number of
        queries regardless of the number of nested replies.
        """
        blog_post = BlogPost.objects.create(title="Post", user=self._user)
        template = "{% load blog_tags %}{% blog_comments_for blog_post %}"
        before = self.queries_used_for_template(template, blog_post=blog_post)
        self.create_recursive_objects(Comment, "replied_to", name="Comment",
            blog_post=blog_post)
        after = self.queries_used_for_template(template, blog_post=blog_post)
        self.assertEquals(before, after)

    def test_page_menu(self):
        """
        Test that rendering a page menu executes the same number of queries
        regardless of the number of pages or levels of children.
        """
        template = "{% load pages_tags %}{% tree_menu %}"
        before = self.queries_used_for_template(template)
        self.create_recursive_objects(Page, "parent", title="Page",
            status=CONTENT_STATUS_PUBLISHED)
        after = self.queries_used_for_template(template)
        self.assertEquals(before, after)

    def test_search(self):
        """
        Test search.
        """
        Page.objects.all().delete()
        first = Page.objects.create(title="test page").id
        second = Page.objects.create(title="test another test page").id
        # Either word.
        results = Page.objects.search("another test")
        self.assertEqual(len(results), 2)
        # Must include first word.
        results = Page.objects.search("+another test")
        self.assertEqual(len(results), 1)
        # Mustn't include first word.
        results = Page.objects.search("-another test")
        self.assertEqual(len(results), 1)
        if results:
            self.assertEqual(results[0].id, first)
        # Exact phrase.
        results = Page.objects.search('"another test"')
        self.assertEqual(len(results), 1)
        if results:
            self.assertEqual(results[0].id, second)
        # Test ordering.
        results = Page.objects.search("test")
        self.assertEqual(len(results), 2)
        if results:
            self.assertEqual(results[0].id, second)

    def test_forms(self):
        """
        Simple 200 status check against rendering and posting to forms with
        both optional and required fields.
        """
        for required in (True, False):
            form = Form.objects.create(title="Form",
                status=CONTENT_STATUS_PUBLISHED)
            for field in FIELD_CHOICES:
                form.fields.create(label=field[0], field_type=field[0],
                    required=required, visible=True)
            response = self.client.get(form.get_absolute_url())
            self.assertEqual(response.status_code, 200)
            fields = form.fields.visible()
            data = dict([("field_%s" % f.id, "test") for f in fields])
            response = self.client.post(form.get_absolute_url(), data=data)
            self.assertEqual(response.status_code, 200)
