<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<!-- Web Experience Toolkit (WET) / Boîte à outils de l'expérience Web (BOEW)
	wet-boew.github.io/wet-boew/License-eng.txt / wet-boew.github.io/wet-boew/Licence-fra.txt -->

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
			<xsl:with-param name="interword-space">
				<xsl:if test="/strings/string[@id='%interword-space']/value[lang(current()/@xml:lang)] = '&amp;#32;'"><xsl:text> </xsl:text></xsl:if>
			</xsl:with-param>
			<xsl:with-param name="hyphen" select="/strings/string[@id='%hyphen']/value[lang(current()/@xml:lang)]"/>
			<xsl:with-param name="tmpl-section" select="/strings/string[@id='%tmpl-section']/value[lang(current()/@xml:lang)]"/>
			<xsl:with-param name="tmpl-item" select="/strings/string[@id='%tmpl-item']/value[lang(current()/@xml:lang)]"/>
		</xsl:apply-templates></xsl:result-document>
	</xsl:template>

	<xsl:template match="value" mode="content_output">
		<xsl:param name="interword-space">
			<xsl:if test="/strings/string[@id='%interword-space']/value[lang(current()/@xml:lang)] = '&amp;#32;'"><xsl:text> </xsl:text></xsl:if>
		</xsl:param>
		<xsl:variable name="hyphen" select="/strings/string[@id='%hyphen']/value[lang(current()/@xml:lang)]"/>
		<xsl:variable name="tmpl-default-app" select="/strings/string[@id='%tmpl-default-app']/value[lang(current()/@xml:lang)]"/>
		<xsl:variable name="tmpl-link" select="/strings/string[@id='%tmpl-link']/value[lang(current()/@xml:lang)]"/>
		<xsl:variable name="tmpl-heading" select="/strings/string[@id='%tmpl-heading']/value[lang(current()/@xml:lang)]"/>
		<xsl:variable name="tmpl-level" select="/strings/string[@id='%tmpl-level']/value[lang(current()/@xml:lang)]"/>
		<xsl:variable name="tmpl-ul" select="/strings/string[@id='%tmpl-ul']/value[lang(current()/@xml:lang)]"/>
		<xsl:variable name="tmpl-ol" select="/strings/string[@id='%tmpl-ol']/value[lang(current()/@xml:lang)]"/>
		<xsl:variable name="tmpl-form" select="/strings/string[@id='%tmpl-form']/value[lang(current()/@xml:lang)]"/>
		<xsl:variable name="tmpl-option" select="/strings/string[@id='%tmpl-option']/value[lang(current()/@xml:lang)]"/>
		<xsl:variable name="list-comma-space" select="/strings/string[@id='%list-comma-space']/value[lang(current()/@xml:lang)]"/>
		<xsl:variable name="colon" select="/strings/string[@id='%colon']/value[lang(current()/@xml:lang)]"/>
