SELECT
[Month Name],
COUNT(*) AS Transactions
FROM fact_transactions
GROUP BY [Month Name];