SELECT jobs.JOB_TITLE AS `Cargo`,
(jobs.MAX_SALARY - jobs.MIN_SALARY) `Variação Salarial`,
ROUND(jobs.MIN_SALARY / 12, 2) `Média mínima mensal`,
ROUND(jobs.MAX_SALARY / 12, 2) `Média máxima mensal`
FROM hr.jobs
ORDER BY `Variação Salarial` ASC;

