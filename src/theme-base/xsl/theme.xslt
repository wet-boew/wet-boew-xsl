<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<!-- Web Experience Toolkit (WET) / Boîte à outils de l'expérience Web (BOEW)
	wet-boew.github.com/wet-boew/License-eng.txt / wet-boew.github.com/wet-boew/Licence-fra.txt -->

	<xsl:output method="html" indent="yes" omit-xml-declaration="yes" encoding="utf-8"/>

	<xsl:variable name="theme" select="'theme-base'" />
	<xsl:variable name="theme-prefix" select="'base'"/>
	<xsl:import href="../../base/xsl/base.xslt"/>

	<xsl:template match="body" mode="banner-top">
		<section><div id="base-fullhd"><h2>Full-width header area</h2>
		<p>id="base-fullhd"</p>
		<div id="base-fullhd-in">
		<p class="float-left">id="base-fullhd-in"</p>
		<ul>
		<li id="base-fullhd-lang"><a href="index-fra.html" lang="fr">Français</a></li>
		</ul>
		</div>
		</div></section>
	</xsl:template>

	<xsl:template match="body" mode="global_footer">
		<section><div id="base-fullft"><h3>Full-width footer area</h3>
		<p>id="base-fullft"</p>
		<div id="base-fullft-in"><p>id="base-fullft-in"</p></div>
		</div></section>
	</xsl:template>

</xsl:stylesheet>