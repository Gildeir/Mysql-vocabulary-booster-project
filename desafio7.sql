SELECT
CONCAT(UPPER(t1.first_name), ' ',UPPER(t1.last_name)) AS `Nome Completo`,
t2.START_DATE AS `Data de início do cargo`,
t3.salary AS `Salário`
FROM hr.employees AS t1
INNER JOIN
hr.job_history AS t2
ON t1.JOB_ID = t2.JOB_ID
INNER JOIN
hr.employees t3
ON t2.JOB_ID = t3.JOB_ID
ORDER BY `Nome Completo` ASC, `Data de início do cargo` ASC;
