CREATE VIEW vw_Fraud_Analysis_updated AS
SELECT
    Year,
    [Merchant State] AS MerchantState,
    [Merchant Name] AS MerchantName,
    [Use Chip] AS ChipUsage,

    COUNT(*) AS TotalTransactions,

    SUM(CASE
            WHEN [Is Fraud?]='Yes'
            THEN 1
            ELSE 0
        END) AS FraudTransactions,

    SUM(CASE
            WHEN [Is Fraud?]='Yes'
            THEN Amount
            ELSE 0
        END) AS FraudAmount
FROM fact_transactions
GROUP BY
    Year,
    [Merchant State],
    [Merchant Name],
    [Use Chip];