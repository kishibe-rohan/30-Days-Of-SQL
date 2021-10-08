SELECT book_id, name 
FROM Books 
WHERE book_id NOT IN 
(
    SELECT book_id
    FROM Orders 
    where dispatch_date >= '2018-06-23' and dispatch_date <= '2019-06-22'
    GROUP BY book_id
    HAVING SUM(quantity) >= 10
)
AND available_from < '2019-05-23'