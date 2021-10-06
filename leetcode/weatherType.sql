SELECT c.country_name,
CASE 
WHEN avg(w.weatther_state) <= 15 then 'Cold'
WHEN avg(w.weather_state)  >= 25 then 'Hot'
ELSE 'Warm'
END AS weather_type
FROM Weather w 
JOIN Countries c 
ON w.country_id = c.country_id 
WHERE month(day) = 11
GROUP BY c.country_name