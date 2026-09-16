CREATE VIEW vw_Yearly_Trend AS
SELECT
    Year,
    COUNT(*) AS TotalTransactions,
    SUM(Amount) AS TotalAmount,
    AVG(Amount) AS AverageAmount
FROM fact_transactions
GROUP BY Year;