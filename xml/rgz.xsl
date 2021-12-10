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
	<xsl:choose>


		<xsl:when test="@num=0">
			<h2><xsl:value-of select="variants/sequence/name"/></h2>
			<xsl:if test="variants/sequence/@variant=4"> 
					<!-- Первая таблица -->
					<table border="1" cellspacing="0" cellpadding="10">
					<th>N</th>	

						<xsl:for-each select="variants/sequence/items/item"> 
								<xsl:apply-templates select="num"/>
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
			<h2><xsl:value-of select="name"/></h2>

			<table cellspacing="0" cellpadding="0" row-size="7">

				<!-- Для каждой новой строчки новый цикл -->
				<!-- 1 трочка -->
				<tr>
					<xsl:for-each select="table/item">
						<xsl:sort select="order" data-type="number" order="descending"/>
						<!-- <h2><xsl:value-of select="order"/></h2> -->

						<xsl:if test="order&gt;42">
				
								 <td> 
								 	<!-- открытие картинки через <xsl:attribute , т.к. нужно прописать в атрибут src <xsl:value-of select="url"/>-->
									<img> 
										<xsl:attribute name="src">
											<xsl:value-of select="url"/>
										</xsl:attribute>
									</img>
								</td>
				
						</xsl:if>

					</xsl:for-each>
				</tr>
				<!-- 2 трочка -->
				<tr>
					<xsl:for-each select="table/item">
						<xsl:sort select="order" data-type="number" order="descending"/>
						<xsl:if test="(order&lt;43) and  (order&gt;35)"> 
				
								<td>
									<img> 
										<xsl:attribute name="src">
											<xsl:value-of select="url"/>
										</xsl:attribute>
									</img>
								</td>
						</xsl:if>
					</xsl:for-each>
				</tr>

				<!-- 3 трочка -->
				<tr>
					<xsl:for-each select="table/item">
						<xsl:sort select="order" data-type="number" order="descending"/>
						<xsl:if test="(order&lt;36) and  (order&gt;28)"> 
				
								<td>
									<img> 
										<xsl:attribute name="src">
											<xsl:value-of select="url"/>
										</xsl:attribute>
									</img>
								</td>
						</xsl:if>
					</xsl:for-each>
				</tr>
				<!-- 4 трочка -->
				<tr>
					<xsl:for-each select="table/item">
						<xsl:sort select="order" data-type="number" order="descending"/>
						<xsl:if test="(order&lt;29) and  (order&gt;21)"> 
				
								<td>
									<img> 
										<xsl:attribute name="src">
											<xsl:value-of select="url"/>
										</xsl:attribute>
									</img>
								</td>
						</xsl:if>
					</xsl:for-each>
				</tr>
				<!-- 5 трочка -->
				<tr>
					<xsl:for-each select="table/item">
						<xsl:sort select="order" data-type="number" order="descending"/>
						<xsl:if test="(order&lt;22) and  (order&gt;14)"> 
								<td>
									<img> 
										<xsl:attribute name="src">
											<xsl:value-of select="url"/>
										</xsl:attribute>
									</img>
								</td>
						</xsl:if>
					</xsl:for-each>
				</tr>
				<!-- 6 трочка -->
				<tr>
					<xsl:for-each select="table/item">
						<xsl:sort select="order" data-type="number" order="descending"/>
						<xsl:if test="(order&lt;15) and  (order&gt;7)"> 
				
								<td>
									<img> 
										<xsl:attribute name="src">
											<xsl:value-of select="url"/>
										</xsl:attribute>
									</img>
								</td>
						</xsl:if>
					</xsl:for-each>
				</tr>
				<!-- 7 трочка -->
				<tr>
					<xsl:for-each select="table/item">
						<xsl:sort select="order" data-type="number" order="descending"/>
						<xsl:if test="(order&lt;8) and  (order&gt;0)"> 
				
								<td>
									<img> 
										<xsl:attribute name="src">
											<xsl:value-of select="url"/>
										</xsl:attribute>
									</img>
								</td>
						</xsl:if>
					</xsl:for-each>
				</tr>
				
			</table>
		</xsl:when>

		<xsl:when test="@num=2">
			<h2><xsl:value-of select="name"/></h2>

			<table border="1" cellpadding="0" cellspacing="0"> 
				<xsl:for-each select="countries/country">
					<tr>
						<td><h4><xsl:value-of select="id" /></h4></td>
						<td><h4><xsl:value-of select="uf_name"/></h4></td>
						<td>
							<img> 
								<xsl:attribute name="src">
									<xsl:value-of select="uf_icon"/>
								</xsl:attribute>
							</img>
						</td>
					</tr>
				</xsl:for-each>

			</table> 
		</xsl:when>

	</xsl:choose>
		<hr/>
</xsl:template>

<!-- Парсинг значений с цветом -->
<xsl:template match="num">
	<th style="color:white;" bgcolor="{@color}">
		<xsl:value-of select="."/>
	</th>
</xsl:template>

</xsl:stylesheet>
