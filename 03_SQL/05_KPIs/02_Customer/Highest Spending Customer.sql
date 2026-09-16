SELECT TOP 1
[User],
SUM(Amount) AS TotalSpent
FROM fact_transactions
GROUP BY [User]
ORDER BY TotalSpent DESC;