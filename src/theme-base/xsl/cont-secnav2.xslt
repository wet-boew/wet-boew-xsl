<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<!-- Web Experience Toolkit (WET) / Boîte à outils de l'expérience Web (BOEW)
	wet-boew.github.com/wet-boew/License-eng.txt / wet-boew.github.com/wet-boew/Licence-fra.txt -->

	<xsl:import href="../../base/xsl/base.xslt"/>
	<xsl:output method="text" encoding="utf-8"/>
	<xsl:variable name="root" select="'cont-secnav2'"/>

	<xsl:template match="value" mode="output">
		<xsl:param name="path_correction"/>&lt;!DOCTYPE html&gt;
&lt;!--[if IE 7]&gt;&lt;html dir="<xsl:value-of select="/strings/string[@id='%lang-dir']/value[lang(current()/@xml:lang)]"/>" lang="<xsl:value-of select="./@xml:lang"/>" class="no-js ie7"&gt;&lt;![endif]--&gt;
&lt;!--[if IE 8]&gt;&lt;html dir="<xsl:value-of select="/strings/string[@id='%lang-dir']/value[lang(current()/@xml:lang)]"/>" lang="<xsl:value-of select="./@xml:lang"/>" class="no-js ie8"&gt;&lt;![endif]--&gt;
&lt;!--[if gt IE 8]&gt;&lt;!--&gt;
&lt;html dir="<xsl:value-of select="/strings/string[@id='%lang-dir']/value[lang(current()/@xml:lang)]"/>" lang="<xsl:value-of select="./@xml:lang"/>" class="no-js"&gt;
&lt;!--&lt;![endif]--&gt;
&lt;head&gt;
&lt;meta charset="utf-8" /&gt;
&lt;!-- Web Experience Toolkit (WET) / Boîte à outils de l'expérience Web (BOEW)
wet-boew.github.com/wet-boew/License-eng.txt / wet-boew.github.com/wet-boew/Licence-fra.txt --&gt;
&lt;title&gt;<xsl:value-of select="/strings/string[@id='%tmpl-cont-page']/value[lang(current()/@xml:lang)]"/> - <xsl:value-of select="/strings/string[@id='%tmpl-sec-menu']/value[lang(current()/@xml:lang)]"/> 2 - <xsl:value-of select="/strings/string[@id='%tmpl-base-theme']/value[lang(current()/@xml:lang)]"/> - <xsl:value-of select="/strings/string[@id='%tmpl-work-examples']/value[lang(current()/@xml:lang)]"/> - <xsl:value-of select="/strings/string[@id='%tmpl-wet']/value[lang(current()/@xml:lang)]"/>&lt;/title&gt;

&lt;link rel="shortcut icon" href="<xsl:value-of select="$path_correction"/>../../dist/theme-base/images/favicon.ico" /&gt;
&lt;meta name="description" content="<xsl:value-of select="/strings/string[@id='%lang-eng']/value[lang(current()/@xml:lang)]"/> description / Description en <xsl:value-of select="/strings/string[@id='%lang-fra']/value[lang(current()/@xml:lang)]"/>" /&gt;
&lt;meta name="viewport" content="width=device-width, initial-scale=1" /&gt;

