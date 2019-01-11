<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="xml"/>
	
	<!--template per l'elemento radice-->
	<xsl:template match="/*">
		<xsl:element name="{name()}">
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	
	<!--template per gli elementi a figli della radice-->
	<xsl:template match="/*/a">
		<xsl:element name="{name()}"></xsl:element>
	</xsl:template>
	
	<!--template per gli elementi b figli della radice-->
	<xsl:template match="/*/b">
		<xsl:apply-templates/>
	</xsl:template>
	
	<!--template per gli elementi figli della radice-->
	<xsl:template match="/*/*">
		<xsl:element name="{name()}">
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	
	<!--template per gli elementi a figli di un figlio della radice-->
	<xsl:template match="/*/*/a">
		<xsl:element name="aa">
			<xsl:attribute name="figlio">
				<xsl:value-of select="name()"/>
			</xsl:attribute>
		</xsl:element>
	</xsl:template>
	
	<!--template per gli elementi b figli di un figlio della radice-->
	<xsl:template match="/*/*/b">
		<xsl:element name="bb">
			<xsl:element name="figlio">
				<xsl:value-of select="."/>
			</xsl:element>
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	
	<!--template per gli elementi figli di un figlio della radice-->
	<xsl:template match="/*/*/*">
		<xsl:apply-templates/>
	</xsl:template>
	
	<!--template per tutti gli altri elementi-->
	<xsl:template match="*">
		<xsl:element name="{name()}">
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	
	<!--template per gli elementi di tipo testo-->
	<xsl:template match="text()">
		<xsl:element name="parteTestuale">
			<xsl:attribute name="testo">
				<xsl:value-of select="."/>
			</xsl:attribute>
		</xsl:element>
	</xsl:template>
	
</xsl:stylesheet>
