<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:saxon="http://saxon.sf.net/">

	<!-- Web Experience Toolkit (WET) / Boîte à outils de l'expérience Web (BOEW)
	wet-boew.github.io/wet-boew/License-eng.txt / wet-boew.github.io/wet-boew/Licence-fra.txt -->
	<xsl:output method="text" encoding="utf-8"/>
	<xsl:output method="html" name="html" indent="no" omit-xml-declaration="yes" encoding="utf-8" use-character-maps="codepages"/>
	<xsl:variable name="root" select="string-join(tokenize(tokenize(base-uri(), '/')[last()], '-')[position() &lt; last()],'-')"/>
	<xsl:variable name="strings" select="document('../../base/xsl/i18n.xml')/strings"/>

	<xsl:character-map name="codepages">
		<xsl:output-character character="&#x00A0;" string="&#xA0;"/>
		<xsl:output-character character="&#x0021;" string="&#x21;"/>
		<xsl:output-character character="&#x0022;" string="&#x22;"/>
	</xsl:character-map>

	<xsl:template match="/html">
		<xsl:param name="path_correction">
			<xsl:if test="tokenize(base-uri(), '/')[last()-1] != 'demos.src'">../</xsl:if>
		</xsl:param>
		<xsl:param name="path_correction_lang"/>
		<xsl:param name="wet_fallback_language">
			<xsl:choose>
				<xsl:when test="@lang = 'fr'">
					<xsl:value-of select="@lang" />
				</xsl:when>
				<xsl:otherwise>
					<xsl:text>en</xsl:text>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:param>
		<xsl:param name="menu_language">
			<xsl:choose>
				<xsl:when test="@lang = 'en' or @lang = 'fr'">
					<xsl:value-of select="$strings/string[@id='%lang-code-iso-639-2']/value[lang(current()/@lang)]"/>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="@lang"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:param>
		<xsl:param name="body_type">
			<xsl:choose>
				<xsl:when test="exists(body/@data-leftnav)">wb-body-sec</xsl:when>
				<xsl:otherwise>wb-body</xsl:otherwise>
			</xsl:choose>
		</xsl:param>
		<xsl:param name="interword-space">
			<xsl:if test="$strings/string[@id='%interword-space']/value[lang(current()/@lang)] = '&amp;#32;'"><xsl:text> </xsl:text></xsl:if>
		</xsl:param>
		<xsl:param name="hyphen" select="$strings/string[@id='%hyphen']/value[lang(current()/@lang)]"/>
		<xsl:param name="tmpl-section" select="$strings/string[@id='%tmpl-section']/value[lang(current()/@lang)]"/>&lt;!DOCTYPE html&gt;
&lt;!--[if IE 7]&gt;&lt;html <xsl:if test="not($strings/string[@id='%lang-dir']/value[lang(current()/@lang)] = 'ltr')"><xsl:if test="not($strings/string[@id='%lang-dir']/value[lang(current()/@lang)] = 'ltr')">dir="<xsl:value-of select="$strings/string[@id='%lang-dir']/value[lang(current()/@lang)]"/>" </xsl:if></xsl:if>lang="<xsl:value-of select="./@lang"/>" class="no-js ie7"&gt;&lt;![endif]--&gt;
&lt;!--[if IE 8]&gt;&lt;html <xsl:if test="not($strings/string[@id='%lang-dir']/value[lang(current()/@lang)] = 'ltr')">dir="<xsl:value-of select="$strings/string[@id='%lang-dir']/value[lang(current()/@lang)]"/>" </xsl:if>lang="<xsl:value-of select="./@lang"/>" class="no-js ie8"&gt;&lt;![endif]--&gt;
&lt;!--[if gt IE 8]&gt;&lt;!--&gt;
&lt;html <xsl:if test="not($strings/string[@id='%lang-dir']/value[lang(current()/@lang)] = 'ltr')">dir="<xsl:value-of select="$strings/string[@id='%lang-dir']/value[lang(current()/@lang)]"/>" </xsl:if>lang="<xsl:value-of select="./@lang"/>" class="no-js"&gt;
&lt;!--&lt;![endif]--&gt;
&lt;head&gt;
&lt;meta charset="utf-8" /&gt;
&lt;!-- Web Experience Toolkit (WET) / Boîte à outils de l'expérience Web (BOEW)
wet-boew.github.io/wet-boew/License-eng.txt / wet-boew.github.io/wet-boew/Licence-fra.txt --&gt;
&lt;title&gt;<xsl:value-of select="/html/head/title"/><xsl:value-of select="$hyphen"/><xsl:value-of select="$strings/string[@id='%tmpl-work-examples']/value[lang(current()/@lang)]"/><xsl:value-of select="$hyphen"/><xsl:value-of select="$strings/string[@id='%tmpl-wet']/value[lang(current()/@lang)]"/>&lt;/title&gt;

