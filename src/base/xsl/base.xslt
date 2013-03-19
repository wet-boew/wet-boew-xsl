<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<!-- Web Experience Toolkit (WET) / Boîte à outils de l'expérience Web (BOEW)
	wet-boew.github.com/wet-boew/License-eng.txt / wet-boew.github.com/wet-boew/Licence-fra.txt -->

	<xsl:output method="text" name="text" encoding="utf-8"/>

	<xsl:variable name="root" select="'unamed'"/>

	<xsl:template match="/strings">
		<xsl:for-each select="string[@id='%lang-code-iso-639-2']/value">
			<xsl:result-document href="{$root}-{.}.html" format="text"><xsl:apply-templates select="/strings" mode="output" /></xsl:result-document>
		</xsl:for-each>
	</xsl:template>
	
</xsl:stylesheet>