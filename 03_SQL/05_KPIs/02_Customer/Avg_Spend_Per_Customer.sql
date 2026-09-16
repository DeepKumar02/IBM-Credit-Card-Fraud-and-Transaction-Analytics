SELECT
AVG(CustomerAmount) AS Avg_Spend_Per_Customer
FROM
(
SELECT
[User],
SUM(Amount) AS CustomerAmount
FROM fact_transactions
GROUP BY [User]
)t;