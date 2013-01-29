<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<!-- Web Experience Toolkit (WET) / Boîte à outils de l'expérience Web (BOEW)
	wet-boew.github.com/wet-boew/License-eng.txt / wet-boew.github.com/wet-boew/Licence-fra.txt -->
	
	<xsl:variable name="lang" select="/html/@lang" />
	<xsl:variable name="strings" select="document('i18n.xml')/strings" />

	<xsl:param name="wet_root" />
	<xsl:param name="use_cdn" />
	<xsl:param name="cdn_jquery"/>
	<xsl:param name="cdn_jquery_ie"/>

    <xsl:template match="/html">
		<xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html&gt;
</xsl:text>
		<xsl:comment>[if IE 7]&gt;&lt;html lang="<xsl:value-of select="@lang"/>" class="no-js ie7"&gt;&lt;![endif]</xsl:comment><xsl:text>
</xsl:text>
		<xsl:comment>[if IE 8]&gt;&lt;html lang="<xsl:value-of select="@lang"/>" class="no-js ie8"&gt;&lt;![endif]</xsl:comment><xsl:text>
</xsl:text>
		<xsl:comment>[if gt IE 8]&gt;&lt;!</xsl:comment><xsl:text>
</xsl:text>
		<xsl:copy>
			<xsl:for-each select="@*">
				<xsl:copy-of select="."/>
			</xsl:for-each>
			<xsl:comment>&lt;![endif]</xsl:comment>
			<xsl:apply-templates />
		</xsl:copy>
	</xsl:template>

	<xsl:template match="head">
		<xsl:copy>
			<meta charset="utf-8" />
			<xsl:comment> Web Experience Toolkit (WET) / Boîte à outils de l'expérience Web (BOEW)
wet-boew.github.com/wet-boew/License-eng.txt / wet-boew.github.com/wet-boew/Licence-fra.txt </xsl:comment>
			<xsl:copy-of select="title" />
			<xsl:text>

</xsl:text>
			<xsl:copy-of select="link[@rel='shortcut icon']"/>
			<xsl:copy-of select="meta[not(@charset)]"/>
			<meta name="viewport" content="width=device-width, initial-scale=1" />
			<xsl:text>

</xsl:text>
			<xsl:apply-templates select="." mode="resources"/>
			<xsl:text>

</xsl:text>
			<xsl:comment> CustomScriptsCSSStart </xsl:comment>
			<xsl:apply-templates select="script | link[@rel!='shortcut icon'] | style" />
			<xsl:comment> CustomScriptsCSSEnd </xsl:comment>
		</xsl:copy>
	</xsl:template>

	<xsl:template match="head" mode="resources">
		<xsl:comment>[if lte IE 8]&gt;
<xsl:choose>
			<xsl:when test="boolean($use_cdn) = true() and $cdn_jquery_ie != ''">&lt;script src="<xsl:value-of select="$cdn_jquery_ie"/>"&gt;&lt;/script&gt;</xsl:when>
			<xsl:otherwise>&lt;script src="<xsl:value-of select="$wet_root"/>/js/jquery-ie.min.js"&gt;&lt;/script&gt;</xsl:otherwise>
		</xsl:choose>
&lt;script src="<xsl:value-of select="$wet_root"/>/js/polyfills/html5shiv-min.js"&gt;&lt;/script&gt;
&lt;link rel="stylesheet" href="<xsl:value-of select="$wet_root"/>/grids/css/util-ie-min.css" /&gt;
&lt;link rel="stylesheet" href="<xsl:value-of select="$wet_root"/>/js/css/pe-ap-ie-min.css" /&gt;
&lt;link rel="stylesheet" href="<xsl:value-of select="$wet_root"/>/<xsl:value-of select="$theme"/>/css/theme-ie-min.css" /&gt;
&lt;![endif]</xsl:comment><xsl:text>
</xsl:text>
		<xsl:comment>[if gt IE 8]&gt;&lt;!</xsl:comment><xsl:text>
</xsl:text>
<xsl:choose>
	<xsl:when test="boolean($use_cdn) = true() and $cdn_jquery != ''"><script src="{$cdn_jquery}"></script></xsl:when>
	<xsl:otherwise><script src="{$wet_root}/js/jquery.min.js"></script></xsl:otherwise>
