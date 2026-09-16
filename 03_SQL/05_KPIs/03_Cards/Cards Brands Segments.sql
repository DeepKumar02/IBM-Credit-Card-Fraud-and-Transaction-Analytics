SELECT
CardBrand,
COUNT(*) AS TotalCards
FROM dim_cards
GROUP BY CardBrand;