# ☀️ Solar Energy Data Analysis using SQL & Power BI

![SQL](https://img.shields.io/badge/SQL-T--SQL-CC2927?logo=microsoftsqlserver&logoColor=white)
![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-F2C811?logo=powerbi&logoColor=black)
![CSV](https://img.shields.io/badge/Data-CSV-217346?logo=microsoftexcel&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-green)

A data analysis project that explores global solar power generation trends using **SQL (T-SQL)** for data querying and **Power BI** for interactive dashboard visualizations. The project uncovers insights into energy production, installation patterns, regional performance, and cost efficiency across countries and cities
 Project Overview
This project analyzes a solar energy dataset imported from a CSV file into SQL Server. The data undergoes cleaning, aggregation, and querying using T-SQL, and the results are visualized through an interactive Power BI dashboard — enabling data-driven insights into the global solar energy landscape.

 Project Objectives
- Import solar energy data from a CSV file into SQL Server
- Perform data cleaning and transformation using T-SQL
- Analyze solar energy generation and performance trends
- Calculate key performance metrics related to energy production
- Build an interactive dashboard using Power BI



 Tools & Technologies
| Tool | Purpose |
|------|---------|
| SQL Server (T-SQL) | Data querying, filtering, and aggregation |
| Power BI | Dashboard creation and visualization |
| CSV File | Raw data source |



 Repository Structure
Solar-Energy/
│
├── SQLQuery9.sql          # All T-SQL queries used for analysis
├── Solar_Energy.pbix      # Power BI dashboard file
└── README.md              # Project documentation
```


 SQL Queries & Analysis
All analysis was performed on the `solar_energy_dataset` table. Here's a summary of the queries written:
| # | Analysis | Description |
|---|----------|-------------|
| 1 | **Total Energy Generated** | `SUM(Annual_Production_MWh)` across all records |
| 2 | **Average Sunlight Hours** | `AVG(Sunlight_Hours)` globally |
| 3 | **Installations by Region** | `SUM(Total_Installations)` grouped by `Region` |
| 4 | **System Type Comparison** | Residential vs Commercial vs Industrial production |
| 5 | **Top 5 Countries by Production** | `TOP 5` countries by total `Annual_Production_MWh` |
| 6 | **Avg Installation Cost by Country** | `AVG(Installation_Cost_USD)` per country |
| 7 | **Year-wise Energy Production** | Total production grouped by `Year` |
| 8 | **Highest Producing City** | `TOP 1` city by total energy production |
| 9 | **High Sunlight Cities** | Cities & countries where `Sunlight_Hours > 8` |
 Sample Query — Top 5 Countries by Energy Production
```sql
SELECT TOP 5
    Country,
    SUM(Annual_Production_MWh) AS Total_Production
FROM solar_energy_dataset
GROUP BY Country
ORDER BY Total_Production DESC;
```
 Sample Query — High Sunlight Hour Installations
SELECT
    City,
    Country,
    Sunlight_Hours,
    Total_Installations
FROM solar_energy_dataset
WHERE Sunlight_Hours > 8
ORDER BY Sunlight_Hours DESC;
 Key Insights & Metrics
-  **Total Energy Production** — Aggregate MWh produced across all installations
-  **Average Sunlight Hours** — Global average to benchmark solar potential
-  **Regional Installations** — Which regions lead in solar adoption
-  **System Type Breakdown** — Residential vs Commercial vs Industrial performance
-  **Top Producing Countries** — Nations generating the most solar energy
-  **Installation Cost Analysis** — Cost-efficiency comparison across countries
-  **Year-over-Year Trends** — How solar production has grown over time
-  **City-level Leaders** — Highest energy-producing cities globally

 Power BI Dashboard
The Power BI dashboard (`Solar_Energy.pbix`) visualizes all the above metrics interactively, including:
- KPI cards for total production and average sunlight hours
- Bar/column charts for regional and country-level comparisons
- Line chart for year-wise production trends
- Slicers for filtering by Country, Region, and System Type

 **To open the dashboard:** Download `Solar_Energy.pbix` and open it with [Power BI Desktop](https://powerbi.microsoft.com/desktop/) (free).
 Getting Started
Running the SQL Queries
1. Import `solar_energy_dataset.csv` into your SQL Server database
2. Open `SQLQuery9.sql` in SQL Server Management Studio (SSMS)
3. Run individual queries or all at once to explore the data
 Viewing the Dashboard
1. Download and install [Power BI Desktop](https://powerbi.microsoft.com/desktop/)
2. Open `Solar_Energy.pbix`
3. Interact with the dashboard filters and visuals
 Author
**Gautam Kumar**
Data Analyst | SQL | Power BI | Data Visualization
- GitHub: [@warrior678](https://github.com/warrior678)
 If you found this project helpful, consider giving it a star!

