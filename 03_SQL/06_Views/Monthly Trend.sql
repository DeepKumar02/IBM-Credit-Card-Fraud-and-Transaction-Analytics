CREATE VIEW vw_Monthly_Trend AS
SELECT
    Year,
    Month,
    [Month Name] AS MonthName,
    COUNT(*) AS TotalTransactions,
    SUM(Amount) AS TotalAmount
FROM fact_transactions
GROUP BY
    Year,
    Month,
    [Month Name];