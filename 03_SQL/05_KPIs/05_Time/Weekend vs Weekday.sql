SELECT
[Is Weekend],
COUNT(*) AS Transactions
FROM fact_transactions
GROUP BY [Is Weekend];