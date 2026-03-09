# Marketing Campaign Analysis Dashboard

## Project Overview

This project analyzes digital marketing campaign performance using Python for data cleaning and Power BI for data visualization.

The goal of the project is to evaluate marketing campaign effectiveness across multiple channels and identify opportunities to improve marketing efficiency 
and return on investment (ROI).

---

## Tools Used

- Python (Pandas, NumPy) – Data cleaning and preprocessing
- Power BI – Dashboard development and visualization

---

## Dataset Features

The dataset contains marketing campaign metrics such as:

- impressions
- clicks
- conversions
- revenue
- cost
- CTR
- conversion rate
- CPC
- ROI
- campaign date
- marketing channel

---

## Data Cleaning (Python)

Data preprocessing was performed using Python and the Pandas library.

Key cleaning steps included:

- Removing rows with unknown marketing channels
- Converting numerical columns to proper data types
- Formatting the date column
- Handling missing values
- Verifying calculated marketing metrics

### Example Python Cleaning Code

```python
import pandas as pd

# Load dataset
df = pd.read_csv("marketing_campaign_data.csv")

# Remove rows with unknown channels
df = df[df["channel"] != "Unknown"]

# Convert numeric columns
numeric_cols = ["impressions", "clicks", "conversions", "revenue", "cost"]
df[numeric_cols] = df[numeric_cols].apply(pd.to_numeric, errors="coerce")

# Convert date column
df["date"] = pd.to_datetime(df["date"])

# Drop missing values
df = df.dropna()

# Save cleaned dataset
df.to_csv("clean_marketing_campaign_data.csv", index=False)
```

### Python Cleaning Screenshot

![Python Cleaning](images/python_cleaning.png)

---

## Power BI Dashboard

An interactive Power BI dashboard was created to visualize marketing campaign performance.

The dashboard includes:

- KPI summary cards
- Revenue by marketing channel
- Conversions by channel
- Conversion rate trend over time
- Campaign efficiency scatter plot
- Top-performing campaigns table
- Interactive filters

---

## Dashboard Preview

<img src="images/dashboard.png" width="850">

---

## Campaign Efficiency Visualization

This scatter plot compares campaign cost and conversion rate to identify the most efficient campaigns.

![Scatter Plot](images/scatter_plot.png)

---

## Key Insights

- Marketing revenue is distributed across several channels.
- Conversion rates fluctuate over time.
- Some campaigns achieve higher efficiency with lower cost.
- High ROI campaigns highlight opportunities for scaling marketing strategies.

---



## Author

This project was created as part of a data analytics portfolio to demonstrate skills in:

- Data cleaning with Python
- Data analysis
- Marketing analytics
- Dashboard development using Power BI
