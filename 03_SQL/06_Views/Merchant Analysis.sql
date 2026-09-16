CREATE VIEW vw_Merchant_Analysis_updated AS
SELECT

[Merchant Name] AS MerchantName,
[Merchant City] AS MerchantCity,
[Merchant State] AS MerchantState,
MCC,

COUNT(*) AS TotalTransactions,
SUM(Amount) AS TotalSales,
AVG(Amount) AS AverageTransaction

FROM fact_transactions
GROUP BY

[Merchant Name],
[Merchant City],
[Merchant State],
MCC;