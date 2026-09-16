SELECT
Year,
COUNT(*) AS TotalTransactions
FROM fact_transactions
GROUP BY Year
ORDER BY Year;