import pandas as pd

# Load dataset
df = pd.read_csv("sales_data.csv")

print("First 5 rows:")
print(df.head())

# Total sales
total_sales = df["Total_Sales"].sum()
print("Total Sales:", total_sales)

# Sales by Category
category_sales = df.groupby("Category")["Total_Sales"].sum()
print("\nSales by Category:")
print(category_sales)

# Convert date & extract month
df["Order_Date"] = pd.to_datetime(df["Order_Date"])
df["Month"] = df["Order_Date"].dt.month

monthly_sales = df.groupby("Month")["Total_Sales"].sum()
print("\nMonthly Sales:")
print(monthly_sales)
