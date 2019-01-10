<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:foo="http://www.foo.org/" xmlns:bar="http://www.bar.org">
	<xsl:output method="xml"/>
	
	<!--1-->
	<xsl:template match="p|z"/>
	
	<xsl:template match ="*">
		<xsl:element name="{name()}">
			<xsl:element name="{name()}"/>
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	
	<!--2-->
	<xsl:template match="z">
		<xsl:element name="{name()}">
			<xsl:element name="transf"/>
		</xsl:element>
	</xsl:template>
	
	<!--3-->
	<xsl:template match="y">
		<xsl:element name="nuovo">
			<xsl:element name="sottoelem">
				<xsl:attribute name="{name()}">elemY</xsl:attribute>
			</xsl:element>
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	
	<!--4-->
	<xsl:template match="text()">
		<xsl:element name="nodotesto">
			<xsl:attribute name="attr"><xsl:value-of select="."/></xsl:attribute>
			TESTO TROVATO
		</xsl:element>
	</xsl:template>

</xsl:stylesheet>
