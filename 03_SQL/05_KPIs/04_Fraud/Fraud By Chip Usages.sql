SELECT
[Use Chip],
COUNT(*) AS Fraud_Count
FROM fact_transactions
WHERE [Is Fraud?]='Yes'
GROUP BY [Use Chip];