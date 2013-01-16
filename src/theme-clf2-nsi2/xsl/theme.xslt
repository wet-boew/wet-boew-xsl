<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml" xmlns:xhtml="http://www.w3.org/1999/xhtml" exclude-result-prefixes="xhtml">
	
	<!-- Web Experience Toolkit (WET) / Boîte à outils de l'expérience Web (BOEW)
	wet-boew.github.com/wet-boew/License-eng.txt / wet-boew.github.com/wet-boew/Licence-fra.txt -->
	
	<xsl:output method="xml" indent="yes" omit-xml-declaration="yes" encoding="utf-8"/>
	
	<xsl:variable name="theme" select="'theme-clf2-nsi2'" />
	<xsl:import href="../../base/xsl/base.xslt"/>
	
	<xsl:template match="body" mode="header">
		<div id="cn-sig"><img src="../../dist/theme-clf2-nsi2/images/sig-eng.gif" width="372" height="20" alt="Government of Canada" title="Government of Canada" /></div>
		<div id="cn-wmms"><img src="../../dist/theme-clf2-nsi2/images/wmms.gif" width="83" height="20" alt="Symbol of the Government of Canada" title="Symbol of the Government of Canada" /></div>

		<div id="cn-leaf"></div>
		<div id="cn-banner" role="banner">
		<p id="cn-banner-text">Name of Institution</p>
		<p>[www.]mainsite-siteprimaire.gc.ca</p>
		</div>

		<nav role="navigation">
		<div id="cn-psnb"><h2>Common menu bar</h2>
		<ul>
		<li id="cn-psnb1"><a href="index-fra.html" lang="fr" title="Français - Version française de cette page">Français</a></li>
		<li id="cn-psnb2"><a href="#" title="Home - Main page of the Web site">Home</a></li>
		<li id="cn-psnb3"><a href="#" title="Contact Us - Important contact information">Contact Us</a></li>
		<li id="cn-psnb4"><a href="#" title="Help - Information about using the Web site">Help</a></li>
		<li id="cn-psnb5"><a rel="search" href="#" title="Search - Search the Web site">Search</a></li>
		<li id="cn-psnb6"><a rel="external" href="http://www.canada.gc.ca/home.html" title="canada.gc.ca - Government of Canada Web site">canada.gc.ca</a></li>
		</ul>
		</div>

		<div id="cn-bc"><h2>Breadcrumb trail</h2>
		<ol>
		<li><a href="../../index-eng.html">Home</a>&#160;&gt;</li>
		<li><a href="../index-eng.html">Working examples</a>&#160;&gt;</li>
		<li><abbr title="Common Look and Feel">CLF</abbr> 2.0 theme</li>
		</ol>
		</div>
		</nav>
	</xsl:template>
	
	<xsl:template match="body" mode="footer">
		<div id="cn-in-pd">			
		<dl id="cn-doc-dates" role="contentinfo">
		<dt>Date Modified:</dt><dd><span><time>2012-09-17</time></span></dd>
		</dl>
		<div id="cn-toppage-foot"><a href="#wb-tphp" title="Return to Top of Page">Top of Page</a></div>
		<div id="cn-in-pd-links">
		<ul>
		<li id="cn-inotices-link"><a href="#" rel="license">Important Notices</a></li>
		</ul>
		</div>
		</div>
	</xsl:template>
</xsl:stylesheet> 
