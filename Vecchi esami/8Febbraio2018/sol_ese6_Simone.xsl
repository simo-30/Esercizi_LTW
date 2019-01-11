<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet xmlns="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html"/>
	
	<!--template per l'elemento radice-->
	<xsl:template match="/*">
		<xsl:element name="html">
			<xsl:element name="head"></xsl:element>
			<xsl:element name="body">
				<xsl:apply-templates/>
			</xsl:element>
		</xsl:element>
	</xsl:template>
	
	<!--template per gli elementi c figli della radice-->
	<xsl:template match="/*/c">
		<xsl:element name="h1">
			<xsl:apply-templates select="text()"/>
		</xsl:element>
	</xsl:template>
	
	<!--template per gli elementi d figli della radice-->
	<xsl:template match="/*/d">
		<xsl:element name="div">
			<xsl:attribute name="align">center</xsl:attribute>
			<xsl:when test="text()"></xsl:when>
			<xsl:otherwise>
				<xsl:apply-templates/>
			</xsl:otherwise>
		</xsl:element>
	</xsl:template>
	
	<!--template per gli elementi e figli di un figlio della radice-->
	<xsl:template match="/*/*/e">
		<xsl:element name="p">
			<xsl:element name="span">
				<xsl:attribute name="class">
					<xsl:value-of select="name()"/>
				</xsl:attribute>
			</xsl:element>
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	
	<!--template per tutti gli elementi a-->
	<xsl:template match="a">
		<xsl:element name="div">
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	
	<!--template per tutti gli elementi b-->
	<xsl:template match="b">
		<xsl:element name="span">
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	
	<!--template per i nodi testuali-->
	<xsl:template match="text()">
		<xsl:value-of select="."/>
	</xsl:template>
	
</xsl:stylesheet>
