# Pizza-Restaurants-Sales-Analysis
Analyzed a full year of pizza restaurant sales data (48,620 transactions across 21,350 orders) to uncover revenue trends, peak demand windows, and product-level performance

## Project Overview
This data analytics project analyzes a full year of pizza restaurant sales data (48,620 transactions across 21,350 orders) to uncover revenue trends, peak demand windows, and product-level performance. The project spans the full analytics pipeline from SQL querying to dashboard visualization in Excel, thereby producing actionable insights for restaurant operations and menu strategy.

## Why This Project Matters
Restaurant operators make several high-stakes decisions daily suvh as staffing levels, inventory ordering, promotional timing, and menu curation. Without data, these decisions rely on gut instinct. This project demonstrates how structured SQL analysis and visual dashboards can transform raw transactional data into actionable insights, helping a business maximize revenue, reduce waste, and focus their resources on where it counts the most.

## Key Business Questions Answered
1. What is the total revenue, average order value, and volume of pizzas sold?
2. Which days of the week and hours of the day drive the most orders?
3. Which pizza categories and sizes contribute the most to sales?
4. What are the top 5 best-selling and worst-selling pizzas by quantity?
5. What is the Future Course of Actions for the Business?

## KPIs at a Glance
| Metric | Value |
|---|---|
| Total Revenue | $817,847 |
| Average Order Value | $38.31 |
| Total Pizzas Sold | 49,573 |
| Total Orders | 21,349 |
| Avg Pizzas per Order | 2.32 |

## Key Findings from the analysis
### Peak Days & Hours
- **Busiest days:** Friday (3,538 orders) and Saturday (3,158 orders) drive the highest volume across the week consistently. 
- **Peak hours:** 12–1 PM (lunch rush) and 5–6 PM (dinner rush), with order volume dropping steeply after 9 PM

### Sales by Category & Size
- **Classic** pizzas lead all categories at 26.91% of total sales, followed closely by Supreme (25.46%)
- **Large** size dominates at 45.89% of sales which is over 4× times the share of any other size

### Best & Worst Selling Performers
- **Top sellers:** The Classic Deluxe Pizza (2,453 units) and The Thai Chicken Pizza (2,453 units) are both classic crowd-pleasers
- **Worst performer:** The Brie Carre Pizza (490 units) significantly underperforms compared to the next-lowest seller and needs to be evaluated

## SQL Analysis Highlights
- Revenue aggregation and KPI calculation
- Day-of-week and hourly sales trend extraction
- Pizzas Category and size breakdowns using window functions and percentage calculations
- Top/bottom sellers rankings using `ORDER BY` with `LIMIT`

## Recommendations
- **Staff up on Fridays and Saturdays**, particularly during the 12–1 PM and 5–6 PM windows, to handle peak order volume without affecting the overall service.
- **Promote Large pizzas** as the default size, which won't be an issue since they already account for nearly half of all sales and carry higher sales
- **Consider removing or reworking The Brie Carre Pizza** as with only 490 units sold (vs. 2,453 for the top seller), it occupies menu space that could be replaced by a other potential options
- **Launch a weekday promotion** targeting Sunday–Tuesday, the three slowest days, in order to ensure consistent weekly demand.
- **Double down on Classic and Chicken categories** for new product development as they drive the highest volume and have demonstrated strong repeat purchase behaviour.
