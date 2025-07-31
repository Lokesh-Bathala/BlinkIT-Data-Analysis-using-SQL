# 📊 BlinkIT Grocery Sales Analysis (SQL + Power BI)

This project presents a comprehensive analysis of BlinkIT's grocery data using SQL for data aggregation and Power BI for visualization. The analysis aims to uncover insights related to sales performance, customer satisfaction, and inventory behavior using advanced SQL queries and KPI tracking.

---

## 🧠 Business Objective

To analyze BlinkIT’s grocery sales data and deliver actionable insights to help optimize:

- Product performance
- Outlet operations
- Customer satisfaction

---

## 📌 Dataset Overview

**Filename**: `BlinkIT Grocery Data.csv`  
**Rows**: ~ records  
**Columns**:

| Column Name              | Description                              |
|--------------------------|------------------------------------------|
| `Item Identifier`        | Unique ID for the grocery item           |
| `Item Fat Content`       | Fat content type (e.g., Low Fat, Regular)|
| `Item Type`              | Category of the item                     |
| `Item Weight`            | Weight of the item                       |
| `Item Visibility`        | Visibility score in-store                |
| `Total Sales`            | Total revenue generated per item         |
| `Rating`                 | Customer rating (1–5 scale)              |
| `Outlet Identifier`      | Unique ID for the outlet                 |
| `Outlet Size`            | Size of the store (Small, Medium, High)  |
| `Outlet Type`            | Supermarket type                         |
| `Outlet Location Type`   | Tier classification by location          |
| `Outlet Establishment Year` | Year the outlet was opened           |

---

## 📊 Key KPIs Computed

- ✅ **Total Sales**: Total revenue across items
- ✅ **Average Sales**: Average revenue per transaction
- ✅ **Number of Items**: Count of sold items
- ✅ **Average Rating**: Mean of item review scores

---

## 🔍 Questions Answered

1. **Total Sales by Fat Content**  
   ➤ Impact of fat content on overall sales  
   ➤ Compared KPIs across "Low Fat" and "Regular"

2. **Total Sales by Item Type**  
   ➤ Identified best and worst-performing item categories

3. **Fat Content by Outlet for Total Sales**  
   ➤ Compared outlet-wise performance segmented by fat content

4. **Total Sales by Outlet Establishment Year**  
   ➤ Analyzed how store age affects revenue

5. **Percentage of Sales by Outlet Size**  
   ➤ Computed and ranked outlet sizes by revenue contribution

6. **Sales by Outlet Location Type**  
   ➤ Geographic performance insights (Tier 1, 2, 3)

7. **All Metrics by Outlet Type**  
   ➤ Unified dashboard of all KPIs grouped by store type

---

## 🛠️ SQL Features Used

- Window functions (`OVER()`, `PARTITION BY`)
- Aggregates (`SUM`, `AVG`, `COUNT`)
- `CAST()` and `DECIMAL()` for formatting
- `PIVOT` table for restructuring data
- Joins & subqueries for percentage calculations

---

## 📂 Project Structure

📁 BlinkIT-SQL-Analysis
├── 📄 BlinkIT Grocery Data.csv ← Original dataset
├── 📄 BlinkIT SQL QUERY.sql ← All analysis SQL queries
├── 📄 README.md ← This file



---

## 🚀 How to Run

1. Import the CSV into your SQL tool (e.g., MySQL, SQL Server, Azure Data Studio)
2. Run `BlinkIT SQL QUERY.sql`

---

## 🧰 Technologies Used

- SQL Server / MySQL
- GitHub for version control
- Excel/CSV for data source

---

## 🙌 Acknowledgments

This project was inspired by real-world retail analytics challenges and built for skill demonstration in data storytelling and business intelligence.

---

⭐ **If you find this project helpful, feel free to give it a star and fork!**


