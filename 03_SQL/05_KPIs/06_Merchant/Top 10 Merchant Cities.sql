SELECT TOP 10
[Merchant City],
COUNT(*) AS Transactions
FROM fact_transactions
GROUP BY [Merchant City]
ORDER BY Transactions DESC;