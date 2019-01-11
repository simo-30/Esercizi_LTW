<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:foo="http://www.foo.org/" xmlns:bar="http://www.bar.org">
	<xsl:output method="xml"/>
	
	<!--1-->
	<xsl:template match="x|y"/>
	
	<xsl:template match="*">
		<xsl:element name="{name()}">
			<xsl:element name="{name()}"/>
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	
	<!--2-->
	<xsl:template match="x">
		<xsl:element name="{name()}">
			<xsl:element name="x"/>
		</xsl:element>
	</xsl:template>
	
	<!--3-->
	<xsl:template match="y">
		<xsl:element name="yy">
			<xsl:element name="childY">
				<xsl:attribute name="{name()}">figlio di nome Y</xsl:attribute>
			</xsl:element>
			<!--o qui-->
		</xsl:element>
		<xsl:apply-templates/><!--non so se va qui-->
	</xsl:template>
	
	<!--4-->
	<xsl:template match="text()">
		<xsl:element name="nodotesto">
			<xsl:value-of select="."/>
		</xsl:element>
	
	</xsl:template>
	
</xsl:stylesheet>
