SELECT 
product.ProductName AS `Produto`,
MIN(orderDetail.Quantity) `Mínima`,
MAX(orderDetail.Quantity) `Máxima` ,
ROUND(AVG(orderDetail.Quantity), 2) `Média`
FROM w3schools.products AS product
INNER JOIN w3schools.order_details AS orderDetail
ON product.ProductID = orderDetail.ProductID
GROUP BY `Produto`
HAVING `Média` > 20
ORDER BY `Média` ASC, `Produto` ASC;
