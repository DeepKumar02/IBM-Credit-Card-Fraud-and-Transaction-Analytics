SELECT
Year,
COUNT(*) AS Fraud_Count
FROM fact_transactions
WHERE [Is Fraud?]='Yes'
GROUP BY Year
ORDER BY Year;