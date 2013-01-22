<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<!-- Web Experience Toolkit (WET) / Boîte à outils de l'expérience Web (BOEW)
	wet-boew.github.com/wet-boew/License-eng.txt / wet-boew.github.com/wet-boew/Licence-fra.txt -->
	
	<xsl:variable name="lang" select="/html/@lang" />
	<xsl:variable name="strings" select="document('i18n.xml')/strings" />

	<xsl:param name="wet_root" />

    <xsl:template match="/html">
		<xsl:text disable-output-escaping="yes">&lt;!DOCTYPE html&gt;
</xsl:text>
		<xsl:comment>[if IE 7]&gt;&lt;html lang="<xsl:value-of select="@lang"/>" class="no-js ie7"&gt;&lt;![endif]</xsl:comment>
		<xsl:comment>[if IE 8]&gt;&lt;html lang="<xsl:value-of select="@lang"/>" class="no-js ie8"&gt;&lt;![endif]</xsl:comment>
		<xsl:comment>[if gt IE 8]&gt;&lt;!</xsl:comment>
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

				<div id="wb-foot"><div id="wb-foot-in"><footer><h2 id="wb-nav">Footer</h2>
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
	
	<xsl:template match="head" mode="resources">
		<xsl:comment>[if lte IE 8]&gt;
&lt;script src="../../dist/js/jquery-ie.min.js"&gt;&lt;/script&gt;
&lt;script src="../../dist/js/polyfills/html5shiv-min.js"&gt;&lt;/script&gt;
&lt;link rel="stylesheet" href="../../dist/grids/css/util-ie-min.css" /&gt;
&lt;link rel="stylesheet" href="../../dist/js/css/pe-ap-ie-min.css" /&gt;
&lt;link rel="stylesheet" href="../../dist/<xsl:value-of select="$theme"/>/css/theme-ie-min.css" /&gt;
&lt;![endif]</xsl:comment><xsl:text>
</xsl:text>
		<xsl:comment>[if gt IE 8]&gt;&lt;!</xsl:comment><xsl:text>
</xsl:text>
		<script src="{$wet_root}/js/jquery.min.js"><xsl:text> </xsl:text></script>
		<link rel="stylesheet" href="{$wet_root}/grids/css/util-min.css" />
		<link rel="stylesheet" href="{$wet_root}/js/css/pe-ap-min.css" />
		<link rel="stylesheet" href="{$wet_root}/{$theme}/css/theme-min.css" />
		<xsl:comment>&lt;![endif]</xsl:comment>
		<noscript><link rel="stylesheet" href="{$wet_root}/{$theme}/css/theme-ns-min.css" /></noscript>
	</xsl:template>
	
	<xsl:template match="body" mode="resources">
		<script src="{$wet_root}/{$theme}/js/theme-min.js"></script>
		<script src="{$wet_root}/js/settings.js"></script>
		<script src="{$wet_root}/js/pe-ap-min.js"></script>
	</xsl:template>
	
	<!--Fix bug that causes script tag to be output as an empty element (<script/>)-->
	<xsl:template match="script">
		<xsl:copy>
			<xsl:for-each select="@*">
				<xsl:copy-of select="."/>
			</xsl:for-each>
			<xsl:text> </xsl:text>
			<xsl:apply-templates />
		</xsl:copy>
	</xsl:template>
  
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
