<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<!-- Web Experience Toolkit (WET) / Boîte à outils de l'expérience Web (BOEW)
	wet-boew.github.io/wet-boew/License-eng.txt / wet-boew.github.io/wet-boew/Licence-fra.txt -->

	<xsl:import href="../../base/xsl/base.xslt"/>
	<xsl:output method="text" encoding="utf-8"/>
	<xsl:variable name="root" select="'cont-secnav2'"/>

	<xsl:template match="value" mode="output">
		<xsl:param name="path_correction"/>
		<xsl:param name="wet_fallback_language"/>
		<xsl:param name="menu_language"/>&lt;!DOCTYPE html&gt;
&lt;!--[if IE 7]&gt;&lt;html <xsl:if test="not(/strings/string[@id='%lang-dir']/value[lang(current()/@xml:lang)] = 'ltr')">dir="<xsl:value-of select="/strings/string[@id='%lang-dir']/value[lang(current()/@xml:lang)]"/>" </xsl:if>lang="<xsl:value-of select="./@xml:lang"/>" class="no-js ie7"&gt;&lt;![endif]--&gt;
&lt;!--[if IE 8]&gt;&lt;html <xsl:if test="not(/strings/string[@id='%lang-dir']/value[lang(current()/@xml:lang)] = 'ltr')">dir="<xsl:value-of select="/strings/string[@id='%lang-dir']/value[lang(current()/@xml:lang)]"/>" </xsl:if>lang="<xsl:value-of select="./@xml:lang"/>" class="no-js ie8"&gt;&lt;![endif]--&gt;
&lt;!--[if gt IE 8]&gt;&lt;!--&gt;
&lt;html <xsl:if test="not(/strings/string[@id='%lang-dir']/value[lang(current()/@xml:lang)] = 'ltr')">dir="<xsl:value-of select="/strings/string[@id='%lang-dir']/value[lang(current()/@xml:lang)]"/>" </xsl:if>lang="<xsl:value-of select="./@xml:lang"/>" class="no-js"&gt;
&lt;!--&lt;![endif]--&gt;
&lt;head&gt;
&lt;meta charset="utf-8" /&gt;
&lt;!-- Web Experience Toolkit (WET) / Boîte à outils de l'expérience Web (BOEW)
wet-boew.github.io/wet-boew/License-eng.txt / wet-boew.github.io/wet-boew/Licence-fra.txt --&gt;
&lt;title&gt;<xsl:value-of select="/strings/string[@id='%tmpl-cont-page']/value[lang(current()/@xml:lang)]"/> - <xsl:value-of select="/strings/string[@id='%tmpl-sec-menu']/value[lang(current()/@xml:lang)]"/> 2 - <xsl:value-of select="/strings/string[@id='%tmpl-gcwu-intranet-theme']/value[lang(current()/@xml:lang)]"/> - <xsl:value-of select="/strings/string[@id='%tmpl-work-examples']/value[lang(current()/@xml:lang)]"/> - <xsl:value-of select="/strings/string[@id='%tmpl-wet']/value[lang(current()/@xml:lang)]"/>&lt;/title&gt;

&lt;link rel="shortcut icon" href="<xsl:value-of select="$path_correction"/>../../dist/theme-gcwu-intranet/images/favicon.ico" /&gt;
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
&lt;link rel="stylesheet" href="<xsl:value-of select="$path_correction"/>../../dist/theme-gcwu-intranet/css/theme-ie-min.css" /&gt;
&lt;noscript&gt;&lt;link rel="stylesheet" href="<xsl:value-of select="$path_correction"/>../../dist/theme-gcwu-intranet/css/theme-ns-ie-min.css" /&gt;&lt;/noscript&gt;
&lt;![endif]--&gt;
&lt;!--[if gt IE 8]&gt;&lt;!--&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../../dist/js/jquery.min.js"&gt;&lt;/script&gt;
&lt;link rel="stylesheet" href="<xsl:value-of select="$path_correction"/>../../dist/grids/css/util-min.css" /&gt;
&lt;link rel="stylesheet" href="<xsl:value-of select="$path_correction"/>../../dist/js/css/pe-ap-min.css" /&gt;
&lt;link rel="stylesheet" href="<xsl:value-of select="$path_correction"/>../../dist/theme-gcwu-intranet/css/theme-min.css" /&gt;
&lt;noscript&gt;&lt;link rel="stylesheet" href="<xsl:value-of select="$path_correction"/>../../dist/theme-gcwu-intranet/css/theme-ns-min.css" /&gt;&lt;/noscript&gt;
&lt;!--&lt;![endif]--&gt;

