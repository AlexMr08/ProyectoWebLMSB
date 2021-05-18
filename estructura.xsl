<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html lang="es">
	<head>
	  <meta charset="utf-8"/>
	  <title>Tracked - Inicio</title>
	  <link href="./estilos.css" rel="stylesheet"/>
	</head>

	<body>
        <section id="albumes">
            <xsl:for-each select="catalogo/disco">
                <article>
                    <img>
                        <xsl:attribute name="src">
                            <xsl:value-of select="imagen/text()"/>
                        </xsl:attribute>
                    </img>
                    <h3>
                        <xsl:value-of select="titulo"/>
                    </h3>
                    <h4>
                        <xsl:value-of select="artista"/>
                    </h4>
                    <h5>
                        <xsl:value-of select="genero"/> • <xsl:value-of select="año"/>
                    </h5>
                </article>
            </xsl:for-each>
        </section>
    </body>
</html>

</xsl:template>

</xsl:stylesheet>  