&lt;!--[if lte IE 8]&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../../dist/js/jquery-ie.min.js"&gt;&lt;/script&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../../dist/js/polyfills/html5shiv-min.js"&gt;&lt;/script&gt;
&lt;link rel="stylesheet" href="<xsl:value-of select="$path_correction"/>../../dist/grids/css/util-ie-min.css" /&gt;
&lt;link rel="stylesheet" href="<xsl:value-of select="$path_correction"/>../../dist/js/css/pe-ap-ie-min.css" /&gt;
&lt;link rel="stylesheet" href="<xsl:value-of select="$path_correction"/>../../dist/theme-base/css/theme-ie-min.css" /&gt;
&lt;noscript&gt;&lt;link rel="stylesheet" href="<xsl:value-of select="$path_correction"/>../../dist/theme-base/css/theme-ns-ie-min.css" /&gt;&lt;/noscript&gt;
&lt;![endif]--&gt;
&lt;!--[if gt IE 8]&gt;&lt;!--&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../../dist/js/jquery.min.js"&gt;&lt;/script&gt;
&lt;link rel="stylesheet" href="<xsl:value-of select="$path_correction"/>../../dist/grids/css/util-min.css" /&gt;
&lt;link rel="stylesheet" href="<xsl:value-of select="$path_correction"/>../../dist/js/css/pe-ap-min.css" /&gt;
&lt;link rel="stylesheet" href="<xsl:value-of select="$path_correction"/>../../dist/theme-base/css/theme-min.css" /&gt;
&lt;noscript&gt;&lt;link rel="stylesheet" href="<xsl:value-of select="$path_correction"/>../../dist/theme-base/css/theme-ns-min.css" /&gt;&lt;/noscript&gt;
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
&lt;section&gt;&lt;div id="base-fullhd"&gt;&lt;h2&gt;Full-width header area&lt;/h2&gt;
&lt;p&gt;id="base-fullhd"&lt;/p&gt;
&lt;div id="base-fullhd-in"&gt;
&lt;p class="float-right"&gt;id="base-fullhd-in"&lt;/p&gt;
&lt;ul&gt;
&lt;li id="base-fullhd-lang"&gt;&lt;a href="<xsl:value-of select="$path_correction"/><xsl:value-of select="$root"/>-fra.html" lang="fr"&gt;<xsl:value-of select="/strings/string[@id='%lang-native']/value[lang('fr')]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li id="base-fullhd-lang-2"&gt;&lt;a href="<xsl:value-of select="$path_correction"/><xsl:value-of select="$root"/>-eng.html" lang="en"&gt;<xsl:value-of select="/strings/string[@id='%lang-native']/value[lang('en')]"/>&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;
&lt;/div&gt;
&lt;/div&gt;&lt;/section&gt;

&lt;div id="base-bnr" role="banner"&gt;&lt;div id="base-bnr-in"&gt;
&lt;div id="base-title"&gt;&lt;p id="base-title-in"&gt;&lt;a href="<xsl:value-of select="$path_correction"/>../../index-eng.html"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-wet']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/p&gt;&lt;/div&gt;

&lt;section role="search"&gt;&lt;div id="base-srchbx"&gt;&lt;h2&gt;<xsl:value-of select="/strings/string[@id='%tmpl-search']/value[lang(current()/@xml:lang)]"/>&lt;/h2&gt;
&lt;form action="#" method="post"&gt;&lt;div id="base-srchbx-in"&gt;
&lt;label for="base-srch"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-search-site']/value[lang(current()/@xml:lang)]"/>&lt;/label&gt;&lt;input id="base-srch" name="base-srch" type="search" value="" size="27" maxlength="150" /&gt;
&lt;input id="base-srch-submit" name="base-srch-submit" type="submit" value="<xsl:value-of select="/strings/string[@id='%tmpl-search']/value[lang(current()/@xml:lang)]"/>" /&gt;
&lt;/div&gt;&lt;/form&gt;
&lt;/div&gt;&lt;/section&gt;
&lt;/div&gt;&lt;/div&gt;

