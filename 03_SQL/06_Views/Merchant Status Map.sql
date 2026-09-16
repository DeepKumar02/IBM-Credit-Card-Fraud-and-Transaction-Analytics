CREATE VIEW dbo.vw_Merchant_State_Map
AS
SELECT
    [Merchant State] AS MerchantState,
    COUNT_BIG(*) AS TotalTransactions,
    SUM(Amount) AS TotalSales
FROM dbo.fact_transactions
WHERE [Merchant State] IS NOT NULL
GROUP BY [Merchant State];
GO