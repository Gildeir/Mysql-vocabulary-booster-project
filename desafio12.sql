SELECT 
t1.ContactName `Nome`,
t1.Country `País`,
COUNT(t1.Country) `Número de compatriotas`
FROM w3schools.customers AS t1, w3schools.customers AS t2
WHERE t1.Country = t2.Country AND t1.CustomerID <> t2.CustomerID
GROUP BY t1.CustomerID
ORDER BY `Nome` ASC;

