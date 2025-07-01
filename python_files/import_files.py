import pandas as pd
from sqlalchemy import create_engine
import os

#  MySQL credentials
user = 'root'
password = 'M28#22' 
host = 'localhost'
database = 'olist' 

#  Create engine for connection
engine = create_engine(f"mysql+pymysql://{user}:{password}@{host}/{database}")

#  Folder where CSVs are stored — use forward slashes (works best on Windows)
folder = "C:/Users/Administrator/Documents/E-Commerce dataset"

# Map of file names to target table names
file_table_map = {
    "olist_customers_dataset.csv": "customers",
    "olist_geolocation_dataset.csv": "geolocation",
    "olist_order_items_dataset.csv": "order_items",
    "olist_order_payments_dataset.csv": "order_payments",
    "olist_order_reviews_dataset.csv": "order_reviews",
    "olist_orders_dataset.csv": "orders",
    "olist_products_dataset.csv": "products",
    "olist_sellers_dataset.csv": "sellers",
    "product_category_name_translation.csv": "product_category_translation"
}

#  Load and insert each file into its table
for file_name, table_name in file_table_map.items():
    file_path = os.path.join(folder, file_name)

    # Check if the file exists
    if not os.path.exists(file_path):
        print(f"File not found: {file_path}")
        continue

    print(f" Reading {file_name}...")
    df = pd.read_csv(file_path)

    print(f" Uploading to table: {table_name}")
    df.to_sql(table_name, con=engine, if_exists='replace', index=False)
    print(f" {table_name} loaded.\n")

print(" All files uploaded successfully.")
