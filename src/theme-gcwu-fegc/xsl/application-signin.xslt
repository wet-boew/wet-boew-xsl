<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<!-- Web Experience Toolkit (WET) / Boîte à outils de l'expérience Web (BOEW)
	wet-boew.github.io/wet-boew/License-eng.txt / wet-boew.github.io/wet-boew/Licence-fra.txt -->

	<xsl:import href="../../base/xsl/base.xslt"/>
	<xsl:output method="text" encoding="utf-8"/>
	<xsl:variable name="root" select="'application-signin'"/>

	<xsl:template match="value" mode="output">
		<xsl:param name="path_correction"/>
		<xsl:param name="wet_fallback_language"/>
		<xsl:param name="menu_language"/>&lt;!DOCTYPE html&gt;
&lt;!--[if IE 7]&gt;&lt;html <xsl:if test="not(/strings/string[@id='%lang-dir']/value[lang(current()/@xml:lang)] = 'ltr')"><xsl:if test="not(/strings/string[@id='%lang-dir']/value[lang(current()/@xml:lang)] = 'ltr')">dir="<xsl:value-of select="/strings/string[@id='%lang-dir']/value[lang(current()/@xml:lang)]"/>" </xsl:if></xsl:if>lang="<xsl:value-of select="./@xml:lang"/>" class="no-js ie7"&gt;&lt;![endif]--&gt;
&lt;!--[if IE 8]&gt;&lt;html <xsl:if test="not(/strings/string[@id='%lang-dir']/value[lang(current()/@xml:lang)] = 'ltr')">dir="<xsl:value-of select="/strings/string[@id='%lang-dir']/value[lang(current()/@xml:lang)]"/>" </xsl:if>lang="<xsl:value-of select="./@xml:lang"/>" class="no-js ie8"&gt;&lt;![endif]--&gt;
&lt;!--[if gt IE 8]&gt;&lt;!--&gt;
&lt;html <xsl:if test="not(/strings/string[@id='%lang-dir']/value[lang(current()/@xml:lang)] = 'ltr')">dir="<xsl:value-of select="/strings/string[@id='%lang-dir']/value[lang(current()/@xml:lang)]"/>" </xsl:if>lang="<xsl:value-of select="./@xml:lang"/>" class="no-js"&gt;
&lt;!--&lt;![endif]--&gt;
&lt;head&gt;
&lt;meta charset="utf-8" /&gt;
&lt;!-- Web Experience Toolkit (WET) / Boîte à outils de l'expérience Web (BOEW)
wet-boew.github.io/wet-boew/License-eng.txt / wet-boew.github.io/wet-boew/Licence-fra.txt --&gt;
&lt;title&gt;<xsl:value-of select="/strings/string[@id='%tmpl-web-application']/value[lang(current()/@xml:lang)]"/> - <xsl:value-of select="/strings/string[@id='%tmpl-signin']/value[lang(current()/@xml:lang)]"/> - <xsl:value-of select="/strings/string[@id='%tmpl-gcwu-theme']/value[lang(current()/@xml:lang)]"/> - <xsl:value-of select="/strings/string[@id='%tmpl-work-examples']/value[lang(current()/@xml:lang)]"/> - <xsl:value-of select="/strings/string[@id='%tmpl-wet']/value[lang(current()/@xml:lang)]"/>&lt;/title&gt;

&lt;link rel="shortcut icon" href="<xsl:value-of select="$path_correction"/>../../dist/theme-gcwu-fegc/images/favicon.ico" /&gt;
&lt;meta name="description" content="<xsl:value-of select="/strings/string[@id='%lang-eng']/value[lang(current()/@xml:lang)]"/> description / Description en <xsl:value-of select="/strings/string[@id='%lang-fra']/value[lang(current()/@xml:lang)]"/>" /&gt;
&lt;meta name="dcterms.creator" content="<xsl:value-of select="/strings/string[@id='%lang-eng']/value[lang(current()/@xml:lang)]"/> name of the content author / Nom en <xsl:value-of select="/strings/string[@id='%lang-fra']/value[lang(current()/@xml:lang)]"/> de l'auteur du contenu" /&gt;
&lt;meta name="dcterms.title" content="<xsl:value-of select="/strings/string[@id='%lang-eng']/value[lang(current()/@xml:lang)]"/> title / Titre en <xsl:value-of select="/strings/string[@id='%lang-fra']/value[lang(current()/@xml:lang)]"/>" /&gt;
&lt;meta name="dcterms.issued" title="W3CDTF" content="Date published (YYYY-MM-DD) / Date de publication (AAAA-MM-JJ)" /&gt;
&lt;meta name="dcterms.modified" title="W3CDTF" content="Date modified (YYYY-MM-DD) / Date de modification (AAAA-MM-JJ)" /&gt;
&lt;meta name="dcterms.subject" title="scheme" content="<xsl:value-of select="/strings/string[@id='%lang-eng']/value[lang(current()/@xml:lang)]"/> subject terms / Termes de sujet en <xsl:value-of select="/strings/string[@id='%lang-fra']/value[lang(current()/@xml:lang)]"/>" /&gt;
&lt;meta name="dcterms.language" title="ISO639-2" content="<xsl:value-of select="."/>" /&gt;
&lt;meta name="viewport" content="width=device-width, initial-scale=1" /&gt;

