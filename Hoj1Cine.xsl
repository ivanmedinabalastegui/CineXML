<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head><title>Hoj1Cine.xsl</title></head>
      <body>
        <center><h1>Listado de Películas</h1></center>
        <table BORDER="1" ALIGN="CENTER">
           <xsl:for-each select="Cine/Películas/Película">
            <xsl:sort select="Título[@Idioma='Español']" order="ascending"/>
          <tr ALIGN="CENTER" BGCOLOR="YELLOW">
        	<td COLSPAN="2">Título</td>
        	<td>Director</td>
        	<td>Duración</td>
        	<td>Metraje</td>
	  </tr>
             <tr ALIGN="CENTER">
              <td COLSPAN="2"><xsl:value-of select="Título[@Idioma='Español']"/></td>
              <td><xsl:value-of select="Director"/></td>
              <td><xsl:value-of select="Duración"/></td>
              <td><b>
               <xsl:choose>
                <xsl:when test="Duración &lt; '90'">Corto</xsl:when>
                <xsl:when test="Duración > '120'">Largo</xsl:when>
                <xsl:otherwise>Mediano</xsl:otherwise>
               </xsl:choose>
              </b></td>
            </tr>
            <tr ALIGN="CENTER" BGCOLOR="YELLOW">
        	<td COLSPAN="8">Argumento</td>
	  </tr>
        <tr ALIGN="CENTER" BGCOLOR="CYAN">
          <td COLSPAN="5" ><xsl:value-of select="Argumento"/></td>
        </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>