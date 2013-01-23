<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<!-- Web Experience Toolkit (WET) / Boîte à outils de l'expérience Web (BOEW)
	wet-boew.github.com/wet-boew/License-eng.txt / wet-boew.github.com/wet-boew/Licence-fra.txt -->

	<xsl:output method="xml" indent="yes" omit-xml-declaration="yes" encoding="utf-8"/>

	<xsl:variable name="theme" select="'theme-gcwu-fegc'" />
	<xsl:variable name="theme-prefix" select="'gcwu'"/>
	<xsl:import href="../../base/xsl/base.xslt"/>

	<xsl:template match="body" mode="banner-top">
		<nav role="navigation"><div id="gcwu-gcnb"><h2>Government of Canada navigation bar</h2><div id="gcwu-gcnb-in"><div id="gcwu-gcnb-fip">
		<div id="gcwu-sig"><div id="gcwu-sig-in"><div id="gcwu-sig-eng" title="Government of Canada"><img src="{$wet_root}/theme-gcwu-fegc/images/sig-eng.gif" width="214" height="20" alt="Government of Canada" /></div></div></div>
		<ul>
		<li id="gcwu-gcnb1"><a rel="external" href="http://www.canada.gc.ca/menu-eng.html">Canada.gc.ca</a></li>
		<li id="gcwu-gcnb2"><a rel="external" href="http://www.servicecanada.gc.ca/eng/home.shtml">Services</a></li>
		<li id="gcwu-gcnb3"><a rel="external" href="http://www.canada.gc.ca/aboutgov-ausujetgouv/depts/menu-eng.html">Departments</a></li>
		<li id="gcwu-gcnb-lang"><a href="index-fra.html" lang="fr">Français</a></li>
		</ul>
		</div></div></div></nav>
	</xsl:template>

	<xsl:template match="body" mode="banner">
		<div id="{$theme-prefix}-bnr" role="banner"><div id="{$theme-prefix}-bnr-in">
		<div id="gcwu-wmms"><div id="gcwu-wmms-in"><div id="gcwu-wmms-fip" title="Symbol of the Government of Canada"><img src="{$wet_root}/theme-gcwu-fegc/images/wmms.gif" width="126" height="30" alt="Symbol of the Government of Canada" /></div></div></div>
		<div id="{$theme-prefix}-title"><p id="{$theme-prefix}-title-in"><a href="../../index-eng.html">Web Experience Toolkit&#160;(WET)</a></p></div>

		<xsl:apply-templates select="." mode="global_search" />
		</div></div>
	</xsl:template>

	<xsl:template match="body" mode="footer">
		<nav role="navigation"><div id="gcwu-sft"><h3>Site footer</h3><div id="gcwu-sft-in">
		<div id="gcwu-tctr">
		<ul>
		<li class="gcwu-tc"><a href="#" rel="license">Terms and conditions</a></li>
		<li class="gcwu-tr"><a href="#">Transparency</a></li>
		</ul>
		</div>
		<div class="clear"></div>
		<section><div class="span-2"><h4 class="gcwu-col-head"><a href="#">About us</a></h4>
		<ul>
		<li><a href="#">Our Mandate</a></li>
		<li><a href="#">The Minister</a></li>
		</ul>
		</div></section>
		<section><div class="span-2"><h4 class="gcwu-col-head"><a href="#">News</a></h4>
		<ul>
		<li><a href="#">News releases</a></li>
		<li><a href="#">Media advisories</a></li>
		<li><a href="#">Multimedia</a></li>
		</ul>
		</div></section>
		<section><div class="span-2"><h4 class="gcwu-col-head"><a href="#">Contact us</a></h4>
		<address>
		<ul>
		<li><a href="#">Phone numbers</a></li>
		<li><a href="#">Office locations</a></li>
		</ul>
		</address>
		</div></section>
		<section><div class="span-2"><h4 class="gcwu-col-head"><a href="#">Stay connected</a></h4>
		<ul>
		<li><a rel="external" href="#">YouTube</a></li>
		<li><a rel="external" href="#">Twitter</a></li>
		<li><a href="#">Feeds</a></li>
		</ul>
		</div></section>
		</div></div></nav>

		<nav role="navigation"><div id="gcwu-gcft"><h3>Government of Canada footer</h3><div id="gcwu-gcft-in"><div id="gcwu-gcft-fip">
		<ul>
		<li><a rel="external" href="http://healthycanadians.gc.ca/index-eng.php"><span>Health</span><br />healthycanadians.gc.ca</a></li>
		<li><a rel="external" href="http://www.voyage.gc.ca/index-eng.asp"><span>Travel</span><br />travel.gc.ca</a></li>
		<li><a rel="external" href="http://www.servicecanada.gc.ca/eng/home.shtml"><span>Service Canada</span><br />servicecanada.gc.ca</a></li>
		<li><a rel="external" href="http://www.jobbank.gc.ca/intro-eng.aspx"><span>Jobs</span><br />jobbank.gc.ca</a></li>
		<li><a rel="external" href="http://actionplan.gc.ca/en"><span>Economy</span><br />actionplan.gc.ca</a></li>
		<li id="gcwu-gcft-ca"><div><a rel="external" href="http://www.canada.gc.ca/menu-eng.html">Canada.gc.ca</a></div></li>
		</ul>
		</div></div></div></nav>
	</xsl:template>
</xsl:stylesheet>