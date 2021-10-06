SELECT u.name AS name,coalesce(SUM(r.distance),0) AS travelled_dist
FROM Users AS u 
JOIN Rides AS r 
ON u.id = r.user_id 
GROUP BY u.id 
ORDER BY travelled_dist DESC,name