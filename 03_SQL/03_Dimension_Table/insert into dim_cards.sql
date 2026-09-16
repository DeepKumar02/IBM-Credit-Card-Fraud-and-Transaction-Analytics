INSERT INTO dim_cards
(
    UserID,
    CardIndex,
    CardBrand,
    CardType,
    CardNumber,
    Expires,
    CVV,
    HasChip,
    CardsIssued,
    CreditLimit,
    AcctOpenDate,
    YearPINLastChanged,
    CardOnDarkWeb
)
SELECT
    [User],
    [CARD INDEX],
    [Card Brand],
    [Card Type],
    [Card Number],
    Expires,
    CVV,
    [Has Chip],
    [Cards Issued],
    CAST([Credit Limit] AS DECIMAL(18,2)),
    [Acct Open Date],
    [Year PIN last Changed],
    [Card on Dark Web]
FROM stg_cards;