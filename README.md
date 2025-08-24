### SQL Data Warehouse Project – Medallion Architecture (Bronze → Silver → Gold)
 Project Overview

This project implements a data warehouse pipeline using the Medallion Architecture.
It demonstrates how raw CRM & ERP datasets are ingested, cleaned, transformed, and modeled into a star schema for analytics and reporting.

## Tech Stack

SQL Server (T-SQL)
ETL (Stored Procedures, BULK INSERT)
Data Modeling (Star Schema: Facts & Dimensions)
Data Quality Handling (deduplication, normalization, validation)

## Architecture

Bronze Layer – Raw ingestion from CSV sources
    Stores CRM & ERP datasets as-is
    Loaded using BULK INSERT
Silver Layer – Cleansed & standardized data
    Deduplicated records
    Standardized gender, marital status, product lines, country codes
    Recalculated missing/invalid sales values
Gold Layer – Analytics-ready star schema
    dim_customers → enriched customer profiles
    dim_products → product details with categories
    fact_sales → sales transactions with measures for revenue, quantity, and pricing

 Business Value
With the gold layer views, business users and BI tools (like Power BI) can analyze:
Sales trends and revenue growth
Customer segmentation (by country, gender, marital status, age groups)
Product performance by category and line
Geographic market distribution
Payment and transaction insights

## Key Highlights
Designed and implemented ETL procedures for Bronze → Silver transformation
Built dimension and fact views in the Gold layer

Applied data quality rules (deduplication, normalization, error handling)

Created a scalable data warehouse foundation for reporting & dashboards
