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

Blob Storage → ADF → Azure SQL → Analytics

## Outcome

The pipeline creates a centralized and analytics-ready relational
data layer that can be used for customer purchase and sales analysis.
