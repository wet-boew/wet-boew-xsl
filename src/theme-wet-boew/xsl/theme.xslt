<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<!-- Web Experience Toolkit (WET) / Boîte à outils de l'expérience Web (BOEW)
	wet-boew.github.com/wet-boew/License-eng.txt / wet-boew.github.com/wet-boew/Licence-fra.txt -->

	<xsl:output method="html" indent="yes" omit-xml-declaration="yes" encoding="utf-8"/>

	<xsl:variable name="theme" select="'theme-wet-boew'" />
	<xsl:variable name="theme-prefix" select="'wet'"/>
	<xsl:import href="../../base/xsl/base.xslt"/>

	<xsl:template match="body" mode="banner-top">
		<section><div id="wet-fullhd"><div id="wet-fullhd-in">
		<ul>
		<li id="wet-fullhd-lang-current">English</li>
		<li id="wet-fullhd-lang"><a href="index-fra.html" lang="fr">Français</a></li>
		</ul>
		</div>
		</div></section>
	</xsl:template>

	<xsl:template match="body" mode="footer">
		<nav role="navigation"><div id="wet-sft"><h3>Site footer</h3><div id="wet-sft-in">
		<section><div class="span-2"><h4 classid="wet-col-head"><a href="#">About us</a></h4>
		<ul>
		<li><a href="#">Our mandate</a></li>
		<li><a href="#">Our history</a></li>
		</ul>
		</div></section>
		<section><div class="span-2"><h4 classid="wet-col-head"><a href="#">News</a></h4>
		<ul>
		<li><a href="#">News releases</a></li>
		<li><a href="#">Media advisories</a></li>
		<li><a href="#">Multimedia</a></li>
		</ul>
		</div></section>
		<section><div class="span-2"><h4 classid="wet-col-head"><a href="#">Contact us</a></h4>
		<address>
		<ul>
		<li><a href="#">Phone numbers</a></li>
		<li><a href="#">Office locations</a></li>
		</ul>
		</address>
		</div></section>
		<section><div class="span-2"><h4 classid="wet-col-head"><a href="#">Stay connected</a></h4>
		<ul>
		<li><a rel="external" href="#">YouTube</a></li>
		<li><a rel="external" href="#">Twitter</a></li>
		<li><a href="#">Feeds</a></li>
		</ul>
		</div></section>
		</div></div></nav>

		<section><div id="wet-fullft"><h3>Full-width footer area</h3>

		<div id="wet-fullft-in"></div>
		</div></section>
	</xsl:template>

</xsl:stylesheet>