&lt;!--[if lte IE 8]&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../../dist/js/jquery-ie.min.js"&gt;&lt;/script&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../../dist/js/polyfills/html5shiv-min.js"&gt;&lt;/script&gt;
&lt;link rel="stylesheet" href="<xsl:value-of select="$path_correction"/>../../dist/grids/css/util-ie-min.css" /&gt;
&lt;link rel="stylesheet" href="<xsl:value-of select="$path_correction"/>../../dist/js/css/pe-ap-ie-min.css" /&gt;
&lt;link rel="stylesheet" href="<xsl:value-of select="$path_correction"/>../../dist/theme-gcwu-fegc/css/theme-ie-min.css" /&gt;
&lt;noscript&gt;&lt;link rel="stylesheet" href="<xsl:value-of select="$path_correction"/>../../dist/theme-gcwu-fegc/css/theme-ns-ie-min.css" /&gt;&lt;/noscript&gt;
&lt;![endif]--&gt;
&lt;!--[if gt IE 8]&gt;&lt;!--&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../../dist/js/jquery.min.js"&gt;&lt;/script&gt;
&lt;link rel="stylesheet" href="<xsl:value-of select="$path_correction"/>../../dist/grids/css/util-min.css" /&gt;
&lt;link rel="stylesheet" href="<xsl:value-of select="$path_correction"/>../../dist/js/css/pe-ap-min.css" /&gt;
&lt;link rel="stylesheet" href="<xsl:value-of select="$path_correction"/>../../dist/theme-gcwu-fegc/css/theme-min.css" /&gt;
&lt;noscript&gt;&lt;link rel="stylesheet" href="<xsl:value-of select="$path_correction"/>../../dist/theme-gcwu-fegc/css/theme-ns-min.css" /&gt;&lt;/noscript&gt;
&lt;!--&lt;![endif]--&gt;

&lt;!-- CustomCSSStart --&gt;
&lt;!-- CustomCSSEnd --&gt;
&lt;/head&gt;

&lt;body&gt;&lt;div id="wb-body"&gt;
&lt;div id="wb-skip"&gt;
&lt;ul id="wb-tphp"&gt;
&lt;li id="wb-skip1"&gt;&lt;a href="#wb-cont"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-skip-main']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li id="wb-skip2"&gt;&lt;a href="#wb-nav"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-skip-foot']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;
&lt;/div&gt;

