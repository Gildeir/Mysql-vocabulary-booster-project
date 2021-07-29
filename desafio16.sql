USE hr;
DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_emprego_por_funcionario(pessoa VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE total_jobs INT;
SELECT
COUNT(job_history.EMPLOYEE_ID)
FROM hr.job_history
INNER JOIN hr.employees
ON employees.EMPLOYEE_ID = job_history.EMPLOYEE_ID
WHERE EMAIL = pessoa INTO total_jobs;
RETURN total_jobs;
END $$
DELIMITER ;