&lt;link rel="shortcut icon" href="<xsl:value-of select="$path_correction"/>../dist/theme-wet-boew/images/favicon.ico" /&gt;
&lt;meta name="description" content="<xsl:value-of select="$strings/string[@id='%lang-eng']/value[lang(current()/@lang)]"/> description / Description en <xsl:value-of select="$strings/string[@id='%lang-fra']/value[lang(current()/@lang)]"/>" /&gt;
&lt;meta name="viewport" content="width=device-width, initial-scale=1" /&gt;

&lt;!--[if lte IE 8]&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../dist/js/jquery-ie.min.js"&gt;&lt;/script&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../dist/js/polyfills/html5shiv-min.js"&gt;&lt;/script&gt;
&lt;link rel="stylesheet" href="<xsl:value-of select="$path_correction"/>../dist/grids/css/util-ie-min.css" /&gt;
&lt;link rel="stylesheet" href="<xsl:value-of select="$path_correction"/>../dist/js/css/pe-ap-ie-min.css" /&gt;
&lt;link rel="stylesheet" href="<xsl:value-of select="$path_correction"/>../dist/theme-wet-boew/css/theme-ie-min.css" /&gt;
&lt;noscript&gt;&lt;link rel="stylesheet" href="<xsl:value-of select="$path_correction"/>../dist/theme-wet-boew/css/theme-ns-ie-min.css" /&gt;&lt;/noscript&gt;
&lt;![endif]--&gt;
&lt;!--[if gt IE 8]&gt;&lt;!--&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../dist/js/jquery.min.js"&gt;&lt;/script&gt;
&lt;link rel="stylesheet" href="<xsl:value-of select="$path_correction"/>../dist/grids/css/util-min.css" /&gt;
&lt;link rel="stylesheet" href="<xsl:value-of select="$path_correction"/>../dist/js/css/pe-ap-min.css" /&gt;
&lt;link rel="stylesheet" href="<xsl:value-of select="$path_correction"/>../dist/theme-wet-boew/css/theme-min.css" /&gt;
&lt;noscript&gt;&lt;link rel="stylesheet" href="<xsl:value-of select="$path_correction"/>../dist/theme-wet-boew/css/theme-ns-min.css" /&gt;&lt;/noscript&gt;
&lt;!--&lt;![endif]--&gt;

&lt;!-- CustomCSSStart --&gt;
<xsl:apply-templates select="head" mode="custom_styles"/>
&lt;!-- CustomCSSEnd --&gt;
&lt;/head&gt;

&lt;body&gt;&lt;div id="<xsl:value-of select="$body_type"/>"&gt;
&lt;div id="wb-skip"&gt;
&lt;ul id="wb-tphp"&gt;
&lt;li id="wb-skip1"&gt;&lt;a href="#wb-cont"&gt;<xsl:value-of select="$strings/string[@id='%tmpl-skip-main']/value[lang(current()/@lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li id="wb-skip2"&gt;&lt;a href="#wb-nav"&gt;<xsl:value-of select="$strings/string[@id='%tmpl-skip-foot']/value[lang(current()/@lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;
&lt;/div&gt;

