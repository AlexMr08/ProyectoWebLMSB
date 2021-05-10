<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

    <lista> 

        <xsl:for-each select="lista/pista">
            <pista>
                <nombre><xsl:value-of select="nombre"/></nombre>
                <autor>Israel B</autor>
            </pista>
        </xsl:for-each>
    </lista>

</xsl:template>

</xsl:stylesheet>  