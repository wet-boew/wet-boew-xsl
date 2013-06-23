<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<!-- Web Experience Toolkit (WET) / Boîte à outils de l'expérience Web (BOEW)
	wet-boew.github.io/wet-boew/License-eng.txt / wet-boew.github.io/wet-boew/Licence-fra.txt -->

	<xsl:import href="../../base/xsl/base.xslt"/>
	<xsl:output method="text" encoding="utf-8"/>
	<xsl:variable name="root" select="'serv'"/>

	<xsl:template match="value" mode="output">
		<xsl:param name="path_correction"/>
		<xsl:param name="wet_fallback_language"/>
		<xsl:param name="menu_language"/>
		<xsl:param name="interword-space"/>
		<xsl:param name="hyphen"/>
		<xsl:param name="tmpl-sample-text"/>
		<xsl:param name="tmpl-section"/>
		<xsl:param name="tmpl-item"/>&lt;!DOCTYPE html&gt;
&lt;!--[if IE 7]&gt;&lt;html <xsl:if test="not(/strings/string[@id='%lang-dir']/value[lang(current()/@xml:lang)] = 'ltr')"><xsl:if test="not(/strings/string[@id='%lang-dir']/value[lang(current()/@xml:lang)] = 'ltr')">dir="<xsl:value-of select="/strings/string[@id='%lang-dir']/value[lang(current()/@xml:lang)]"/>" </xsl:if></xsl:if>lang="<xsl:value-of select="./@xml:lang"/>" class="no-js ie7"&gt;&lt;![endif]--&gt;
&lt;!--[if IE 8]&gt;&lt;html <xsl:if test="not(/strings/string[@id='%lang-dir']/value[lang(current()/@xml:lang)] = 'ltr')">dir="<xsl:value-of select="/strings/string[@id='%lang-dir']/value[lang(current()/@xml:lang)]"/>" </xsl:if>lang="<xsl:value-of select="./@xml:lang"/>" class="no-js ie8"&gt;&lt;![endif]--&gt;
&lt;!--[if gt IE 8]&gt;&lt;!--&gt;
&lt;html <xsl:if test="not(/strings/string[@id='%lang-dir']/value[lang(current()/@xml:lang)] = 'ltr')">dir="<xsl:value-of select="/strings/string[@id='%lang-dir']/value[lang(current()/@xml:lang)]"/>" </xsl:if>lang="<xsl:value-of select="./@xml:lang"/>" class="no-js"&gt;
&lt;!--&lt;![endif]--&gt;
&lt;head&gt;
&lt;meta charset="utf-8" /&gt;
&lt;!-- Web Experience Toolkit (WET) / Boîte à outils de l'expérience Web (BOEW)
wet-boew.github.io/wet-boew/License-eng.txt / wet-boew.github.io/wet-boew/Licence-fra.txt --&gt;
&lt;title&gt;<xsl:value-of select="/strings/string[@id='%tmpl-serv-page']/value[lang(current()/@xml:lang)]"/><xsl:value-of select="$hyphen"/><xsl:value-of select="/strings/string[@id='%tmpl-wet-theme']/value[lang(current()/@xml:lang)]"/><xsl:value-of select="$hyphen"/><xsl:value-of select="/strings/string[@id='%tmpl-work-examples']/value[lang(current()/@xml:lang)]"/><xsl:value-of select="$hyphen"/><xsl:value-of select="/strings/string[@id='%tmpl-wet']/value[lang(current()/@xml:lang)]"/>&lt;/title&gt;

&lt;link rel="shortcut icon" href="<xsl:value-of select="$path_correction"/>../../dist/theme-wet-boew/images/favicon.ico" /&gt;
&lt;meta name="robots" content="noindex, nofollow, noarchive" /&gt;
&lt;meta name="viewport" content="width=device-width, initial-scale=1" /&gt;

&lt;!--[if lte IE 8]&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../../dist/js/jquery-ie.min.js"&gt;&lt;/script&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../../dist/js/polyfills/html5shiv-min.js"&gt;&lt;/script&gt;
&lt;link rel="stylesheet" href="<xsl:value-of select="$path_correction"/>../../dist/grids/css/util-ie-min.css" /&gt;
&lt;link rel="stylesheet" href="<xsl:value-of select="$path_correction"/>../../dist/js/css/pe-ap-ie-min.css" /&gt;
&lt;link rel="stylesheet" href="<xsl:value-of select="$path_correction"/>../../dist/theme-wet-boew/css/theme-serv-ie-min.css" /&gt;
&lt;noscript&gt;&lt;link rel="stylesheet" href="<xsl:value-of select="$path_correction"/>../../dist/theme-wet-boew/css/theme-ns-ie-min.css" /&gt;&lt;/noscript&gt;
&lt;![endif]--&gt;
&lt;!--[if gt IE 8]&gt;&lt;!--&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../../dist/js/jquery.min.js"&gt;&lt;/script&gt;
&lt;link rel="stylesheet" href="<xsl:value-of select="$path_correction"/>../../dist/grids/css/util-min.css" /&gt;
&lt;link rel="stylesheet" href="<xsl:value-of select="$path_correction"/>../../dist/js/css/pe-ap-min.css" /&gt;
&lt;link rel="stylesheet" href="<xsl:value-of select="$path_correction"/>../../dist/theme-wet-boew/css/theme-serv-min.css" /&gt;
&lt;noscript&gt;&lt;link rel="stylesheet" href="<xsl:value-of select="$path_correction"/>../../dist/theme-wet-boew/css/theme-ns-min.css" /&gt;&lt;/noscript&gt;
&lt;!--&lt;![endif]--&gt;

&lt;!-- CustomCSSStart --&gt;
&lt;!-- CustomCSSEnd --&gt;
&lt;/head&gt;