&lt;nav role="navigation"&gt;
&lt;div id="base-psnb"&gt;&lt;h2&gt;<xsl:value-of select="/strings/string[@id='%tmpl-site-menu']/value[lang(current()/@xml:lang)]"/>&lt;/h2&gt;&lt;div id="base-psnb-in"&gt;&lt;div class="wet-boew-menubar mb-mega"&gt;&lt;div&gt;
&lt;ul class="mb-menu" data-ajax-replace="<xsl:value-of select="$path_correction"/>../includes/menu-<xsl:value-of select="/strings/string[@id='%lang-code-iso-639-2']/value[lang(current()/@xml:lang)]"/>.txt"&gt;
&lt;li&gt;&lt;div&gt;&lt;a href="http://wet-boew.github.com/wet-boew/index-eng.html"&gt;WET project&lt;/a&gt;&lt;/div&gt;&lt;/li&gt;
&lt;li&gt;&lt;div&gt;&lt;a href="section2/index-eng.html"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-section']/value[lang(current()/@xml:lang)]"/> 2&lt;/a&gt;&lt;/div&gt;&lt;/li&gt;
&lt;li&gt;&lt;div&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-section']/value[lang(current()/@xml:lang)]"/> 3&lt;/a&gt;&lt;/div&gt;&lt;/li&gt;
&lt;li&gt;&lt;div&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-section']/value[lang(current()/@xml:lang)]"/> 4&lt;/a&gt;&lt;/div&gt;&lt;/li&gt;
&lt;li&gt;&lt;div&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-section']/value[lang(current()/@xml:lang)]"/> 5&lt;/a&gt;&lt;/div&gt;&lt;/li&gt;
&lt;li&gt;&lt;div&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-section']/value[lang(current()/@xml:lang)]"/> 6&lt;/a&gt;&lt;/div&gt;&lt;/li&gt;
&lt;li&gt;&lt;div&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-section']/value[lang(current()/@xml:lang)]"/> 7&lt;/a&gt;&lt;/div&gt;&lt;/li&gt;
&lt;/ul&gt;
&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;

&lt;div id="base-bc"&gt;&lt;h2&gt;<xsl:value-of select="/strings/string[@id='%tmpl-bcrumb']/value[lang(current()/@xml:lang)]"/>&lt;/h2&gt;&lt;div id="base-bc-in"&gt;
&lt;ol&gt;
&lt;li&gt;&lt;a href="<xsl:value-of select="$path_correction"/>../../index-eng.html"&gt;<xsl:value-of select="/strings/string[@id='%home']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="<xsl:value-of select="$path_correction"/>../index-eng.html"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-work-examples']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="<xsl:value-of select="$path_correction"/>index-eng.html"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-base-theme']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="section4/index-eng.html"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-section']/value[lang(current()/@xml:lang)]"/> 4&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="section4/section43/index-eng.html"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-section']/value[lang(current()/@xml:lang)]"/> 4.3&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;<xsl:value-of select="/strings/string[@id='%tmpl-cont-page']/value[lang(current()/@xml:lang)]"/> - <xsl:value-of select="/strings/string[@id='%tmpl-sec-menu']/value[lang(current()/@xml:lang)]"/> 2&lt;/li&gt;
&lt;/ol&gt;
&lt;/div&gt;&lt;/div&gt;
&lt;/nav&gt;
&lt;!-- HeaderEnd --&gt;
&lt;/header&gt;&lt;/div&gt;&lt;/div&gt;

&lt;div id="wb-core"&gt;&lt;div id="wb-core-in" class="equalize"&gt;
&lt;div id="wb-main" role="main"&gt;&lt;div id="wb-main-in"&gt;
&lt;!-- MainContentStart --&gt;
&lt;h1 id="wb-cont"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-cont-page']/value[lang(current()/@xml:lang)]"/> - <xsl:value-of select="/strings/string[@id='%tmpl-sec-menu']/value[lang(current()/@xml:lang)]"/> 2 - <xsl:value-of select="/strings/string[@id='%tmpl-base-theme']/value[lang(current()/@xml:lang)]"/>&lt;/h1&gt;

