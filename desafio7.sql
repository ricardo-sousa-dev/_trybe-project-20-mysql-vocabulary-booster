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
  CONCAT(
    UCASE(e.FIRST_NAME),
    ' ',
    UCASE(e.LAST_NAME)
  ) AS 'Nome completo',
  jh.START_DATE AS 'Data de início',
  e.SALARY AS 'Salário'
FROM
  hr.employees AS e
  INNER JOIN job_history AS jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
  AND (MONTH(jh.START_DATE) IN (1, 2, 3))
  INNER JOIN departments AS d ON jh.DEPARTMENT_ID = d.DEPARTMENT_ID
ORDER BY
  1 ASC,
  2 ASC;