&lt;div id="wb-head"&gt;&lt;div id="wb-head-in"&gt;&lt;header&gt;
&lt;!-- HeaderStart --&gt;
&lt;section&gt;&lt;div id="wet-fullhd"&gt;&lt;h2&gt;<xsl:value-of select="$strings/string[@id='%tmpl-header-bar']/value[lang(current()/@lang)]"/>&lt;/h2&gt;
&lt;div id="wet-fullhd-in"&gt;
&lt;ul&gt;
<xsl:choose>
	<xsl:when test="@lang = 'en'">&lt;li id="wet-fullhd-lang-2"&gt;&lt;a href="<xsl:value-of select="$path_correction_lang"/><xsl:value-of select="$root"/>-fra.html" lang="fr"&gt;<xsl:value-of select="$strings/string[@id='%lang-native']/value[lang('fr')]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li id="wet-fullhd-lang-current"&gt;<xsl:value-of select="$strings/string[@id='%lang-native']/value[lang(current()/@lang)]"/>&lt;/li&gt;</xsl:when>
	<xsl:when test="@lang = 'fr'">&lt;li id="wet-fullhd-lang-current"&gt;<xsl:value-of select="$strings/string[@id='%lang-native']/value[lang(current()/@lang)]"/>&lt;/li&gt;
&lt;li id="wet-fullhd-lang-2"&gt;&lt;a href="<xsl:value-of select="$path_correction_lang"/><xsl:value-of select="$root"/>-eng.html" lang="en"&gt;<xsl:value-of select="$strings/string[@id='%lang-native']/value[lang('en')]"/>&lt;/a&gt;&lt;/li&gt;</xsl:when>
	<xsl:otherwise>&lt;li id="wet-fullhd-lang-current"&gt;<xsl:value-of select="$strings/string[@id='%lang-native']/value[lang(current()/@lang)]"/>&lt;/li&gt;
&lt;li id="wet-fullhd-lang"&gt;&lt;a href="<xsl:value-of select="$path_correction_lang"/><xsl:value-of select="$root"/>-fra.html" lang="fr"&gt;<xsl:value-of select="$strings/string[@id='%lang-native']/value[lang('fr')]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li id="wet-fullhd-lang-2"&gt;&lt;a href="<xsl:value-of select="$path_correction_lang"/><xsl:value-of select="$root"/>-eng.html" lang="en"&gt;<xsl:value-of select="$strings/string[@id='%lang-native']/value[lang('en')]"/>&lt;/a&gt;&lt;/li&gt;</xsl:otherwise>
</xsl:choose>
&lt;/ul&gt;
&lt;/div&gt;
&lt;/div&gt;&lt;/section&gt;

&lt;div id="wet-bnr" role="banner"&gt;&lt;div id="wet-bnr-in"&gt;
&lt;div id="wet-title"&gt;&lt;p id="wet-title-in"&gt;&lt;a href="<xsl:value-of select="$path_correction"/>../index-<xsl:value-of select="$strings/string[@id='%lang-code-iso-639-2']/value[lang($wet_fallback_language)]"/>.html"&gt;&lt;object data="<xsl:value-of select="$path_correction"/>../dist/theme-wet-boew/images/logo.svg" role="img" tabindex="-1" type="image/svg+xml"&gt;&lt;img src="<xsl:value-of select="$path_correction"/>../dist/theme-wet-boew/images/logo.png" alt="" /&gt;&lt;/object&gt; &lt;span&gt;<xsl:value-of select="$strings/string[@id='%tmpl-wet']/value[lang(current()/@lang)]"/> &lt;small&gt;<xsl:value-of select="$strings/string[@id='%tmpl-wet-subline']/value[lang(current()/@lang)]"/>&lt;/small&gt;&lt;/span&gt;&lt;/a&gt;&lt;/p&gt;&lt;/div&gt;

&lt;section role="search"&gt;&lt;div id="wet-srchbx"&gt;&lt;h2&gt;<xsl:value-of select="$strings/string[@id='%tmpl-search']/value[lang(current()/@lang)]"/>&lt;/h2&gt;
&lt;form action="#" method="post"&gt;&lt;div id="wet-srchbx-in"&gt;
&lt;label for="wet-srch"&gt;<xsl:value-of select="$strings/string[@id='%tmpl-search-site']/value[lang(current()/@lang)]"/>&lt;/label&gt;&lt;input id="wet-srch" name="wet-srch" type="search" value="" size="27" maxlength="150" /&gt;
&lt;input id="wet-srch-submit" name="wet-srch-submit" type="submit" value="<xsl:value-of select="$strings/string[@id='%tmpl-search']/value[lang(current()/@lang)]"/>" data-icon="search" class="button button-accent" /&gt;
&lt;/div&gt;&lt;/form&gt;
&lt;/div&gt;&lt;/section&gt;
&lt;/div&gt;&lt;/div&gt;