&lt;body&gt;&lt;div id="wb-body"&gt;
&lt;div id="wb-head"&gt;&lt;div id="wb-head-in"&gt;&lt;header&gt;
&lt;!-- HeaderStart --&gt;
&lt;div id="wet-fullhd"&gt;&lt;div id="wet-fullhd-in"&gt;
&lt;/div&gt;&lt;/div&gt;
&lt;div id="wet-bnr" role="banner"&gt;&lt;div id="wet-bnr-in"&gt;
&lt;div id="wet-title"&gt;&lt;p id="wet-title-in"&gt;&lt;object data="<xsl:value-of select="$path_correction"/>../../dist/theme-wet-boew/images/logo.svg" role="img" tabindex="-1" type="image/svg+xml"&gt;&lt;img src="<xsl:value-of select="$path_correction"/>../../dist/theme-wet-boew/images/logo.png" alt="" /&gt;&lt;/object&gt; &lt;span&gt;<xsl:value-of select="/strings/string[@id='%tmpl-wet']/value[lang(current()/@xml:lang)]"/> &lt;small&gt;<xsl:value-of select="/strings/string[@id='%tmpl-wet-subline']/value[lang(current()/@xml:lang)]"/>&lt;/small&gt;&lt;/span&gt;&lt;/p&gt;&lt;/div&gt;
&lt;!-- HeaderEnd --&gt;
&lt;/header&gt;&lt;/div&gt;&lt;/div&gt;

&lt;div id="wb-core"&gt;&lt;div id="wb-core-in" class="equalize"&gt;
&lt;div id="wb-main" role="main"&gt;&lt;div id="wb-main-in"&gt;
&lt;!-- MainContentStart --&gt;
&lt;h1 id="wb-cont"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-msg-title']/value[lang(current()/@xml:lang)]"/>&lt;/h1&gt;

&lt;p&gt;<xsl:value-of select="$tmpl-sample-text"/><xsl:value-of select="$interword-space"/><xsl:value-of select="$tmpl-sample-text"/><xsl:value-of select="$interword-space"/><xsl:value-of select="$tmpl-sample-text"/><xsl:value-of select="$interword-space"/><xsl:value-of select="$tmpl-sample-text"/><xsl:value-of select="$interword-space"/><xsl:value-of select="$tmpl-sample-text"/><xsl:value-of select="$interword-space"/><xsl:value-of select="$tmpl-sample-text"/><xsl:value-of select="$interword-space"/><xsl:value-of select="$tmpl-sample-text"/><xsl:value-of select="$interword-space"/><xsl:value-of select="$tmpl-sample-text"/><xsl:value-of select="$interword-space"/><xsl:value-of select="$tmpl-sample-text"/><xsl:value-of select="$interword-space"/><xsl:value-of select="$tmpl-sample-text"/><xsl:value-of select="$interword-space"/><xsl:value-of select="$tmpl-sample-text"/><xsl:value-of select="$interword-space"/><xsl:value-of select="$tmpl-sample-text"/><xsl:value-of select="$interword-space"/><xsl:value-of select="$tmpl-sample-text"/><xsl:value-of select="$interword-space"/><xsl:value-of select="$tmpl-sample-text"/><xsl:value-of select="$interword-space"/><xsl:value-of select="$tmpl-sample-text"/><xsl:value-of select="$interword-space"/><xsl:value-of select="$tmpl-sample-text"/><xsl:value-of select="$interword-space"/><xsl:value-of select="$tmpl-sample-text"/><xsl:value-of select="$interword-space"/><xsl:value-of select="$tmpl-sample-text"/><xsl:value-of select="$interword-space"/><xsl:value-of select="$tmpl-sample-text"/><xsl:value-of select="$interword-space"/><xsl:value-of select="$tmpl-sample-text"/>&lt;/p&gt;
&lt;ul&gt;
<xsl:choose>
	<xsl:when test="lang('en') or lang('fr')">&lt;li&gt;&lt;a href="cont-<xsl:value-of select="/strings/string[@id='%lang-code-iso-639-2']/value[lang(current()/@xml:lang)]"/>.html"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-home']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;</xsl:when>
	<xsl:otherwise>&lt;li&gt;&lt;a href="cont-<xsl:value-of select="./@xml:lang"/>.html"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-home']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;</xsl:otherwise>
</xsl:choose>
&lt;li&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-contact-us']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="#" rel="license"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-terms']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;
&lt;!-- MainContentEnd --&gt;
&lt;/div&gt;&lt;/div&gt;
&lt;/div&gt;&lt;/div&gt;
&lt;/div&gt;

&lt;!-- ScriptsStart --&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../../dist/js/settings.js"&gt;&lt;/script&gt;
&lt;!--[if lte IE 8]&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../../dist/theme-wet-boew/js/theme-ie-min.js"&gt;&lt;/script&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../../dist/js/pe-ap-ie-min.js"&gt;&lt;/script&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../../dist/js/jquerymobile/jquery.mobile-ie.min.js"&gt;&lt;/script&gt;
&lt;![endif]--&gt;
&lt;!--[if gt IE 8]&gt;&lt;!--&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../../dist/theme-wet-boew/js/theme-min.js"&gt;&lt;/script&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../../dist/js/pe-ap-min.js"&gt;&lt;/script&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../../dist/js/jquerymobile/jquery.mobile.min.js"&gt;&lt;/script&gt;
&lt;!--&lt;![endif]--&gt;
&lt;!-- ScriptsEnd --&gt;

&lt;!-- CustomScriptsStart --&gt;
&lt;!-- CustomScriptsEnd --&gt;
&lt;/body&gt;
&lt;/html&gt;</xsl:template>
	
</xsl:stylesheet>