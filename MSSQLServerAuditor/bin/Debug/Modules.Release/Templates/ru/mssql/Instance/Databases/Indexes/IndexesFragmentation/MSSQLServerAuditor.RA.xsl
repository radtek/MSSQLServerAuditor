﻿<?xml version="1.0" encoding="UTF-8"?>
<root>
	<mssqlauditorpreprocessors name="Фрагментированные индексы" id="IndexesFragmented.Description.HTML.ru" columns="100" rows="100" splitter="yes">
		<mssqlauditorpreprocessor preprocessor="HtmlPreprocessorDialog" name="Фрагментированные индексы" id="IndexesFragmented.Description.HTML.ru" column="1" row="1" colspan="1" rowspan="1">
			<xsl:stylesheet version="1.0"
					xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
					xmlns:ms="urn:schemas-microsoft-com:xslt"
					xmlns:dt="urn:schemas-microsoft-com:datatypes">

			<xsl:template match="/">

			<html>
			<head>
			</head>
			<body>

				<h1 class="firstHeading">Фрагментированные индексы</h1>

					<h2 class="secondHeading">Фрагментация внутри отдельных страниц индекса</h2>

					После операций вставки, обновления и удаления записей неизбежно возникают пустые пространства на страницах. Ничего страшного в этом нет, поскольку данная ситуация вполне нормальная, если бы не одно но…

					Очень важную роль играет длина строки. Например, если строка имеет размер, который занимает более половины страницы, свободная половина этой страницы не будет использоваться. В результате при увеличении числа строк будет наблюдаться рост неиспользуемого места в базе данных.

					Бороться с данным видом фрагментации стоит на этапе проектировании схемы, т. е. выбирать такие типы данных, которые бы компактно умещались на страницах.

					<h2 class="secondHeading">Фрагментация внутри структур индекса</h2>

					Основная причина возникновения этого вида фрагментации — операции разбиения страницы. Например, согласно структуре первичного ключа, новую строку необходимо вставить на определенную страницу индекса, но этой на странице недостаточно места, чтобы разместить вставляемые данные.

					В таком случае, создается новая страница, на которую переместиться примерно половина записей со старой страницы. Новая страница, зачастую не является физически смежной со старой и, следовательно, помечается системой как фрагментированная.

					В любом случае, фрагментация ведет к росту числа страниц для хранения того же объема информации. Это автоматически приводит к увеличению размера базы данных и росту неиспользуемого места.

					При выполнении запросов, в которых идет обращение к фрагментированым индексам, требуется больше IO операций. Кроме того, фрагментация накладывает дополнительные расходы на память самого сервера, которому приходится хранить в кэше лишние страницы.

					Для предотвращения фрагментации в арсенале SQL Server-а предусмотрены команды по реорганизации и перестройке индексов.

					Перестройка индекса подразумевает удаление старого и создание нового экземпляра индекса, в котором данные на страницах аккуратно сжаты и организованы максимально непрерывно, насколько это вообще возможно. Важно отметить, что операция по перестройке индекса весьма затратна.

					Поэтому, в случае, когда фрагментация незначительна, предпочтительно реорганизовывать существующий индекс. Данная операция требует меньших системных ресурсов, чем пересоздание индекса и заключается в реорганизации leaf-level страниц. Кроме того реорганизация при возможности сжимает страницы индексов.

					Степень фрагментации того или иного индекса можно узнать из динамического системного представления sys.dm_db_index_physical_stats.

				<p><strong>Уровень сложности:</strong> Легкий</p>

				<p><strong>Уровень опасности:</strong> Средний</p>

				<p><a href="https://msdn.microsoft.com/ru-ru/library/ms189858.aspx" target="_blank">Реорганизация и перестроение индексов</a></p>

				<p><a href="http://habrahabr.ru/post/209698/" target="_blank">План обслуживания «на каждый день» – Часть 1: Автоматическая дефрагментация индексов</a></p>

			</body>
			</html>
			</xsl:template>
			</xsl:stylesheet>
		</mssqlauditorpreprocessor>
	</mssqlauditorpreprocessors>
</root>
