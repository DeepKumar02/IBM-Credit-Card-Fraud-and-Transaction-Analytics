CREATE VIEW vw_Executive_Summary AS
SELECT
    COUNT(*) AS TotalTransactions,
    SUM(Amount) AS TotalTransactionAmount,
    AVG(Amount) AS AverageTransactionAmount,
    COUNT(DISTINCT [User]) AS TotalCustomers,
    SUM(CASE WHEN [Is Fraud?] = 'Yes' THEN 1 ELSE 0 END) AS FraudTransactions,
    ROUND(
        SUM(CASE WHEN [Is Fraud?] = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS FraudRate
FROM fact_transactions;