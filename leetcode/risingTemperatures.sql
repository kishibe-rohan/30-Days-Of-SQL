SELECT a.id 
FROM weather a, weather b 
WHERE a.Temperature > b.Temperature 
AND DATEDIFF(a.recorddate,b.recorddate) = 1