SELECT a.product_name,b.year,b.price
FROM product AS a
JOIN sales as b 
ON a.product_id = b.product_id