&lt;div id="wb-head"&gt;&lt;div id="wb-head-in"&gt;&lt;header&gt;
&lt;!-- HeaderStart --&gt;
&lt;nav role="navigation"&gt;&lt;div id="gcwu-gcnb"&gt;&lt;h2&gt;<xsl:value-of select="/strings/string[@id='%tmpl-gc-navbar']/value[lang(current()/@xml:lang)]"/>&lt;/h2&gt;&lt;div id="gcwu-gcnb-in"&gt;&lt;div id="gcwu-gcnb-fip"&gt;
&lt;div id="gcwu-sig"&gt;&lt;div id="gcwu-sig-in"&gt;&lt;object data="<xsl:value-of select="$path_correction"/>../../dist/theme-gcwu-fegc/images/sig-<xsl:value-of select="/strings/string[@id='%lang-code-iso-639-2']/value[lang($wet_fallback_language)]"/>.svg" role="img" tabindex="-1" aria-label="<xsl:value-of select="/strings/string[@id='%tmpl-gc-sig']/value[lang(current()/@xml:lang)]"/>" type="image/svg+xml"&gt;&lt;img src="<xsl:value-of select="$path_correction"/>../../dist/theme-gcwu-fegc/images/sig-<xsl:value-of select="/strings/string[@id='%lang-code-iso-639-2']/value[lang($wet_fallback_language)]"/>.png" alt="<xsl:value-of select="/strings/string[@id='%tmpl-gc-sig']/value[lang(current()/@xml:lang)]"/>" /&gt;&lt;/object&gt;&lt;/div&gt;&lt;/div&gt;
&lt;ul&gt;
<xsl:choose>
	<xsl:when test="lang('en')">&lt;li id="gcwu-gcnb1"&gt;&lt;a target="_blank" rel="external" href="http://www.canada.gc.ca/menu-eng.html"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-gc-ca']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li id="gcwu-gcnb2"&gt;&lt;a target="_blank" rel="external" href="http://www.servicecanada.gc.ca/eng/home.shtml"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-services']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li id="gcwu-gcnb3"&gt;&lt;a target="_blank" rel="external" href="http://www.canada.gc.ca/aboutgov-ausujetgouv/depts/menu-eng.html"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-depts']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li id="gcwu-gcnb-lang"&gt;&lt;a href="<xsl:value-of select="$path_correction"/><xsl:value-of select="$root"/>-fra.html" lang="fr"&gt;<xsl:value-of select="/strings/string[@id='%lang-native']/value[lang('fr')]"/>&lt;/a&gt;&lt;/li&gt;</xsl:when>
	<xsl:when test="lang('fr')">&lt;li id="gcwu-gcnb1"&gt;&lt;a target="_blank" rel="external" href="http://www.canada.gc.ca/menu-fra.html"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-gc-ca']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li id="gcwu-gcnb2"&gt;&lt;a target="_blank" rel="external" href="http://www.servicecanada.gc.ca/fra/accueil.shtml"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-services']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li id="gcwu-gcnb3"&gt;&lt;a target="_blank" rel="external" href="http://www.canada.gc.ca/aboutgov-ausujetgouv/depts/menu-fra.html"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-depts']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li id="gcwu-gcnb-lang"&gt;&lt;a href="<xsl:value-of select="$path_correction"/><xsl:value-of select="$root"/>-eng.html" lang="en"&gt;<xsl:value-of select="/strings/string[@id='%lang-native']/value[lang('en')]"/>&lt;/a&gt;&lt;/li&gt;</xsl:when>
	<xsl:otherwise>&lt;li id="gcwu-gcnb-lang"&gt;&lt;a href="<xsl:value-of select="$path_correction"/><xsl:value-of select="$root"/>-fra.html" lang="fr"&gt;<xsl:value-of select="/strings/string[@id='%lang-native']/value[lang('fr')]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li id="gcwu-gcnb-lang-2"&gt;&lt;a href="<xsl:value-of select="$path_correction"/><xsl:value-of select="$root"/>-eng.html" lang="en"&gt;<xsl:value-of select="/strings/string[@id='%lang-native']/value[lang('en')]"/>&lt;/a&gt;&lt;/li&gt;</xsl:otherwise>
</xsl:choose>
&lt;/ul&gt;
&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/nav&gt;

&lt;div id="gcwu-bnr" role="banner"&gt;&lt;div id="gcwu-bnr-in"&gt;
&lt;div id="gcwu-wmms"&gt;&lt;div id="gcwu-wmms-in"&gt;&lt;object data="<xsl:value-of select="$path_correction"/>../../dist/theme-gcwu-fegc/images/wmms.svg" role="img" tabindex="-1" aria-label="<xsl:value-of select="/strings/string[@id='%tmpl-gc-wmms']/value[lang(current()/@xml:lang)]"/>" type="image/svg+xml"&gt;&lt;img src="<xsl:value-of select="$path_correction"/>../../dist/theme-gcwu-fegc/images/wmms.png" alt="<xsl:value-of select="/strings/string[@id='%tmpl-gc-wmms']/value[lang(current()/@xml:lang)]"/>" /&gt;&lt;/object&gt;&lt;/div&gt;&lt;/div&gt;
&lt;div id="gcwu-title"&gt;&lt;p id="gcwu-title-in"&gt;&lt;a target="_blank" href="<xsl:value-of select="$path_correction"/>../../index-<xsl:value-of select="/strings/string[@id='%lang-code-iso-639-2']/value[lang($wet_fallback_language)]"/>.html"<xsl:if test="not(lang($wet_fallback_language))"> lang="<xsl:value-of select="$wet_fallback_language"/>"</xsl:if>&gt;<xsl:value-of select="/strings/string[@id='%tmpl-wet']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/p&gt;&lt;/div&gt;

