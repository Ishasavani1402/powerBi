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
# 🎯 Project Overview

This project analyzes vendor-related business data to:<br>
->Track vendor performance<br>
->Analyze purchase & sales trends<br>
->Monitor inventory changes<br>
->Identify profitability insights<br>
->Build an executive-level interactive dashboard<r>
->The project follows a complete analytics pipeline:<br>
->Raw CSV Data → Python Processing → SQL Conversion → Final Analytical Table → Power BI Dashboard

---
# 🧠 Business Problem

Businesses need to answer:<br>

1.Which vendors contribute most to sales?<br>
2.Which vendors have the highest purchase costs?<br>
3.What is the inventory movement (begin vs end)?<br>
4.How profitable are vendor transactions?<br>
5.Where can procurement efficiency be improved?<br>
6.This project solves these through structured analysis and visualization.<br>

---
# 🗂 Project Structure

vendor_project/<br>
│
└── data/<br>
    │<br>
    ├── begin_inventory.csv<br>
    ├── end_inventory.csv<br>
    ├── sales.csv<br>
    ├── purchases.csv<br>
    ├── purchase_prices.csv<br>
    ├── vendor_invoice.csv<br>
    ├── vendor_sales_summary_analysis.csv<br>
    │<br>
    ├── csv_to_sql.py<br>
    ├── EDA.ipynb<br>
    ├── python_analysis(fina_table).ipynb<br>
    │<br>
    ├── vendor analysis dashboard.pbix<br>
    ├── vendor_analysis_dashboard.png<br>
    └── probem_statement.txt<br>

---
# 🧹 Data Processing & Analysis

1️⃣ Exploratory Data Analysis (EDA)<br>
File: EDA.ipynb<br>
Data inspection<br>
Missing value handling<br>
Data type correction<br>
Statistical summaries<br>
Trend exploration<br>

2️⃣ Data Transformation & Final Table Creation<br>
File: python_analysis(fina_table).ipynb<br>
Data merging (Sales, Purchases, Inventory)<br>
KPI calculations<br>
Profit analysis<br>
Vendor-level aggregation<br>
Final analytical table creation<br>

3️⃣ CSV to SQL Conversion<br>
File: csv_to_sql.py<br>
Converts CSV datasets into SQL tables<br>
Enables structured querying<br>
Prepares relational data modeling<br>

---
# 📈 Power BI Dashboard
File: vendor analysis dashboard.pbix<br>
Preview: vendor_analysis_dashboard.png<br>

Dashboard Features

✔ Vendor Performance Overview<br>
✔ Sales vs Purchases Comparison<br>
✔ Inventory Movement Analysis<br>
✔ Profitability Tracking<br>
✔ Vendor Contribution Ranking<br>
✔ Time-Based Trends<br>

The dashboard provides interactive filtering and slicers for dynamic analysis.

---
# 📊 Key Metrics & KPIs

Total Sales<br>
Total Purchases<br>
Gross Profit<br>
Inventory Difference<br>
Vendor-wise Revenue<br>
Purchase Cost Distribution<br>
Sales Trend Over Time<br>

---
# 🛠 Technologies Used

Python (Pandas, NumPy, Matplotlib)<br>
Jupyter Notebook<br>
SQL<br>
Microsoft Power BI<br>
CSV Data Sources<br>

---
# 🚀 How to Run the Project

Step 1: Clone Repository<br>
git clone (https://github.com/Ishasavani1402/powerBi/tree/main/Vendor%20Analysis/data)<br>

Step 2: Run Python Analysis <br>
Open EDA.ipynb <br>
Run all cells <br>
Open python_analysis(fina_table).ipynb <br>
Generate final analytical dataset <br>

Step 3: Open Power BI Dashboard <br>
Install Power BI Desktop <br>
Open vendor analysis dashboard.pbix <br>
Refresh data if needed <br>

---
# 📊 Data Flow Architecture
CSV Files<br>
   ↓
EDA (Python) <br>
   ↓
Data Cleaning & Transformation <br>
   ↓
Final Analytical Table <br>
   ↓
Power BI Dashboard <br>
   ↓
Business Insights <br>

---
# 🔍 Business Insights Generated

✔Identified top-performing vendors <br>
✔Determined most costly suppliers <br>
✔Evaluated purchase vs sales efficiency <br>
✔Analyzed inventory fluctuations <br>
✔Highlighted profit-driving vendors <br>