&lt;section&gt;&lt;h2&gt;Heading 2 (&lt;code&gt;h2&lt;/code&gt;) default appearance&lt;/h2&gt;
	&lt;section&gt;&lt;h3&gt;Heading 3 (&lt;code&gt;h3&lt;/code&gt;) default appearance&lt;/h3&gt;
		&lt;section&gt;&lt;h4&gt;Heading 4 (&lt;code&gt;h4&lt;/code&gt;) default appearance&lt;/h4&gt;
			&lt;section&gt;&lt;h5&gt;Heading 5 (&lt;code&gt;h5&lt;/code&gt;) default appearance&lt;/h5&gt;
				&lt;section&gt;&lt;h6&gt;Heading 6 (&lt;code&gt;h6&lt;/code&gt;) default appearance&lt;/h6&gt;
					&lt;p&gt;Paragraph default appearance&lt;/p&gt;
				&lt;/section&gt;
			&lt;/section&gt;
		&lt;/section&gt;
	&lt;/section&gt;
&lt;/section&gt;

&lt;p&gt;&lt;a href="#"&gt;Link default appearance&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;&lt;a href="mailto:"&gt;&lt;code&gt;mailto:&lt;/code&gt; link default appearance&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;&lt;a href="http://www." rel="external"&gt;Third party &lt;code&gt;http://www.&lt;/code&gt; link default appearance&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;&lt;a href=".doc"&gt;Link to file downloads based on file type &lt;code&gt;.doc&lt;/code&gt;, &lt;code&gt;.psd&lt;/code&gt;, &lt;code&gt;.zip&lt;/code&gt;, &lt;code&gt;.pdf&lt;/code&gt;, &lt;code&gt;.xls&lt;/code&gt;, &lt;code&gt;.xlt&lt;/code&gt;, &lt;code&gt;.rtf&lt;/code&gt; and &lt;code&gt;.txt&lt;/code&gt; default appearance&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;Abbreviation default appearance: &lt;abbr title="Treasury Board"&gt;TBS&lt;/abbr&gt;.&lt;/p&gt;

&lt;ul&gt;
&lt;li&gt;unordered list (&lt;code&gt;ul&lt;/code&gt;) first level default appearance
	&lt;ul&gt;
	&lt;li&gt;unordered list (&lt;code&gt;ul&lt;/code&gt;) second level default appearance
		&lt;ul&gt;
		&lt;li&gt;unordered list (&lt;code&gt;ul&lt;/code&gt;) third level default appearance&lt;/li&gt;
		&lt;/ul&gt;
	&lt;/li&gt;
	&lt;/ul&gt;
&lt;/li&gt;
&lt;/ul&gt;

&lt;ol&gt;
&lt;li&gt;ordered list (&lt;code&gt;ol&lt;/code&gt;) first level default appearance&lt;/li&gt;
&lt;li&gt;ordered list (&lt;code&gt;ol&lt;/code&gt;) first level default appearance
	&lt;ol&gt;
	&lt;li&gt;ordered list (&lt;code&gt;ol&lt;/code&gt;) second level default appearance&lt;/li&gt;
	&lt;li&gt;ordered list (&lt;code&gt;ol&lt;/code&gt;) second level default appearance
		&lt;ol&gt;
		&lt;li&gt;ordered list (&lt;code&gt;ol&lt;/code&gt;) third level default appearance&lt;/li&gt;
		&lt;li&gt;ordered list (&lt;code&gt;ol&lt;/code&gt;) third level default appearance&lt;/li&gt;
		&lt;/ol&gt;
	&lt;/li&gt;
	&lt;/ol&gt;
&lt;/li&gt;
&lt;/ol&gt;

&lt;table&gt;
&lt;caption&gt;Table caption default appearance&lt;/caption&gt;
&lt;thead&gt;
&lt;tr&gt;
&lt;th scope="col"&gt;Table header (&lt;code&gt;th&lt;/code&gt;) default appearance&lt;/th&gt;
&lt;th scope="col"&gt;Table header (&lt;code&gt;th&lt;/code&gt;) default appearance&lt;/th&gt;
&lt;/tr&gt;
&lt;/thead&gt;
&lt;tbody&gt;
&lt;tr&gt;
&lt;td&gt;Table data (&lt;code&gt;td&lt;/code&gt;) default appearance&lt;/td&gt;
&lt;td&gt;Table data (&lt;code&gt;td&lt;/code&gt;) default appearance&lt;/td&gt;
&lt;/tr&gt;
&lt;/tbody&gt;
&lt;/table&gt;

