<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="xml"/>
	
	<!--template per l'elemento radice-->
	<xsl:template match="/*">
		<xsl:element name="root">
			<xsl:attribute name="nomeRoot">
				<xsl:value-of select="name()"/>
			</xsl:attribute>
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	
	<!--template per gli elementi figli dell'elemento radice-->
	<xsl:template match="/*/*">
		<xsl:element name="{name()}"></xsl:element>
		<xsl:apply-templates/>
	</xsl:template>
	
	<!--template per gli elementi nipoti dell'elemento radice-->
	<xsl:template match="/*/*/*">
		<xsl:element name="nipote"></xsl:element>
		<xsl:apply-templates/>
	</xsl:template>
	
	<!--template per gli elementi pronipoti dell'elemento radice-->
	<xsl:template match="/*/*/*/*">
		<xsl:element name="pronipote">
			<xsl:element name="nomePronipote">
				<xsl:value-of select="name()"/>
			</xsl:element>
		</xsl:element>
		<xsl:apply-templates/>
	</xsl:template>
	
	<xsl:template match="*">
		<xsl:element name="{name()}"></xsl:element>
		<xsl:apply-element/>
	</xsl:template>
	
	<xsl:template match="text()"/>
	
</xsl:stylesheet>
