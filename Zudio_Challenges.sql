----------------- SQL CHALLENGES 
SELECT *FROM Zudio_sales_data


------Beginner Challenges

--1. Select all records of Indian stores.
Select * from Zudio_sales_data


--2. List all unique clothing categories.
Select distinct(clothing_type) as 'Unique Clothin' from Zudio_sales_data


--3. Get total number of orders.
Select Count(*) as 'Total_Orders' from Zudio_sales_data


--4. Write a SQL query to select only the State, City, Category, and Sales Profit Round 2 digit sales_profit columns.
Select State, City, Category, Round(Sales_Profit,2) [Sales_Profit] from Zudio_sales_data


--5. Write a SQL query to select all orders where the Quantity is greater than 5.
Select Order_ID, Quantity from Zudio_sales_data
where Quantity >5;


--6. Write a SQL query to find all women's clothing (Category = 'Women') in stores located in Karnataka (State = 'Karnataka') with a Sales Profit over 3000.
Select 
Clothing_Type, 
State,
round(Sales_Profit,2)as 'Sales_Profit' 
from Zudio_sales_data
where Category = 'Women'
and 
State = 'Karnataka'
and 
Sales_Profit > 3000; 


--7. Write a SQL query to select all records where the Customer Name starts with 'J' (use LIKE operator).
Select * from Zudio_sales_data
where Customer_Name like 'j%';


-----Intermediate Challenges

--8. Find top 5 cities with highest sales.
Select top(5) 
city,
round(sum(sales_profit),2) as 'Total_Sales' 
from Zudio_sales_data
group by city
order by Total_Sales desc;


--9. Average profit by clothing_Type.
Select
Clothing_Type, 
Round(AVG(Sales_profit),2) as 'Avg_Sales_Profit' 
from Zudio_sales_data
group by Clothing_Type
order by Avg_Sales_Profit;


--10. Count orders per month.
select
Month, 
count(order_id) as 'No of order' 
from Zudio_sales_data
group by Month
Order by Month;


--11. Write a SQL query to select orders placed in July 2024 (Order Date between '2024-07-01' and '2024-07-31').
Select
Order_Date,
count(*) as 'No of orders july month'
from Zudio_sales_data
where order_date between '2024-07-01' and '2024-07-31'
Group by Order_Date
order by Order_Date;


--12. Write a SQL query to find city where Parking Availability is 'Not Available'.
select 
City,
Parking_Availability 
from Zudio_sales_data
Where Parking_Availability = 'Not Available'


--13. Write a SQL query to select records where the Clothing Type is either 'Dresses', 'Jackets', or 'Hoodies'.
Select * from Zudio_sales_data
where Clothing_Type in ('Dresses','Jackets','Hoodies');


--14. Write a SQL query to find customer_id, customer_name with Price between 1000 and 2000.
select 
Customer_ID,
Customer_Name, 
price 
from Zudio_sales_data
where price between '1000' and '2000'
order by price;


--15. Write a SQL query to list all unique State values in the table
select
distinct(state) as 'Unique State' 
from Zudio_sales_data


--16. Write a SQL query to calculate the total Sales Profit across all records.
select
sum(sales_profit) as 'Total_Sales_Profit' 
from Zudio_sales_data


--17. Write a SQL query to find the average Price, maximum Quantity, and minimum Staff Count.
select 
Avg(Price) as 'Avg_Price',
Max(Quantity) as 'Max_Quantity', 
min(Staff_Count) as 'Min_Staff_Count' 
from Zudio_sales_data

--18. Write a SQL query to group by Category and calculate the sum of Sales Profit for each category.
Select
Category, 
round(sum(sales_profit),2) as 'Total_Sales' 
from Zudio_sales_data
group by Category;


--19. Write a SQL query to group by State and find the average Selling Area Size (sq ft) for each combination.
Select 
State, 
avg(selling_area_size_sq_ft)as 'Avg_selling_area_size_sq_ft' 
from Zudio_sales_data
group by state, city;


--20. Write a SQL query to group by Month and find months where the total Sales Profit exceeds 100,000.
Select
Month,
floor(sum(sales_profit)) as 'Total_Sales' 
from Zudio_sales_data
where Sales_Profit = '100000'
group by Month


--21. Write a SQL query to count the number of orders per Clothing Type.
select
Clothing_Type, 
count(clothing_type) as 'Total_Clothing_type'
from Zudio_sales_data
group by Clothing_Type;


--22. Write a SQL query to calculate the total Quantity sold for Men's clothing (Category = 'Men') in owned stores (Store Type = 'Owned').
select 
Category, 
sum(quantity) as 'Total_Quantity' 
from Zudio_sales_data
where Store_Type = 'Owned'
and 
Category = 'Men'
group by Category


--23. Write a SQL query to group by Store Manager and sum Sales Profit, then sort the results by total profit descending.
Select 
Store_Manager, 
Floor(sum(sales_profit))as 'Total_profit' 
from Zudio_sales_data
group by Store_Manager
order by Total_profit DESC;