&lt;section role="search"&gt;&lt;div id="gcwu-srchbx"&gt;&lt;h2&gt;<xsl:value-of select="/strings/string[@id='%tmpl-search']/value[lang(current()/@xml:lang)]"/>&lt;/h2&gt;
&lt;form action="#" method="post"&gt;&lt;div id="gcwu-srchbx-in"&gt;
&lt;label for="gcwu-srch"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-search-site']/value[lang(current()/@xml:lang)]"/>&lt;/label&gt;&lt;input id="gcwu-srch" name="gcwu-srch" type="search" value="" size="27" maxlength="150" /&gt;
&lt;input id="gcwu-srch-submit" name="gcwu-srch-submit" type="submit" value="<xsl:value-of select="/strings/string[@id='%tmpl-search']/value[lang(current()/@xml:lang)]"/>" /&gt;
&lt;/div&gt;&lt;/form&gt;
&lt;/div&gt;&lt;/section&gt;
&lt;/div&gt;&lt;/div&gt;

&lt;nav role="navigation"&gt;
&lt;div id="gcwu-psnb"&gt;&lt;h2&gt;<xsl:value-of select="/strings/string[@id='%tmpl-site-menu']/value[lang(current()/@xml:lang)]"/>&lt;/h2&gt;&lt;div id="gcwu-psnb-in"&gt;&lt;div class="wet-boew-menubar"&gt;&lt;div&gt;
&lt;ul class="mb-menu"&gt;
&lt;li&gt;&lt;div&gt;&lt;a target="_blank" class="first" href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-section']/value[lang(@xml:lang)]"/> 1&lt;/a&gt;&lt;/div&gt;&lt;/li&gt;
&lt;li&gt;&lt;div&gt;&lt;a target="_blank" href="section2/index-<xsl:value-of select="/strings/string[@id='%lang-code-iso-639-2']/value[lang($wet_fallback_language)]"/>.html"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-section']/value[lang(current()/@xml:lang)]"/><xsl:value-of select="/strings/string[@id='%interword-space']/value[lang(current()/@lang)]"/>2&lt;/a&gt;&lt;/div&gt;&lt;/li&gt;
&lt;li&gt;&lt;div&gt;&lt;a target="_blank" href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-section']/value[lang(current()/@xml:lang)]"/><xsl:value-of select="/strings/string[@id='%interword-space']/value[lang(current()/@lang)]"/>3&lt;/a&gt;&lt;/div&gt;&lt;/li&gt;
&lt;li&gt;&lt;div&gt;&lt;a target="_blank" href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-section']/value[lang(current()/@xml:lang)]"/><xsl:value-of select="/strings/string[@id='%interword-space']/value[lang(current()/@lang)]"/>4&lt;/a&gt;&lt;/div&gt;&lt;/li&gt;
&lt;li&gt;&lt;div&gt;&lt;a target="_blank" href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-section']/value[lang(current()/@xml:lang)]"/><xsl:value-of select="/strings/string[@id='%interword-space']/value[lang(current()/@lang)]"/>5&lt;/a&gt;&lt;/div&gt;&lt;/li&gt;
&lt;/ul&gt;
&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;

&lt;div id="gcwu-bc"&gt;&lt;h2&gt;<xsl:value-of select="/strings/string[@id='%tmpl-bcrumb']/value[lang(current()/@xml:lang)]"/>&lt;/h2&gt;&lt;div id="gcwu-bc-in"&gt;
&lt;ol&gt;
&lt;li&gt;&lt;a target="_blank" href="<xsl:value-of select="$path_correction"/>../../index-<xsl:value-of select="/strings/string[@id='%lang-code-iso-639-2']/value[lang($wet_fallback_language)]"/>.html"&gt;<xsl:value-of select="/strings/string[@id='%home']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a target="_blank" href="<xsl:value-of select="$path_correction"/>../index-<xsl:value-of select="/strings/string[@id='%lang-code-iso-639-2']/value[lang($wet_fallback_language)]"/>.html"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-work-examples']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="<xsl:value-of select="$path_correction"/>index-<xsl:value-of select="/strings/string[@id='%lang-code-iso-639-2']/value[lang($wet_fallback_language)]"/>.html"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-gcwu-theme']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;<xsl:value-of select="/strings/string[@id='%tmpl-web-application']/value[lang(current()/@xml:lang)]"/> - <xsl:value-of select="/strings/string[@id='%tmpl-signin']/value[lang(current()/@xml:lang)]"/>&lt;/li&gt;
&lt;/ol&gt;
&lt;/div&gt;&lt;/div&gt;
&lt;/nav&gt;
&lt;!-- HeaderEnd --&gt;
&lt;/header&gt;&lt;/div&gt;&lt;/div&gt;

