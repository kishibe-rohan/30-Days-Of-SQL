-- Question Link : https://leetcode.com/problems/combine-two-tables/solution/

SELECT FirstName,LastName,City,State
FROM Person
LEFT JOIN Address
ON Person.PersonId = Address.PersonId;