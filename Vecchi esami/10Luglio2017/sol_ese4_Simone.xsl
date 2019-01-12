<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="xml"/>
	
	<!--1-->
	<xsl:template match="a|y"></xsl:template>
	
	<xsl:template match="*">
		<xsl:element name="{name()}">
			<xsl:element name="{name()}"></xsl:element>
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	
	<!--2-->
	<xsl:template match="a">
		<xsl:element name="{name()}">
			<xsl:element name="aaa"></xsl:element>
		</xsl:element>
	</xsl:template>
	
	<!--3-->
	<xsl:template match="b">
		<xsl:element name="p">
			<xsl:element name="oldb">
				<xsl:attribute name="{name()}">elemento b</xsl:attribute>
			</xsl:element>
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	
	<!--4-->
	<xsl:template match="text()">
		<xsl:element name="nodotesto">
			<xsl:attribute name="testo">
				<xsl:value-of select="."/>
			</xsl:attribute>
		</xsl:element>
	</xsl:template>
	
</xsl:stylesheet>