&lt;nav role="navigation"&gt;
&lt;div id="wet-psnb"&gt;&lt;h2&gt;<xsl:value-of select="$strings/string[@id='%tmpl-site-menu']/value[lang(current()/@lang)]"/>&lt;/h2&gt;&lt;div id="wet-psnb-in"&gt;&lt;div class="wet-boew-menubar mb-mega"&gt;&lt;div&gt;
&lt;ul class="mb-menu" data-ajax-replace="<xsl:value-of select="$path_correction"/>includes/menu-<xsl:value-of select="$menu_language"/>.txt"&gt;
&lt;li&gt;&lt;div&gt;&lt;a href="http://wet-boew.github.io/wet-boew/index-<xsl:value-of select="$strings/string[@id='%lang-code-iso-639-2']/value[lang($wet_fallback_language)]"/>.html"&gt;<xsl:value-of select="$strings/string[@id='%tmpl-wet-project']/value[lang($wet_fallback_language)]"/>&lt;/a&gt;&lt;/div&gt;&lt;/li&gt;
<xsl:choose>
	<xsl:when test="@lang = 'fr'">&lt;li&gt;&lt;div&gt;&lt;a href="https://github.com/wet-boew/wet-boew/wiki/Mise-en-%C5%93uvre-de-la-BOEW"&gt;<xsl:value-of select="$strings/string[@id='%tmpl-implement-wet']/value[lang(current()/@lang)]"/>&lt;/a&gt;&lt;/div&gt;&lt;/li&gt;
&lt;li&gt;&lt;div&gt;&lt;a href="https://github.com/wet-boew/wet-boew/wiki/Lignes-directrices-pour-les-contributeurs"&gt;<xsl:value-of select="$strings/string[@id='%tmpl-contribute-wet']/value[lang(current()/@lang)]"/>&lt;/a&gt;&lt;/div&gt;&lt;/li&gt;</xsl:when>
	<xsl:otherwise>&lt;li&gt;&lt;div&gt;&lt;a href="https://github.com/wet-boew/wet-boew/wiki/Implementing-WET"&gt;<xsl:value-of select="$strings/string[@id='%tmpl-implement-wet']/value[lang(current()/@lang)]"/>&lt;/a&gt;&lt;/div&gt;&lt;/li&gt;
&lt;li&gt;&lt;div&gt;&lt;a href="https://github.com/wet-boew/wet-boew/wiki/Contributor-guidelines"&gt;<xsl:value-of select="$strings/string[@id='%tmpl-contribute-wet']/value[lang(current()/@lang)]"/>&lt;/a&gt;&lt;/div&gt;&lt;/li&gt;</xsl:otherwise>
</xsl:choose>
&lt;/ul&gt;
&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;

