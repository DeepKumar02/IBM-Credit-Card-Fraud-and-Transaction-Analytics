CREATE TABLE dim_cards
(
    CardKey INT IDENTITY(1,1) PRIMARY KEY,

    UserID INT,
    CardIndex INT,

    CardBrand NVARCHAR(30),
    CardType NVARCHAR(30),
    CardNumber BIGINT,
    Expires NVARCHAR(20),
    CVV INT,
    HasChip NVARCHAR(20),
    CardsIssued INT,
    CreditLimit DECIMAL(18,2),
    AcctOpenDate NVARCHAR(20),
    YearPINLastChanged INT,
    CardOnDarkWeb NVARCHAR(20)
);