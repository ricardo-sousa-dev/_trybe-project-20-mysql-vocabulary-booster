-- 16 - Crie uma função chamada buscar_quantidade_de_empregos_por_funcionario no banco de dados hr que, ao receber o email de uma pessoa funcionária, retorne a quantidade de empregos presentes em seu histórico
-- Crie uma função chamada buscar_quantidade_de_empregos_por_funcionario que, ao receber o email de uma pessoa funcionária, retorne a quantidade de empregos presentes em seu histórico.
-- Use o banco hr como referência
-- Confirme que sua função retorna o valor 2 ao ser chamada passando uma pessoa funcionária cujo email é "NKOCHHAR".

USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(EMAIL VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE quant_func INT;
    SELECT COUNT(*)
    FROM hr.job_history AS jh, hr.employees AS e
    WHERE jh.EMPLOYEE_ID = e.EMPLOYEE_ID AND e.EMAIL = EMAIL INTO quant_func;
    RETURN quant_func;
END $$
DELIMITER ;
-- Como usar:
SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');

SELECT EMPLOYEE_ID, COUNT(*) FROM hr.job_history
WHERE EMPLOYEE_ID = 101;