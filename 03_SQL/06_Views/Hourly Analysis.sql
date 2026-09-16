CREATE VIEW vw_Hourly_Analysis AS
SELECT
    [Transaction Hour] AS TransactionHour,
    COUNT(*) AS TotalTransactions,
    SUM(Amount) AS TotalAmount
FROM fact_transactions
GROUP BY [Transaction Hour];