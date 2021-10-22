WITH t1 AS 
(
    SELECT *,
    SUM(weight) OVER(ORDER BY turn)
    AS cum_weight 
    FROM queue 
    ORDER BY turn
)

SELECT t1.person_name 
FROM t1 
WHERE turn = (SELECT max(turn) FROM t1 WHERE t1.cum_weight <= 1000)