&lt;form action="#" method="post"&gt;
&lt;div&gt;&lt;label for="data1"&gt;Form input default appearance:&lt;/label&gt; &lt;input name="data1" type="text" id="data1" /&gt;&lt;/div&gt;
&lt;div&gt;&lt;label for="data2"&gt;Form text area default appearance:&lt;/label&gt; &lt;textarea name="data2" cols="15" rows="3" id="data2"&gt;&lt;/textarea&gt;&lt;/div&gt;
&lt;div&gt;&lt;label for="data4"&gt;Form &lt;code&gt;select&lt;/code&gt; default appearance:&lt;/label&gt; 
&lt;select id="data4" name="data4"&gt;
&lt;option value="Option 1"&gt;Option 1&lt;/option&gt;
&lt;option value="Option 2"&gt;Option 2&lt;/option&gt;
&lt;option value="Option 3"&gt;Option 3&lt;/option&gt;
&lt;option value="Option 4"&gt;Option 4&lt;/option&gt;
&lt;/select&gt;&lt;/div&gt;
&lt;fieldset&gt;&lt;legend&gt;Form &lt;code&gt;legend&lt;/code&gt;, &lt;code&gt;fieldset&lt;/code&gt; and &lt;code&gt;checkbox&lt;/code&gt; default appearance&lt;/legend&gt;
&lt;div&gt;&lt;input name="checkbox" type="checkbox" id="data5" value="checkbox" /&gt;&amp;#160;&lt;label for="data5"&gt;Option 1&lt;/label&gt;&amp;#160;&amp;#160;
&lt;input name="checkbox" type="checkbox" id="data6" value="checkbox" /&gt;&amp;#160;&lt;label for="data6"&gt;Option 2&lt;/label&gt;&amp;#160;&amp;#160;
&lt;input name="checkbox" type="checkbox" id="data7" value="checkbox" /&gt;&amp;#160;&lt;label for="data7"&gt;Option 3&lt;/label&gt;&amp;#160;&amp;#160;
&lt;input name="checkbox" type="checkbox" id="data8" value="checkbox" /&gt;&amp;#160;&lt;label for="data8"&gt;Option 4&lt;/label&gt;&lt;/div&gt;
&lt;/fieldset&gt;
&lt;div&gt;&lt;input name="submit" type="submit" id="submit" value="Submit default appearance" /&gt;
&lt;input name="reset" type="reset" id="reset" value="Reset default appearance" /&gt;&lt;/div&gt;
&lt;/form&gt;

&lt;blockquote&gt;
&lt;p&gt;&amp;quot;Blockquote default appearance&amp;quot;.&lt;/p&gt;
&lt;/blockquote&gt;

&lt;dl id="base-date-mod" role="contentinfo"&gt;
&lt;dt&gt;<xsl:value-of select="/strings/string[@id='%tmpl-date-mod']/value[lang(current()/@xml:lang)]"/>&lt;/dt&gt;&lt;dd&gt;&lt;span&gt;&lt;time&gt;2012-09-17&lt;/time&gt;&lt;/span&gt;&lt;/dd&gt;
&lt;/dl&gt;
&lt;div class="clear"&gt;&lt;/div&gt;
&lt;!-- MainContentEnd --&gt;
&lt;/div&gt;&lt;/div&gt;

