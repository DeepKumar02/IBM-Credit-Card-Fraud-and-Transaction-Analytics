CREATE VIEW vw_Time_Analysis AS
SELECT
    Year,
    [Month Name] AS MonthName,
    Quarter,
    [Day Name] AS DayName,
    [Time of Day] AS TimeOfDay,
    [Transaction Hour] AS TransactionHour,
    COUNT(*) AS TotalTransactions,
    SUM(Amount) AS TotalAmount
FROM fact_transactions
GROUP BY
    Year,
    [Month Name],
    Quarter,
    [Day Name],
    [Time of Day],
    [Transaction Hour];