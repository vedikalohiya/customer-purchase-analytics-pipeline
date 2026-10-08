# Customer Purchase Analytics Pipeline

End-to-end Azure ETL pipeline that ingests four related retail datasets (customers, products, orders, order items) from Blob Storage into Azure SQL Database, then cleans, validates, and joins them with PySpark in Azure Databricks to produce analytics-ready data.


## Overview

Raw purchase data arrives as separate files in Azure Blob Storage. This project loads those files into a source database with Azure Data Factory (ADF), then uses PySpark on Azure Databricks to remove duplicates, handle nulls, validate records, and join the datasets. The cleaned output goes into a separate processed database, giving analysts a reliable relational layer for customer purchase and sales analysis.

## Architecture

```
Azure Blob Storage (raw files)
        |
        v
Azure Data Factory (ingestion: Copy activities)
        |
        v
Azure SQL Database - Source DB
        |
        v
Azure Databricks (PySpark: clean, validate, transform, join)
        |
        v
Azure SQL Database - Processed DB (analytics-ready tables)
```


## Tech Stack

| Layer | Tools |
|---|---|
| Orchestration / ingestion | Azure Data Factory |
| Storage | Azure Blob Storage |
| Transformation | Azure Databricks, PySpark, Python |
| Databases | Azure SQL Database, SQL |

## Datasets

| Dataset | Description |
|---|---|
| `customers` | Customer records |
| `products` | Product catalog |
| `orders` | Order headers |
| `order_items` | Line items linking orders to products |


## Pipeline Steps

### 1. Ingestion (Azure Data Factory)
- Configured linked services for Blob Storage and Azure SQL Database
- Created source and sink datasets with schema mappings
- Built 4 Copy activities, run sequentially in dependency order so parent tables load before the tables that reference them

### 2. Transformation (Azure Databricks / PySpark)
- Read the 4 tables from the source database
- Removed duplicate records
- Handled null and missing values
- Validated data types and key relationships
- Joined customers, products, orders, and order items into analytics-ready datasets


### 3. Storage layout
- **Source database:** raw data as loaded by ADF
- **Processed database:** cleaned, joined, normalized tables ready for analysis

## Data Quality

Cleaning and validation in PySpark reduced data inconsistencies by about **25%**.

## Repository Structure

```
.
|-- README.md
|-- adf/              # exported ADF pipeline, dataset, and linked-service JSON
|-- databricks/       # PySpark notebook(s)
|-- sql/              # table creation scripts for source and processed DBs
|-- data/             # sample data (no sensitive information)
`-- docs/             # architecture diagram and screenshots
```

## How to Run

1. Upload the raw files to an Azure Blob Storage container.
2. Create the source and processed databases in Azure SQL (see `sql/`).
3. Import the ADF pipeline from `adf/`, update the linked services with your own connection details, and run it.
4. Open the notebook in `databricks/`, attach it to a cluster, and run all cells.
5. Query the tables in the processed database.

> Do not commit connection strings, keys, or passwords. Use Azure Key Vault or ADF-managed credentials.

## Outcome

The pipeline produces a centralized, analytics-ready relational data layer for customer purchase and sales analysis.

## Author

**Vedika Lohiya**
[LinkedIn](https://www.linkedin.com/in/vedika2203) | [GitHub](https://github.com/vedikalohiya)
