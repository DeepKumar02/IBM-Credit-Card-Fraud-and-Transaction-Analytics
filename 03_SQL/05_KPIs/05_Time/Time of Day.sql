SELECT
[Time of Day],
COUNT(*) AS Transactions
FROM fact_transactions
GROUP BY [Time of Day];