&lt;section&gt;&lt;h2&gt;<xsl:value-of select="$tmpl-heading"/><xsl:value-of select="$interword-space"/>2<xsl:value-of select="$interword-space"/>(&lt;code&gt;h2&lt;/code&gt;)<xsl:value-of select="$hyphen"/><xsl:value-of select="$tmpl-default-app"/>&lt;/h2&gt;
	&lt;section&gt;&lt;h3&gt;<xsl:value-of select="$tmpl-heading"/><xsl:value-of select="$interword-space"/>3<xsl:value-of select="$interword-space"/>(&lt;code&gt;h3&lt;/code&gt;)<xsl:value-of select="$hyphen"/><xsl:value-of select="$tmpl-default-app"/>&lt;/h3&gt;
		&lt;section&gt;&lt;h4&gt;<xsl:value-of select="$tmpl-heading"/><xsl:value-of select="$interword-space"/>4<xsl:value-of select="$interword-space"/>(&lt;code&gt;h4&lt;/code&gt;)<xsl:value-of select="$hyphen"/><xsl:value-of select="$tmpl-default-app"/>&lt;/h4&gt;
			&lt;section&gt;&lt;h5&gt;<xsl:value-of select="$tmpl-heading"/><xsl:value-of select="$interword-space"/>5<xsl:value-of select="$interword-space"/>(&lt;code&gt;h5&lt;/code&gt;)<xsl:value-of select="$hyphen"/><xsl:value-of select="$tmpl-default-app"/>&lt;/h5&gt;
				&lt;section&gt;&lt;h6&gt;<xsl:value-of select="$tmpl-heading"/><xsl:value-of select="$interword-space"/>6<xsl:value-of select="$interword-space"/>(&lt;code&gt;h6&lt;/code&gt;)<xsl:value-of select="$hyphen"/><xsl:value-of select="$tmpl-default-app"/>&lt;/h6&gt;
					&lt;p&gt;<xsl:value-of select="/strings/string[@id='%tmpl-para']/value[lang(current()/@xml:lang)]"/><xsl:value-of select="$interword-space"/><xsl:value-of select="$tmpl-default-app"/>&lt;/p&gt;
				&lt;/section&gt;
			&lt;/section&gt;
		&lt;/section&gt;
	&lt;/section&gt;
&lt;/section&gt;

