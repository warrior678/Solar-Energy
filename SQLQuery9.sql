SELECT * FROM [dbo].[solar_energy_dataset] 
-- Write a query for Total energy generated 
SELECT 
SUM(Annual_Production_MWh) AS Total_Energy_Production
FROM solar_energy_dataset; 
-- Write a query for Average Sunlight Hours 
SELECT 
AVG(Sunlight_Hours) AS Average_Sunlight_Hours
FROM solar_energy_dataset; 
-- Write a query fot total installations by Region 
SELECT 
Region,
SUM(Total_Installations) AS Total_Installations
FROM solar_energy_dataset
GROUP BY Region
ORDER BY Total_Installations DESC; 
-- Write a query for Compare Residential vs Commercial vs Industrial 
SELECT 
System_Type,
SUM(Annual_Production_MWh) AS Total_Production
FROM solar_energy_dataset
GROUP BY System_Type
ORDER BY Total_Production DESC; 
-- Write a query for TOP 5 Countries by Energy Production 
SELECT TOP 5
Country,
SUM(Annual_Production_MWh) AS Total_Production
FROM solar_energy_dataset
GROUP BY Country
ORDER BY Total_Production DESC; 
-- Write a query for Average Installation cost by countries 
SELECT 
Country,
AVG(Installation_Cost_USD) AS Avg_Cost
FROM solar_energy_dataset
GROUP BY Country
ORDER BY Avg_Cost DESC; 
-- Write a query for Year-wise Energy Production 
SELECT 
Year,
SUM(Annual_Production_MWh) AS Total_Production
FROM solar_energy_dataset
GROUP BY Year
ORDER BY Year; 
-- Write a query for City wise High Energy Production 
SELECT TOP 1
City,
SUM(Annual_Production_MWh) AS Total_Production
FROM solar_energy_dataset
GROUP BY City
ORDER BY Total_Production DESC; 

-- Query for High installation of Sunlight Hour>8 
SELECT 
City,
Country,
Sunlight_Hours,
Total_Installations
FROM solar_energy_dataset
WHERE Sunlight_Hours > 8
ORDER BY Sunlight_Hours DESC;

