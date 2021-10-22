-- Write a query to report the difference in daily sales of apples and oranges

SELECT sale_date, sold_num - sold_oranges AS diff 
FROM 
(
    (
        SELECT * 
        FROM sales 
        WHERE fruit = 'apples'
    )a 
    
    JOIN 
   (
        SELECT sale_date AS sale,fruit,sold_num as sold_oranges 
        FROM sales 
        WHERE fruit = 'oranges'
   )o

 ON a.sale_date = b.sale

)