CREATE TABLE stg_cards
(
    [User] INT,
    [CARD INDEX] INT,
    [Card Brand] NVARCHAR(30),
    [Card Type] NVARCHAR(30),
    [Card Number] BIGINT,
    Expires NVARCHAR(20),
    CVV INT,
    [Has Chip] NVARCHAR(20),
    [Cards Issued] INT,
    [Credit Limit] FLOAT,
    [Acct Open Date] NVARCHAR(20),
    [Year PIN last Changed] INT,
    [Card on Dark Web] NVARCHAR(20)
);