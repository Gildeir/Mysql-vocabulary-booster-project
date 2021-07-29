SELECT DISTINCT
Country AS `País`
FROM w3schools.customers
UNION 
SELECT DISTINCT
Country
FROM w3schools.suppliers
ORDER BY `País` ASC
LIMIT 5;
