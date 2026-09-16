SELECT COUNT(*) AS Fraud_Transactions
FROM fact_transactions
WHERE [Is Fraud?] = 'Yes';