&lt;div id="wb-sec"&gt;&lt;div id="wb-sec-in"&gt;&lt;nav role="navigation"&gt;&lt;h2 id="wb-nav"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-sec-menu']/value[lang(current()/@xml:lang)]"/>&lt;/h2&gt;
&lt;div class="wb-sec-def"&gt;
&lt;!-- SecNavStart --&gt;
&lt;section&gt;&lt;h3 class="top-section"&gt;&lt;a href="section4/index-eng.html"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-section']/value[lang(current()/@xml:lang)]"/> 4&lt;/a&gt;&lt;/h3&gt;
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
&lt;section&gt;&lt;h4&gt;&lt;a href="section4/section43/index-eng.html"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-section']/value[lang(current()/@xml:lang)]"/> 4.3&lt;/a&gt;&lt;/h4&gt;
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
&lt;nav role="navigation"&gt;&lt;div id="base-sft"&gt;&lt;h3&gt;<xsl:value-of select="/strings/string[@id='%tmpl-site-foot']/value[lang(current()/@xml:lang)]"/>&lt;/h3&gt;&lt;div id="base-sft-in"&gt;
&lt;section&gt;&lt;div class="span-2"&gt;&lt;h4 class="base-col-head"&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-about-us']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/h4&gt;
&lt;ul&gt;
&lt;li&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-our-mandate']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-our-history']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;
&lt;/div&gt;&lt;/section&gt;
&lt;section&gt;&lt;div class="span-2"&gt;&lt;h4 class="base-col-head"&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-news']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/h4&gt;
&lt;ul&gt;
&lt;li&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-news-rel']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-media-avisories']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-multimedia']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;
&lt;/div&gt;&lt;/section&gt;
&lt;section&gt;&lt;div class="span-2"&gt;&lt;h4 class="base-col-head"&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-contact-us']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/h4&gt;
&lt;address&gt;
&lt;ul&gt;
&lt;li&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-phone-nums']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-office-loc']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;
&lt;/address&gt;
&lt;/div&gt;&lt;/section&gt;
&lt;section&gt;&lt;div class="span-2"&gt;&lt;h4 class="base-col-head"&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-stay-connected']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/h4&gt;
&lt;ul&gt;
&lt;li&gt;&lt;a rel="external" href="#"&gt;YouTube&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a rel="external" href="#"&gt;Twitter&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href="#"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-feeds']/value[lang(current()/@xml:lang)]"/>&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;
&lt;/div&gt;&lt;/section&gt;
&lt;/div&gt;&lt;/div&gt;&lt;/nav&gt;

&lt;section&gt;&lt;div id="base-fullft"&gt;&lt;h3&gt;Full-width footer area&lt;/h3&gt;
&lt;p class="mobile-hide"&gt;id="base-fullft"&lt;/p&gt;
&lt;div id="base-fullft-in"&gt;&lt;p class="mobile-hide"&gt;id="base-fullft-in"&lt;/p&gt;&lt;/div&gt;
&lt;/div&gt;&lt;/section&gt;
&lt;!-- FooterEnd --&gt;
&lt;/footer&gt;
&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;

&lt;!-- ScriptsStart --&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../../dist/js/settings.js"&gt;&lt;/script&gt;
&lt;!--[if lte IE 8]&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../../dist/theme-base/js/theme-ie-min.js"&gt;&lt;/script&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../../dist/js/pe-ap-ie-min.js"&gt;&lt;/script&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../../dist/js/jquerymobile/jquery.mobile-ie.min.js"&gt;&lt;/script&gt;
&lt;![endif]--&gt;
&lt;!--[if gt IE 8]&gt;&lt;!--&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../../dist/theme-base/js/theme-min.js"&gt;&lt;/script&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../../dist/js/pe-ap-min.js"&gt;&lt;/script&gt;
&lt;script src="<xsl:value-of select="$path_correction"/>../../dist/js/jquerymobile/jquery.mobile.min.js"&gt;&lt;/script&gt;
&lt;!--&lt;![endif]--&gt;
&lt;!-- ScriptsEnd --&gt;

&lt;!-- CustomScriptsStart --&gt;
&lt;!-- CustomScriptsEnd --&gt;
&lt;/body&gt;
&lt;/html&gt;</xsl:template>
	
</xsl:stylesheet>