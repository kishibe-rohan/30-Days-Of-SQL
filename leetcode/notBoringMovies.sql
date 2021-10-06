    SELECT * 
    FROM cinema 
    WHERE id%2 = 1 AND description not in ('boring')
    ORDER BY rating DESC;