&lt;div id="wet-bc"&gt;&lt;h2&gt;<xsl:value-of select="$strings/string[@id='%tmpl-bcrumb']/value[lang(current()/@lang)]"/>&lt;/h2&gt;&lt;div id="wet-bc-in"&gt;
&lt;ol&gt;
&lt;li&gt;&lt;a href="<xsl:value-of select="$path_correction"/>../index-<xsl:value-of select="$strings/string[@id='%lang-code-iso-639-2']/value[lang($wet_fallback_language)]"/>.html"&gt;<xsl:value-of select="$strings/string[@id='%home']/value[lang(current()/@lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="<xsl:value-of select="$path_correction"/>index-<xsl:value-of select="$strings/string[@id='%lang-code-iso-639-2']/value[lang($wet_fallback_language)]"/>.html"&gt;<xsl:value-of select="$strings/string[@id='%tmpl-work-examples']/value[lang(current()/@lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;<xsl:value-of select="/html/head/title"/>&lt;/li&gt;
&lt;/ol&gt;
&lt;/div&gt;&lt;/div&gt;
&lt;/nav&gt;
&lt;!-- HeaderEnd --&gt;
&lt;/header&gt;&lt;/div&gt;&lt;/div&gt;

&lt;div id="wb-core"&gt;&lt;div id="wb-core-in" class="equalize"&gt;
&lt;div id="wb-main" role="main"&gt;&lt;div id="wb-main-in"&gt;
&lt;!-- MainContentStart --&gt;
&lt;h1 id="wb-cont"&gt;<xsl:value-of select="/html/head/title"/>&lt;/h1&gt;
<xsl:apply-templates select="/html/body/node()"/>
&lt;dl id="wet-date-mod" role="contentinfo"&gt;
&lt;dt&gt;<xsl:value-of select="$strings/string[@id='%tmpl-date-mod']/value[lang(current()/@lang)]"/>&lt;/dt&gt;&lt;dd&gt;&lt;span&gt;&lt;time&gt;<xsl:value-of select="adjust-date-to-timezone(current-date(), null)"/>&lt;/time&gt;&lt;/span&gt;&lt;/dd&gt;
&lt;/dl&gt;
&lt;div class="clear"&gt;&lt;/div&gt;
&lt;!-- MainContentEnd --&gt;
&lt;/div&gt;&lt;/div&gt;
<xsl:if test="$body_type = 'wb-body-sec'">

&lt;div id="wb-sec"&gt;&lt;div id="wb-sec-in"&gt;&lt;nav role="navigation"&gt;&lt;h2 id="wb-nav"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-sec-menu']/value[lang(current()/@xml:lang)]"/>&lt;/h2&gt;
&lt;div class="wb-sec-def"&gt;
&lt;!-- SecNavStart --&gt;
<xsl:apply-templates select="body" mode="left_nav"/>
&lt;!-- SecNavEnd --&gt;
&lt;/div&gt;
&lt;/nav&gt;&lt;/div&gt;&lt;/div&gt;

</xsl:if>
&lt;/div&gt;&lt;/div&gt;

&lt;div id="wb-foot"&gt;&lt;div id="wb-foot-in"&gt;&lt;footer&gt;&lt;h2<xsl:if test="$body_type = 'wb-body'"> id="wb-nav"</xsl:if>&gt;<xsl:value-of select="$strings/string[@id='%tmpl-foot']/value[lang(current()/@lang)]"/>&lt;/h2&gt;
&lt;!-- FooterStart --&gt;
&lt;nav role="navigation"&gt;&lt;div id="wet-sft"&gt;&lt;h3&gt;<xsl:value-of select="$strings/string[@id='%tmpl-site-foot']/value[lang(current()/@lang)]"/>&lt;/h3&gt;&lt;div id="wet-sft-in"&gt;
&lt;section&gt;&lt;div class="span-2"&gt;&lt;h4 class="wet-col-head"&gt;<xsl:value-of select="$strings/string[@id='%about']/value[lang(current()/@lang)]"/>&lt;/h4&gt;
&lt;ul&gt;
&lt;li&gt;&lt;a href="http://wet-boew.github.io/wet-boew/index-<xsl:choose><xsl:when test="@lang = 'fr'">fra.html#apropos</xsl:when><xsl:otherwise>eng.html#about</xsl:otherwise></xsl:choose>"&gt;<xsl:value-of select="$strings/string[@id='%tmpl-about-wet']/value[lang(current()/@lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="http://www.tbs-sct.gc.ca/ws-nw/index-<xsl:value-of select="$strings/string[@id='%lang-code-iso-639-2']/value[lang($wet_fallback_language)]"/>.asp"&gt;<xsl:value-of select="$strings/string[@id='%tmpl-about-web-standards']/value[lang(current()/@lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;
&lt;/div&gt;&lt;/section&gt;
&lt;section&gt;&lt;div class="span-2"&gt;&lt;h4 class="wet-col-head"&gt;<xsl:value-of select="$strings/string[@id='%tmpl-contact-us']/value[lang(current()/@lang)]"/>&lt;/h4&gt;
&lt;ul&gt;
&lt;li&gt;&lt;a href="https://github.com/wet-boew/wet-boew/issues/new"&gt;<xsl:value-of select="$strings/string[@id='%tmpl-questions-comments']/value[lang(current()/@lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;
&lt;/div&gt;&lt;/section&gt;
&lt;section&gt;&lt;div class="span-2"&gt;&lt;h4 class="wet-col-head"&gt;<xsl:value-of select="$strings/string[@id='%tmpl-news']/value[lang(current()/@lang)]"/>&lt;/h4&gt;
&lt;ul&gt;
&lt;li&gt;&lt;a href="https://github.com/wet-boew/wet-boew/pulse"&gt;<xsl:value-of select="$strings/string[@id='%tmpl-recent-project-activity']/value[lang(current()/@lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="https://github.com/wet-boew/wet-boew/graphs"&gt;<xsl:value-of select="$strings/string[@id='%tmpl-project-stats']/value[lang(current()/@lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;
&lt;/div&gt;&lt;/section&gt;
&lt;section&gt;&lt;div class="span-2"&gt;&lt;h4 class="wet-col-head"&gt;<xsl:value-of select="$strings/string[@id='%tmpl-stay-connected']/value[lang(current()/@lang)]"/>&lt;/h4&gt;
&lt;ul&gt;
&lt;li&gt;&lt;a rel="external" href="https://twitter.com/<xsl:choose><xsl:when test="@lang = 'fr'">BoiteExpWeb</xsl:when><xsl:otherwise>WebExpToolkit</xsl:otherwise></xsl:choose>"&gt;Twitter&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;
&lt;/div&gt;&lt;/section&gt;
&lt;/div&gt;&lt;/div&gt;&lt;/nav&gt;
&lt;!-- FooterEnd --&gt;
&lt;/footer&gt;
&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;

&lt;!-- ScriptsStart --&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../dist/js/settings.js"&gt;&lt;/script&gt;
&lt;!--[if lte IE 8]&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../dist/theme-wet-boew/js/theme-ie-min.js"&gt;&lt;/script&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../dist/js/pe-ap-ie-min.js"&gt;&lt;/script&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../dist/js/jquerymobile/jquery.mobile-ie.min.js"&gt;&lt;/script&gt;
&lt;![endif]--&gt;
&lt;!--[if gt IE 8]&gt;&lt;!--&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../dist/theme-wet-boew/js/theme-min.js"&gt;&lt;/script&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../dist/js/pe-ap-min.js"&gt;&lt;/script&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../dist/js/jquerymobile/jquery.mobile.min.js"&gt;&lt;/script&gt;
&lt;!--&lt;![endif]--&gt;
&lt;!-- ScriptsEnd --&gt;

&lt;!-- CustomScriptsStart --&gt;
<xsl:apply-templates select="." mode="custom_script"/>
&lt;!-- CustomScriptsEnd --&gt;
&lt;/body&gt;
&lt;/html&gt;</xsl:template>

<xsl:template match="/html" mode="custom_script">
	<xsl:for-each select="body/script">
		<xsl:value-of select="saxon:serialize(., 'html')"/>
		<xsl:if test="position() &lt; last()">
			<xsl:value-of select="following-sibling::text()"/>
		</xsl:if>
	</xsl:for-each>
</xsl:template>

<xsl:template match="head" mode="custom_styles">
	<xsl:for-each select="./link[@rel='stylesheet'] | ./style">
		<xsl:value-of select="saxon:serialize(., 'html')"/>
		<xsl:if test="position() &lt; last()">
			<xsl:value-of select="following-sibling::text()"/>
		</xsl:if>
	</xsl:for-each>
</xsl:template>

<xsl:template match="body" mode="left_nav">
	<xsl:value-of select="unparsed-text(resolve-uri(@data-leftnav, base-uri()), 'UTF-8')"/>
</xsl:template>

<xsl:template match="node()"><xsl:value-of select="saxon:serialize(., 'html')"/></xsl:template>

<xsl:template match="script"><!--Suppress script tags from the body and add them to the custom script section--></xsl:template>
</xsl:stylesheet>