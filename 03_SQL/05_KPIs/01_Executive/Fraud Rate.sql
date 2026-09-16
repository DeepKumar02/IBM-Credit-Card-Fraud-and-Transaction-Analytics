SELECT
ROUND(
COUNT(CASE WHEN [Is Fraud?]='Yes' THEN 1 END)*100.0
/
COUNT(*),2
) AS Fraud_Rate_Percentage
FROM fact_transactions;