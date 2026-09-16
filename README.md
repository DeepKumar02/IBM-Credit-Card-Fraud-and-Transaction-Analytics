# 💳 IBM Credit Card Fraud & Transaction Analytics

End-to-end Credit Card Fraud and Transaction Analytics project using **Python, SQL Server, and Power BI**. It includes data cleaning, feature engineering, Data Modelling, EDA, and interactive dashboards to analyze credit card transactions, customer behavior, card characteristics, merchant activity, time-based patterns, and fraud risk that support data-driven decision-making.

> **Dataset source:** IBM Credit Card Fraud Detection dataset, downloaded from Kaggle.

## 📌 Project Overview

**Dataset → Python Cleaning → SQL Server → Data Modeling → SQL Analysis & Views → Power BI Dashboard → Business Insights**

The transaction data contains approximately **24.39 million records** and the fact table is around **5.6GB**. Because of its size, the detailed transaction fact table is stored in SQL Server and is **not imported directly into Power BI**. Aggregated SQL reporting views are used for Power BI reporting.

## Objectives

- Analyze transaction volume and transaction value
- Measure fraud transactions and fraud rate
- Understand customer demographics and spending behavior
- Analyze card brands, card types, chip usage, and credit limits
- Identify high-volume merchant states
- Analyze transaction activity by hour and time of day
- Build an interactive Power BI dashboard
- Apply SQL aggregation and optimization for large-scale data

## Tech Stack

| Tool | Purpose |
|---|---|
| **Python** | Data exploration, cleaning, preprocessing, and feature preparation |
| **Pandas / NumPy** | Data manipulation and transformation |
| **SQL Server** | Data storage, modeling, aggregation, indexing, KPIs, and reporting views |
| **T-SQL** | Database objects, queries, KPIs, indexes, and views |
| **Power BI** | Data modeling, DAX measures, interactive visuals, slicers, and dashboard design |

## Project Architecture

![Project Architecture](05_Assets/Project_Architecture.png)

### Data Flow

```text
IBM Credit Card Fraud Detection Dataset
                ↓
        Python Cleaning
                ↓
        Cleaned Data
                ↓
            SQL Server
                ↓
      Staging & Bulk Insertion
                ↓
      Fact & Dimension Tables
                ↓
      Indexing & SQL Analysis
                ↓
       KPI & Reporting Views
                ↓
            Power BI
                ↓
       Interactive Dashboard
                ↓
        Business Insights
```

## Data Modeling

### SQL Server

The underlying SQL Server design uses a fact-and-dimension structure:

```text
dim_users              dim_cards
     \                    /
      \                  /
       \                /
        fact_transactions
        ~24.39M rows
```

- **`fact_transactions`** stores transaction-level data.
- **`dim_users`** stores customer information.
- **`dim_cards`** stores card information.

### Power BI

The Power BI semantic model uses the required relationships between dimensions and reporting views to support interactive filtering while keeping the large transaction fact table outside the Power BI import model.

## Data Preparation

Python was used to prepare the data before loading it into SQL Server.

Key preparation activities included:

- Data exploration
- Missing-value checks
- Duplicate checks
- Data-type conversion
- Inconsistent-value handling
- Data validation
- Feature preparation
- Export of cleaned datasets

See:

```text
02_Python/
```

## SQL Server Implementation

```text
03_SQL/
├── 01_Database_Creation/
├── 02_Staging_Tables_and_Bulk_Insertion/
├── 03_Dimension_Tables/
├── 04_Indexing/
├── 05_KPIs/
└── 06_Views/
```

### Main database components

- Database creation
- Staging tables
- Bulk data insertion
- `dim_users`
- `dim_cards`
- `fact_transactions`
- Indexing and optimization
- KPI calculations
- Analytical/reporting views

### Reporting Views

The Power BI report uses aggregated SQL views including:

- `vw_Executive_Summary`
- `vw_Customer_Analysis`
- `vw_Fraud_Analysis`
- `vw_Fraud_Status`
- `vw_Card_Analysis`
- `vw_Merchant_Analysis`
- `vw_Merchant_State_Map`
- `vw_Time_Analysis`
- `vw_Yearly_Trend`
- `vw_Hourly_Analysis`
- `vw_TimeOfDay_Analysis`

## Power BI Dashboard

The final report contains five analytical pages.

### 1. Executive Overview

- Total Transactions
- Total Transaction Amount
- Average Transaction Amount
- Fraud Transactions
- Fraud Rate
- Customer Overview
- Transaction Trends
- Merchant and card overview

**Key metrics:**

| Metric | Value |
|---|---:|
| Total Transactions | **24.39M** |
| Total Transaction Amount | **$1.06B** |
| Average Transaction Amount | **$43.63** |
| Fraud Transactions | **29.76K** |
| Fraud Rate | **0.12%** |
| Total Customers | **~2K** |

### 2. Customer Segmentation

- Customer age groups
- Income groups
- Top customers by spend
- Customer geographic distribution
- Customer transaction activity

### 3. Fraud Detection

- Fraud amount trend
- Fraud vs genuine transactions
- Fraud by chip usage
- Top merchants by fraud amount
- Top merchants by fraud transactions

### 4. Card Analysis

- Cards by brand
- Chip vs non-chip cards
- Card type distribution
- Average credit limit
- Average credit limit by card brand

### 5. Merchant & Time

- Merchant transaction distribution
- Top merchant states by transactions
- Top merchant states by sales
- Transactions by hour
- Transactions by time of day

## Key Findings

- Fraud represents approximately **0.12%** of total transactions.
- **99.88%** of transactions are classified as genuine.
- Mastercard has the largest card portfolio with **3,209 cards**.
- **89.49%** of cards are chip-enabled.
- Debit cards are the most common card type with **3,511 cards**.
- California leads merchant activity with approximately **2.59M transactions** and **$111M in sales**.
- Transaction activity is concentrated during daytime hours.

## Performance Optimization

The transaction fact table contains approximately **24.39M records (~4 GB)**. Instead of importing the full fact table into Power BI, the project performs heavy aggregation in SQL Server and imports lightweight reporting views.

```text
24.39M transaction rows
        ↓
SQL Server aggregation
        ↓
Reporting views
        ↓
Power BI import
```

This approach reduces the amount of data handled directly by Power BI while retaining the information required for the dashboard.

## Repository Structure

```text
IBM-Credit-Card-Fraud-Transaction-Analytics/
│
├── README.md
│
├── 01_Dataset/
│   ├── 01_Raw_Data/
│   └── 02_Cleaned_Data/
│
├── 02_Python/
│
├── 03_SQL/
│   ├── 01_Database_Creation/
│   ├── 02_Staging_Tables_and_Bulk_Insertion/
│   ├── 03_Dimension_Tables/
│   ├── 04_Indexing/
│   ├── 05_KPIs/
│   │   ├── 01_Executive/
│   │   ├── 02_Customer/
│   │   ├── 03_Cards/
│   │   ├── 04_Fraud/
│   │   ├── 05_Time/
│   │   └── 06_Merchant/
│   └── 06_Views/
│
├── 04_Power BI/
│
└── 05_Assets/
    └── Project_Architecture.png
```

## Dataset

**Dataset:** IBM Credit Card Fraud Detection  
**Source:** Kaggle

The original and cleaned transaction data are **not included in this repository** because the transaction dataset is approximately 4 GB.

The repository contains the analysis code, SQL implementation, Power BI work, documentation, and project assets.

## Important Notes

- The Power BI report was developed against a local SQL Server environment.
- The full `fact_transactions` dataset is intentionally excluded from GitHub because of its size.
- Dataset ownership and source rights remain with the original provider/source.
- Results and insights are based on the supplied dataset and the transformations performed in this project.

## Project Author

**Deep Kumar**

**Tools:** Python | SQL Server | T-SQL | Power BI | DAX