&lt;!-- CustomCSSStart --&gt;
&lt;!-- CustomCSSEnd --&gt;
&lt;/head&gt;

&lt;body&gt;&lt;div id="wb-body-sec"&gt;
&lt;div id="wb-skip"&gt;
&lt;ul id="wb-tphp"&gt;
&lt;li id="wb-skip1"&gt;&lt;a href="#wb-cont"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-skip-main']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li id="wb-skip2"&gt;&lt;a href="#wb-nav"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-skip-sec']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;
&lt;/div&gt;

&lt;div id="wb-head"&gt;&lt;div id="wb-head-in"&gt;&lt;header&gt;
&lt;!-- HeaderStart --&gt;
&lt;nav role="navigation"&gt;&lt;div id="gcwu-gcnb"&gt;&lt;h2&gt;<xsl:value-of select="/strings/string[@id='%tmpl-gcintra-navbar']/value[lang(current()/@xml:lang)]"/>&lt;/h2&gt;&lt;div id="gcwu-gcnb-in"&gt;&lt;div id="gcwu-intranetnb"&gt;&lt;div id="gcwu-intranetnb-in"&gt;
&lt;ul&gt;
&lt;li id="gcwu-gcnb1"&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-link-custom']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li id="gcwu-gcnb2"&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-link-custom']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li id="gcwu-gcnb3"&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-link-custom']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
<xsl:choose>
	<xsl:when test="lang('en')">&lt;li id="gcwu-gcnb-lang"&gt;&lt;a href="<xsl:value-of select="$path_correction"/><xsl:value-of select="$root"/>-fra.html" lang="fr"&gt;<xsl:value-of select="/strings/string[@id='%lang-native']/value[lang('fr')]"/>&lt;/a&gt;&lt;/li&gt;</xsl:when>
	<xsl:when test="lang('fr')">&lt;li id="gcwu-gcnb-lang"&gt;&lt;a href="<xsl:value-of select="$path_correction"/><xsl:value-of select="$root"/>-eng.html" lang="en"&gt;<xsl:value-of select="/strings/string[@id='%lang-native']/value[lang('en')]"/>&lt;/a&gt;&lt;/li&gt;</xsl:when>
	<xsl:otherwise>&lt;li id="gcwu-gcnb-lang"&gt;&lt;a href="<xsl:value-of select="$path_correction"/><xsl:value-of select="$root"/>-fra.html" lang="fr"&gt;<xsl:value-of select="/strings/string[@id='%lang-native']/value[lang('fr')]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li id="gcwu-gcnb-lang-2"&gt;&lt;a href="<xsl:value-of select="$path_correction"/><xsl:value-of select="$root"/>-eng.html" lang="en"&gt;<xsl:value-of select="/strings/string[@id='%lang-native']/value[lang('en')]"/>&lt;/a&gt;&lt;/li&gt;</xsl:otherwise>
