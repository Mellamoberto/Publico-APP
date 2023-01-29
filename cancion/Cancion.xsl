<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<link rel="stylesheet" href="Cancion.css"/>
			</head>
			<body>
				<h1>CANCIÓN</h1>
				<h2>Título: <xsl:value-of select="cancion/titulo"/></h2>
				<h3>(Autor: <span><xsl:value-of select="cancion/autor"/></span>)</h3>
				<br/>
				<xsl:for-each select="cancion/letra/estrofa">
					<xsl:if test="tipo = 'estribillo'">
						<h3>Estribillo:</h3>
					</xsl:if>
					<xsl:for-each select="verso">
						<p><xsl:value-of select="."/></p>
					</xsl:for-each>
					<br/>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>