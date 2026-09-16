SELECT
[Merchant State],
COUNT(*) AS Fraud_Count
FROM fact_transactions
WHERE [Is Fraud?]='Yes'
GROUP BY [Merchant State]
ORDER BY Fraud_Count DESC;