&lt;div id="wb-core"&gt;&lt;div id="wb-core-in" class="equalize"&gt;
&lt;div id="wb-main" role="main"&gt;&lt;div id="wb-main-in"&gt;
&lt;!-- MainContentStart --&gt;
&lt;h1 id="wb-cont"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-web-application']/value[lang(current()/@xml:lang)]"/> - <xsl:value-of select="/strings/string[@id='%tmpl-signin']/value[lang(current()/@xml:lang)]"/> - <xsl:value-of select="/strings/string[@id='%tmpl-gcwu-theme']/value[lang(current()/@xml:lang)]"/>&lt;/h1&gt;

&lt;div id="wb-session"&gt;&lt;aside&gt;
&lt;h2 class="wb-invisible"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-myaccount']/value[lang(current()/@xml:lang)]"/>&lt;/h2&gt;
&lt;ul class="button-group"&gt;
&lt;li class="session"&gt;&lt;a class="button button-accent" href="application-signout-<xsl:value-of select="$menu_language"/>.html"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-signin']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;
&lt;/aside&gt;&lt;/div&gt;

<xsl:apply-templates select="." mode="content_output"/>

&lt;dl id="gcwu-date-mod" role="contentinfo"&gt;
&lt;dt&gt;<xsl:value-of select="/strings/string[@id='%tmpl-version']/value[lang(current()/@xml:lang)]"/>&lt;/dt&gt;&lt;dd&gt;1.1b&lt;/dd&gt;
&lt;/dl&gt;
&lt;div class="clear"&gt;&lt;/div&gt;
&lt;!-- MainContentEnd --&gt;
&lt;/div&gt;&lt;/div&gt;
&lt;/div&gt;&lt;/div&gt;

&lt;div id="wb-foot"&gt;&lt;div id="wb-foot-in"&gt;&lt;footer&gt;&lt;h2 id="wb-nav"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-foot']/value[lang(current()/@xml:lang)]"/>&lt;/h2&gt;
&lt;!-- FooterStart --&gt;
&lt;nav role="navigation"&gt;&lt;div id="gcwu-sft"&gt;&lt;h3&gt;<xsl:value-of select="/strings/string[@id='%tmpl-site-foot']/value[lang(current()/@xml:lang)]"/>&lt;/h3&gt;&lt;div id="gcwu-sft-in"&gt;
&lt;div id="gcwu-tctr"&gt;
&lt;ul&gt;
&lt;li class="gcwu-tc"&gt;&lt;a target="_blank" href="#" rel="license"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-terms']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li class="gcwu-tr"&gt;&lt;a target="_blank" href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-transparency']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;
&lt;/div&gt;
&lt;div class="clear"&gt;&lt;/div&gt;
&lt;div class="span-2"&gt;&lt;div class="gcwu-col-head"&gt;&lt;a target="_blank" href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-about-us']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;
&lt;div class="span-2"&gt;&lt;div class="gcwu-col-head"&gt;&lt;a target="_blank" href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-news']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;
&lt;div class="span-2"&gt;&lt;div class="gcwu-col-head"&gt;&lt;a target="_blank" href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-contact-us']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;
&lt;div class="span-2"&gt;&lt;div class="gcwu-col-head"&gt;&lt;a target="_blank" href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-stay-connected']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;
&lt;/div&gt;&lt;/div&gt;&lt;/nav&gt;

