-- Write a query to find min,max and average order value in a city

SELECT CustomerCity,
AVG(OrderAmount) AS AvgOrderAmount,
MIN(OrderAmount) AS MinOrderAmount,
MAX(OrderAmount) AS MaxOrderAmount
FROM Orders 
GROUP BY CustomerCity;