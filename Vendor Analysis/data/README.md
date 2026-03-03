# 📊 Vendor Analysis

A complete End-to-End Vendor Analysis & Business Intelligence Project combining Python (EDA + Data Processing)
and Power BI (Interactive Dashboard) to analyze vendor performance, sales, purchases, and inventory insights.

This project demonstrates data cleaning, transformation, SQL integration, exploratory data analysis (EDA), and
business intelligence reporting in a structured workflow.
---
# 📌 Table of Contents

->Project Overview<br>
->Business Problem<br>
->Project Architecture<br>
->Repository Structure<br>
->Dataset Description<br>
->Data Processing & Analysis<br>
->Power BI Dashboard<br>
->Key Metrics & Insights<br>
->Technologies Used<br>
->How to Run the Project<br>
---
#🎯 Project Overview

This project analyzes vendor-related business data to:
->Track vendor performance
->Analyze purchase & sales trends
->Monitor inventory changes
->Identify profitability insights
->Build an executive-level interactive dashboard
->The project follows a complete analytics pipeline:
->Raw CSV Data → Python Processing → SQL Conversion → Final Analytical Table → Power BI Dashboard
---
# 🧠 Business Problem

Businesses need to answer:

1.Which vendors contribute most to sales?
2.Which vendors have the highest purchase costs?
3.What is the inventory movement (begin vs end)?
4.How profitable are vendor transactions?
5.Where can procurement efficiency be improved?
6.This project solves these through structured analysis and visualization.
---
# 🗂 Project Structure

vendor_project/
│
└── data/
    │
    ├── begin_inventory.csv
    ├── end_inventory.csv
    ├── sales.csv
    ├── purchases.csv
    ├── purchase_prices.csv
    ├── vendor_invoice.csv
    ├── vendor_sales_summary_analysis.csv
    │
    ├── csv_to_sql.py
    ├── EDA.ipynb
    ├── python_analysis(fina_table).ipynb
    │
    ├── vendor analysis dashboard.pbix
    ├── vendor_analysis_dashboard.png
    └── probem_statement.txt
---
# 🧹 Data Processing & Analysis

1️⃣ Exploratory Data Analysis (EDA)
File: EDA.ipynb
Data inspection
Missing value handling
Data type correction
Statistical summaries
Trend exploration

2️⃣ Data Transformation & Final Table Creation
File: python_analysis(fina_table).ipynb
Data merging (Sales, Purchases, Inventory)
KPI calculations
Profit analysis
Vendor-level aggregation
Final analytical table creation

3️⃣ CSV to SQL Conversion
File: csv_to_sql.py
Converts CSV datasets into SQL tables
Enables structured querying
Prepares relational data modeling
---
# 📈 Power BI Dashboard
File: vendor analysis dashboard.pbix
Preview: vendor_analysis_dashboard.png

Dashboard Features

✔ Vendor Performance Overview
✔ Sales vs Purchases Comparison
✔ Inventory Movement Analysis
✔ Profitability Tracking
✔ Vendor Contribution Ranking
✔ Time-Based Trends

The dashboard provides interactive filtering and slicers for dynamic analysis.
---
# 📊 Key Metrics & KPIs

Total Sales
Total Purchases
Gross Profit
Inventory Difference
Vendor-wise Revenue
Purchase Cost Distribution
Sales Trend Over Time
---
# 🛠 Technologies Used

Python (Pandas, NumPy, Matplotlib)
Jupyter Notebook
SQL
Microsoft Power BI
CSV Data Sources
---
# 🚀 How to Run the Project
Step 1: Clone Repository
git clone (https://github.com/Ishasavani1402/powerBi/tree/main/Vendor%20Analysis/data)

Step 2: Run Python Analysis
Open EDA.ipynb
Run all cells
Open python_analysis(fina_table).ipynb
Generate final analytical dataset

Step 3: Open Power BI Dashboard
Install Power BI Desktop
Open vendor analysis dashboard.pbix
Refresh data if needed
---
# 📊 Data Flow Architecture
CSV Files
   ↓
EDA (Python)
   ↓
Data Cleaning & Transformation
   ↓
Final Analytical Table
   ↓
Power BI Dashboard
   ↓
Business Insights
---
# 🔍 Business Insights Generated

✔Identified top-performing vendors
✔Determined most costly suppliers
✔Evaluated purchase vs sales efficiency
✔Analyzed inventory fluctuations
✔Highlighted profit-driving vendors
