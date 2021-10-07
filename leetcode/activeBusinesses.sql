SELECT a.business_id
FROM 
(
    SELECT *
    FROM events e 
    JOIN (SELECT event_type AS event,round(AVG(occurences),2) AS average FROM events
        GROUP BY event_type) b 
    ON e.event_type = b.event
)a 
WHERE c.occurences > c.average 
GROUP BY c.business_id
HAVING COUNT(*) > 1