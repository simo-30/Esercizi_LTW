<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:foo="http://www.foo.org/" xmlns:bar="http://www.bar.org">
<!--NON SO SE E' GIUSTO-->
	
	<xsl:output method="html"/>
	
	<xsl:template match="/*">
	<html>
	<body>
		<xsl:apply-templates/>
	</body>
	</html>
	</xsl:template>
	<!--1-->
	<xsl:template match="t">
		<xsl:element name="table">
			<!--<xsl:attribute name="border"><xsl:value-of select="."/></xsl:attribute>-->
			<xsl:apply-templates select="@b"/>
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="@b">
		<xsl:attribute name="border">
			<xsl:value-of select="."/>
		</xsl:attribute>
	</xsl:template>
	
	<!--2-->
	<xsl:template match="t/r">
		<xsl:element name="tr"><xsl:apply-templates/></xsl:element>
	</xsl:template>
	
	<!--3-->
	<xsl:template match="com"/>
	
	<!--4-->
	<xsl:template match="r/cel">
		<xsl:element name="td"><xsl:apply-templates/></xsl:element>
	</xsl:template>
	
	<!--6-->
	<xsl:template match="text()"/>
	<xsl:template match="r/cel/text()">
		<xsl:value-of select="."/>
	</xsl:template>
	<!--5-->
	<xsl:template match="*">
		<xsl:apply-templates/>
	</xsl:template>
	
	
</xsl:stylesheet>