</xsl:choose>
&lt;/ul&gt;
&lt;/div&gt;&lt;/div&gt;
&lt;div id="gcwu-gcnb-fip"&gt;
&lt;div id="gcwu-sig"&gt;&lt;div id="gcwu-sig-in"&gt;&lt;object data="<xsl:value-of select="$path_correction"/>../../dist/theme-gcwu-intranet/images/sig-blk-<xsl:value-of select="/strings/string[@id='%lang-code-iso-639-2']/value[lang($wet_fallback_language)]"/>.svg" role="img" tabindex="-1" aria-label="<xsl:value-of select="/strings/string[@id='%tmpl-gc-sig']/value[lang(current()/@xml:lang)]"/>" type="image/svg+xml"&gt;&lt;img src="<xsl:value-of select="$path_correction"/>../../dist/theme-gcwu-intranet/images/sig-<xsl:value-of select="/strings/string[@id='%lang-code-iso-639-2']/value[lang($wet_fallback_language)]"/>.png" alt="<xsl:value-of select="/strings/string[@id='%tmpl-gc-sig']/value[lang(current()/@xml:lang)]"/>" /&gt;&lt;/object&gt;&lt;/div&gt;&lt;/div&gt;
&lt;div id="gcwu-wmms"&gt;&lt;div id="gcwu-wmms-in"&gt;&lt;object data="<xsl:value-of select="$path_correction"/>../../dist/theme-gcwu-intranet/images/wmms-intra.svg" role="img" tabindex="-1" aria-label="<xsl:value-of select="/strings/string[@id='%tmpl-gc-wmms']/value[lang(current()/@xml:lang)]"/>" type="image/svg+xml"&gt;&lt;img src="<xsl:value-of select="$path_correction"/>../../dist/theme-gcwu-intranet/images/wmms.png" alt="<xsl:value-of select="/strings/string[@id='%tmpl-gc-wmms']/value[lang(current()/@xml:lang)]"/>" /&gt;&lt;/object&gt;&lt;/div&gt;&lt;/div&gt;
&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/nav&gt;

&lt;div id="gcwu-bnr" role="banner"&gt;&lt;div id="gcwu-bnr-in"&gt;
&lt;div id="gcwu-title"&gt;&lt;p id="gcwu-title-in"&gt;&lt;a href="<xsl:value-of select="$path_correction"/>../../index-<xsl:value-of select="/strings/string[@id='%lang-code-iso-639-2']/value[lang($wet_fallback_language)]"/>.html"<xsl:if test="not(lang($wet_fallback_language))"> lang="<xsl:value-of select="$wet_fallback_language"/>"</xsl:if>&gt;<xsl:value-of select="/strings/string[@id='%tmpl-wet']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/p&gt;&lt;/div&gt;

&lt;section role="search"&gt;&lt;div id="gcwu-srchbx"&gt;&lt;h2&gt;<xsl:value-of select="/strings/string[@id='%tmpl-search']/value[lang(current()/@xml:lang)]"/>&lt;/h2&gt;
&lt;form action="#" method="post"&gt;&lt;div id="gcwu-srchbx-in"&gt;
&lt;label for="gcwu-srch"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-search-site']/value[lang(current()/@xml:lang)]"/>&lt;/label&gt;&lt;input id="gcwu-srch" name="gcwu-srch" type="search" value="" size="27" maxlength="150" /&gt;
&lt;input id="gcwu-srch-submit" name="gcwu-srch-submit" type="submit" value="<xsl:value-of select="/strings/string[@id='%tmpl-search']/value[lang(current()/@xml:lang)]"/>" /&gt;
&lt;/div&gt;&lt;/form&gt;
&lt;/div&gt;&lt;/section&gt;
&lt;/div&gt;&lt;/div&gt;

