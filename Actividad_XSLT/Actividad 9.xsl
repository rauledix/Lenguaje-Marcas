<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

 <xsl:template match="/">

 <html>
 <head>
    <title>Actividad 9</title>
 </head>
 <body>
    <h2>Completar XML:</h2>
    <h4>Orden:</h4>
 <xsl:for-each select="tablas/Orden/dataset">
 <xsl:choose>
 <xsl:when test="position() = 1">
 <xsl:choose>
 <xsl:when test="Cliente = 'Reich'">
    <p style="color:green">
 Cliente: <span style="color:red"> <xsl:value-of select="Cliente"/>
    </span> <br/>
 PC: <b><xsl:value-of select="PC"/></b> <br/>
 </p>
 </xsl:when>
 <xsl:otherwise>
 <p>
 Cliente: <span style="color:red"> <xsl:value-of select="Cliente"/>
</span> <br/>
 PC: <b><xsl:value-of select="PC"/></b> <br/>
 </p>
 </xsl:otherwise>
 </xsl:choose>
 </xsl:when>
 <xsl:when test="position() = 3">
 <xsl:choose>
 <xsl:when test="Cliente = 'Reich'">
 <p style="color:green">
 Cliente: ###Tecer 'pedido'### <br/>
 PC: <b><xsl:value-of select="PC"/></b> <br/>
 </p>
 </xsl:when>
 <xsl:otherwise>
 <p>
 Cliente: ###Tercer 'pedido'### <br/>
 PC: <b><xsl:value-of select="PC"/></b> <br/>
 </p>
 </xsl:otherwise>
 </xsl:choose>
 </xsl:when>
 <xsl:otherwise>
 <xsl:choose>
 <xsl:when test="Cliente = 'IBM'">
 <p style="color:green">
 Cliente: <xsl:value-of select="Cliente"/> <br/>
 PC: <b><xsl:value-of select="PC"/></b> <br/>
 </p>
 </xsl:when>
 <xsl:otherwise>
 <p>
 Cliente: <xsl:value-of select="Cliente"/> <br/>
 PC: <b><xsl:value-of select="PC"/></b> <br/>
 </p>
 </xsl:otherwise>
 </xsl:choose>
 </xsl:otherwise>
 </xsl:choose>
 </xsl:for-each>

 <h4>Devoluciones:</h4>
 <xsl:for-each select="tablas/Devoluciones/dataset">
 <xsl:choose>
 <xsl:when test="Precio &lt;= 2000">
 <p>
Proveedor: <xsl:value-of select="Proveedor"/> <br/>
 <span style="color:gold">
 Parte: <xsl:value-of select="Parte"/> <br/>
 Precio: <xsl:value-of select="Precio"/> <br/>
 Entrega: <xsl:value-of select="Entrega"/>
 </span>
 </p>
 </xsl:when>
 <xsl:otherwise>
 <p>
 Proveedor: <xsl:value-of select="Proveedor"/> <br/>
 Parte: <xsl:value-of select="Parte"/> <br/>
 Precio: <xsl:value-of select="Precio"/> <br/>
 Entrega: <xsl:value-of select="Entrega"/>
 </p>
 </xsl:otherwise>
 </xsl:choose>
 </xsl:for-each>
 </body>
 </html>
 </xsl:template>

</xsl:stylesheet>