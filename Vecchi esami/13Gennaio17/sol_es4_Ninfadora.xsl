<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:foo="http://www.foo.org/" xmlns:bar="http://www.bar.org">
	<xsl:output method="xml"/>
	
	<!--1-->
	<xsl:template match="/*">
		<xsl:element name="{name()}">
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	
	<!--2-->
	<xsl:template match="/*/x"/>
	
	<!--3-->
	<xsl:template match="/*/y">
		<xsl:element name="{name()}"/>
	</xsl:template>
	
	<!--4-->
	<xsl:template match="/*/z">
		<xsl:element name="zz">
			<xsl:element name="rootSibiling">
				<xsl:attribute name="{name()}">sibiling</xsl:attribute>
			</xsl:element>
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	
	<!--5-->
	<xsl:template match="/*/*">
		<xsl:element name="{name()}">
       <!--potrebbe andare qui-->
		</xsl:element>
		<xsl:apply-templates/> <!--Non so dove vada mi sono basata sulla sol di un EsSvolto-->
	</xsl:template>
	
	<!--6-->
	<xsl:template match="/*/*/*">
		<xsl:element name="{name()}">
		</xsl:element>
		<xsl:apply-templates/>
	</xsl:template>
	
	<!--7-->
	<xsl:template match="*">
		<xsl:element name = "{name()}">
		</xsl:element>
		<xsl:apply-templates/>
	</xsl:template>
	
	<!--8-->
	<xsl:template match="text()">
		<xsl:element name="nodotesto">
			<xsl:value-of select="."/>
		</xsl:element>
	</xsl:template>

</xsl:stylesheet>
