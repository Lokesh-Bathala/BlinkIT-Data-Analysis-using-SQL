SELECT * FROM BlinkIT_data

SELECT COUNT(*) FROM BlinkIT_data

UPDATE BlinkIT_data 
SET Item_Fat_Content =
CASE 
WHEN Item_Fat_Content IN ('LF', 'low fat') THEN 'Low Fat'
WHEN Item_Fat_Content IN ('reg') THEN 'Regular'
ELSE Item_Fat_Content
END

SELECT DISTINCT(Item_Fat_Content) FROM BlinkIT_data



SELECT CONCAT (CAST (SUM(Total_Sales)/1000000 AS DECIMAL(10,2)),'M') AS Total_Sales_in_MILLIONS 
FROM BlinkIT_data


SELECT CAST(AVG(Total_Sales)AS DECIMAL(5,0)) AS AVERAGE_SALES FROM BlinkIT_data


SELECT * FROM BlinkIT_data

SELECT DISTINCT(Item_Identifier) FROM BlinkIT_data

SELECT COUNT(*) AS NO_OF_ITEMS_SOLD FROM BlinkIT_data


SELECT CONCAT(CAST(SUM(Total_Sales)/1000000 AS DECIMAL(10,2)), 'M') AS Total_sales_in_Millions 
FROM BlinkIT_data
WHERE Item_Fat_Content = 'Low Fat'

SELECT * FROM BlinkIT_data

SELECT CONCAT(CAST(SUM(Total_Sales)/1000000 AS DECIMAL(10,2)), 'M') AS Total_sales_in_Millions 
FROM BlinkIT_data
WHERE Outlet_Establishment_Year = 2010


SELECT * FROM BlinkIT_data

SELECT CAST(AVG(Rating)AS DECIMAL(5,2)) AS Avg_Rating FROM BlinkIT_data


SELECT * FROM BlinkIT_data

SELECT Item_Fat_Content, CAST(SUM(Total_Sales) AS DECIMAL(10,2)) AS Total_Sales_BY_Fat_Content
FROM BlinkIT_data
GROUP BY Item_Fat_Content
ORDER BY Total_Sales_BY_Fat_Content DESC

SELECT Item_Fat_Content, 
CAST(SUM(Total_Sales) AS DECIMAL(10,2)) AS Total_Sales_BY_Fat_Content,
CAST(AVG(Total_sales) AS DECIMAL(10,2)) AS AVG_sales,
COUNT(*) AS no_of_items_sold,
CAST (AVG(Rating) AS DECIMAL(10,2)) AS AVG_Rating
FROM BlinkIT_data
GROUP BY Item_Fat_Content
ORDER BY Total_Sales_BY_Fat_Content DESC


SELECT Item_Fat_Content, 
CONCAT(CAST(SUM(Total_Sales)/1000 AS DECIMAL(10,2)), 'k') AS Total_Sales_BY_Fat_Content,
CAST(AVG(Total_sales) AS DECIMAL(10,2)) AS AVG_sales,
COUNT(*) AS no_of_items_sold,
CAST (AVG(Rating) AS DECIMAL(10,2)) AS AVG_Rating
FROM BlinkIT_data
WHERE Outlet_Establishment_Year =2010
GROUP BY Item_Fat_Content
ORDER BY Total_Sales_BY_Fat_Content DESC


SELECT * FROM BlinkIT_data

SELECT TOP 5 Item_Type, 
(CAST(SUM(Total_Sales)/1000 AS DECIMAL(10,2))) AS Total_Sales_BY_Item_Type,
CAST(AVG(Total_sales) AS DECIMAL(10,2)) AS AVG_sales,
COUNT(*) AS no_of_items_sold,
CAST (AVG(Rating) AS DECIMAL(10,2)) AS AVG_Rating
FROM BlinkIT_data
WHERE Outlet_Establishment_Year =2010
GROUP BY Item_Type
ORDER BY Total_Sales_BY_Item_Type DESC


SELECT * FROM BlinkIT_data


SELECT Outlet_Location_Type, Item_Fat_content,
CAST(SUM(Total_Sales) AS DECIMAL(10,2)) AS Total_Sales_BY_Fat_Content,
CAST(AVG(Total_sales) AS DECIMAL(10,2)) AS AVG_sales,
COUNT(*) AS no_of_items_sold,
CAST (AVG(Rating) AS DECIMAL(10,2)) AS AVG_Rating
FROM BlinkIT_data
GROUP BY Outlet_Location_Type, Item_Fat_Content
ORDER BY Total_Sales_BY_Fat_Content DESC


SELECT Outlet_Location_Type,
     ISNULL([Low Fat],0) AS Low_Fat,
     ISNULL([Regular],0) AS Regular
FROM
(
    SELECT Outlet_Location_Type, Item_Fat_Content,
         CAST(SUM(Total_Sales) AS DECIMAL(10,2)) AS Total_Sales
    FROM BlinkIT_data
    GROUP BY Outlet_Location_Type, Item_Fat_Content
) AS SourceTable
PIVOT
(
    SUM(Total_Sales)
    FOR Item_Fat_Content IN ([Low Fat],[Regular])
) AS PivotTable
ORDER BY Outlet_Location_Type



SELECT * FROM BlinkIT_data

SELECT Outlet_Establishment_Year,CAST(SUM(Total_Sales) AS DECIMAL(10,2)) AS Total_Sales
FROM BlinkIT_data
GROUP BY Outlet_Establishment_Year
ORDER BY Outlet_Establishment_Year ASC


SELECT * FROM BlinkIT_data

SELECT Outlet_Size,
    CAST(SUM(Total_Sales) AS DECIMAL(10,2)) AS Total_Sales,
    CAST(SUM(Total_Sales) * 100.0 / SUM(SUM(Total_Sales)) OVER() AS DECIMAL (10,2)) AS Sales_Percentage
FROM BlinkIT_data
GROUP BY Outlet_Size
ORDER BY Total_Sales DESC

SELECT * FROM BlinkIT_data

SELECT Outlet_Location_Type, 
CAST(SUM(Total_Sales) AS DECIMAL(10,2)) AS Total_Sales,
CAST(AVG(Total_Sales) AS DECIMAL(10,2)) AS AVG_Sales,
CAST(SUM(Total_Sales) *100.0/ SUM(SUM(Total_Sales)) OVER() AS DECIMAL(10,2)) AS Sales_Percentage
FROM BlinkIT_data
GROUP BY Outlet_Location_Type
ORDER BY Total_Sales DESC

SELECT * FROM BlinkIT_data

SELECT Outlet_Type, 
CAST(SUM(Total_Sales) AS DECIMAL(10,2)) AS Total_Sales,
CAST(AVG(Total_Sales) AS DECIMAL(10,2)) AS AVG_Sales,
CAST(SUM(Total_Sales) *100.0/ SUM(SUM(Total_Sales)) OVER() AS DECIMAL(10,2)) AS Sales_Percentage
FROM BlinkIT_data
GROUP BY Outlet_Type
ORDER BY Total_Sales DESC