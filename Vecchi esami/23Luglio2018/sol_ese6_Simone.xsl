<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>
	
	<!--costruzione del documento html-->
	<xsl:template match="/*"> <!--questo va alla radice del documento xml-->
		<html>
			<body>
				<xsl:apply-templates select="t"/> <!--questo comando chiama ricorsivamente 
													i template sull'elemento <t>-->
			</body>
		</html>
	</xsl:template>
	
	<!--template da elemento <t> a <table> con eventuale attributo border-->
	<xsl:template match="t">
		<xsl:element name="table">
			<xsl:when test="@b">
				<xsl:attribute name="border">
					<xsl:value-of select="name()"/>
				</xsl:attribute>
			</xsl:when>
			<xsl:apply-templates select="r"/>
		</xsl:element>
	</xsl:template>
	
	<!--da <r> a <tr>-->
	<xsl:template match="r">
		<xsl:element name="tr">
			<xsl:apply-templates select="cel"/>
		</xsl:element>
	</xsl:template>
	
	<!--da <cel> a <td>-->
	<xsl:template match="cel">
		<xsl:element name="td">
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	
	<xsl:template match="com">
		<xsl:text></xsl:text>
	</xsl:template>
	
	<xsl:template match="*">
		<xsl:apply-templates/>
	</xsl:template>
	
	<!--NON SO È GIUSTO-->
</xsl:stylesheet>
