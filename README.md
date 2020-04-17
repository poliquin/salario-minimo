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


[1]: http://www.mte.gov.br/index.php/salario-minimo
[2]: http://www.ipeadata.gov.br/Default.aspx