&lt;nav role="navigation"&gt;
&lt;div id="gcwu-psnb"&gt;&lt;h2&gt;<xsl:value-of select="/strings/string[@id='%tmpl-site-menu']/value[lang(current()/@xml:lang)]"/>&lt;/h2&gt;&lt;div id="gcwu-psnb-in"&gt;&lt;div class="wet-boew-menubar mb-mega"&gt;&lt;div&gt;
&lt;ul class="mb-menu" data-ajax-replace="<xsl:value-of select="$path_correction"/>../includes/menu-<xsl:value-of select="$menu_language"/>.txt"&gt;
&lt;li&gt;&lt;div&gt;&lt;a href="http://wet-boew.github.io/wet-boew/index-<xsl:value-of select="/strings/string[@id='%lang-code-iso-639-2']/value[lang($wet_fallback_language)]"/>.html"<xsl:if test="not(lang($wet_fallback_language))"> lang="<xsl:value-of select="$wet_fallback_language"/>"</xsl:if>&gt;<xsl:value-of select="/strings/string[@id='%tmpl-wet-project']/value[lang($wet_fallback_language)]"/>&lt;/a&gt;&lt;/div&gt;&lt;/li&gt;
&lt;li&gt;&lt;div&gt;&lt;a href="section2/index-<xsl:value-of select="/strings/string[@id='%lang-code-iso-639-2']/value[lang($wet_fallback_language)]"/>.html"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-section']/value[lang(current()/@xml:lang)]"/> 2&lt;/a&gt;&lt;/div&gt;&lt;/li&gt;
&lt;li&gt;&lt;div&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-section']/value[lang(current()/@xml:lang)]"/> 3&lt;/a&gt;&lt;/div&gt;&lt;/li&gt;
&lt;li&gt;&lt;div&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-section']/value[lang(current()/@xml:lang)]"/> 4&lt;/a&gt;&lt;/div&gt;&lt;/li&gt;
&lt;li&gt;&lt;div&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-section']/value[lang(current()/@xml:lang)]"/> 5&lt;/a&gt;&lt;/div&gt;&lt;/li&gt;
&lt;li&gt;&lt;div&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-section']/value[lang(current()/@xml:lang)]"/> 6&lt;/a&gt;&lt;/div&gt;&lt;/li&gt;
&lt;li&gt;&lt;div&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-section']/value[lang(current()/@xml:lang)]"/> 7&lt;/a&gt;&lt;/div&gt;&lt;/li&gt;
&lt;/ul&gt;
&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;

&lt;div id="gcwu-bc"&gt;&lt;h2&gt;<xsl:value-of select="/strings/string[@id='%tmpl-bcrumb']/value[lang(current()/@xml:lang)]"/>&lt;/h2&gt;&lt;div id="gcwu-bc-in"&gt;
&lt;ol&gt;
&lt;li&gt;&lt;a href="<xsl:value-of select="$path_correction"/>../../index-<xsl:value-of select="/strings/string[@id='%lang-code-iso-639-2']/value[lang($wet_fallback_language)]"/>.html"&gt;<xsl:value-of select="/strings/string[@id='%home']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="<xsl:value-of select="$path_correction"/>../index-<xsl:value-of select="/strings/string[@id='%lang-code-iso-639-2']/value[lang($wet_fallback_language)]"/>.html"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-work-examples']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="<xsl:value-of select="$path_correction"/>index-<xsl:value-of select="/strings/string[@id='%lang-code-iso-639-2']/value[lang($wet_fallback_language)]"/>.html"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-gcwu-intranet-theme']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="section4/index-<xsl:value-of select="/strings/string[@id='%lang-code-iso-639-2']/value[lang($wet_fallback_language)]"/>.html"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-section']/value[lang(current()/@xml:lang)]"/> 4&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="section4/section43/index-<xsl:value-of select="/strings/string[@id='%lang-code-iso-639-2']/value[lang($wet_fallback_language)]"/>.html"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-section']/value[lang(current()/@xml:lang)]"/> 4.3&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;<xsl:value-of select="/strings/string[@id='%tmpl-cont-page']/value[lang(current()/@xml:lang)]"/> - <xsl:value-of select="/strings/string[@id='%tmpl-sec-menu']/value[lang(current()/@xml:lang)]"/> 2&lt;/li&gt;
&lt;/ol&gt;
&lt;/div&gt;&lt;/div&gt;
&lt;/nav&gt;
&lt;!-- HeaderEnd --&gt;
&lt;/header&gt;&lt;/div&gt;&lt;/div&gt;

