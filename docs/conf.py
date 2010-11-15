from __future__ import with_statement
# -*- coding: utf-8 -*-
#
# Mezzanine documentation build configuration file, created by
# sphinx-quickstart on Wed Mar 10 07:20:42 2010.
#
# This file is execfile()d with the current directory set to its containing dir.
#
# Note that not all possible configuration values are present in this
# autogenerated file.
#
# All configuration values have a default; values that are commented out
# serve to show the default.

import sys
import os
docs_path = os.path.abspath(os.path.dirname(__file__))
mezzanine_path = os.path.join(docs_path, "..")
sys.path.insert(0, mezzanine_path)
os.environ["DJANGO_SETTINGS_MODULE"] = "mezzanine.project_template.settings"
import mezzanine

# Generate the documentation for mezzanine.conf
from mezzanine.conf import registry

settings_docs = [".. THIS DOCUMENT IS AUTO GENERATED VIA conf.py"]
for name in sorted(registry.keys()):
    setting = registry[name]
    settings_name = "``%s``" % name
    setting_default = setting["default"]
    if isinstance(setting_default, basestring) and \
        setting_default.startswith("/") and \
        os.path.exists(setting_default):
        setting_default = "[dynamic]"
    else:
        setting_default = repr(setting_default)
    settings_docs.extend(["", settings_name, "-" * len(settings_name)])
    settings_docs.extend(["", setting["description"]])
    settings_docs.extend(["", "Default: ``%s``" % setting_default])
with open(os.path.join(docs_path, "settings.rst"), "w") as f:
    f.write("\n".join(settings_docs))
    

# Generate the CHANGELOG file.
repo = None
try:
    from mercurial import ui, hg, error
except ImportError:
    pass
else:
    try:
        repo = hg.repository(ui.ui(), mezzanine_path)
    except error.RepoError:
        pass
if repo is not None:
    
    from datetime import datetime
    from django.utils.datastructures import SortedDict

    version_file = "mezzanine/__init__.py"
    version_var = "__version__"
    changelog_filename = "CHANGELOG"
    changelog_file = os.path.join(mezzanine_path, changelog_filename)
    versions = SortedDict()

    for changeset in reversed(list(repo.changelog)):
        # Check if the file with the version number is in this changeset and if
        # it is, pull it out and assign it as a variable.
        context = repo.changectx(changeset)
        files = context.files()
        new_version = False
        if version_file in files:
            for line in context[version_file].data().split("\n"):
                if line.startswith(version_var):
                    exec line
                    version_info = {"changes": [], "date":
                        datetime.fromtimestamp(context.date()[0])
                                                        .strftime("%b %d, %Y")}
                    versions[globals()[version_var]] = version_info
                    new_version = len(files) == 1
        # Ignore changesets that are merges, bumped the version, closed a branch
        # or regenerated the changelog itself.
        merge = len(context.parents()) > 1
        branch_closed = len(files) == 0
        changelog_update = changelog_filename in files and len(files) == 1
        if merge or new_version or branch_closed or changelog_update:
            continue
        # Ensure we have a current version and if so, add this changeset's
        # description to it.
        try:
            version = globals()[version_var]
        except KeyError:
            continue
        else:
            description = context.description().rstrip(".").replace("\n", "")
            user = context.user().split("<")[0].strip()
            entry = "%s - %s" % (description, user)
            if entry not in versions[version]["changes"]:
                versions[version]["changes"].insert(0, entry)

    # Write out the changelog.
    with open(changelog_file, "w") as f:
        for version, version_info in versions.items():
            version_header = "Version %s (%s)" % (version, version_info["date"])
            f.write("%s\n" % version_header)
            f.write("%s\n" % ("-" * len(version_header)))
            f.write("\n")
            if version_info["changes"]:
                for change in version_info["changes"]:
                    f.write("  * %s\n" % change)
            else:
                f.write("  * No changes listed.\n")
            f.write("\n")

# If extensions (or modules to document with autodoc) are in another directory,
# add these directories to sys.path here. If the directory is relative to the
# documentation root, use os.path.abspath to make it absolute, like shown here.
#sys.path.append(os.path.abspath('.'))

# -- General configuration -----------------------------------------------------

# Add any Sphinx extension module names here, as strings. They can be extensions
# coming with Sphinx (named 'sphinx.ext.*') or your custom ones.
extensions = ["sphinx.ext.autodoc"]

# Add any paths that contain templates here, relative to this directory.
templates_path = ['_templates']

# The suffix of source filenames.
source_suffix = '.rst'

# The encoding of source files.
#source_encoding = 'utf-8'

# The master toctree document.
master_doc = 'index'

