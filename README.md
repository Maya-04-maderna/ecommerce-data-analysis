# 🛍️ E-Commerce Data Analysis Project

This project explores a Brazilian e-commerce dataset using Python, MySQL, and Tableau. It includes raw data ingestion, NULL value handling, and data-driven insights via SQL and Python.

## 📁 Project Structure

- `/data/` – Contains the 9 original CSV files.
- `/scripts/` – Python files for importing data and checking for NULLs.
- `/sql/` – SQL scripts for cleaning and insights.
- `/notebooks/` – Jupyter Notebook with visualizations (e.g., bar charts, trends).

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
