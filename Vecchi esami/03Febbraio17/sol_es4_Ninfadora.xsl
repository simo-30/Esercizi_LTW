<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:foo="http://www.foo.org/" xmlns:bar="http://www.bar.org">
	<xsl:output method="xml"/>
	
<!--Provandolo sul trasformatore online non viene, ma non so dove dover cambiare-->
	<!--1-->
	<xsl:template match="/*">
		<xsl:element name="root">
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	
	<!--2-->
	<xsl:template match="/*/a">
		<xsl:element name="childA">
			<xsl:attribute name="{name()}">figlio1</xsl:attribute>
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	
	<!--3-->
	<xsl:template match="/*/b"/>
	
	<!--4-->
	<xsl:template match="c">
		<xsl:element name="{name()}"/>
	</xsl:template>
	
	<!--5-->
	<xsl:template match="/*/*">
		<xsl:element name="{name()}">
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	
	<!--6-->
	<xsl:template match="/*/*/*">
		<xsl:element name="{name()}">
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	
	<!--7-->
	<xsl:template match="*">
		<xsl:element name="{name()}">
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	
	<!--8-->
	<xsl:template match="text()">
		<xsl:element name="ttt">
			<xsl:attribute name="testo"><xsl:value-of select="."/></xsl:attribute>
		</xsl:element>
	</xsl:template>

</xsl:stylesheet>
