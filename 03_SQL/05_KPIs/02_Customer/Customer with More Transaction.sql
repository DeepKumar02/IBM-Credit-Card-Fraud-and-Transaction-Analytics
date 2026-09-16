SELECT TOP 1
[User],
COUNT(*) AS Transactions
FROM fact_transactions
GROUP BY [User]
ORDER BY Transactions DESC;