# General information about the project.
project = u'Mezzanine'
copyright = u'2010, Stephen McDonald'

# The version info for the project you're documenting, acts as replacement for
# |version| and |release|, also used in various other places throughout the
# built documents.
#
# The short X.Y version.
version = mezzanine.__version__
# The full version, including alpha/beta/rc tags.
release = mezzanine.__version__

# The language for content autogenerated by Sphinx. Refer to documentation
# for a list of supported languages.
#language = None

# There are two options for replacing |today|: either, you set today to some
# non-false value, then it is used:
#today = ''
# Else, today_fmt is used as the format for a strftime call.
#today_fmt = '%B %d, %Y'

# List of documents that shouldn't be included in the build.
#unused_docs = []

# List of directories, relative to source directory, that shouldn't be searched
# for source files.
exclude_trees = ['_build']

# The reST default role (used for this markup: `text`) to use for all documents.
#default_role = None

# If true, '()' will be appended to :func: etc. cross-reference text.
#add_function_parentheses = True

# If true, the current module name will be prepended to all description
# unit titles (such as .. function::).
#add_module_names = True

# If true, sectionauthor and moduleauthor directives will be shown in the
# output. They are ignored by default.
#show_authors = False

# The name of the Pygments (syntax highlighting) style to use.
pygments_style = 'sphinx'

# A list of ignored prefixes for module index sorting.
#modindex_common_prefix = []


# -- Options for HTML output ---------------------------------------------------

# The theme to use for HTML and HTML Help pages.  Major themes that come with
# Sphinx are currently 'default' and 'sphinxdoc'.
#html_theme = 'default'

# Theme options are theme-specific and customize the look and feel of a theme
# further.  For a list of options available for each theme, see the
# documentation.
#html_theme_options = {}

# Add any paths that contain custom themes here, relative to this directory.
#html_theme_path = []

# The name for this set of Sphinx documents.  If None, it defaults to
# "<project> v<release> documentation".
#html_title = None

# A shorter title for the navigation bar.  Default is the same as html_title.
#html_short_title = None

# The name of an image file (relative to this directory) to place at the top
# of the sidebar.
#html_logo = None

# The name of an image file (within the static path) to use as favicon of the
# docs.  This file should be a Windows icon file (.ico) being 16x16 or 32x32
# pixels large.
#html_favicon = None

# Add any paths that contain custom static files (such as style sheets) here,
# relative to this directory. They are copied after the builtin static files,
# so a file named "default.css" will overwrite the builtin "default.css".
html_static_path = ['_static']

# If not '', a 'Last updated on:' timestamp is inserted at every page bottom,
# using the given strftime format.
#html_last_updated_fmt = '%b %d, %Y'

# If true, SmartyPants will be used to convert quotes and dashes to
# typographically correct entities.
#html_use_smartypants = True

# Custom sidebar templates, maps document names to template names.
#html_sidebars = {}

# Additional templates that should be rendered to pages, maps page names to
# template names.
#html_additional_pages = {}

# If false, no module index is generated.
#html_use_modindex = True

# If false, no index is generated.
#html_use_index = True

# If true, the index is split into individual pages for each letter.
#html_split_index = False

# If true, links to the reST sources are added to the pages.
#html_show_sourcelink = True

# If true, an OpenSearch description file will be output, and all pages will
# contain a <link> tag referring to it.  The value of this option must be the
# base URL from which the finished HTML is served.
#html_use_opensearch = ''

# If nonempty, this is the file name suffix for HTML files (e.g. ".xhtml").
#html_file_suffix = ''

# Output file base name for HTML help builder.
htmlhelp_basename = 'Mezzaninedoc'


# -- Options for LaTeX output --------------------------------------------------

# The paper size ('letter' or 'a4').
#latex_paper_size = 'letter'

# The font size ('10pt', '11pt' or '12pt').
#latex_font_size = '10pt'

# Grouping the document tree into LaTeX files. List of tuples
# (source start file, target name, title, author, documentclass [howto/manual]).
latex_documents = [
  ('index', 'Mezzanine.tex', u'Mezzanine Documentation',
   u'Stephen McDonald', 'manual'),
]

# The name of an image file (relative to this directory) to place at the top of
# the title page.
#latex_logo = None

# For "manual" documents, if this is true, then toplevel headings are parts,
# not chapters.
#latex_use_parts = False

# Additional stuff for the LaTeX preamble.
#latex_preamble = ''

# Documents to append as an appendix to all manuals.
#latex_appendices = []

# If false, no module index is generated.
#latex_use_modindex = True


html_theme_path = ["."]
html_theme = "mezzanine_theme"
