﻿<?xml version="1.0" encoding="UTF-8"?>
<root>
	<mssqlauditorpreprocessors name="Отчёт без SQL запроса" id="Ticket86.HTML.ru" columns="100" rows="100" splitter="yes">
		<mssqlauditorpreprocessor preprocessor="HtmlPreprocessorDialog" name="Отчёт без SQL запроса" id="Ticket86.HTML.ru" column="1" row="1" colspan="1" rowspan="1">
			<xsl:stylesheet version="1.0"
					xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
					xmlns:ms="urn:schemas-microsoft-com:xslt"
					xmlns:dt="urn:schemas-microsoft-com:datatypes">

			<xsl:template match="/">

			<html>
			<head>
			</head>
			<body>
				<style>
					body { overflow: auto; padding:0; margin:0; }
				</style>

				В данном отчёте только статические элементы, нет результатов выполнения SQL запросов.

			</body>
			</html>
			</xsl:template>
			</xsl:stylesheet>
		</mssqlauditorpreprocessor>
	</mssqlauditorpreprocessors>
</root>
