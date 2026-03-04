
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



-- 8. Count the number of sales by Channel (Online vs Offline).
-- 9. Count the number of sales by Priority level.
-- 10. Count the number of distinct PC Make values.

-- INTERMEDIATE QUESTIONS

-- 11. Calculate total revenue (SUM of Sale Price).
-- 12. Calculate total profit (SUM of Sale Price - Cost Price).
-- 13. Find the average Discount Amount.
-- 14. Calculate total Finance Amount issued.
-- 15. Find total revenue per PC Make.
-- 16. Find average Sale Price per Storage Type.
-- 17. Calculate total revenue per Shop Name.
-- 18. Calculate total revenue per Sales Person Name.
-- 19. Find average Credit Score per Payment Method.
-- 20. Calculate total Cost of Repairs per Sales Person Department.

-- ADVANCED QUESTIONS

-- 21. Calculate profit per Shop Name.
-- 22. Calculate profit margin per sale ((Sale Price - Cost Price) / Sale Price).
-- 23. Determine which Continent has the highest total revenue.
-- 24. Calculate average Sale Price per RAM size.
-- 25. Find the PC Model with the highest Sale Price.
-- 26. Calculate the average number of days between Purchase Date and Ship Date.
-- 27. Determine which Sales Person Department generates the highest revenue.
-- 28. Calculate total revenue per Storage Capacity.
-- 29. Identify sales where Sale Price is lower than PC Market Price.
-- 30. Rank Sales Person Name by Total Sales per Employee using a window function.

