SELECT
SUM(Amount) AS Fraud_Amount
FROM fact_transactions
WHERE [Is Fraud?]='Yes';