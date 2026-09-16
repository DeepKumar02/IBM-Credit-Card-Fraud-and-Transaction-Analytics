CREATE VIEW vw_Card_Analysis_updated AS
SELECT
CardBrand,
CardType,
HasChip,
CardOnDarkWeb,
COUNT(*) AS TotalCards,
AVG(CreditLimit) AS AverageCreditLimit
FROM dim_cards

GROUP BY
CardBrand,
CardType,
HasChip,
CardOnDarkWeb;