CREATE VIEW vw_TimeOfDay_Analysis AS
SELECT
    [Time of Day] AS TimeOfDay,
    COUNT(*) AS TotalTransactions,
    SUM(Amount) AS TotalAmount
FROM fact_transactions
GROUP BY [Time of Day];