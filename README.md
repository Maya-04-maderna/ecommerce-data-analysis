# 🛍️ E-Commerce Data Analysis Project

This project explores a Brazilian e-commerce dataset using Python, MySQL, and Tableau. It includes raw data ingestion, NULL value handling, and data-driven insights via SQL and Python.

## 📁 Project Structure

- `/data/` – Contains the 9 original CSV files.
- `/python_files/` – Python files for importing data and checking for NULLs.
- `/sql_files/` – SQL scripts for cleaning and insights.
- `/E-Commerce_visualization/` – Jupyter Notebook with visualizations (e.g., bar charts, trends).

## 🧰 Tools Used

- Python (Pandas, SQLAlchemy)
- MySQL
- Jupyter Notebook
- Tableau (optional)

## 📂 How to Use

1. Use `import_files.py` to upload data into your MySQL database.
2. Use `checking_null_values.py` to identify missing values.
3. Clean data using `null_values_cleaning.sql`.
4. Run queries in `information.sql` for insights.
5. Explore visualizations in the notebook.

## 📦 Requirements

Install Python dependencies:

```bash
pip install pandas sqlalchemy pymysql
```

## 📊 Dataset Source

Public Brazilian E-Commerce dataset.
## 📈 Data Visualizations

Below are the key business insights generated using SQL and visualized using Python and Tableau.

---

### 📅 Monthly Order Trend

<img src="plots/Monthly Order Trend.png" alt="Monthly Orders" width="700"/>

This line chart displays the total number of orders placed each month. It helps identify **seasonal trends** and **sales growth patterns**.

---

### 🏆 Top 10 Product Categories

<img src="plots/Top 10 Product Categories by Sales.png" alt="Top Product Categories" width="700"/>

This bar chart shows the most popular product categories by quantity sold. It highlights customer preferences across the marketplace.

---

### 🌍 Revenue by State

<img src="plots/Revenue by State.png" alt="Revenue by State" width="700"/>

This map visualizes total revenue across Brazilian states, helping stakeholders understand geographical sales performance.

---

### 💳 Payment Methods

<img src="plots/Payment Methods Distribution.png" alt="Payment Methods" width="700"/>

A pie chart representing the distribution of payment types used by customers (e.g., credit card, boleto, voucher).

---

### ⭐ Review Score Distribution

<img src="plots/Review Score Distribution.png" alt="Review Scores" width="700"/>

This histogram shows the distribution of customer review scores from 1 to 5, giving insights into customer satisfaction.

---



