SELECT
CAST(COUNT(*) AS FLOAT)
/
COUNT(DISTINCT [User])
AS Avg_Transactions_Per_Customer
FROM fact_transactions;