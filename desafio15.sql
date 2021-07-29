USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(50))
BEGIN
SELECT
ROUND(AVG(employees.SALARY), 2) AS `Média salarial`
FROM hr.employees
INNER JOIN hr.jobs
ON jobs.JOB_ID = employees.JOB_ID
WHERE jobs.JOB_TITLE = cargo
GROUP BY JOB_TITLE;
END $$
DELIMITER ;
