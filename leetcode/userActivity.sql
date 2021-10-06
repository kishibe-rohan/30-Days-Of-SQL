SELECT activity_date , COUNT(DISTINCT user_id)
FROM activity
WHERE activity_date > '2019-06-26' AND activity_date < '2019-07-27'
GROUP BY activity_date