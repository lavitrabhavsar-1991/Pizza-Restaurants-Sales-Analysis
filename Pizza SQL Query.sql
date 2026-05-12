use pizzadb;
show tables;
select * from pizza_sales;
# KPI 1 - Total Revenue (Sum of Total Price of all Pizza Orders)
select sum(total_price) as Total_Revenue from pizza_sales; 

# KPI 2 - Average Order Value (Average amount spent per order, calculated by total revenue/total orders)
select sum(total_price) / count(distinct order_id) as Average_Order_Value from pizza_sales;

# KPI 3 - Total Pizza Sold (Sum of quantities of all pizzas sold)
select sum(quantity) as Total_Pizza_Sold from pizza_sales;

# KPI 4 - Total Orders Placed
select count(distinct order_id) as Total_Orders_Placed from pizza_sales;

# KPI 5 - Average Pizza per Orders (Average no of pizzas sold per order, calculated by total no of pizzas sold per order/total number of orders )
select sum(quantity) / count(distinct order_id) as Avg_Pizza_Order from pizza_sales;

# Calculating Daily Trend for Total Orders (Identification of any patterns in order volume on a daily basis)
select dayname(str_to_date(order_date, '%d-%m-%Y')) as order_day, count(distinct order_id) as Total_Orders from pizza_sales
group by dayname(str_to_date(order_date, '%d-%m-%Y'));

# Calculating Hourly Trend for Total Orders (Identify Peak Hourly Orders)
select hour(order_time) as Order_Hours, count(distinct order_id) as Total_Orders from pizza_sales
group by hour(order_time) order by hour(order_time);

# Percentage of Sales by Pizza Category (Provides us insight into popularity of varuious pizzas categories amd their percentage of sales)
select pizza_category, cast(sum(total_price) as decimal(10,2)) as Total_Sales, cast(sum(total_price) * 100/ (select sum(total_price) from pizza_sales) as decimal(10,2)) as PCT from pizza_sales 
group by pizza_category;

# Percentage of Sales by Pizza Size (Helps us understand popularity of pizza sizes and their sales percentage)
select pizza_size, cast(sum(total_price) as decimal(10,2)) as Total_Sales, cast(sum(total_price) * 100/ (select sum(total_price) from pizza_sales) as decimal(10,2)) as PCT
from pizza_sales group by pizza_size order by PCT desc;

# Total Pizza sold by category (Helps us understand Sales performance of different pizza categories)
select pizza_category, sum(quantity) as Total_Pizzas_Sold from pizza_sales
group by pizza_category;

# Top 5 Best Sellers by Total Pizzas Sold (Helps us identify Top 5 most popular pizza orders)
select pizza_name, sum(quantity) as Total_Pizza_Sold from pizza_sales
group by pizza_name order by sum(quantity) desc limit 5;

# Bottom 5 Worst Sellers by Total Pizzas Sold (Vice versa)
select pizza_name, sum(quantity) as Total_Pizza_Sold from pizza_sales
group by pizza_name order by sum(quantity) limit 5;
