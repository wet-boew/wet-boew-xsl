<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<!-- Web Experience Toolkit (WET) / Boîte à outils de l'expérience Web (BOEW)
	wet-boew.github.com/wet-boew/License-eng.txt / wet-boew.github.com/wet-boew/Licence-fra.txt -->

	<xsl:output method="xml" version="5.0" indent="yes" omit-xml-declaration="yes" encoding="utf-8"/>

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

	<xsl:template match="body" mode="footer">
		<nav role="navigation"><div id="base-sft"><h3>Site footer</h3><div id="base-sft-in">
		<section><div class="span-2"><h4 class="base-col-head"><a href="#">About us</a></h4>
		<ul>
		<li><a href="#">Our mandate</a></li>
		<li><a href="#">Our history</a></li>
		</ul>
		</div></section>
		<section><div class="span-2"><h4 class="base-col-head"><a href="#">News</a></h4>
		<ul>
		<li><a href="#">News releases</a></li>
		<li><a href="#">Media advisories</a></li>
		<li><a href="#">Multimedia</a></li>
		</ul>
		</div></section>
		<section><div class="span-2"><h4 class="base-col-head"><a href="#">Contact us</a></h4>
		<address>
		<ul>
		<li><a href="#">Phone numbers</a></li>
		<li><a href="#">Office locations</a></li>
		</ul>
		</address>
		</div></section>
		<section><div class="span-2"><h4 class="base-col-head"><a href="#">Stay connected</a></h4>
		<ul>
		<li><a rel="external" href="#">YouTube</a></li>
		<li><a rel="external" href="#">Twitter</a></li>
		<li><a href="#">Feeds</a></li>
		</ul>
		</div></section>
		</div></div></nav>

		<section><div id="base-fullft"><h3>Full-width footer area</h3>
		<p>id="base-fullft"</p>
		<div id="base-fullft-in"><p>id="base-fullft-in"</p></div>
		</div></section>
	</xsl:template>

</xsl:stylesheet>