&lt;div id="wb-core"&gt;&lt;div id="wb-core-in" class="equalize"&gt;
&lt;div id="wb-main" role="main"&gt;&lt;div id="wb-main-in"&gt;
&lt;!-- MainContentStart --&gt;
&lt;h1 id="wb-cont"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-cont-page']/value[lang(current()/@xml:lang)]"/> - <xsl:value-of select="/strings/string[@id='%tmpl-sec-menu']/value[lang(current()/@xml:lang)]"/> 2 - <xsl:value-of select="/strings/string[@id='%tmpl-gcwu-intranet-theme']/value[lang(current()/@xml:lang)]"/>&lt;/h1&gt;

<xsl:apply-templates select="." mode="content_output"/>

&lt;dl id="gcwu-date-mod" role="contentinfo"&gt;
&lt;dt&gt;<xsl:value-of select="/strings/string[@id='%tmpl-date-mod']/value[lang(current()/@xml:lang)]"/>&lt;/dt&gt;&lt;dd&gt;&lt;span&gt;&lt;time&gt;<xsl:value-of select="adjust-date-to-timezone(current-date(), null)"/>&lt;/time&gt;&lt;/span&gt;&lt;/dd&gt;
&lt;/dl&gt;
&lt;div class="clear"&gt;&lt;/div&gt;
&lt;!-- MainContentEnd --&gt;
&lt;/div&gt;&lt;/div&gt;

&lt;div id="wb-sec"&gt;&lt;div id="wb-sec-in"&gt;&lt;nav role="navigation"&gt;&lt;h2 id="wb-nav"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-sec-menu']/value[lang(current()/@xml:lang)]"/>&lt;/h2&gt;
&lt;div class="wb-sec-def"&gt;
&lt;!-- SecNavStart --&gt;
&lt;section&gt;&lt;h3 class="top-section"&gt;&lt;a href="section4/index-<xsl:value-of select="/strings/string[@id='%lang-code-iso-639-2']/value[lang($wet_fallback_language)]"/>.html"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-section']/value[lang(current()/@xml:lang)]"/> 4&lt;/a&gt;&lt;/h3&gt;
&lt;div&gt;&lt;ul&gt;
&lt;li class="top-level"&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-item']/value[lang(current()/@xml:lang)]"/> 4a&lt;/a&gt;&lt;/li&gt;
&lt;li class="top-level"&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-item']/value[lang(current()/@xml:lang)]"/> 4b&lt;/a&gt;&lt;/li&gt;
&lt;li class="top-level"&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-item']/value[lang(current()/@xml:lang)]"/> 4c&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;&lt;/div&gt;
&lt;section&gt;&lt;h4&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-section']/value[lang(current()/@xml:lang)]"/> 4.1&lt;/a&gt;&lt;/h4&gt;
&lt;ul&gt;
&lt;li&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-item']/value[lang(current()/@xml:lang)]"/> 4.1.1&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-item']/value[lang(current()/@xml:lang)]"/> 4.1.2&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-item']/value[lang(current()/@xml:lang)]"/> 4.1.3&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;
&lt;/section&gt;
&lt;section&gt;&lt;h4&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-section']/value[lang(current()/@xml:lang)]"/> 4.2&lt;/a&gt;&lt;/h4&gt;
&lt;ul&gt;
&lt;li&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-item']/value[lang(current()/@xml:lang)]"/> 4.2.1&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-item']/value[lang(current()/@xml:lang)]"/> 4.2.2&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-item']/value[lang(current()/@xml:lang)]"/> 4.2.3&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-item']/value[lang(current()/@xml:lang)]"/> 4.2.4&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;
&lt;/section&gt;
&lt;section&gt;&lt;h4&gt;&lt;a href="section4/section43/index-<xsl:value-of select="/strings/string[@id='%lang-code-iso-639-2']/value[lang($wet_fallback_language)]"/>.html"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-section']/value[lang(current()/@xml:lang)]"/> 4.3&lt;/a&gt;&lt;/h4&gt;
&lt;ul&gt;
&lt;li&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-item']/value[lang(current()/@xml:lang)]"/> 4.3.1&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-item']/value[lang(current()/@xml:lang)]"/> 4.3.2&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;
&lt;/section&gt;
&lt;section&gt;&lt;h4&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-section']/value[lang(current()/@xml:lang)]"/> 4.4&lt;/a&gt;&lt;/h4&gt;
&lt;ul&gt;
&lt;li&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-item']/value[lang(current()/@xml:lang)]"/> 4.4.1&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-item']/value[lang(current()/@xml:lang)]"/> 4.4.2&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-item']/value[lang(current()/@xml:lang)]"/> 4.4.3&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-item']/value[lang(current()/@xml:lang)]"/> 4.4.4&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;
&lt;/section&gt;
&lt;/section&gt;
&lt;!-- SecNavEnd --&gt;
&lt;/div&gt;
&lt;/nav&gt;&lt;/div&gt;&lt;/div&gt;
&lt;/div&gt;&lt;/div&gt;

