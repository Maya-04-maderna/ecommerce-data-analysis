import pandas as pd
from sqlalchemy import create_engine

#  MySQL connection settings
user = 'root'
password = '####'  #enter your password
host = 'localhost'
database = 'olist'

# Connect to MySQL
engine = create_engine(f"mysql+pymysql://{user}:{password}@{host}/{database}")

# List of tables to check for NULLs
tables = [
    "customers",
    "geolocation",
    "order_items",
    "order_payments",
    "order_reviews",
    "orders",
    "products",
    "sellers",
    "product_category_translation"
]

#  Loop through each table and check NULLs
for table in tables:
    print(f"\n Checking NULLs in table: {table}")
    
    # Read table into DataFrame
    df = pd.read_sql(f"SELECT * FROM {table}", engine)
    
    # Count NULLs in each column
    null_counts = df.isnull().sum()
    
    # Filter only columns with NULLs
    nulls_only = null_counts[null_counts > 0]
    
    if nulls_only.empty:
        print(" No NULL values found.")
    else:
        print(nulls_only)