&lt;p&gt;&lt;a href="#"&gt;<xsl:value-of select="$tmpl-link"/><xsl:value-of select="$hyphen"/><xsl:value-of select="$tmpl-default-app"/>&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;&lt;a href="mailto:"&gt;<xsl:value-of select="$tmpl-link"/><xsl:value-of select="$interword-space"/>(&lt;code&gt;mailto:&lt;/code&gt;)<xsl:value-of select="$hyphen"/><xsl:value-of select="$tmpl-default-app"/>&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;&lt;a href="http://www." rel="external"&gt;<xsl:value-of select="$tmpl-link"/><xsl:value-of select="$interword-space"/>(&lt;code&gt;rel="external"&lt;/code&gt;)<xsl:value-of select="$hyphen"/><xsl:value-of select="$tmpl-default-app"/>&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;&lt;a href=".doc"&gt;<xsl:value-of select="$tmpl-link"/><xsl:value-of select="$hyphen"/><xsl:value-of select="/strings/string[@id='%tmpl-file-downloads']/value[lang(current()/@xml:lang)]"/><xsl:value-of select="$interword-space"/>(&lt;code&gt;.doc&lt;/code&gt;<xsl:value-of select="$list-comma-space"/>&lt;code&gt;.psd&lt;/code&gt;<xsl:value-of select="$list-comma-space"/>&lt;code&gt;.zip&lt;/code&gt;<xsl:value-of select="$list-comma-space"/>&lt;code&gt;.pdf&lt;/code&gt;<xsl:value-of select="$list-comma-space"/>&lt;code&gt;.xls&lt;/code&gt;<xsl:value-of select="$list-comma-space"/>&lt;code&gt;.xlt&lt;/code&gt;<xsl:value-of select="$list-comma-space"/>&lt;code&gt;.rtf&lt;/code&gt;<xsl:value-of select="/strings/string[@id='%tmpl-and']/value[lang(current()/@xml:lang)]"/>&lt;code&gt;.txt&lt;/code&gt;<xsl:value-of select="$hyphen"/><xsl:value-of select="$tmpl-default-app"/>&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;<xsl:value-of select="/strings/string[@id='%tmpl-abbr']/value[lang(current()/@xml:lang)]"/><xsl:value-of select="$hyphen"/><xsl:value-of select="$tmpl-default-app"/><xsl:value-of select="$colon"/><xsl:value-of select="$interword-space"/>&lt;abbr title="<xsl:value-of select="/strings/string[@id='%tmpl-gc-sig']/value[lang(current()/@xml:lang)]"/>"&gt;GC&lt;/abbr&gt;.&lt;/p&gt;

&lt;ul&gt;
&lt;li&gt;<xsl:value-of select="$tmpl-ul"/><xsl:value-of select="$interword-space"/>(&lt;code&gt;ul&lt;/code&gt;)<xsl:value-of select="$hyphen"/><xsl:value-of select="$tmpl-level"/><xsl:value-of select="$interword-space"/>1<xsl:value-of select="$hyphen"/><xsl:value-of select="$tmpl-default-app"/>
	&lt;ul&gt;
	&lt;li&gt;<xsl:value-of select="$tmpl-ul"/><xsl:value-of select="$interword-space"/>(&lt;code&gt;ul&lt;/code&gt;)<xsl:value-of select="$hyphen"/><xsl:value-of select="$tmpl-level"/><xsl:value-of select="$interword-space"/>2<xsl:value-of select="$hyphen"/><xsl:value-of select="$tmpl-default-app"/>
		&lt;ul&gt;
		&lt;li&gt;<xsl:value-of select="$tmpl-ul"/><xsl:value-of select="$interword-space"/>(&lt;code&gt;ul&lt;/code&gt;)<xsl:value-of select="$hyphen"/><xsl:value-of select="$tmpl-level"/><xsl:value-of select="$interword-space"/>3<xsl:value-of select="$hyphen"/><xsl:value-of select="$tmpl-default-app"/>&lt;/li&gt;
		&lt;/ul&gt;
	&lt;/li&gt;
	&lt;/ul&gt;
&lt;/li&gt;
&lt;/ul&gt;

&lt;ol&gt;
&lt;li&gt;<xsl:value-of select="$tmpl-ol"/><xsl:value-of select="$interword-space"/>(&lt;code&gt;ol&lt;/code&gt;)<xsl:value-of select="$hyphen"/><xsl:value-of select="$tmpl-level"/><xsl:value-of select="$interword-space"/>1<xsl:value-of select="$hyphen"/><xsl:value-of select="$tmpl-default-app"/>&lt;/li&gt;
&lt;li&gt;<xsl:value-of select="$tmpl-ol"/><xsl:value-of select="$interword-space"/>(&lt;code&gt;ol&lt;/code&gt;)<xsl:value-of select="$hyphen"/><xsl:value-of select="$tmpl-level"/><xsl:value-of select="$interword-space"/>1<xsl:value-of select="$hyphen"/><xsl:value-of select="$tmpl-default-app"/>
	&lt;ol&gt;
	&lt;li&gt;<xsl:value-of select="$tmpl-ol"/><xsl:value-of select="$interword-space"/>(&lt;code&gt;ol&lt;/code&gt;)<xsl:value-of select="$hyphen"/><xsl:value-of select="$tmpl-level"/><xsl:value-of select="$interword-space"/>2<xsl:value-of select="$hyphen"/><xsl:value-of select="$tmpl-default-app"/>&lt;/li&gt;
	&lt;li&gt;<xsl:value-of select="$tmpl-ol"/><xsl:value-of select="$interword-space"/>(&lt;code&gt;ol&lt;/code&gt;)<xsl:value-of select="$hyphen"/><xsl:value-of select="$tmpl-level"/><xsl:value-of select="$interword-space"/>2<xsl:value-of select="$hyphen"/><xsl:value-of select="$tmpl-default-app"/>
		&lt;ol&gt;
		&lt;li&gt;<xsl:value-of select="$tmpl-ol"/><xsl:value-of select="$interword-space"/>(&lt;code&gt;ol&lt;/code&gt;)<xsl:value-of select="$hyphen"/><xsl:value-of select="$tmpl-level"/><xsl:value-of select="$interword-space"/>3<xsl:value-of select="$hyphen"/><xsl:value-of select="$tmpl-default-app"/>&lt;/li&gt;
		&lt;li&gt;<xsl:value-of select="$tmpl-ol"/><xsl:value-of select="$interword-space"/>(&lt;code&gt;ol&lt;/code&gt;)<xsl:value-of select="$hyphen"/><xsl:value-of select="$tmpl-level"/><xsl:value-of select="$interword-space"/>3<xsl:value-of select="$hyphen"/><xsl:value-of select="$tmpl-default-app"/>&lt;/li&gt;
		&lt;/ol&gt;
	&lt;/li&gt;
	&lt;/ol&gt;
&lt;/li&gt;
&lt;/ol&gt;

&lt;table&gt;
&lt;caption&gt;<xsl:value-of select="/strings/string[@id='%tmpl-table-caption']/value[lang(current()/@xml:lang)]"/><xsl:value-of select="$hyphen"/><xsl:value-of select="$tmpl-default-app"/>&lt;/caption&gt;
&lt;thead&gt;
&lt;tr&gt;
&lt;th scope="col"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-table-head']/value[lang(current()/@xml:lang)]"/><xsl:value-of select="$interword-space"/>(&lt;code&gt;th&lt;/code&gt;)<xsl:value-of select="$hyphen"/><xsl:value-of select="$tmpl-default-app"/>&lt;/th&gt;
&lt;th scope="col"&gt;<xsl:value-of select="/strings/string[@id='%tmpl-table-head']/value[lang(current()/@xml:lang)]"/><xsl:value-of select="$interword-space"/>(&lt;code&gt;th&lt;/code&gt;)<xsl:value-of select="$hyphen"/><xsl:value-of select="$tmpl-default-app"/>&lt;/th&gt;
&lt;/tr&gt;
&lt;/thead&gt;
&lt;tbody&gt;
&lt;tr&gt;
&lt;td&gt;<xsl:value-of select="/strings/string[@id='%tmpl-table-data']/value[lang(current()/@xml:lang)]"/><xsl:value-of select="$interword-space"/>(&lt;code&gt;td&lt;/code&gt;)<xsl:value-of select="$hyphen"/><xsl:value-of select="$tmpl-default-app"/>&lt;/td&gt;
&lt;td&gt;<xsl:value-of select="/strings/string[@id='%tmpl-table-data']/value[lang(current()/@xml:lang)]"/><xsl:value-of select="$interword-space"/>(&lt;code&gt;td&lt;/code&gt;)<xsl:value-of select="$hyphen"/><xsl:value-of select="$tmpl-default-app"/>&lt;/td&gt;
&lt;/tr&gt;
&lt;/tbody&gt;
&lt;/table&gt;

&lt;form action="#" method="post"&gt;
&lt;div&gt;&lt;label for="data1"&gt;<xsl:value-of select="$tmpl-form"/><xsl:value-of select="$interword-space"/>(&lt;code&gt;input&lt;/code&gt;)<xsl:value-of select="$hyphen"/><xsl:value-of select="$tmpl-default-app"/><xsl:value-of select="$colon"/>&lt;/label&gt; &lt;input name="data1" type="text" id="data1" /&gt;&lt;/div&gt;
&lt;div&gt;&lt;label for="data2"&gt;<xsl:value-of select="$tmpl-form"/><xsl:value-of select="$interword-space"/>(&lt;code&gt;textarea&lt;/code&gt;)<xsl:value-of select="$hyphen"/><xsl:value-of select="$tmpl-default-app"/><xsl:value-of select="$colon"/>&lt;/label&gt; &lt;textarea name="data2" cols="15" rows="3" id="data2"&gt;&lt;/textarea&gt;&lt;/div&gt;
&lt;div&gt;&lt;label for="data4"&gt;<xsl:value-of select="$tmpl-form"/><xsl:value-of select="$interword-space"/>(&lt;code&gt;select&lt;/code&gt;)<xsl:value-of select="$hyphen"/><xsl:value-of select="$tmpl-default-app"/><xsl:value-of select="$colon"/>&lt;/label&gt;
&lt;select id="data4" name="data4"&gt;
&lt;option value="<xsl:value-of select="$tmpl-option"/><xsl:value-of select="$interword-space"/>1"&gt;<xsl:value-of select="$tmpl-option"/><xsl:value-of select="$interword-space"/>1&lt;/option&gt;
&lt;option value="<xsl:value-of select="$tmpl-option"/><xsl:value-of select="$interword-space"/>2"&gt;<xsl:value-of select="$tmpl-option"/><xsl:value-of select="$interword-space"/>2&lt;/option&gt;
&lt;option value="<xsl:value-of select="$tmpl-option"/><xsl:value-of select="$interword-space"/>3"&gt;<xsl:value-of select="$tmpl-option"/><xsl:value-of select="$interword-space"/>3&lt;/option&gt;
&lt;option value="<xsl:value-of select="$tmpl-option"/><xsl:value-of select="$interword-space"/>4"&gt;<xsl:value-of select="$tmpl-option"/><xsl:value-of select="$interword-space"/>4&lt;/option&gt;
&lt;/select&gt;&lt;/div&gt;
&lt;fieldset&gt;&lt;legend&gt;<xsl:value-of select="$tmpl-form"/><xsl:value-of select="$interword-space"/>(&lt;code&gt;legend&lt;/code&gt;<xsl:value-of select="$list-comma-space"/>&lt;code&gt;fieldset&lt;/code&gt;<xsl:value-of select="/strings/string[@id='%tmpl-and']/value[lang(current()/@xml:lang)]"/>&lt;code&gt;checkbox&lt;/code&gt;)<xsl:value-of select="$hyphen"/><xsl:value-of select="$tmpl-default-app"/>&lt;/legend&gt;
&lt;div&gt;&lt;input name="checkbox" type="checkbox" id="data5" value="checkbox" /&gt;&#160;&lt;label for="data5"&gt;<xsl:value-of select="$tmpl-option"/><xsl:value-of select="$interword-space"/>1&lt;/label&gt;&#160;&#160;
&lt;input name="checkbox" type="checkbox" id="data6" value="checkbox" /&gt;&#160;&lt;label for="data6"&gt;<xsl:value-of select="$tmpl-option"/><xsl:value-of select="$interword-space"/>2&lt;/label&gt;&#160;&#160;
&lt;input name="checkbox" type="checkbox" id="data7" value="checkbox" /&gt;&#160;&lt;label for="data7"&gt;<xsl:value-of select="$tmpl-option"/><xsl:value-of select="$interword-space"/>3&lt;/label&gt;&#160;&#160;
&lt;input name="checkbox" type="checkbox" id="data8" value="checkbox" /&gt;&#160;&lt;label for="data8"&gt;<xsl:value-of select="$tmpl-option"/><xsl:value-of select="$interword-space"/>4&lt;/label&gt;&lt;/div&gt;
&lt;/fieldset&gt;
&lt;div&gt;&lt;input name="submit" type="submit" id="submit" value="<xsl:value-of select="/strings/string[@id='%tmpl-submit']/value[lang(current()/@xml:lang)]"/><xsl:value-of select="$hyphen"/><xsl:value-of select="$tmpl-default-app"/>" /&gt;
&lt;input name="reset" type="reset" id="reset" value="<xsl:value-of select="/strings/string[@id='%tmpl-reset']/value[lang(current()/@xml:lang)]"/><xsl:value-of select="$hyphen"/><xsl:value-of select="$tmpl-default-app"/>" /&gt;&lt;/div&gt;
&lt;/form&gt;

&lt;blockquote&gt;
&lt;p&gt;&quot;&lt;code&gt;blockquote&lt;/code&gt;<xsl:value-of select="$hyphen"/><xsl:value-of select="$tmpl-default-app"/>&quot;&lt;/p&gt;
&lt;/blockquote&gt;</xsl:template>
</xsl:stylesheet>