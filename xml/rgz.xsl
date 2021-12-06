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
			<h2><xsl:value-of select="variants/sequence/name"/></h2>
			<xsl:if test="variants/sequence/@variant=4"> 
					<table border="1" cellspacing="0" cellpadding="10">
					<th>N</th>	
		<!-- 			bgcolor="<xsl:value-of select="@color"/>" -->
					<!-- <xsl:apply-templates select="sequenc"/> -->
						<xsl:for-each select="variants/sequence/items/item"> 

								<th style="color:white;" bgcolor="green">
									<xsl:value-of select="num"/>
								</th>



						</xsl:for-each>

					<tr>
						<th>Значение</th>	
						
						<xsl:for-each select="variants/sequence/items/item"> 
							<!-- <xsl:apply-templates/> -->
								<th>
									<xsl:value-of select="val"/>
								</th>

						</xsl:for-each>
					</tr>
				</table>
			</xsl:if>
	


		</xsl:when>

		<xsl:when test="@num=1">
			<!-- <h2>Aboba</h2> -->
			<h2><xsl:value-of select="name"/></h2>
<!-- 			<table>
				<xsl:for-each select="">
					<td></td>
				</xsl:for-each>
			</table> -->

			<table cellspacing="0" cellpadding="0">

				
					<xsl:apply-templates select="table/item[2]" />
					<!-- <xsl:value-of select="table/item[1]"/> -->
					
				



				<!-- <td><img src="./mem/49.jpg"></td> -->
				<!-- <tr> -->
				<!-- <td> -->
					<!-- <img src=""> -->
					<!-- <img src="./mem/49.jpg"> -->
						<!-- <item><order>49</order><url>https://github.com/mironnsk/sibsuti/tree/master/rgz/mem/49.jpg</url></item> -->
					<!-- <xsl:value-of select="table/item"/> -->
				<!-- </td> -->
			<!-- </tr> -->
			</table>

			
			
		</xsl:when>

	</xsl:choose>
		<hr/>
</xsl:template>


<xsl:template match="table/item[2]">
	<td>
		<img src="./mem/47.jpg"/>
	</td>
	<h2><xsl:value-of select="url"/></h2>
	<!-- <xsl:if test="name=1"> -->
		<!-- <xsl:apply-templates match="/items/item"/> -->



	<!-- </xsl:if> -->















	<!-- <img src="{@url}" height = "300px" /> -->
	<!-- <h2>ki</h2> -->




    <!-- <img src="{@url}" /> -->
    <!-- <item bgcolor="green"><xsl:value-of select="num"/> -->
<!-- </item> -->
</xsl:template>

	

<!-- <xsl:template match="items/item">
	<th>
		<xsl:value-of select="val"/>
	</th>
</xsl:template> -->

</xsl:stylesheet>
