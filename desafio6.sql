SELECT
CONCAT(t1.first_name, ' ',t1.last_name) AS `Nome completo`,
t2.JOB_TITLE AS `Cargo`,
t3.START_DATE AS `Data de início do cargo`,
t4.DEPARTMENT_NAME AS `Departamento`
FROM hr.job_history AS t3
INNER JOIN
hr.employees AS t1
ON t1.EMPLOYEE_ID = t3.EMPLOYEE_ID
INNER JOIN
hr.jobs AS t2
ON t2.JOB_ID = t3.JOB_ID
INNER JOIN
hr.departments t4
ON t3.DEPARTMENT_ID = t4.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo` ASC;
