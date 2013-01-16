<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<!-- Web Experience Toolkit (WET) / Boîte à outils de l'expérience Web (BOEW)
	wet-boew.github.com/wet-boew/License-eng.txt / wet-boew.github.com/wet-boew/Licence-fra.txt -->
	
	<xsl:output method="xml" indent="yes" omit-xml-declaration="yes" encoding="utf-8"/>
	
	<xsl:variable name="theme" select="'theme-base'" />
	<xsl:import href="../../base/xsl/base.xslt"/>
	
	<xsl:template match="body" mode="header">
		<section><div id="base-fullhd"><h2>Full-width header area</h2>
		<p>id="base-fullhd"</p>
		<div id="base-fullhd-in">
		<p class="float-left">id="base-fullhd-in"</p>
		<ul>
		<li id="base-fullhd-lang"><a href="index-fra.html" lang="fr">Français</a></li>
		</ul>
		</div>
		</div></section>

		<div id="base-bnr" role="banner"><div id="base-bnr-in">
		<div id="base-title"><p id="base-title-in"><a href="../../index-eng.html">Web Experience Toolkit&#160;(WET)</a></p></div>

		<section role="search"><div id="base-srchbx"><h2>Search</h2>
		<form action="#" method="post"><div id="base-srchbx-in">
		<label for="base-srch">Search website</label><input id="base-srch" name="base-srch" type="search" value="" size="27" maxlength="150" />
		<input id="base-srch-submit" name="base-srch-submit" type="submit" value="Search" data-icon="search" />
		</div></form>
		</div></section>
		</div></div>

		<nav role="navigation">
		<div id="base-psnb"><h2><span>Site </span>menu</h2><div id="base-psnb-in"><div class="wet-boew-menubar mb-mega"><div>
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

		<div id="base-bc"><h2>Breadcrumb trail</h2><div id="base-bc-in">
		<ol>
		<li><a href="../../index-eng.html">Home</a></li>
		<li><a href="../index-eng.html">Working examples</a></li>
		<li>Base theme</li>
		</ol>
		</div></div>
		</nav>
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
