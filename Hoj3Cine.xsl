<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head><title>Hoj3Cine.xsl</title></head>
      <body>
        <center><h1>Listado de Películas</h1></center>
        <hr></hr>
          <xsl:for-each select="Cine/Películas/Película">
          <xsl:sort select="Título[@Idioma='Francés']" order="ascending"/>
          <xsl:if test="Título[@Idioma='Francés']">
        	<p><b>Datos de la película: <xsl:value-of select="Título"/></b></p>
        	<hr></hr>
        	<p>Director: <xsl:value-of select="Director"/></p>
        	<p>Duración: <xsl:value-of select="Duración"/></p>
        	<p>Argumento: <xsl:value-of select="Argumento"/></p>
          <hr></hr>
          </xsl:if>
          </xsl:for-each>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>