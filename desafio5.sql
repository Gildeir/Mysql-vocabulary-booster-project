SELECT t1.JOB_TITLE AS Cargo,
(MAX_SALARY - MIN_SALARY) 'Varicação Salarial',
ROUND(MIN_SALARY / 12, 2) 'Média mínima mensal ',
ROUND(MAX_SALARY / 12, 2) 'Média máxima mensal'
FROM hr.jobs AS t1
INNER JOIN hr.employees AS t2
ON t1.JOB_ID = t2.JOB_ID
GROUP BY Cargo
ORDER BY 'Varicação Salarial', Cargo;
