<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="xml"/>
	
	<!--indico con i numeri le risoluzioni delle richieste fatte sulla traccia d'esame-->
	<!--1-->
	<xsl:template match="z|p"/>
	
	<xsl:template="*">
		<xsl:element name="{name()}">
			<xsl:element name="{name()}"></xsl:element>
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	
	<!--2-->
	<xsl:template match="z">
		<xsl:element name="{name()}">
			<xsl:element name="trasf"></xsl:element>
		</xsl:element>
	</xsl:template>
	
	<!--3-->
	<xsl:template match="y">
		<xsl:element name="nuovo">
			<xsl:element name="sottoelem">
				<xsl:attribute name="{name()}">
					elemY
				</xsl:attribute>
			</xsl:element>
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	
	<!--4-->
	<xsl:template match="text()">
		<xsl:element name="nodotesto">
			<xsl:attribute name="attr">
				<xsl:value-of select="."/>
			</xsl:attribute>
			TESTO TROVATO
		</xsl:element>
	</xsl:template>
	
</xsl:stylesheet>