&lt;div id="wb-foot"&gt;&lt;div id="wb-foot-in"&gt;&lt;footer&gt;&lt;h2&gt;<xsl:value-of select="/strings/string[@id='%tmpl-foot']/value[lang(current()/@xml:lang)]"/>&lt;/h2&gt;
&lt;!-- FooterStart --&gt;
&lt;nav role="navigation"&gt;&lt;div id="gcwu-sft"&gt;&lt;h3&gt;<xsl:value-of select="/strings/string[@id='%tmpl-site-foot']/value[lang(current()/@xml:lang)]"/>&lt;/h3&gt;&lt;div id="gcwu-sft-in"&gt;
&lt;section&gt;&lt;div class="span-2"&gt;&lt;h4 class="gcwu-col-head"&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-link']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/h4&gt;
&lt;ul&gt;
&lt;li&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-link']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-link']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;
&lt;/div&gt;&lt;/section&gt;
&lt;section&gt;&lt;div class="span-2"&gt;&lt;h4 class="gcwu-col-head"&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-link']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/h4&gt;
&lt;ul&gt;
&lt;li&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-link']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-link']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-link']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;
&lt;/div&gt;&lt;/section&gt;
&lt;section&gt;&lt;div class="span-2"&gt;&lt;h4 class="gcwu-col-head"&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-link']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/h4&gt;
&lt;address&gt;
&lt;ul&gt;
&lt;li&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-link']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-link']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;
&lt;/address&gt;
&lt;/div&gt;&lt;/section&gt;
&lt;section&gt;&lt;div class="span-2"&gt;&lt;h4 class="gcwu-col-head"&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-link']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/h4&gt;
&lt;ul&gt;
&lt;li&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-link']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-link']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-link']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;
&lt;/div&gt;&lt;/section&gt;
&lt;div id="gcwu-tctr"&gt;
&lt;ul&gt;
&lt;li class="gcwu-tc"&gt;&lt;a href="#" rel="license"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-terms']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li class="gcwu-tr"&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-transparency']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;
&lt;/div&gt;
&lt;/div&gt;&lt;/div&gt;&lt;/nav&gt;
&lt;!-- FooterEnd --&gt;
&lt;/footer&gt;
&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;

&lt;!-- ScriptsStart --&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../../dist/js/settings.js"&gt;&lt;/script&gt;
&lt;!--[if lte IE 8]&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../../dist/theme-gcwu-intranet/js/theme-ie-min.js"&gt;&lt;/script&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../../dist/js/pe-ap-ie-min.js"&gt;&lt;/script&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../../dist/js/jquerymobile/jquery.mobile-ie.min.js"&gt;&lt;/script&gt;
&lt;![endif]--&gt;
&lt;!--[if gt IE 8]&gt;&lt;!--&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../../dist/theme-gcwu-intranet/js/theme-min.js"&gt;&lt;/script&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../../dist/js/pe-ap-min.js"&gt;&lt;/script&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../../dist/js/jquerymobile/jquery.mobile.min.js"&gt;&lt;/script&gt;
&lt;!--&lt;![endif]--&gt;
&lt;!-- ScriptsEnd --&gt;

&lt;!-- CustomScriptsStart --&gt;
&lt;!-- CustomScriptsEnd --&gt;
&lt;/body&gt;
&lt;/html&gt;</xsl:template>

</xsl:stylesheet>