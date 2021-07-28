SELECT
CONCAT(UPPER(t1.first_name), ' ',UPPER(t1.last_name)) AS `Nome completo`,
t2.START_DATE AS `Data de início`,
t1.salary AS `Salário`
FROM hr.employees AS t1
INNER JOIN
hr.job_history AS t2
ON t1.EMPLOYEE_ID = t2.EMPLOYEE_ID
WHERE MONTH(t2.START_DATE) BETWEEN 1 AND 3
ORDER BY `Nome completo` ASC, `Data de início` ASC;
