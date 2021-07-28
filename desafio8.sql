SELECT
t3.ContactName AS `Nome de contato`,
t1.ShipperName As `Empresa que fez o envio`,
t2.OrderDate AS `Data do pedido`
FROM w3schools.shippers AS t1
INNER JOIN w3schools.orders AS t2
ON t2.ShipperID = t1.ShipperID
INNER JOIN w3schools.customers AS t3
ON t2.CustomerID = t3.CustomerID
WHERE t1.ShipperID = 1 OR t1.ShipperID = 2
ORDER BY 
`Nome de Contato` ASC,
`Empresa que fez o envio` ASC,
`Data do pedido` ASC;
