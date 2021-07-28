SELECT
CONCAT(t1.first_name, ' ',t1.last_name) AS `Nome Completo`,
t2.JOB_TITLE AS `Cargo`,
t3.START_DATE AS `Data de início do cargo`,
t4.DEPARTMENT_NAME AS `Departamento`
FROM hr.employees AS t1
INNER JOIN
hr.jobs AS t2
ON t1.JOB_ID = t2.JOB_ID
INNER JOIN
hr.job_history AS t3
ON t1.JOB_ID = t3.JOB_ID
INNER JOIN
hr.departments t4
ON t3.DEPARTMENT_ID = t4.DEPARTMENT_ID
ORDER BY `Nome Completo` DESC, CARGO ASC;
