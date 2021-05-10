<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html lang="es">
	<head>
	  <meta charset="utf-8"/>
	  <title>Musica</title>
	  <link href="./estilos.css" rel="stylesheet"/>
	</head>

	<body>
        <header>
            <h1>Tracked</h1>
        </header>
        <nav>
        <ul>
            <li>Generos</li>
            <li>Artistas</li>
            <li>Paises</li>
        </ul>
        </nav>
        <main>
            <h1>Catalogo</h1>
            <section>
                <xsl:for-each select="catalogo/disco">
                <article class="album">
                    <header class="datos">
                        <img>
                            <xsl:attribute name="src">
                                <xsl:value-of select="imagen/text()"/>
                            </xsl:attribute>
                        </img>
                        <div>
                        <h2>
                            <xsl:value-of select="titulo"/>
                        </h2>
                        <h3>
                            <xsl:value-of select="artista"/>
                        </h3>
                        <h4>
                            <xsl:value-of select="genero"/> • <xsl:value-of select="año"/>
                        </h4>
                        </div>
                    </header>
                    <article class="pista">
                    <hr/>
                        <span><xsl:value-of select="lista/count(pista)"/> canciones</span>
                        <hr/>
                        <ul>
                            <xsl:for-each select="lista/pista">
                                <article>
                                    <li/>
                                    <span>
                                        <xsl:value-of select="nombre"/>
                                    </span>
                                    <br/>
                                    <h4>
                                        <xsl:value-of select="autor"/>
                                    </h4>
                                    </article>
                                <hr/>
                            </xsl:for-each>
                        </ul>
                    </article>
                    
                </article>
                </xsl:for-each>
            </section>
        </main>
        <footer></footer>
    </body>
</html>

</xsl:template>

</xsl:stylesheet>  