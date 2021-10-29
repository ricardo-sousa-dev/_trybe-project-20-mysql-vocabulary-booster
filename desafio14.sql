-- 14 - Considerando o conjunto formado pelas pessoas consumidoras e empresas fornecedoras de produtos, queremos saber quais são os cinco primeiros países distintos, em ordem alfabética, presentes nesse conjunto
-- Exiba os 05 primeiros países distintos dentre as pessoas consumidoras e as empresas fornecedoras, em ordem alfabética.
-- Use o banco w3schools como referência
-- Monte uma query que exiba 01 coluna com o alias "País" contendo o nome do país.

SELECT c.Country AS País FROM w3schools.customers AS c
UNION
SELECT s.Country FROM w3schools.suppliers AS s
ORDER BY 1
LIMIT 5;
