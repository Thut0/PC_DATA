
-- ======================================================
-- SQL PROJECT QUESTIONS
-- Dataset: PC Sales
-- ======================================================

-- BASIC QUESTIONS

-- 1. Count the total number of sales records.

SELECT * 
FROM PC_DATA.dbo.[1772542271737_pc_data]
;

SELECT COUNT(Sale_Price) as Num_of_sales_records
FROM PC_DATA.dbo.[1772542271737_pc_data]
;

-- 2. Count the number of sales per Continent.

SELECT * 
FROM PC_DATA.dbo.[1772542271737_pc_data]
;

SELECT Continent,
COUNT(Sale_Price) as num_of_sales_per_continent
FROM PC_DATA.dbo.[1772542271737_pc_data]
GROUP BY Continent
;

-- 3. Count the number of sales per Country or State.

SELECT Country_or_State,
COUNT(Sale_Price) as num_of_sales_per_country_or_state
FROM PC_DATA.dbo.[1772542271737_pc_data]
GROUP BY Country_or_State
;

-- 4. List all distinct Shop Name values.

SELECT DISTINCT(Shop_Name)
FROM PC_DATA.dbo.[1772542271737_pc_data]

-- 5. Find the average Sale Price.

SELECT AVG(Sale_Price) as avg_sale_price
FROM PC_DATA.dbo.[1772542271737_pc_data]

-- 6. Find the highest and lowest Sale Price.

SELECT MAX(Sale_Price) AS highest_sale_price,
MIN(Sale_Price) AS lowest_sale_price
FROM PC_DATA.dbo.[1772542271737_pc_data]

-- 7. Count the number of sales by Payment Method.

SELECT Payment_Method,
COUNT(*) AS num_of_sales_by_payment_method
FROM PC_DATA.dbo.[1772542271737_pc_data]
GROUP BY Payment_Method
;

-- 8. Count the number of sales by Channel (Online vs Offline).

SELECT Channel,
COUNT(*) AS num_of_sales_by_channel
FROM PC_DATA.dbo.[1772542271737_pc_data]
GROUP BY Channel
;

SELECT * 
FROM PC_DATA.dbo.[1772542271737_pc_data]
;

-- 9. Count the number of sales by Priority level.

SELECT Priority,
COUNT(*) AS num_of_sales_by_priority_level
FROM PC_DATA.dbo.[1772542271737_pc_data]
GROUP BY Priority
;

-- 10. Count the number of distinct PC Make values.

SELECT COUNT(DISTINCT(PC_Make)) AS num_of_distinct_pc_make
FROM PC_DATA.dbo.[1772542271737_pc_data]
;

-- INTERMEDIATE QUESTIONS

-- 11. Calculate total revenue (SUM of Sale Price).

SELECT SUM(Sale_Price) AS total_revenue
FROM PC_DATA.dbo.[1772542271737_pc_data]
;

-- 12. Calculate total profit (SUM of Sale Price - Cost Price).

SELECT SUM(Sale_Price - Cost_Price) AS total_price
FROM PC_DATA.dbo.[1772542271737_pc_data]
;

-- 13. Find the average Discount Amount.

SELECT AVG(Discount_Amount) AS avg_discount_amount
FROM PC_DATA.dbo.[1772542271737_pc_data]
;

-- 14. Calculate total Finance Amount issued.

SELECT SUM(CAST (Finance_Amount AS bigint)) AS total_finance_amount_issued
FROM PC_DATA.dbo.[1772542271737_pc_data]
;

-- 15. Find total revenue per PC Make.

SELECT PC_Make,
SUM(Sale_Price) AS total_revenue_per_pc_make
FROM PC_DATA.dbo.[1772542271737_pc_data]
GROUP BY PC_Make
;

-- 16. Find average Sale Price per Storage Type.

SELECT Storage_Type,
AVG(Sale_Price) avg_sale_price_per_storage_type
FROM PC_DATA.dbo.[1772542271737_pc_data]
GROUP BY Storage_Type
;

-- 17. Calculate total revenue per Shop Name.

SELECT Shop_Name,
SUM(Sale_Price) AS total_revenue_per_shop_name
FROM PC_DATA.dbo.[1772542271737_pc_data]
GROUP BY Shop_Name
;

-- 18. Calculate total revenue per Sales Person Name.

