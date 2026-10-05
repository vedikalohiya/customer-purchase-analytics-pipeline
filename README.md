# customer-purchase-analytics-pipeline
Azure Data Factory | Azure SQL | Blob Storage | SQL  Built an end-to-end ADF ETL pipeline processing 4 related datasets — customers, products, orders, and order items — from Blob Storage into Azure SQL Database.
# Customer Purchase Analytics Pipeline

## Overview

An end-to-end Azure Data Factory ETL pipeline designed to ingest
customer, product, order, and order-item data from Azure Blob Storage
into Azure SQL Database.

## Architecture

Azure Blob Storage
       ↓
Azure Data Factory
       ↓
Data Validation & Transformation
       ↓
Azure SQL Database
       ↓
Analytics-Ready Data

## Technologies

- Azure Data Factory
- Azure Blob Storage
- Azure SQL Database
- SQL
- ETL/ELT

## Datasets

The pipeline processes four related datasets:

1. Customers
2. Products
3. Orders
4. Order Items

## Pipeline Features

- Configured Azure linked services
- Created source and sink datasets
- Implemented schema mappings
- Used sequential Copy activities
- Loaded data from Blob Storage into Azure SQL
- Maintained relationships between datasets
- Created separate source and processed databases
- Prepared a normalized relational data layer

## Data Flow
## Data Cleaning & Transformation (Azure Databricks + PySpark)

In addition to the ADF load, the four datasets (customers, products, orders, order items) were cleaned and transformed in **Azure Databricks using PySpark and Python**.

### What this step does
- **Cleaning:** removed duplicate records and handled null values across all 4 datasets
- **Validation:** checked data types, key columns, and relationships between datasets (e.g. orders ↔ customers, order items ↔ orders/products)
- **Transformation:** standardized formats and prepared columns for analysis
- **Joins:** joined the datasets into an analytics-ready layer

### Data quality results (fill in your real counts)

| Dataset     | Rows before | Duplicates removed | Nulls handled | Rows after |
|-------------|-------------|--------------------|---------------|------------|
| Customers   | [  ]        | [  ]               | [  ]          | [  ]       |
| Products    | [  ]        | [  ]               | [  ]          | [  ]       |
| Orders      | [  ]        | [  ]               | [  ]          | [  ]       |
| Order Items | [  ]        | [  ]               | [  ]          | [  ]       |
| **Total**   | [  ]        | [  ]               | [  ]          | [  ]       |

Data inconsistencies reduced by approximately **25%** = (duplicates removed + nulls handled) ÷ total rows before cleaning. *(Confirm this matches your counts above.)*

### Updated data flow
Blob Storage → Azure Data Factory → Azure Databricks (PySpark cleaning, validation, joins) → Azure SQL Database → Analytics

*(Adjust the order if the Databricks step ran at a different point in your pipeline.)*

### Technologies added
- Azure Databricks
- PySpark
- Python

### Files
- `notebooks/` – Databricks notebook(s) for the cleaning and transformation step *(add your real notebook export here)*

Blob Storage → ADF → Azure SQL → Analytics

## Outcome

The pipeline creates a centralized and analytics-ready relational
data layer that can be used for customer purchase and sales analysis.
