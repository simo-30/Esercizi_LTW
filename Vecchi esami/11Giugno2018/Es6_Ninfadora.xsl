<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:foo="http://www.foo.org/" xmlns:bar="http://www.bar.org">
<!--NON E' SICURO SIA ESATTO-->
	
	<xsl:output method="xml"/>
	
	<!--1-->
	<xsl:template match="/*">
		<xsl:element name="{name()}">
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>

	<!--2-->
	<xsl:template match="/*/a">
		<xsl:element name="{name()}"/>
	</xsl:template>
	
	<!--3-->
	<xsl:template match="/*/b">
		<xsl:apply-templates/>
	</xsl:template>
		
	<!--4-->
	<xsl:template match="/*/*">
		<xsl:element name="{name()}">
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	
	<!--5-->
	<xsl:template match="/*/*/a">
		<xsl:element name="aa">
			<xsl:attribute name="figlio">
				<xsl:value-of select="."/>
			</xsl:attribute>
		</xsl:element>	
	</xsl:template>
	
	<!--6-->
	<xsl:template match="/*/*/b">
		<xsl:element name="bb">
			<xsl:element name="figlio">
				<xsl:value-of select="."/>
			</xsl:element>
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	
		<!--7-->
	<xsl:template match="/*/*/*">
		<xsl:apply-templates/>
	</xsl:template>
	
	<!--8-->
	<xsl:template match="*">
		<xsl:element name="{name()}">
			<xsl:apply-templates/>
		</xsl:element>
	</xsl:template>
	
	<!--9-->
	<xsl:template match="text()">
		<xsl:element name="parteTestuale">
			<xsl:attribute name="testo">
				<xsl:value-of select="."/>
			</xsl:attribute>
			<!--<xsl:value-of select="."/> al posto di attributo-->
		</xsl:element>
	</xsl:template>
	
</xsl:stylesheet>
