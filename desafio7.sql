SELECT
CONCAT(UPPER(t1.first_name), ' ',UPPER(t1.last_name)) AS `Nome Completo`,
t2.START_DATE AS `Data de início`,
t3.salary AS `Salário`
FROM hr.employees AS t1
INNER JOIN
hr.job_history AS t2
ON t1.JOB_ID = t2.JOB_ID
INNER JOIN
hr.employees t3
ON t2.JOB_ID = t3.JOB_ID
WHERE MONTH(t2.START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome Completo` ASC, `Data de início` ASC;
