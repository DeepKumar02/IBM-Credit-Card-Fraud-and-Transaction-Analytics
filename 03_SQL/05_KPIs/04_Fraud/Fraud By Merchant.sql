SELECT TOP 10
[Merchant Name],
COUNT(*) AS Fraud_Count
FROM fact_transactions
WHERE [Is Fraud?]='Yes'
GROUP BY [Merchant Name]
ORDER BY Fraud_Count DESC;