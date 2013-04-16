��    k      t  �   �       	     !	  �  B
    �  4   �  f        }     �     �     �  +   �     �     �     �     �  5   �  @   "  	   c     m  D   y  g   �    &  R   C  g   �     �       
   	       
     
   %     0     A     V  6   j     �     �  W   �  �     a   �  ~     3   �  �   �  
   O  Y   Z     �  :   �  P   �  J   I  R   �  9   �     !     (  &   0  z   W  6   �     	       	   (  
   2  D   =     �     �     �  9   �  3   �  b   %     �     �     �  	   �     �  
   �  	   �     �     �     �                    #  5   ;     q  
   v  C   �     �     �     �     �  &   �     %  5   .     d  t   j     �  �   �  '   q     �     �     �     �  	   �  B   �  5     5   S     �     �  	   �  �  �  )  T  �  ~     "  0   4$  g   e$     �$     �$     �$     �$  0   %  	   5%     ?%     F%     L%  ;   T%  @   �%     �%     �%  Z   �%  ]   A&  :  �&  V   �'  h   1(     �(     �(     �(     �(     �(     �(     �(     �(     �(  6   )     ;)     @)  g   E)  �   �)  [   g*  y   �*  A   =+  }   +     �+  i   
,  
   t,  ]   ,  I   �,  I   '-  I   q-  ,   �-     �-     �-  (   �-  O   ".  5   r.     �.     �.     �.     �.  E   �.     2/     F/     W/  @   j/  &   �/  ^   �/     10     =0     B0     T0     ]0  	   s0  	   }0     �0     �0     �0     �0     �0     �0     �0  7   �0     '1  
   ,1  I   71      �1     �1     �1  	   �1  %   �1     �1  6   �1     52  ^   <2     �2  �   �2  $   33     X3     p3     x3     �3     �3  6   �3  5   �3  (   4     94     <4     ?4     M                  L      B   )       H                 ,      5   Q   '   !   =      :                  b   R   P      T   6           f          .       O         W         %   /       <              $       d          a   #   e   g      "   +          ]   ?   >       \   
   `   [          U   Z      C           V   _   S   D   I   j   4   N   k           c       @   8      K       &           3   i           h              ^   2               Y       	   7   E             0   (       J   9   -           A      *         F   ;          X   G       1       A URL prefix for mounting all of Mezzanine's urlpatterns under. When using this, you'll also need to manually apply it to your project's root ``urls.py`` module. The root ``urls.py`` module provided by Mezzanine's ``mezzanine-project`` command contains an example of this towards its end. A sequence mapping host names to themes, allowing different templates to be served per HTTP hosts Each item in the sequence is a two item sequence, containing a host such as ``othersite.example.com``, and the name of an importable Python package for the theme. If the host is matched for a request, the templates directory inside the theme package will be first searched when loading templates. A sequence of fields that will be injected into Mezzanine's (or any library's) models. Each item in the sequence is a four item sequence. The first two items are the dotted path to the model and its field name to be added, and the dotted path to the field class to use for the field. The third and fourth items are a sequence of positional args and a dictionary of keyword args, to use when creating the field instance. When specifying the field class, the path ``django.models.db.`` can be omitted for regular Django model fields. A tag line that will appear at the top of all pages. A three item sequence, each containing a sequence of template tags used to render the admin dashboard. Add Add another Admin Akismet API Key An open source content management platform. Author Cancel Change Content Controls the ordering and grouping of the admin menu. Could not import the value of settings.RICHTEXT_WIDGET_CLASS: %s Dashboard Description Device specific template sub-directory to use as the default device. Directory name to store thumbnails in, that will be created relative to the original image's directory. Dotted Python path to the callable for converting strings into URL slugs. Defaults to ``mezzanine.utils.urls.slugify_unicode`` which allows for non-ascii URLS. Change to ``django.template.defaultfilters.slugify`` to use Django's slugify function, or something of your own if required. Dotted package path and class name of the widget to use for the ``RichTextField``. Dotted path to the function to call on a ``RichTextField`` value before it is rendered to the template. Draft Edit Enable SSL Error Expires on Force Host Forgot password? Generate description Google Analytics ID Google Analytics ID (http://www.google.com/analytics/) High Home Host name that the site should always be accessed via that matches the SSL certificate. If ``True``, only URLs specified by the ``SSL_FORCE_URL_PREFIXES`` setting will be accessible over SSL, and all other URLs will be redirected back to HTTP if accessed over HTTPS. If ``True``, the south application will be automatically added to the ``INSTALLED_APPS`` setting. If ``True``, users will be automatically redirected to HTTPS for the URLs specified by the ``SSL_FORCE_URL_PREFIXES`` setting. If ``True``, website forms will use HTML5 features. If checked, the description will be automatically generated from content. Uncheck if you want to manually set a custom description. Interface: Key for http://akismet.com spam filtering service. Used for filtering comments and forms. Keywords Leave blank to have the URL auto-generated from the title. List of HTML attributes that won't be stripped from ``RichTextField`` instances. List of HTML tags that won't be stripped from ``RichTextField`` instances. List of inline CSS styles that won't be stripped from ``RichTextField`` instances. List of words which will be stripped from search queries. Log in Log out Low (allows video, iframe, Flash, etc) Mapping of device specific template sub-directory names to the sequence of strings that may be found in their user agents. Max number of paging links to display when paginating. Max paging links Media Library Meta data My Actions Name of the jQuery file found in mezzanine/core/static/mezzanine/js/ Name of the jQuery file. No filtering None available Number of different sizes for tags when shown as a cloud. Number of results shown in the search results page. Optional title to be used in the HTML title tag. If left blank, the main title field will be used. Order Page Page not found Password: Permission denied Powered by Published Published from Recent Actions Rich Text filter level Save Search Search Results Search results per page Sequence of setting names available within templates. Site Site Title Size of thumbnail previews for image fields in the admin interface. Sorry, an error occurred. Status Tag Cloud Sizes Tagline The page you requested does not exist. Theme by This field is required if status is set to published. Title Title that will display at the top of the site, and be appended to the content of the HTML title tags on every page. URL URL for the JavaScript file (relative to ``STATIC_URL``) that handles configuring TinyMCE when the default ``RICHTEXT_WIDGET_CLASS`` is used. Unregister these models from the admin. Username or email: Users View Mobile Site View on site View site With Draft chosen, will only be shown for admin users on the site. With Published chosen, won't be shown after this time With Published chosen, won't be shown until this time and of read more Project-Id-Version: Mezzanine
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2013-04-07 10:41-0430
PO-Revision-Date: 2013-03-30 11:59+0000
Last-Translator: Sebastián Ramírez Magrí <sebasmagri@gmail.com>
Language-Team: Norwegian Bokmål (http://www.transifex.com/projects/p/mezzanine/language/nb/)
Language: nb
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
 Et URL prefiks brukt foran alle Mezzanines URLmønster. Når dette blir brukt, må du også manuelt inkludere prefikset i ditt prosjekts ``urls.py`` modul. Basisversjonen av ``urls.py`` som kommer med Mezzanines ``mezzanine-project`` kommando inneholder et eksempel på dette mot slutten av filen. En sekvens som kobler tjenernavn til temaer, slik at forskjellige malfiler kan sendes til forskjellige HTTP-tjenere. Hvert element i sekvensen er en liste på to elementer, som inneholder tjener, som f.eks ``annenside.example.com``, og navnet på en importerbar Pythonpakke for temaet. Hvis en tjener treffer på en forespørsel vil malmappen inni denne temapakken være det første stedet det søkes etter filer. Felter som blir koblet opp mot Mezzanine (eller andre bibliotekers) datamodeller. Hver oppføring er en liste med fire oppføringer. De to første er datamodellens dottede sti og feltnavnet som skal legges til, og  den dottede stien til feltklassen som skal brukes på feltet. De tredje og fjerde elementene er lister med posisjoner og en ordbok/dict med nøkkelordargumenter som skal brukes når feltinstansen lages. Når du velger en feltklasse, stien ``django.models.db.`` trenger ikke være med for vanlige Django datamodellfelter. En tagglinje som vises på toppen av alle sider. En liste med tre underlister av maltagger/template tags brukt til å vise dashbordet i kontrollpanelet. Legg til Legg til ny Administrator Akismet API-nøkkel En åpen kildekode-basert publiseringsplattform. Forfatter Avbryt Endre Innhold Kontrollerer sortering og gruppering i administratormenyen. Kunne ikke importere verdi for settings.RICHTEXT_WIDGET_CLASS:%s Dashbord Beskrivelse Enhetsspesifikk undermappe for maler som brukes som standard for alle enheter/plattformer. Mappenavn for lagring av miniatyrbilder som vil opprettes relativt i forhold til bildemappen. Dottet Python-sti til funksjon for å konvertere strenger til URL-slugger. Er automatisk satt til ``mezzanine.utils.urls.slugify_unicode``, som tillater adresser utenfor ASCII-tegnsettet. Bytt til ``django.template.defaultfilters.slugify`` for å bruke Djangos slugify-funksjon, eller lag en egen, hvis du ønsker. Punktuminndelt pakkesti og klassenavn for widgeten du vil bruke for ``RichTextField``. Punktuminndelt sti til funksjonen som som kalles på et ``RichTextField`` før det rendres til malfilen. Kladd Endre Aktiver SSL Feil Utløper Tving tjener Glemt passord? Generer beskrivelse Google Analytics ID Google Analytics ID (http://www.google.com/analytics/) Høy Hjem Vertsnavn som alltid skal brukes for å nå nettstedet. Dette navnet er i samsvar med SSL sertifikatet. Dersom ``Sant``, vil kun URLer spesifisert i ``SSL_FORCE_URL_PREFIXES`` settingen være tilgjengelig via SSL, og alle andre URLer vil ble sendt tilbake til HTTP dersom HTTPS blir brukt. Hvis sant vil South-applikasjonen automatisk legges til i ``INSTALLED_APPS``-innstillingen. Dersom ``Sant``, vil brukere automatisk bli sendt til HTTPS for URLer spesifisert i ``SSL_FORCE_URL_PREFIXES`` settingen. Hvis ``True`` vil nettsidens skjemaer bruke HTML5-funksjonalitet. Hvis dette er valgt vil en beskrivelse automatisk bli generert ut fra innholdet. Hvis ikke, kan du velge en egen beskrivelse. Grensesnitt: Nøkkel for http://akismet.com spamfiltertjeneste. Brukt for å kontrollere kommentarer og skjemainnhold. Nøkkelord La feltet stå blankt hvis du vil få en automatisk URL ved hjelp av tittelen på artikkelen. Liste over attributter som ikke blir strippet fra ``RichTextField`` felt. Liste over HTML-tagger som ikke blir strippet fra ``RichTextField`` felt. Liste over CSS-stiler som ikke skal fjernes fra ``RichTextField``-bokser. Liste med ord som fjernes fra søkestrenger. Logg inn Logg ut Lav (støtter video, iframe, Flask osv.) Kobling av enhetsspesifikke malmapper til ord som finnes i enhetens User Agent. Maksimalt antall lenker til sider ved sidenavigasjon. Maksimalt antall sidelenker Mediebibliotek Metadata Mine handlinger Navn på jQueryfilen som finnes i mezzanine/core/static/mezzanine/js/ Navn på jQueryfil. Ingen filtrering Ingen tilgjengelig Antall forskjellige størrelser for tagger som vises i taggskyen Antall resultater som vises i et søk. Valgfri tittel for bruk i HTML title-taggen. Dersom feltet står blankt, brukes hovedtittelen. Rekkefølge Side Finner ikke siden Passord: Manglende rettigheter Drevet av Publisert Publisert fra Siste handlinger Riktekst filternivå Lagre Søk Søkeresultater Søkeresultater per side Innstillinger/setting navn som er tilgjengelig i maler. Side Sidetittel Størrelse på forhåndsvisningsbildefelt i administrasjonsgrensesnittet. Beklager, en feil har oppstått. Status Størrelse på taggsky Tagglinje Siden du leter etter eksisterer ikke. Tema laget av Dette feltet kreves hvis status er satt til publisert. Tittel Tittelen som vil vises på toppen av siden, og på slutten av HTML-titteltaggen på hver side. URL URL for JavaScriptfilen (relativt i forhold til ``STATIC_URL``) som konfigurerer TinyMCE når standardklassen for ``RICHTEXT_WIDGET_CLASS`` brukes. Fjern disse datamodellene fra admin. Brukernavn eller epost: Brukere Vis mobilversjon Vis på siden Vis webside Vil kun vises for administratorer når Utkast er valgt Vil ikke lengre være publisert etter dette tidspunkt Vil ikke publiseres før dette tidspunkt og av les mer 