&lt;nav role="navigation"&gt;&lt;div id="gcwu-gcft"&gt;&lt;h3&gt;<xsl:value-of select="/strings/string[@id='%tmpl-gc-foot']/value[lang(current()/@xml:lang)]"/>&lt;/h3&gt;&lt;div id="gcwu-gcft-in"&gt;&lt;div id="gcwu-gcft-fip"&gt;
&lt;ul&gt;
<xsl:choose>
	<xsl:when test="lang('en')">&lt;li&gt;&lt;a target="_blank" rel="external" href="http://healthycanadians.gc.ca/index-eng.php"&gt;&lt;span&gt;Health&lt;/span&gt;&lt;br /&gt;healthycanadians.gc.ca&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a target="_blank" rel="external" href="http://www.voyage.gc.ca/index-eng.asp"&gt;&lt;span&gt;Travel&lt;/span&gt;&lt;br /&gt;travel.gc.ca&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a target="_blank" rel="external" href="http://www.servicecanada.gc.ca/eng/home.shtml"&gt;&lt;span&gt;Service Canada&lt;/span&gt;&lt;br /&gt;servicecanada.gc.ca&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a target="_blank" rel="external" href="http://www.jobbank.gc.ca/intro-eng.aspx"&gt;&lt;span&gt;Jobs&lt;/span&gt;&lt;br /&gt;jobbank.gc.ca&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a target="_blank" rel="external" href="http://actionplan.gc.ca/en"&gt;&lt;span&gt;Economy&lt;/span&gt;&lt;br /&gt;actionplan.gc.ca&lt;/a&gt;&lt;/li&gt;
&lt;li id="gcwu-gcft-ca"&gt;&lt;div&gt;&lt;a target="_blank" rel="external" href="http://www.canada.gc.ca/menu-eng.html"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-gc-ca']/value[lang('en')]"/>&lt;/a&gt;&lt;/div&gt;&lt;/li&gt;</xsl:when>
	<xsl:when test="lang('fr')">&lt;li&gt;&lt;a target="_blank" rel="external" href="http://canadiensensante.gc.ca/index-fra.php"&gt;&lt;span&gt;Santé&lt;/span&gt;&lt;br /&gt;canadiensensante.gc.ca&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a target="_blank" rel="external" href="http://www.voyage.gc.ca/index-fra.asp"&gt;&lt;span&gt;Voyage&lt;/span&gt;&lt;br /&gt;voyage.gc.ca&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a target="_blank" rel="external" href="http://www.servicecanada.gc.ca/fra/accueil.shtml"&gt;&lt;span&gt;Service Canada&lt;/span&gt;&lt;br /&gt;servicecanada.gc.ca&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a target="_blank" rel="external" href="http://www.guichetemplois.gc.ca/Intro-fra.aspx"&gt;&lt;span&gt;Emplois&lt;/span&gt;&lt;br /&gt;guichetemplois.gc.ca&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a target="_blank" rel="external" href="http://plandaction.gc.ca/fr"&gt;&lt;span&gt;Économie&lt;/span&gt;&lt;br /&gt;plandaction.gc.ca&lt;/a&gt;&lt;/li&gt;
&lt;li id="gcwu-gcft-ca"&gt;&lt;div&gt;&lt;a target="_blank" rel="external" href="http://www.canada.gc.ca/menu-fra.html"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-gc-ca']/value[lang('en')]"/>&lt;/a&gt;&lt;/div&gt;&lt;/li&gt;</xsl:when>
	<xsl:otherwise>&lt;li id="gcwu-gcft-ca"&gt;&lt;div&gt;&lt;a target="_blank" rel="external" href="http://www.canada.gc.ca/menu-eng.html"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-gc-ca']/value[lang('en')]"/>&lt;/a&gt;&lt;/div&gt;&lt;/li&gt;</xsl:otherwise>
</xsl:choose>
&lt;/ul&gt;
&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/nav&gt;
&lt;!-- FooterEnd --&gt;
&lt;/footer&gt;
&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;

&lt;!-- ScriptsStart --&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../../dist/js/settings.js"&gt;&lt;/script&gt;
&lt;!--[if lte IE 8]&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../../dist/theme-gcwu-fegc/js/theme-ie-min.js"&gt;&lt;/script&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../../dist/js/pe-ap-ie-min.js"&gt;&lt;/script&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../../dist/js/jquerymobile/jquery.mobile-ie.min.js"&gt;&lt;/script&gt;
&lt;![endif]--&gt;
&lt;!--[if gt IE 8]&gt;&lt;!--&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../../dist/theme-gcwu-fegc/js/theme-min.js"&gt;&lt;/script&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../../dist/js/pe-ap-min.js"&gt;&lt;/script&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../../dist/js/jquerymobile/jquery.mobile.min.js"&gt;&lt;/script&gt;
&lt;!--&lt;![endif]--&gt;
&lt;!-- ScriptsEnd --&gt;

&lt;!-- CustomScriptsStart --&gt;
&lt;!-- CustomScriptsEnd --&gt;
&lt;/body&gt;
&lt;/html&gt;</xsl:template>

</xsl:stylesheet>