# Tata-Zudio
Excel+SQL+Power BI

📊 Retail Sales Analytics Dashboard
Tools Used: Excel • SQL • Power BI
Domain: Retail Analytics
Focus: Sales trends, city-wise performance, clothing category insights


Absolutely, Arun! Here's a technical and structured README.md summary tailored to your workflow: CSV → SQL (50+ challenges) → Power BI dashboard. This format is ideal for GitHub and portfolio presentation.

📊 Retail Sales Analytics Project
Tools Used: CSV • SQL • Power BI
Domain: Retail Analytics
Focus: Data cleaning, SQL problem-solving, and sales trend visualization

🧠 Project Summary
This project demonstrates a complete data analytics pipeline starting from raw CSV ingestion to SQL-based transformation and Power BI dashboarding. It showcases hands-on proficiency in data wrangling, query optimization, and visual storytelling.

📂 Workflow Overview
1️⃣ Data Ingestion & Cleaning
- Imported raw .csv file containing retail sales data
- Performed initial cleaning: null handling, data type conversion, column renaming
- Loaded cleaned data into SQL database for structured querying
2️⃣ SQL Challenges (50+)
Executed over 50 SQL queries to extract insights, including:
- City-wise total and average sales
- Monthly sales trends
- Clothing type segmentation
- Staff-to-sales ratio analysis
- Top-N queries, subqueries, joins, aggregations, and window functions
3️⃣ Power BI Dashboarding
- Imported SQL output into Power BI
- Created interactive visuals:
- 📅 Monthly sales trend chart
- 🏙️ City-wise performance bar chart
- 👕 Clothing category treemap
- 👥 Staff count vs sales correlation
- Applied slicers, tooltips, and custom formatting for clarity

📊 Key Metrics & Measures
|  |  | 
|  | SUM('Sales'[Sales_Amount]) | 
|  | DIVIDE(SUM('Sales'[Sales_Amount]), DISTINCTCOUNT('Sales'[City])) | 
|  | AVERAGEX(VALUES('Date'[Month]), CALCULATE(SUM('Sales'[Sales_Amount]))) | 



📈 Insights Extracted
- 🔥 October and August are peak sales months
- 🏬 Urban Nagar and Commercial Street lead in total revenue
- 👕 T-shirts and Jackets dominate category-wise sales
- 👥 Cities with higher staff count tend to show stronger sales performance

📁 Repository Contents
|  |  | 
| retail_sales.csv |  | 
| sql_challenges.sql |  | 
| retail_dashboard.pbix |  | 
| README.md |  | 



🚀 Skills Demonstrated
- SQL query design and optimization
- Data cleaning and transformation
- DAX measure creation
- Power BI dashboard layout and formatting
- End-to-end analytics pipeline execution

