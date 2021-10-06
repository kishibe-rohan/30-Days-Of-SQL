SELECT extra AS report_reason, COUNT(DISTINCT post_id) AS report_count
FROM actions
WHERE action_date = DATE_SUB("2019-07-5",INTERVAL 1 DAY) AND action = 'report'
GROUP BY extra   