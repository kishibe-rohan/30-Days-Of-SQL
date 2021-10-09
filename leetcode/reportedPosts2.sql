WITH T1 AS (
    SELECT a.action_date, (COUNT(DISTINCT r.post_id) + 0.0)/(COUNT(DISTINCT a.post_id) + 0.0) AS result 
    FROM (SELECT action_date,post_id 
          FROM actions 
          WHERE extra = 'spam' AND action = 'report'
          ) a 
    LEFT JOIN 
    removals r 
    ON a.post_id = r.post_id 
    GROUP BY a.action_date
)

SELECT ROUND(AVG(T1.result)*100,2) AS AVERAGE_DAILY_PERCENT 
FROM T1