SELECT 
JOB_TITLE AS Cargo,
MAX_SALARY - MIN_SALARY AS 'Diferença entre salários máximo e mínimo'
FROM hr.jobs
ORDER BY MAX_SALARY - MIN_SALARY, Cargo;
