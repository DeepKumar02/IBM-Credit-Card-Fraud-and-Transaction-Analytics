CREATE VIEW vw_Fraud_Status AS
SELECT
    CASE
        WHEN [Is Fraud?] = 'Yes' THEN 'Fraud'
        ELSE 'Genuine'
    END AS FraudStatus,
    COUNT(*) AS TotalTransactions
FROM fact_transactions
GROUP BY
    CASE
        WHEN [Is Fraud?] = 'Yes' THEN 'Fraud'
        ELSE 'Genuine'
    END;