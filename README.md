# Snowflake Data Loading & Transformation Project

## Overview
This project demonstrates an end-to-end **data loading and transformation workflow** in **Snowflake**.  
It uses two related datasets (`customers` & `orders`) to simulate a small retail database.  
The project covers:
- Creating databases, schemas, and tables
- Staging files in **Snowflake Internal Stage**
- Bulk loading data using `COPY INTO`
- Performing **JOIN operations** and creating transformed tables
- Validating data accuracy

---

## 🏗 Project Architecture


CSV Files (Customer, Orders)
        │
        ▼
Snowflake Internal Stage (@my_stage)
        │
        ▼
Snowflake Tables (customer, orders)
        │
        ▼
Transformations (JOIN, Clean Data)
        │
        ▼
Final Analytical Table (customer_orders)

----

## Technologies Used
--**Snowflake**(data warehouse)
--**SQL**(DDL,DML,Querying)
--**Internal Stage**
--**COPY INTO Command**

----
