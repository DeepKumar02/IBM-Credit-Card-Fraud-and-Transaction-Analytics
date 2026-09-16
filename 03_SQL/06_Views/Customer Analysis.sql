CREATE VIEW vw_Customer_Analysis_updated AS
SELECT
u.UserID,
u.Person,
u.City,
u.State,
u.AgeGroup,
u.IncomeGroup,
COUNT(f.Amount) AS TotalTransactions,
SUM(f.Amount) AS TotalSpend,
AVG(f.Amount) AS AverageSpend
FROM dim_users u
JOIN fact_transactions f
ON u.UserID=f.[User]
GROUP BY
u.UserID,
u.Person,
u.City,
u.State,
u.AgeGroup,
u.IncomeGroup;