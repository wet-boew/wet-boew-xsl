<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<!-- Web Experience Toolkit (WET) / Boîte à outils de l'expérience Web (BOEW)
	wet-boew.github.com/wet-boew/License-eng.txt / wet-boew.github.com/wet-boew/Licence-fra.txt -->

	<xsl:output method="text" name="text" encoding="utf-8"/>

	<xsl:variable name="root" select="'unamed'"/>

	<xsl:template match="/strings">
		<xsl:for-each select="string[@id='%lang-code-iso-639-2']">
			<xsl:apply-templates />
		</xsl:for-each>
	</xsl:template>

	<xsl:template match="value">
		<xsl:param name="fname">
			<xsl:choose>
				<xsl:when test=". = 'eng' or . = 'fra'"><xsl:value-of select="$root"/>-<xsl:value-of select="."/>.html</xsl:when>
				<xsl:otherwise><xsl:value-of select="./@xml:lang"/>/<xsl:value-of select="$root"/>-<xsl:value-of select="./@xml:lang"/>.html</xsl:otherwise>
			</xsl:choose>
		</xsl:param>

		<xsl:result-document href="{$fname}" format="text"><xsl:apply-templates select="." mode="output">
			<xsl:with-param name="path_correction">
				<xsl:choose>
					<xsl:when test=". = 'eng' or . = 'fra'"></xsl:when>
					<xsl:otherwise>../</xsl:otherwise>
				</xsl:choose>
			</xsl:with-param>
			<xsl:with-param name="wet_fallback_language">
				<xsl:choose>
					<xsl:when test=". = 'fra'">
						<xsl:value-of select="@xml:lang" />
					</xsl:when>
					<xsl:otherwise>
						<xsl:text>en</xsl:text>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:with-param>
			<xsl:with-param name="menu_language">
				<xsl:choose>
					<xsl:when test=". = 'eng' or . = 'fra'">
						<xsl:value-of select="."/>
					</xsl:when>
					<xsl:otherwise>
						<xsl:value-of select="./@xml:lang"/>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:with-param>
		</xsl:apply-templates></xsl:result-document>
	</xsl:template>

	<xsl:template match="value" mode="content_output">
		<xsl:choose>
			<xsl:when test=". = 'fra' or . = 'spa'"><xsl:value-of select="unparsed-text(concat('content-', .,'.txt'), 'UTF-8')"/></xsl:when>
			<xsl:otherwise><xsl:value-of select="unparsed-text('content-eng.txt', 'UTF-8')"/></xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template match="value" mode="home_output">
		<xsl:choose>
			<xsl:when test=". = 'fra' or . = 'spa'"><xsl:value-of select="unparsed-text(concat('home-', .,'.txt'), 'UTF-8')"/></xsl:when>
			<xsl:otherwise><xsl:value-of select="unparsed-text('home-eng.txt', 'UTF-8')"/></xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template match="value" mode="index_output">
		<xsl:choose>
			<xsl:when test=". = 'fra'"><xsl:value-of select="unparsed-text(concat('index-', .,'.txt'), 'UTF-8')"/></xsl:when>
			<xsl:otherwise><xsl:value-of select="unparsed-text('index-eng.txt', 'UTF-8')"/></xsl:otherwise>
		</xsl:choose>
	</xsl:template>

	<xsl:template match="value" mode="serv_output">
		<xsl:choose>
			<xsl:when test=". = 'fra' or . = 'spa'"><xsl:value-of select="unparsed-text(concat('serv-', .,'.txt'), 'UTF-8')"/></xsl:when>
			<xsl:otherwise><xsl:value-of select="unparsed-text('serv-eng.txt', 'UTF-8')"/></xsl:otherwise>
		</xsl:choose>
	</xsl:template>

</xsl:stylesheet>