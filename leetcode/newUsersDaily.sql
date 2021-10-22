WITH t1 AS 
(
    SELECT user_id, MIN(activity_date) AS login_date 
    FROM Traffic 
    WHERE activity = 'login'
    GROUP BY user_id 
)

SELECT login_date, COUNT(DISTINCT user_id) AS user_count 
FROM t1 
WHERE  login_date between '2019-04-01' and '2019-06-30'
GROUP BY login_date