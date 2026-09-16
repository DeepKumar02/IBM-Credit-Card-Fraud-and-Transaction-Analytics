SELECT
Quarter,
COUNT(*) AS Transactions
FROM fact_transactions
GROUP BY Quarter;