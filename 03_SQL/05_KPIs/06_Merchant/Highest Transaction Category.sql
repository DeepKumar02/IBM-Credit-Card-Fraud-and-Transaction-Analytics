SELECT
[Amount Category],
COUNT(*) AS Transactions
FROM fact_transactions
GROUP BY [Amount Category]
ORDER BY Transactions DESC;