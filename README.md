#  SQL Sales Data Analysis – Guided Project

##  AIM:
To perform SQL-based data analysis on sales, customer, and product data using Microsoft SQL Server. This guided project involves writing multiple SQL scripts for business reporting, segmentation, revenue analysis, and performance tracking.

---

##  Project Info:

- The project is structured around a **Sales Database**, with tables like `Products`, `Sales`, and `Customers`.
- Multiple SQL scripts were developed for:
  - Customer segmentation 
  - Revenue tracking and accumulation 
  - Time-based trend exploration
  - Category-wise contribution analysis 
  - Performance metric evaluation
  - consolidated reporting
- This project was done as part of a **guided learning module**, using structured sample data.

---

##  Tech Stack:

- **SQL Server Management Studio (SSMS)**
- **Microsoft SQL Server (MSSQL)**
- **Flat File Import Tool**
- Data format: `.csv`

---

##  Key Takeaways (Script-wise Breakdown):

1. ** Change Over Time Analysis.sql**
   - Analyzed sales and customer behavior trends across months or years.
   - Used `DATEPART()`, `GROUP BY`, and filtering by time windows.

2. ** Cumulative Analysis.sql**
   - Calculated running totals using window functions like `SUM() OVER (ORDER BY...)`.
   - Helped track progressive revenue growth or customer activity.

3. ** Part to Whole Analysis.sql**
   - Measured category-wise or segment-wise contribution to overall metrics.
   - Used percent-of-total logic and windowed `SUM()` functions.

4. ** Performance Analysis.sql**
   - Evaluated key performance metrics such as delivery efficiency and sales conversion.
   - Used conditional logic with `CASE` and derived columns.

5. ** Data Segmentation (Part 1 & 2).sql**
   - Grouped customers by revenue bands and cost bands.
   - Two scripts handled different segmentation angles.

6. ** Customer Report.sql**
   - Created a final customer-level summary report via a SQL `VIEW`.
   - Combined data from multiple tables into one unified output.
   - Useful for reporting or exporting to dashboards.
---

##  Repository Contents:

- `scripts/`: All SQL scripts for analysis
- `data/`: Raw `.csv` data files imported into SQL
- `README.md`: Overview of the project

---

##  Notes:

- This project was guided and may resemble similar public exercises.
- The data and scripts are intended for **learning purposes**.

---

