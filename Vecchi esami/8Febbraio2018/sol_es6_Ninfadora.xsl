<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:foo="http://www.foo.org/" xmlns:bar="http://www.bar.org">
	<xsl:output method="html"/>
	
	<!--1-->
	<xsl:template match="/*">
		<html>
			<head></head>
			<body>
				<xsl:apply-templates/>
			</body>
		</html>
	</xsl:template>
	
	<!--2-->
	<xsl:template match="/*/c">
		<xsl:element name="h1">
			<xsl:apply-templates select="text()"/>
		</xsl:element>
	</xsl:template>
	
	<!--3-->
	<xsl:template match="/*/d">
		<xsl:element name="div">
			<xsl:attribute name="align">center</xsl:attribute>
			<!--<xsl:apply-templates select="text()"/>-->
			<xsl:apply-templates select="*"/>
		</xsl:element>
	</xsl:template>
	
	<!--<xsl:template match="/*/d/text()"/>-->
	
	<!--4-->
	<xsl:template match="/*/*/e">
		<xsl:element name="p">
			<xsl:element name="span">
				<xsl:attribute name="class"><xsl:value-of select="name()"/></xsl:attribute>
			</xsl:element>
			<xsl:apply-templates/>
		</xsl:element>	
	</xsl:template>
	
	<!--5-->
	<xsl:template match="a">
		<xsl:element name="div">
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	
	<!--6-->
	<xsl:template match="b">
		<xsl:element name="span">
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	
	<!--7-->
	<xsl:template match="*"/>
	
	<!--8-->
	<xsl:template match="text()">
		<xsl:value-of select="."/>
	</xsl:template>
	

</xsl:stylesheet>
