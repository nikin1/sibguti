<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
	<head>
		<title>РГЗ</title>
	</head>
	<body>
		<h2>РГЗ</h2>
		<h3>Выполнил:  Шаповал Никита Олегович</h3>
		<h3>Группа: ИА-131</h3>
		<h3>Вариант: 2</h3>
		<hr/>
		<xsl:apply-templates/>
	</body>
</html>
</xsl:template>
<xsl:template match="hiblock">
	<xsl:apply-templates/>
</xsl:template>

<xsl:template match="page">
	<hr/>
	<h2>Станица <xsl:value-of select="@num"/></h2>

	<!-- <xsl: if "@num = 0> -->
	<!-- <xsl:if <xsl:value-of select="@num"/>="0"> -->
	<!-- <xsl:if test=<xsl:value-of select="@num"/>="0"> -->
	<xsl:choose>


		<xsl:when test="@num=0">

			<table border="1" cellspacing="0" cellpadding="10">
				<th>N</th>	
	<!-- 			bgcolor="<xsl:value-of select="@color"/>" -->
				<xsl:for-each select="variants/sequence/items1/item"> 
					<th style="color:white;" bgcolor="green">
						<xsl:value-of select="num"/>
					</th>
				</xsl:for-each>


				<tr>
					<th>Значение</th>	
					
					<xsl:for-each select="variants/sequence/items1/item"> 
						<th>
							<xsl:value-of select="val"/>
						</th>
					</xsl:for-each>
				</tr>
			</table>

		</xsl:when>
	<!-- </xsl:if> -->


	</xsl:choose>
		<hr/>
</xsl:template>

</xsl:stylesheet>
