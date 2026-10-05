# Customer Purchase Analytics Pipeline

Azure Data Factory | Azure Databricks | PySpark | Azure SQL | Blob Storage

An end-to-end ETL pipeline that ingests four related datasets (customers, products, orders, and order items) from Azure Blob Storage, cleans and transforms them with PySpark in Azure Databricks, and loads them into Azure SQL Database as an analytics-ready relational layer.

## Architecture

```
Azure Blob Storage
        ↓
Azure Data Factory (ingestion & orchestration)
        ↓
Azure Databricks (PySpark cleaning, validation, joins)
        ↓
Azure SQL Database
        ↓
Analytics-Ready Data
```

## Technologies

- Azure Data Factory
- Azure Databricks
- PySpark and Python
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

**Azure Data Factory**
- Configured Azure linked services
- Created source and sink datasets
- Implemented schema mappings
- Used sequential Copy activities ordered by table dependencies
- Loaded data from Blob Storage into Azure SQL

**Azure Databricks (PySpark)**
- Removed duplicate records and handled null values across all 4 datasets
- Validated data types, key columns, and relationships between datasets (orders ↔ customers, order items ↔ orders/products)
- Standardized formats and prepared columns for analysis
- Joined the datasets into an analytics-ready layer
- Reduced data inconsistencies by approximately 25% (duplicate and null records as a share of total rows before cleaning)

**Data modeling**
- Maintained relationships between datasets
- Created separate source and processed databases
- Prepared a normalized relational data layer

## Outcome

The pipeline produces a centralized, analytics-ready relational data layer that can be used for customer purchase and sales analysis.

## Repository Contents

- `README.md` – project overview
- `notebooks/` – Databricks notebook(s) for the cleaning, validation, and join steps
