
import pandas as pd

df = pd.read_csv("../Dataset/Sample - Superstore.csv", encoding="latin1")

print("Total Sales:")
print(round(df["Sales"].sum(), 2))

print("\nTotal Profit:")
print(round(df["Profit"].sum(), 2))

print("\nSales by Region:")
print(df.groupby("Region")["Sales"].sum())

print("\nProfit by Category:")
print(df.groupby("Category")["Profit"].sum())

print("\nSales by Segment:")
print(df.groupby("Segment")["Sales"].sum())