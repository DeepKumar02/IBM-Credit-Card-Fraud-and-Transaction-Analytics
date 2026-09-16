BULK INSERT stg_users
FROM 'C:\Users\deepd\Desktop\Banking Fraud Detection Analytics\Dataset\Cleaned_Data\users_enhanced.csv'
WITH
(
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDQUOTE = '"',
    CODEPAGE = '65001',
    TABLOCK
);