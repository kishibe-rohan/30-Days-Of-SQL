--Question Link: https://leetcode.com/problems/delete-duplicate-emails/

DELETE FROM Person
WHERE Id
NOT IN (SELECT * FROM 
            (SELECT MIN(Id) FROM Person 
            GROUP BY Email) AS p);