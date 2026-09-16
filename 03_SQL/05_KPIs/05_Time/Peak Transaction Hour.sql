SELECT
[Transaction Hour],
COUNT(*) AS Transactions
FROM fact_transactions
GROUP BY [Transaction Hour]
ORDER BY Transactions DESC;