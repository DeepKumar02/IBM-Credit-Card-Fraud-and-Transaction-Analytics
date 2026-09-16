SELECT TOP 10
MCC,
COUNT(*) AS Transactions
FROM fact_transactions
GROUP BY MCC
ORDER BY Transactions DESC;