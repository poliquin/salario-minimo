Minimum Wage in Brazil
======================

Nominal minimum wages and minimum wage legislation from 1940 to 2015.
Data originally downloaded from [MTE][1] on 2015-12-12. That website,
however, is no longer accessible. Data were updated via [IPEA][2] on
2019-03-20.

Original data files are under `orig`. Clean data files are under `data`.
The `data/avgwage.tsv` file can be (re-)produced from the `data/minwage.tsv`
file using the `avgwage.py` Python script.

The `sql/load_minwage.sql` script loads the `avgwage.tsv` data into a SQL
database.

Values represent the monthly minimum wage. To calculate the daily minimum
wage, divide the monthly values by 30. To calculate the hourly legal minimum
wage, divide the monthly values by 220 (the maximum monthly work hours).

[1]: http://www.mte.gov.br/index.php/salario-minimo
[2]: http://www.ipeadata.gov.br/Default.aspx
