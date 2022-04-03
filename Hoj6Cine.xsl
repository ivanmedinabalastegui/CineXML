<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head><title>Hoj6Cine.xsl</title></head>
      <body>
        <center><h1>Listado de Películas</h1></center>
        <hr></hr>
          <xsl:for-each select="Cine/Películas/Película[@Género='Comedia']">
          <xsl:sort select="Título" order="ascending"/>
          <xsl:if test="Título[@Idioma='Francés']">
          <xsl:if test="Duración>'120'">
        	<p><b>Datos de la película: <xsl:value-of select="Título"/></b></p>
        	<hr></hr>
        	<p>Director: <xsl:value-of select="Director"/></p>
        	<p>Duración: <xsl:value-of select="Duración"/>
              <xsl:value-of select="Título[@Idioma='Francés']"/>
               <xsl:choose>
                <xsl:when test="Duración &lt; '90'"> (Corta)</xsl:when>
                <xsl:when test="Duración > '120'"> (Larga)</xsl:when>
                <xsl:otherwise> (Mediana)</xsl:otherwise>
               </xsl:choose>
              </p>
        	<p>Argumento: <xsl:value-of select="Argumento"/></p>
          <hr></hr>
          </xsl:if>
          </xsl:if>
          </xsl:for-each>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>