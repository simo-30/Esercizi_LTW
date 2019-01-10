<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output method="html/"/>
	
	<xsl:template match="/*">
		<html>
			<body>
				<ul>
					<li><xsl:value-of select="name()"/></li>
					<xsl:apply-templates select="*"/>
				</ul>
			</body>
		</html>
	</xsl:template>
	
	<xsl:template match="*">
		<li><xsl:value-of select="name()"/></li>
		<xsl:apply-templates select="*"/>
	</xsl:template>
	
</xsl:stylesheet>
