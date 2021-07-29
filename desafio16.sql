USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_quantidade_de_emprego_por_funcionario(IN pessoa VARCHAR(50))
BEGIN
SELECT
COUNT(job_history.EMPLOYEE_ID)
FROM hr.job_history
INNER JOIN hr.employees
ON employees.EMPLOYEE_ID = job_history.EMPLOYEE_ID
WHERE EMAIL = pessoa;
END $$
DELIMITER ;
