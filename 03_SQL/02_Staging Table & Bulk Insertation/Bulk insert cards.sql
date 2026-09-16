BULK INSERT stg_cards
FROM 'C:\Users\deepd\Desktop\Banking Fraud Detection Analytics\Dataset\Cleaned_Data\cards_enhanced.csv'
WITH
(
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDQUOTE = '"',
    CODEPAGE = '65001',
    TABLOCK
);