--24. Use CASE to categorize Price as 'Low' (<1000), 'Medium' (1000-2000), or 'High' (>2000), then group by this category and count the records.
select Category, clothing_type, price,
case 
when price < 1000 then 'Low'
when price  between 1000 and 2000 then 'Medium'
else 'High'
End as 'Risk'
from Zudio_sales_data


--25. Write a SQL query to calculate the total sales profit and then find what percentage each Category contributes to the total (using window functions or subqueries).
select Category,
floor(sum(Sales_Profit)) as 'Total_sales_Profit',
count(sales_profit)*100.0/(Select count(sales_profit)as 'percentage' 
from Zudio_sales_data)as 'Category_Percentage'
from Zudio_sales_data
Group by Category;


--26. Write a SQL query to select all records sorted by Sales Profit in descending order.
select * from Zudio_sales_data
order by Sales_Profit desc;


--27. Write a SQL query to sort by State ascending and then by City descending.
select * from Zudio_sales_data
order by State asc , city desc;


--28. Write a SQL query to retrieve the top 5 orders with the highest Sales Profit. 
select top(5)* from Zudio_sales_data
order by Sales_Profit desc;


--29. Write a SQL query to get the 6th to 10th RANK by sales_profit records when sorted by Order Date ascending (pagination). 
Select *,
rank()
over 
(partition by order_date order by order_date desc) as 'Ranks'
from Zudio_sales_data
order by order_date desc;

--30. Write a SQL query to group by Product ID, sum Quantity, and sort the results by total quantity descending, limiting to top 3.
Select top (5) Product_ID, 
SUM(Quantity) as 'Total_Quantity'
from Zudio_sales_data
Group by Product_ID
Order by Total_Quantity desc;


------Advanced Challenges

--31. Find the top 3 most profitable products in each state.
with Rankedproducts as (
select state, 
clothing_type,
price, 
ROW_NUMBER()
over 
(partition by state order by price desc) as 'Ranked'
From Zudio_sales_data)
Select state, 
clothing_type, 
price 
from Rankedproducts
where Ranked <=3;


--32. Which store type (Owned vs Rented) generates more sales on average?
Select 
State, City,Store_Address, Store_Type,
Floor(Sales_Profit) as 'Sales_Profit'
from Zudio_sales_data
where Sales_Profit >(Select avg(Sales_Profit) from Zudio_sales_data)
Select* from Zudio_sales_data


--33. Find customers who placed more than 5 orders.
select 
Customer_Name, 
price 
from Zudio_sales_data
where customer_id >=5
order by price asc;


------Expert Challenges


--34. Calculate each_month growth in sales (Month).
select 
datename(MM,Order_Date)as 'Months',
sum(Price) as 'Total_sales' 
from Zudio_sales_data
group by datename(MM,Order_Date)
order by Months asc;


--35. Find the most profitable month for each state.
Select state, 
datename(MM,Order_Date)as 'Months', 
ROUND(SUM(sales_profit),2) as 'Total_sales_Profit',
Month(Order_Date)as 'Month_Number'
from Zudio_sales_data
group by State, DATENAME(MM,Order_Date), Month(Order_Date)
order by State asc, Month_Number asc;


--36. Calculate customer lifetime value (total sales per customer) desc order
Select 
Customer_Name, 
Sum(price) as 'Total_sales_price'
from Zudio_sales_data
Group by Customer_Name
Order by Total_sales_price desc;


----- Subquery Challenges.  


--37. Simple subquery: Write a SQL query to find stores with Selling Area Size (sq ft) greater than the average size (use subquery for average).
Select 
State,
Store_Manager, 
Selling_area_size_sq_ft as 'Grater_then_Avg_Selling_Area' 
From Zudio_sales_data
where Selling_area_size_sq_ft > (select avg(Selling_area_size_sq_ft) from Zudio_sales_data)


--38. Find the total sales profit per months Order by Month asc
select 
Month, 
Floor(SUM(Sales_Profit)) as 'Total_Sales_Profit_Per_Month' 
from Zudio_sales_data
Group by Month
Order by Month asc;


--39. Subquery in FROM: Write a SQL query to calculate the average profit per category 
select 
Category, 
Round(Avg(Sales_Profit),2)as 'Avg_Sales'
from Zudio_sales_data
Group by Category;


--40. Correlated subquery: Write a SQL query to find store_Number where the Staff Count is higher than the average staff count in the same State.
Select State,
Store_Address, 
Store_Number,
Staff_Count
from Zudio_sales_data
Where Store_Number > (Select avg(Store_Number) From Zudio_sales_data)


--41 EXISTS subquery: Write a SQL query to find all cities that have at least one store with Security Features including 'CCTV'.
Select
Store_Address,
City,
Security_Features, 
Count(Security_Features) as 'No_of_Security_Features' 
from Zudio_sales_data
where Security_Features = 'CCTV'
group by city, Security_Features, Store_Address
having Count(Security_Features) = 1;

