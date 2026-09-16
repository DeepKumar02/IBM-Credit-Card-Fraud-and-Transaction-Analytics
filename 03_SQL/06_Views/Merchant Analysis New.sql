ALTER VIEW [dbo].[vw_Merchant_Analysis_updated] AS
SELECT 
    [MerchantName]
    ,[MerchantCity]
    ,ISNULL(NULLIF(TRIM([MerchantState]), ''), 'N/A') AS [MerchantState]
    ,[MCC]
    ,[TotalTransactions]
    ,[TotalSales]
    ,[AverageTransaction]
FROM [dbo].[vw_Merchant_Analysis]; 
