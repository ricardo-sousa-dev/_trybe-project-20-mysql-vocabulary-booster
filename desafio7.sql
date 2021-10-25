-- 7 - Faça um relatório que mostra o histórico de cargos das pessoas empregadas que iniciaram seus cargos nos meses de janeiro, fevereiro ou março
-- Faça um relatório que mostre o histórico de cargos das pessoas empregadas que iniciaram seus cargos nos meses de janeiro, fevereiro ou março.
-- Use o banco hr como referência
-- Monte uma query que exiba 03 colunas:
-- A primeira deve possuir o alias "Nome completo" e exibir o nome completo da pessoa empregada em CAIXA ALTA (não se esqueça do espaço entre o nome e o sobrenome).
-- A segunda deve possuir o alias "Data de início" e exibir a data que a pessoa iniciou o cargo.
-- A terceira deve possuir o alias "Salário" e exibir o salário da pessoa.
-- Os resultados devem estar ordenados pelo nome completo das pessoas empregadas em ordem alfabética.
-- Em caso de empate no nome completo, ordene os resultados pela data de início que a pessoa iniciou seu cargo, em ordem crescente.

SELECT 
    CONCAT(UCASE(FIRST_NAME), ' ', UCASE(LAST_NAME)) AS 'Nome completo',
    HIRE_DATE AS 'Data de início',
    SALARY AS Salário
FROM
    hr.employees
ORDER BY FIRST_NAME, LAST_NAME, HIRE_DATE;