------Advanced Challenges (Window Functions, CTEs, etc.)


--42. Window function - ROW_NUMBER: Write a SQL query to assign a row number to each order within each Month, ordered by Sales Profit descending.
Select 
Order_ID,
Month, 
FLOOR(SUM(Sales_Profit)) as 'Total_Sales_Profit',
Row_Number()
over 
(order by Month asc) as 'Row_Number'
from Zudio_sales_data
Group by Order_id, Month
Order by Total_sales_profit desc;


--43. Window function - RANK: Write a SQL query to rank Clothing_Type by total Sales Profit within each Category.
WITH Ranked_Data AS (
  SELECT 
    Category, 
    Clothing_Type,
    SUM(Sales_Profit) AS Total_Sales_Profit
  FROM Zudio_sales_data
  GROUP BY Category, Clothing_Type
)
SELECT 
  Category,
  Clothing_Type, 
  Total_Sales_Profit,
  RANK() OVER (
    PARTITION BY Category 
    ORDER BY Total_Sales_Profit DESC
  ) AS Ranking
FROM Ranked_Data;


--44. PIVOT/UNPIVOT: Write a SQL query to pivot the data to show total Sales Profit by Category as columns for each Month.
Select  
Month, 
Category, 
Sum(Sales_Profit) as 'Total_Sales',
ROW_NUMBER()
OVER
(Partition by Month, Category order by Sales_Profit asc) as 'Rank'
from Zudio_sales_data
Group by Month, Category -- incorrect error find 


--45. String aggregation: Write a SQL query to group by State and concatenate all unique City values into a single string (using STRING_AGG or equivalent).
Select
State, 
String_agg(City,',')as 'Distinct_City'
from zudio_sales_data
Group by State;--Warning STRING_AGG aggregation result exceeded the limit of 8000 bytes, Use LOB types to avoid result truncation 


--46. Change datatype varchar(50) to varchar(max)
Select 
state, 
COUNT(Distinct City) as Citys, 
STRING_AGG(Convert(varchar(max), City),',')as Distinct_city
from Zudio_sales_data
Group by State;


--47. Date functions: Write a SQL query to extract the year from Store Open Date and group by it to count new stores opened per year.
Select
datepart(yyyy,Store_Open_Date)as 'Years',
Count(*) as 'New Store Open'
from Zudio_sales_data
group by datepart(yyyy,Store_Open_Date)
order by Years asc;


--48. CASE statement: Write a SQL query to create a new column categorizing Staff Count as 'Small' (<10), 'Medium' (10-15), or 'Large' (>15), then group by this category.
Select Staff_Count,
Case 
when Staff_Count < 10 then 'Small'
When Staff_Count between '10' and '15' then 'Medium'
Else 'Large' 
end as [Staff_Count_Category]
from Zudio_sales_data
Group by Staff_Count
order by Staff_Count;


--49. Write a SQL query to find the customer who generated the highest total Sales Profit (sum across their orders).
Select Customer_Name, Floor(Sum(sales_profit)) as 'Total_Sales_Profit' from Zudio_sales_data
Group by Customer_Name
Order by Total_Sales_Profit DESC;

------ Data Modification Challenges (Assuming table allows DML)


--50. UPDATE: Write a SQL statement to update Parking Availability to 'Available' for all stores in 'Bengaluru'.
Update Zudio_sales_data
set Parking_Availability = 'Available'
Where City = 'Bengaluru'


--51. DELETE: Write a SQL statement to delete records where Sales Profit is less than 1000.
Delete from Zudio_sales_data
where Sales_Profit < 1000


--52. VIEW creation: Write a SQL statement to create a view that shows only aggregated sales by month and category.
Create view Aggregated_Sales as 
Select Month, Category, 
FLOOR(SUM(Sales_Profit)) as'Sum',
FLOOR(AVG(Sales_Profit)) as 'Avg'
from Zudio_sales_data
Group by Month, Category


--53. Remove Aggregated_Sales view 
Drop view Aggregated_Sales 


--54. Create view where no any decimal values exists.
Create view Zudio_Sales as 
Select 
State, City, Category, Clothing_Type, 
Store_Number, Postal_Code, Store_Type,
Store_Open_Date, Selling_Area_Size_sq_ft,
Store_Manager, Manager_ID, Store_Address, 
Operating_Hours, Staff_Count, Parking_Availability, 
Security_Features, Order_ID, Month, Customer_ID, 
Customer_Name, Product_ID, Price, Quantity, 
Floor(Sales_Profit) [Sales_Profit]
from Zudio_sales_data


--55. Delete view Zudio_Sales
Drop View Zudio_Sales


--56.  Find the how much profit gain by store_manager in this table 
Select Store_Manager, (Price*Quantity)as 'Total_Price' from Zudio_sales_data


