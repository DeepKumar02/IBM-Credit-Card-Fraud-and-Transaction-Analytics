BULK INSERT stg_transactions
FROM 'C:\Users\deepd\Desktop\Banking Fraud Detection Analytics\Dataset\Cleaned_Data\transactions_enhanced.csv'
WITH
(
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDQUOTE = '"',
    CODEPAGE = '65001',
    TABLOCK
);