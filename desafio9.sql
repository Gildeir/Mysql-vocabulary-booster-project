SELECT 
CONCAT(employee.firstName, ' ', employee.lastName) AS `Nome completo`,
COUNT(orderJ.EmployeeID) AS `Total de pedidos`
FROM w3schools.employees AS employee
INNER JOIN w3schools.orders AS orderJ
ON employee.EmployeeID = orderJ.EmployeeID
GROUP BY `Nome completo`
ORDER BY `Total de pedidos` ASC;