</xsl:choose>
		<link rel="stylesheet" href="{$wet_root}/grids/css/util-min.css" />
		<link rel="stylesheet" href="{$wet_root}/js/css/pe-ap-min.css" />
		<link rel="stylesheet" href="{$wet_root}/{$theme}/css/theme-min.css" />
		<xsl:comment>&lt;![endif]</xsl:comment>
		<noscript><link rel="stylesheet" href="{$wet_root}/{$theme}/css/theme-ns-min.css" /></noscript>
	</xsl:template>

	<xsl:template match="body">
		<xsl:copy>
			<div id="wb-body">
				<div id="wb-skip">
				<ul id="wb-tphp">
				<li id="wb-skip1"><a href="#wb-cont"><xsl:value-of select="$strings/string[@id='%tmpl-skip-main']/value[lang($lang)]"/></a></li>
				<li id="wb-skip2"><a href="#wb-nav"><xsl:value-of select="$strings/string[@id='%tmpl-skip-main']/value[lang($lang)]"/></a></li>
				</ul>
				</div>

				<div id="wb-head"><div id="wb-head-in"><header>
				<xsl:comment> HeaderStart </xsl:comment>
					<xsl:apply-templates select="." mode="header"/>
				<xsl:comment> HeaderEnd </xsl:comment>
				</header></div></div>

				<div id="wb-core"><div id="wb-core-in" class="equalize">
				<div id="wb-main" role="main"><div id="wb-main-in">
				<xsl:comment> MainContentStart </xsl:comment>
					<xsl:apply-templates />
				<xsl:comment> MainContentEnd </xsl:comment>
				</div></div>
				</div></div>

				<div id="wb-foot"><div id="wb-foot-in"><footer><h2 id="wb-nav"><xsl:value-of select="$strings/string[@id='%tmpl-foot']/value[lang($lang)]"/></h2>
				<xsl:comment> FooterStart </xsl:comment>
					<xsl:apply-templates select="." mode="footer"/>
				<xsl:comment> FooterEnd </xsl:comment>
				</footer>
				</div></div>
			</div>

			<xsl:comment >ScriptsStart </xsl:comment>
				<xsl:apply-templates select="." mode="resources"/>
			<xsl:comment> ScriptsEnd </xsl:comment>
		</xsl:copy>
	</xsl:template>

	<xsl:template match="body" mode="header">
		<xsl:apply-templates select="." mode="banner-top" />

		<xsl:apply-templates select="." mode="banner" />

		<nav role="navigation">
		<xsl:apply-templates select="." mode="navigation" />

		<xsl:apply-templates select="." mode="breadcrumb" />
		</nav>
	</xsl:template>

	<xsl:template match="body" mode="banner">
		<div id="{$theme-prefix}-bnr" role="banner"><div id="{$theme-prefix}-bnr-in">
		<div id="{$theme-prefix}-title"><p id="{$theme-prefix}-title-in"><a href="../../index-eng.html">Web Experience Toolkit&#160;(WET)</a></p></div>

		<xsl:apply-templates select="." mode="global_search" />
		</div></div>
	</xsl:template>

	<xsl:template match="body" mode="global_search">
		<section role="search"><div id="{$theme-prefix}-srchbx"><h2><xsl:value-of select="$strings/string[@id='%tmpl-search']/value[lang($lang)]"/></h2>
		<form action="#" method="post"><div id="{$theme-prefix}-srchbx-in">
		<label for="{$theme-prefix}-srch"><xsl:value-of select="$strings/string[@id='%tmpl-search-site']/value[lang($lang)]"/></label><input id="{$theme-prefix}-srch" name="{$theme-prefix}-srch" type="search" value="" size="27" maxlength="150" />
		<input id="{$theme-prefix}-srch-submit" name="{$theme-prefix}-srch-submit" type="submit" value="Search" data-icon="search" />
		</div></form>
		</div></section>
	</xsl:template>
	
	<xsl:template match="body" mode="navigation">
		<div id="{$theme-prefix}-psnb"><h2><span>Site </span>menu</h2><div id="{$theme-prefix}-psnb-in"><div class="wet-boew-menubar mb-mega"><div>
		<ul class="mb-menu" data-ajax-replace="../includes/menu-eng.txt">
		<li><div><a href="http://wet-boew.github.com/wet-boew/index-eng.html">WET project</a></div></li>
		<li><div><a href="section2/index-eng.html">Section 2</a></div></li>
		<li><div><a href="#">Section 3</a></div></li>
		<li><div><a href="#">Section 4</a></div></li>
		<li><div><a href="#">Section 5</a></div></li>
		<li><div><a href="#">Section 6</a></div></li>
		<li><div><a href="#">Section 7</a></div></li>
		</ul>
		</div></div></div></div>
	</xsl:template>

	<xsl:template match="body" mode="breadcrumb">
		<div id="{$theme-prefix}-bc"><h2><xsl:value-of select="$strings/string[@id='%tmpl-bcrumb']/value[lang($lang)]"/></h2><div id="{$theme-prefix}-bc-in">
		<ol>
		<li><a href="../../index-eng.html">Home</a></li>
		<li><a href="../index-eng.html">Working examples</a></li>
		<li>Base theme</li>
		</ol>
		</div></div>
	</xsl:template>

	<xsl:template match="body" mode="resources">
		<script src="{$wet_root}/{$theme}/js/theme-min.js"></script>
		<script src="{$wet_root}/js/settings.js"></script>
		<script src="{$wet_root}/js/pe-ap-min.js"></script>
	</xsl:template>

	<!--Fix bug that causes script tag to be output as an empty element (<script/>)-->
  
	<!-- Pass the comment of the original document to the transformed document-->
	<xsl:template match="comment()">
		<xsl:comment>
			<xsl:value-of select="."/>
		</xsl:comment>
	</xsl:template>
	
	<!-- Disable output escaping for text inside script tags-->
	<xsl:template match="text()">
		<xsl:choose>
			<xsl:when test="name(..) = 'script'">
				<xsl:value-of select="." disable-output-escaping="yes"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="."/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	
	<xsl:template match="node()">
		<xsl:copy-of select="." />
	</xsl:template>
</xsl:stylesheet>