SELECT Sales_Person_Name,
SUM(Sale_Price) AS total_revenue_per_sales_person_name
FROM PC_DATA.dbo.[1772542271737_pc_data]
GROUP BY Sales_Person_Name
;

-- 19. Find average Credit Score per Payment Method.

SELECT Payment_Method,
AVG(Credit_Score) AS avg_credit_score_per_payment_method
FROM PC_DATA.dbo.[1772542271737_pc_data]
GROUP BY Payment_Method
;

-- 20. Calculate total Cost of Repairs per Sales Person Department.

SELECT Sales_Person_Department,
SUM(CAST(Cost_of_Repairs AS bigint)) AS total_cost_of_repairs_per_sales_person_department
FROM PC_DATA.dbo.[1772542271737_pc_data]
GROUP BY Sales_Person_Department
;

SELECT *
FROM PC_DATA.dbo.[1772542271737_pc_data]

-- ADVANCED QUESTIONS

-- 21. Calculate profit per Shop Name.

SELECT Shop_Name,
SUM(Sale_Price - Cost_Price) AS profit_per_shop
FROM PC_DATA.dbo.[1772542271737_pc_data]
GROUP BY Shop_Name

-- 22. Calculate profit margin per sale ((Sale Price - Cost Price) / Sale Price).

SELECT
    PC_Make,
    SUM(Sale_Price) AS Revenue,
    SUM(Sale_Price) * 100.0
    / SUM(SUM(Sale_Price))
    OVER () AS Revenue_Percentage
FROM PC_DATA.dbo.[1772542271737_pc_data]
GROUP BY PC_Make
ORDER BY Revenue

-- 23. Determine which Continent has the highest total revenue.

SELECT TOP 1 Continent,
SUM(Sale_Price) AS highest_total_revenue
FROM PC_DATA.dbo.[1772542271737_pc_data]
GROUP BY Continent
ORDER BY highest_total_revenue desc

-- 24. Calculate average Sale Price per RAM size.

SELECT *
FROM PC_DATA.dbo.[1772542271737_pc_data]

SELECT RAM,
AVG(Sale_Price) as avg_sale_price_per_ram_size
FROM PC_DATA.dbo.[1772542271737_pc_data]
GROUP BY RAM

-- 25. Find the PC Model with the highest Sale Price.

SELECT TOP 1 PC_Model,
MAX(Sale_Price) AS highest_sale_price
FROM PC_DATA.dbo.[1772542271737_pc_data]
GROUP BY PC_Model
ORDER BY highest_sale_price desc

-- 26. Calculate the average number of days between Purchase Date and Ship Date. INCOMPLETE

--SELECT *
--FROM PC_DATA.dbo.[1772542271737_pc_data]

--SELECT FORMAT(Purchase_Date , 'dd') AS Purchase_Day,
--FORMAT(Ship_Date , 'dd') AS Ship_Day
--FROM PC_DATA.dbo.[1772542271737_pc_data]

--SELECT avg(Purchase_Date - Ship_Date) as avg_days
--FROM PC_DATA.dbo.[1772542271737_pc_data]

SELECT avg(datediff(day,try_convert(date,purchase_date),try_convert(date,ship_date))) as avgshipdays
FROM PC_DATA.dbo.[1772542271737_pc_data]

-- 27. Determine which Sales Person Department generates the highest revenue.

SELECT TOP 1 Sales_Person_Department,
SUM(Sale_Price) AS highest_revenue
FROM PC_DATA.dbo.[1772542271737_pc_data]
GROUP BY Sales_Person_Department
ORDER BY highest_revenue desc

-- 28. Calculate total revenue per Storage Capacity.

SELECT Storage_Capacity,
SUM(Sale_Price) AS total_revenue_per_storage_capacity
FROM PC_DATA.dbo.[1772542271737_pc_data]
GROUP BY Storage_Capacity

-- 29. Identify sales where Sale Price is lower than PC Market Price.

SELECT Sale_Price, PC_Market_Price
FROM PC_DATA.dbo.[1772542271737_pc_data]
WHERE Sale_Price < PC_Market_Price

-- 30. Rank Sales Person Name by Total Sales per Employee using a window function.

SELECT Sales_Person_Name, Total_Sales_per_Employee,
RANK() OVER (ORDER BY Total_Sales_per_Employee desc) AS Rank
FROM PC_DATA.dbo.[1772542271737_pc_data]

