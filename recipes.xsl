<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 
<xsl:template match="/chickenrecipes">

<html>
	<head>
		<link href="chickenrecipes.css" rel="stylesheet" type="text/css" />
	</head>

	<body>
		<h1>Molly's Chicken Recipes</h1>
		<h2>Recipes I Love and Recipes I'd Love to Try</h2>
		<table>
				<thead>
				<tr>
					<th>Name</th>
					<th>Cuisine</th>
					<th>Method</th>
					<th>Total Time</th>
					<th>Servings</th>
					<th>Ingredients</th>
					<th>Directions</th>
				</tr>
				</thead>
			<tbody>
			<xsl:for-each select="recipe">
				<tr>
					<td><xsl:value-of select="name" /></td>
					<td><xsl:value-of select="cuisine" /></td>
					<td><xsl:value-of select="method" /></td>
					<td><xsl:value-of select="time" /></td>
					<td><xsl:value-of select="servings" /></td>
					<td>
						<xsl:for-each select="ingredients-list">
						<ul>
						<xsl:for-each select="ingredient">
						<li><xsl:value-of select="." /></li>
					</xsl:for-each>
					</ul>
					</xsl:for-each>
					</td>
					<td>
						<xsl:for-each select="directions">
						<ol>
						<xsl:for-each select="step">
						<li><xsl:value-of select="." /></li>
					</xsl:for-each>
					</ol>
					</xsl:for-each>
					</td>
				</tr>
			</xsl:for-each>
		</tbody>
		</table>
		
	</body>

</html>
</xsl:template>
</xsl:stylesheet>