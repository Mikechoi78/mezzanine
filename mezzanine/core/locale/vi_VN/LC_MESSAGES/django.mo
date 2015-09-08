��    �      $  �   ,      �
  �  �
  I   �  e   �  �  \        �  !    �  4   �  f   �  6   \     �     �     �     �  +   �     �     �     �     �  5     @   8  	   y     �  D   �  �   �  g   �    �  R     g   g     �     �  
   �     �  
   �  
   �  
                  2     5  6   I     �     �  W   �  W   �  �   :  a   �  ~   O  3   �  �      
   �   Y   �      �   :   �   P   /!  J   �!  R   �!  9   "     X"     _"  &   g"  z   �"  6   	#     @#     Q#     _#  	   v#     �#  m  �%  
   �&  G   �&     B'  D   ^'     �'     �'     �'  9   �'  3   (  b   F(     �(     �(     �(  	   �(     �(  
   �(  	   �(     �(     )     )     ))     .)     5)     D)  �  \)  �   �*  5   �+     	,     ,  
   ,     ),     9,     J,  C   P,     �,     �,     �,     �,  &   �,     �,  5   �,     3-  t   9-     �-  �   �-  '   @.     h.     {.     �.     �.  	   �.  B   �.  5   �.  5   "/  <   X/     �/     �/     �/  	   �/  w  �/    21  ]   K5  �   �5  �  66  B  �:  �  <    �=  P   �?  �   &@  ;   �@     �@     �@     A     A  <   %A  
   bA     mA     sA  
   A  9   �A  F   �A     B     "B  W   +B  �   �B  �   JC  \  �C  f   0E  �   �E     F     *F  	   0F     :F     @F     LF     ]F     oF     �F     �F     �F  6   �F     �F     �F  h   �F  l   YG  �   �G  m   �H  �   I  P   �I  �   �I     �J  ~   �J  
   K  :   K  U   TK  G   �K  M   �K  P   @L     �L     �L  +   �L  �   �L  ?   kM     �M     �M     �M     �M  �  N  �  �P     �R  C   �R     �R  @   S     XS     pS     }S  R   �S  P   �S  �   4T  
   �T     �T     �T     �T     �T     U     U     (U     =U     XU     nU     sU     U  )   �U  �  �U  �   mW  >   IX     �X     �X     �X     �X     �X  	   �X  W   �X  &   FY     mY     {Y     �Y  /   �Y     �Y  S   �Y     *Z  �   6Z     �Z  �   �Z  3   �[     �[     �[     �[     \     \  f   \  R   �\  R   �\  5   )]     _]     c]     ~]     �]     ]      t          P   U   _      �       }       a           )   w   L   O   q   3           y   0      '   [       V          +   B   (       .                     h   /           Q   T   @   8   N   S   {   p   c   \          *   "   v       z   W      Y   ^          s   n      M                        7   X   1   ~       :   e   I           
   4   g       K      J       <   D   |   -   o   k       ,          A           F           i   ?          m   E                  d   f   Z   2            �       `   $   !         r      #      u      j   l   R   9   b   ;   H   C           x   6          	   &   =             G                   5   %   >    
<h2>Congratulations!</h2>
<p>
    Welcome to your new Mezzanine powered website.
    Here are some quick links to get you started:
</p>
<ul>
    <li><a href="/admin/">Log in to the admin interface</a></li>
    <li><a href="http://mezzanine.jupo.org/docs/content-architecture.html">Creating custom page types</a></li>
    <li><a href="http://mezzanine.jupo.org/docs/frequently-asked-questions.html#templates">Modifying HTML templates</a></li>
    <li><a href="http://mezzanine.jupo.org/docs/frequently-asked-questions.html#why-isn-t-the-homepage-a-page-object-i-can-edit-via-the-admin">Changing this homepage</a></li>
    <li><a href="http://mezzanine.jupo.org/docs/frequently-asked-questions.html">Other frequently asked questions</a></li>
    <li><a href="http://mezzanine.jupo.org/docs/configuration.html#default-settings">Full list of settings</a></li>
    <li><a href="http://mezzanine.jupo.org/docs/deployment.html">Deploying to a production server</a></li>
</ul>
 
No results were found in %(search_type)s matching your query: %(query)s
 
Showing %(start)s to %(end)s of %(total)s results in %(search_type)s matching your query: %(query)s
 *Do not change this setting unless you know what you're doing.*

When content is saved in a Rich Text (WYSIWYG) field, unsafe HTML tags and attributes are stripped from the content to protect against staff members intentionally adding code that could be used to cause problems, such as changing their account to a super-user with full access to the system.

This setting allows you to change the level of filtering that occurs. Setting it to low will allow certain extra tags to be permitted, such as those required for embedding video. While these tags are not the main candidates for users adding malicious code, they are still considered dangerous and could potentially be mis-used by a particularly technical user, and so are filtered out when the filtering level is set to high.

Setting the filtering level to no filtering, will disable all filtering, and allow any code to be entered by staff members, including script tags. A URL prefix for mounting all of Mezzanine's urlpatterns under. When using this, you'll also need to manually apply it to your project's root ``urls.py`` module. The root ``urls.py`` module provided by Mezzanine's ``mezzanine-project`` command contains an example of this towards its end. A sequence mapping host names to themes, allowing different templates to be served per HTTP hosts Each item in the sequence is a two item sequence, containing a host such as ``othersite.example.com``, and the name of an importable Python package for the theme. If the host is matched for a request, the templates directory inside the theme package will be first searched when loading templates. A sequence of fields that will be injected into Mezzanine's (or any library's) models. Each item in the sequence is a four item sequence. The first two items are the dotted path to the model and its field name to be added, and the dotted path to the field class to use for the field. The third and fourth items are a sequence of positional args and a dictionary of keyword args, to use when creating the field instance. When specifying the field class, the path ``django.models.db.`` can be omitted for regular Django model fields. A tag line that will appear at the top of all pages. A three item sequence, each containing a sequence of template tags used to render the admin dashboard. Access token for http://bit.ly URL shortening service. Add Add another Admin Akismet API Key An open source content management platform. Author Cancel Change Content Controls the ordering and grouping of the admin menu. Could not import the value of settings.RICHTEXT_WIDGET_CLASS: %s Dashboard Description Device specific template sub-directory to use as the default device. Dict mapping file field names in the format ``app_label.model_name.field_name`` to the Python dotted path to function names that will be used for the file field's ``upload_to`` argument. Directory name to store thumbnails in, that will be created relative to the original image's directory. Dotted Python path to the callable for converting strings into URL slugs. Defaults to ``mezzanine.utils.urls.slugify_unicode`` which allows for non-ascii URLS. Change to ``django.template.defaultfilters.slugify`` to use Django's slugify function, or something of your own if required. Dotted package path and class name of the widget to use for the ``RichTextField``. Dotted path to the function to call on a ``RichTextField`` value before it is rendered to the template. Draft Edit Enable SSL Error Everything Expires on Force Host Forgot password? Generate description Go Google Analytics ID Google Analytics ID (http://www.google.com/analytics/) High Home Host name that the site should always be accessed via that matches the SSL certificate. If ``True``, each site will use its own directory within the filebrowser media library. If ``True``, only URLs specified by the ``SSL_FORCE_URL_PREFIXES`` setting will be accessible over SSL, and all other URLs will be redirected back to HTTP if accessed over HTTPS. If ``True``, the south application will be automatically added to the ``INSTALLED_APPS`` setting. If ``True``, users will be automatically redirected to HTTPS for the URLs specified by the ``SSL_FORCE_URL_PREFIXES`` setting. If ``True``, website forms will use HTML5 features. If checked, the description will be automatically generated from content. Uncheck if you want to manually set a custom description. Interface: Key for http://akismet.com spam filtering service. Used for filtering comments and forms. Keywords Leave blank to have the URL auto-generated from the title. List of HTML attributes that won't be stripped from ``RichTextField`` instances. List of HTML tags that won't be stripped from ``RichTextField`` instances. List of inline CSS styles that won't be stripped from ``RichTextField`` instances. List of words which will be stripped from search queries. Log in Log out Low (allows video, iframe, Flash, etc) Mapping of device specific template sub-directory names to the sequence of strings that may be found in their user agents. Max number of paging links to display when paginating. Max paging links Media Library Media library per site Meta data Mezzanine's caching uses a technique know as mint caching. This is where the requested expiry for a cache entry is stored with the cache entry in cache, and the real expiry used has the ``CACHE_SET_DELAY`` added to it. Then on a cache get, the store expiry is checked, and if it has past, the cache entry is set again, and no entry is returned. This tries to ensure that cache misses never occur, and if many clients were to get a cache miss at once, only one would actually need to re-generated the cache entry. Models that subclass ``Ownable`` and use the ``OwnableAdmin`` have their admin change-list records filtered down to records owned by the current user. This setting contains a sequence of models in the format ``app_label.object_name``, that when subclassing ``Ownable``, will still show all records in the admin change-list interface, regardless of the current user. My Actions Name of the jQuery UI file found in mezzanine/core/static/mezzanine/js/ Name of the jQuery UI file. Name of the jQuery file found in mezzanine/core/static/mezzanine/js/ Name of the jQuery file. No filtering None available Number of different sizes for tags when shown as a cloud. Number of results shown in the search results page. Optional title to be used in the HTML title tag. If left blank, the main title field will be used. Order Page Page not found Password: Permission denied Powered by Published Published from Recent Actions Rich Text filter level Save Search Search Results Search results per page Sequence of dotted Python paths to callable functions used for checking posted content (such as forms or comments) is spam. Each function should accept three arguments: the request object, the form object, and the URL that was posted from. Defaults to ``mezzanine.utils.views.is_spam_akismet`` which will use the http://akismet.com spam filtering service when the ``AKISMET_API_KEY`` setting is configured. Sequence of models that will be provided by default as choices in the search form. Each model should be in the format ``app_label.model_name``. Only models that subclass ``mezzanine.core.models.Displayable`` should be used. Sequence of setting names available within templates. Show in sitemap Site Site Title Site permission Site permissions Sites Size of thumbnail previews for image fields in the admin interface. Sorry, an error occurred. Status Tag Cloud Sizes Tagline The page you requested does not exist. Theme by This field is required if status is set to published. Title Title that will display at the top of the site, and be appended to the content of the HTML title tags on every page. URL URL for the JavaScript file (relative to ``STATIC_URL``) that handles configuring TinyMCE when the default ``RICHTEXT_WIDGET_CLASS`` is used. Unregister these models from the admin. Username or email: Users View Mobile Site View on site View site With Draft chosen, will only be shown for admin users on the site. With Published chosen, won't be shown after this time With Published chosen, won't be shown until this time You don't have permission to access the admin for this site. and bit.ly access token of read more Project-Id-Version: Mezzanine
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2013-10-05 07:20-0430
PO-Revision-Date: 2015-09-08 10:27+0700
Last-Translator: Ha Pham <me@zniper.net>
Language-Team: Vietnamese <>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: vi
Plural-Forms: nplurals=1; plural=0;
X-Generator: Gtranslator 2.91.6
 
<h2>Chúc mừng!</h2>
<p>
Chào mừng bạn đến với website được phát triển trên nền Mezzanine.
Dưới đây là một số liên kết nhanh bạn có thể bắt đầu:
</p>
<ul>
    <li><a href="/admin/">Đăng nhập vào trang quản trị</a></li>
    <li><a href="http://mezzanine.jupo.org/docs/content-architecture.html">Tạo các trang tùy biến </a></li>
    <li><a href="http://mezzanine.jupo.org/docs/frequently-asked-questions.html#templates">Sửa đổi template HTML</a></li>
    <li><a href="http://mezzanine.jupo.org/docs/frequently-asked-questions.html#why-isn-t-the-homepage-a-page-object-i-can-edit-via-the-admin">Thay đổi trang chủ</a></li>
    <li><a href="http://mezzanine.jupo.org/docs/frequently-asked-questions.html">Các câu hỏi thường gặp</a></li>
    <li><a href="http://mezzanine.jupo.org/docs/configuration.html#default-settings">Đầy dủ danh sách tùy chỉnh</a></li>
    <li><a href="http://mezzanine.jupo.org/docs/deployment.html">Triển khai lên server</a></li>
</ul>
 
Không tìm thấy kết quả trong %(search_type)s phù hợp với truy vấn: %(query)s
 
Hiển thị %(start)s đến %(end)s của %(total)s kết quả trong %(search_type)s phù hợp với truy vấn của bạn: %(query)s
 *Không thay đổi thiết lập này trừ khi bạn biết mình đang làm gì.*

Khi nội dung được lưu trong trường Rich Text (WYSIWYG), các thẻ HTML không an toàn và thuộc tính được lược bỏ khỏi nội dung để tránh việc người dùng  trong hệ thống cố tình đưa các đoạn mã gây hại vào chẳng hạn như thay đổi tài khoản của người dùng thành quản trị để toàn quyền truy xuất vào hệ thống.

Thiết lập này cho phép bạn thay đổi cấp độ lọc. Điều này cho phép các thẻ mở rộng được phép sử dụng, ví dụ thẻ để nhúng video, mp3. Mặc dùng những thẻ này không thuộc nhóm các thẻ để người dùng thêm các đoạn mã gây gạy, chúng vẫn được coi là nguy hiểm và có thể gây ra các lỗi kĩ thuật khác, vì vậy chúng được sẽ bị lọc bỏ khi cấp độ lọc được thiết lập ở mức cao nhất.

Thiết lập cấp độ lọc thành không lọc sẽ tắt chế độ lọc và cho phép người dùng thêm vào các đoạn mã bất kì, bao gồm cả các thẻ script. Một tiền tố URL dùng để  gọi các urlpatterns của Mezzanine. Khi dùng tính năng này, bạn sẽ phải khai báo vào trong module ``urls.py`` nằm trong thư mục gốc của dự án. Module gốc ``urls.py`` tạo bởi lệnh ``mezzanine-project`` chứa sẵn các ví dụ để bạn tham khảo Một chuỗi ánh xạ các tên host và themes, cho phép các template khác nhau được sử dụng cho các host HTTP. Mỗi phẩn tử trong chuỗi là một chuỗi hai phần tử, chứa một host như ``othersite.example.com``, và tên của một package sử dụng được cho theme. Nếu host phù hợp với yêu cầu, thư mục các template trong gói theme sẽ được tìm trước tiên khi nạp các templates. Danh sách các trường được chèn vào model của Mezzanine (hoặc thư viện khác). Mỗi thành phần trong danh sách gồm 1 chuỗi 4 thành phần theo thứ tự: Đường dẫn đến model và tên trường muốn thêm vào; Đường dẫn đến Class trường; Danh sách các đối số theo tứ tự; Từ điển các đối số kí tự để dùng khi tạo trường. Khi khai báo Class, có thể bỏ qua khai báo ``django.models.db.`` nếu dùng các trường của Django. Một dòng tag xuất hiện ở phía trên cùng của tất cả các trang. Một chuỗi gồm ba mục, mỗi mục có chứa chuỗi các template tag được sử dụng để sinh bảng điều khiển quản trị. Mã xác thực cho dịch vụ thu gọn URL http://bit.ly Thêm Thêm nữa Quản trị Mã Akismet API Một nền tảng quản trị nội dung mã nguồn mở. Tác giả Hủy Thay đổi Nội dung Quản lý sắp xếp và phân nhóm menu quản trị. Không thể lấy giá trị của settings.RICHTEXT_WIDGET_CLASS: %s Bảng điều khiển Mô tả Thư mục template cho thiết bị để sử dụng như thiết bị mặc định. Dict khớp với các trường theo mẫu ``app_label.model_name.field_name`` đến đường dẫn đến các tên hàm sẽ được sử dung cho tham sỗ ``upload_to`` của trường file. Tên thư mục để lưu trữ các ảnh nhỏ trong đó, sẽ được tạo ra tương đối đến thư mục hình ảnh gốc. Đường dẫn Python đến một khả thi để chuyển các chuỗi thành URL slugs. Mặc định là ``mezzanine.utils.urls.slugify_unicode`` nó chấp nhận các URLS không phải ascii. Đổi thành ``django.template.defaultfilters.slugify`` để sử dụng hàm slugify của Django, hoặc hàm nào đó của bạn nếu cần. Đường dẫn đến package và tên class của widget được sử dụng cho ``RichTextField``. Đường dẫn tới hàm để gọi với giá trị của ``RichTextField`` trước khi nó được thể hiện trên template. Bản nháp Sửa Bật SSL Lỗi Mọi thứ Hết hạn vào Host bắt buộc Quên mật khẩu? Sinh mô tả Đi Google Analytics ID Google Analytics ID (http://www.google.com/analytics/) Cao Trang chủ Tên host mà trang web luôn luôn được truy cập qua phải khớp với trong chứng chỉ SSL. Nếu ``Đúng``, mỗi site sẽ sử dụng thư mục riêng trong trình duyệt file thư viện media  Nếu ``Đúng``, chỉ có các URL trong ``SSL_FORCE_URL_PREFIXES`` là có thể được tiếp cận qua SSL, và tất cả các URL khác sẽ được điều hướng trở lại HTTP nếu tiếp cận qua HTTPS. Nếu ``Đúng``, ứng dụng south sẽ được tự động thêm vào ``INSTALLED_APPS`` trong settings. Nếu ``Đúng``, người dùng sẽ được điều hướng tự động đến HTTPS đối với các URL trong ``SSL_FORCE_URL_PREFIXES``. Nếu ``Đúng``, các form trong site sẽ sử dụng tính năng của HTML5. Nếu chọn, phần mô tả sẽ được sinh tự động từ nội dung. Không chọn nếu bạn muốn tự mình viết mô tả. Giao diện: Mã của dịch vụ lọc thư rác http://akismet.com. Được sử dụng để lọc bình luận và các biểu mẫu. Từ khóa Để trống để có URL tự sinh ra từ tiêu đề. Danh sách các thuộc tính thẻ HTML không bị loại khỏi ``RichTextField``. Danh sách các thẻ HTML không bị loại khỏi ``RichTextField``. Danh sách các inline CSS style không bị loại khỏi ``RichTextField``. Danh sách các từ mà sẽ bị loại bỏ từ các truy vấn tìm kiếm. Đăng nhập Thoát Thấp (cho phép video, iframe, Flash, vv) Ánh xạ tên thư mục con các thiết bị mẫu cụ thể cho thứ tự của chuỗi mà có thể được tìm thấy trong các user agents. Số liên kết trang tối đa xuất hiện khi phân trang. Liên kết trang tối đa Thư viện Media Thư viện media cho từ site Dữ liệu bổ sung Dữ liệu đệm của Mezzanine sử dụng một kĩ thuật gọi là mint caching. Đây là nơi yêu cầu hết hạn đối với một mẩu đệm được lưu trữ với mẩu đệm trong dữ liệu đệm, và sự hết hạn thật được dùng với ``CACHE_SET_DELAY``. Như vậy khi dữ liệu đệm được lấy, hạn lưu trữ được kiểm tra, và nếu nó đã qua, mẩu đệm được đặt lại, không có thông tin nào được trả về. Điều này cố gắng đảm bảo những lần trượt đệm không xảy ra, và nếu nhiều client có thể gặp trượt đệm tại một thời điểm, chỉ có một thực sự cần sinh lại mẩu đệm. Các model thừa kế ``Ownable`` và sử dụng ``OwnableAdmin`` có các bản ghi thay đổi trong phần quản trị được lọc thành các bản ghi của người dùng hiện thời. Thiết lập này chứa một chuỗi các models theo dạng ``app_label.object_name``, mà khi thừa kế ``Ownable``, sẽ vẫn hiển thị mọi bản ghi trong danh sách thay đổi, không phụ thuộc vào người dùng hiện thời. Hoạt động của tôi Tên của file jQuery UI trong mezzanine/core/static/mezzanine/js/ Tên của file jQuery UI. Tên của file jQuery trong mezzanine/core/static/mezzanine/js/ Tên của file jQuery. Không lọc Không sẵn sàng Số kích cỡ khác nhau cho các tags khi hiển thị như cloud (đám mây). Số kết quả được hiển thị trong các trang kết quả tìm kiếm. Tiêu đề tùy chọn để sử dụng trong thẻ HTML title. Nếu để trống, tiêu đề chính sẽ được sử dụng. Thứ tự Trang Không tìm thấy trang Mật khẩu: Không được phép Hỗ trợ bởi Đã công bố Đã công bố vào Hoạt động gần đây Mức lọc Rich Text Lưu Tìm kiếm Kết quả tìm kiếm Kết quả tìm kiếm trên mỗi trang Một dãy các đường dẫn Python đến các hàm khả thi được sử dụng để đưa nội dung (như các form hay bình luận) là nội dung rác. Mỗi hàm nên nhận 3 tham số: đối tượng request, đối tượng form, và URL dùng để post. Mặc định là ``mezzanine.utils.views.is_spam_akismet`` nó sẽ dùng dịch vụ http://akismet.com khi ``AKISMET_API_KEY`` được thiết lập. Danh sách các model được mặc định cung cấp trong form tìm kiếm. Mỗi model nên theo định dạng ``app_label.model_name``. Chỉ nên dùng model kế thừa từ `mezzanine.core.models.Displayable`. Chuỗi các thiết lập tên có sẵn trong các template. Hiển thị trong sitemap Site Tiêu đề Site Quyền hạn site Các quyền hạn Site Các site Kích thước thu nhỏ cho các trường hình ảnh trong giao diện quản trị. Rất tiếc, đã có lỗi xảy ra. Trạng thái Độ lớn Tag Cloud Tagline Trang bạn đã yêu cầu không tồn tại. Giao d bởi Trường này là bắt buộc nếu trạng thái được đặt là công bố. Tiêu đề Tiêu đề được hiển thị ở phía trên cùng của trang web, và được thêm vào nội dung của các thẻ HTML title trên mỗi trang. URL URL của file JavaScript (đường dẫn tương đối của ``STATIC_URL``) chứa cấu hình TinyMCE khi giá trị mặc định ``RICHTEXT_WIDGET_CLASS`` được sử dụng. Gỡ những model này khỏi phần quản trị. Tên truy cập hoặc email: Các người dùng Xem Bản Mobile Xem trên site Xem site Với Bản Nháp được chọn, chỉ xuất hiện đối với những người quản trị site Với Đã Công Bố được chọn, chỉ xuất hiện sau thời điểm này Với Đã Công Bố được chọn, chỉ xuất hiện sau thời điểm này Bạn không có quyền quản trị của site này và Mã xác thực cho bit.ly của đọc thêm 