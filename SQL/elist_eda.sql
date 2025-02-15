-- ===============================
-- SALES PERFORMANCE QUERIES
-- ===============================

-- 1. Loyalty Program Performance by Region (Sales, AOV, Orders, Refunds)
WITH region_total_sales AS (
    SELECT 
        geo_lookup.region AS Region,
        SUM(orders.usd_price) AS total_region_sales
    FROM core.orders
    INNER JOIN core.customers ON orders.customer_id = customers.id
    JOIN core.geo_lookup ON customers.country_code = geo_lookup.country
    GROUP BY geo_lookup.region
)
SELECT 
    geo_lookup.region AS Region, 
    CASE
        WHEN customers.loyalty_program = 1 THEN 'Yes'
        ELSE 'No'
    END AS Subscriber,
    ROUND(SUM(orders.usd_price), 2) AS Sales, 
    ROUND(SUM(orders.usd_price) / MAX(region_total_sales.total_region_sales) * 100, 2) AS Percent_Sales,  
    ROUND(AVG(orders.usd_price), 2) AS AOV, 
    COUNT(orders.id) AS Orders, 
    COUNT(CASE WHEN refund_ts IS NOT NULL THEN 1 END) AS Refunds
FROM core.orders
INNER JOIN core.customers ON orders.customer_id = customers.id
JOIN core.geo_lookup ON customers.country_code = geo_lookup.country
JOIN core.order_status ON order_status.order_id = orders.id
JOIN region_total_sales ON geo_lookup.region = region_total_sales.Region 
GROUP BY customers.loyalty_program, geo_lookup.region
ORDER BY Sales DESC, geo_lookup.region;
-- Observation: Non-loyalty customers generate 63% of total sales, while loyalty members contribute 37%.

-- 2. Top 5 Countries by Sales Contribution
SELECT 
    DENSE_RANK() OVER(ORDER BY SUM(orders.usd_price) DESC) AS ranking,
    customers.country_code,
    ROUND(SUM(orders.usd_price), 2) AS Total_Revenue,
    ROUND(
        SUM(orders.usd_price) / (SELECT SUM(orders.usd_price) FROM core.orders) * 100, 2
    ) AS Percent_Total
FROM core.orders
JOIN core.customers ON orders.customer_id = customers.id
GROUP BY customers.country_code
ORDER BY ranking ASC;
-- Observation: The United States leads with 36% of total revenue.

-- ===============================
-- LOYALTY PROGRAM PERFORMANCE
-- ===============================

-- 3. Loyalty Program Performance (2019-2022)
WITH loyalty_rev AS (
    SELECT 
        EXTRACT(YEAR FROM purchase_ts) AS year,
        customers.loyalty_program,
        ROUND(SUM(orders.usd_price), 2) AS revenue
    FROM core.orders
    JOIN core.customers ON orders.customer_id = customers.id
    WHERE DATE(purchase_ts) BETWEEN '2019-01-01' AND '2022-12-31'
    GROUP BY customers.loyalty_program, EXTRACT(YEAR FROM purchase_ts)
    ORDER BY year ASC, customers.loyalty_program DESC
)
SELECT *, 
    ROUND(
        (revenue - LAG(revenue, 1) OVER(PARTITION BY loyalty_program ORDER BY year ASC, loyalty_program DESC))
        / LAG(revenue, 1) OVER(PARTITION BY loyalty_program ORDER BY year ASC, loyalty_program DESC)
        * 100, 2
    ) AS yoy_change
FROM loyalty_rev;
-- Observation: Loyalty revenue surged 760% in 2020, while non-loyalty grew 112%. Both segments saw declines post-2021.

-- ===============================
-- REFUNDS & COST ANALYSIS
-- ===============================

-- 4. Refund Cost & Overall Refund Rate
SELECT 
    ROUND(SUM(orders.usd_price), 2) AS refund_cost,
    ROUND(COUNT(refund_ts) / (SELECT COUNT(product_id) FROM core.orders) * 100, 2) AS refund_rate
FROM core.orders
JOIN core.customers ON orders.customer_id = customers.id
JOIN core.order_status ON orders.id = order_status.order_id
WHERE refund_ts IS NOT NULL;
-- Observation: Total refund cost is $1.7M, with an overall refund rate of 3.79%.

-- 5. Most Frequently Refunded Products
SELECT 
    CASE 
        WHEN orders.product_name LIKE '%gaming monitor' THEN '27in 4K Gaming Monitor'
        ELSE INITCAP(orders.product_name)
    END AS product_name,
    SUM(CASE WHEN refund_ts IS NOT NULL THEN 1 END) AS Refunds,
    ROUND(SUM(CASE WHEN refund_ts IS NOT NULL THEN 1 ELSE 0 END) / COUNT(*), 4) * 100 AS Refund_Rate,
    ROUND(SUM(orders.usd_price), 2) AS Revenue, 
    ROUND(SUM(orders.usd_price) / (SELECT SUM(orders.usd_price) FROM core.orders) * 100, 2) AS Revenue_Percent
FROM core.orders
JOIN core.order_status ON orders.id = order_status.order_id
GROUP BY product_name
ORDER BY Revenue_Percent DESC, Refund_Rate DESC;
-- Observation: Apple AirPods and 27-inch 4K Gaming Monitor have the highest refunds but also the highest revenue.

-- ===============================
-- PRODUCT PERFORMANCE
-- ===============================

-- 6. Most Frequently Purchased Product by Region
WITH product_ranking AS (
    SELECT
        DENSE_RANK() OVER(PARTITION BY region ORDER BY COUNT(orders.product_name) DESC) AS ranking,
        orders.product_name, 
        geo_lookup.region,
        COUNT(orders.product_name) AS Frequency
    FROM core.orders
    JOIN core.customers ON orders.customer_id = customers.id
    JOIN core.geo_lookup ON customers.country_code = geo_lookup.country
    GROUP BY orders.product_name, geo_lookup.region
)
SELECT 
    product_name, 
    region, 
    Frequency
FROM product_ranking
WHERE ranking = 1
ORDER BY Frequency DESC, product_name ASC, region ASC;
-- Observation: Apple AirPods are the top-selling product in all regions.

-- ===============================
-- CUSTOMER BEHAVIOR ANALYSIS
-- ===============================

-- 7. Quarterly Trends for AOV and Revenue in North America
WITH year_quarter_sales AS (
    SELECT
        EXTRACT(YEAR FROM orders.purchase_ts) AS year,
        EXTRACT(QUARTER FROM orders.purchase_ts) AS quarter,
        ROUND(SUM(orders.usd_price), 2) AS Revenue,
        ROUND(AVG(orders.usd_price), 2) AS AOV
    FROM core.orders
    JOIN core.customers ON orders.customer_id = customers.id
    JOIN core.geo_lookup ON customers.country_code = geo_lookup.country
    WHERE geo_lookup.region = 'NA'
    GROUP BY 
        EXTRACT(YEAR FROM orders.purchase_ts),
        EXTRACT(QUARTER FROM orders.purchase_ts)
)
SELECT
    year,
    quarter,
    Revenue,
    ROUND(
        (Revenue - LAG(Revenue, 1) OVER (ORDER BY year ASC, quarter ASC)) / 
        LAG(Revenue, 1) OVER (ORDER BY year ASC, quarter ASC) * 100, 2
    ) AS Revenue_Quarterly_Change,
    AOV,
    ROUND(
        (AOV - LAG(AOV, 1) OVER (ORDER BY year ASC, quarter ASC)) / 
        LAG(AOV, 1) OVER (ORDER BY year ASC, quarter ASC) * 100, 2
    ) AS AOV_Quarterly_Change
FROM year_quarter_sales
ORDER BY year ASC, quarter ASC;
-- Observation: Revenue and AOV have been consistently declining since Q2 2021, dropping below pre-pandemic levels by 2022.

-- 8. Time to First Purchase for New Customers
WITH first_customer_order AS (
    SELECT 
        customers.id, 
        DATE_DIFF(MIN(orders.purchase_ts), MIN(customers.created_on), DAY) AS first_purchase
    FROM core.orders
    JOIN core.customers ON orders.customer_id = customers.id
    GROUP BY customers.id
    HAVING first_purchase > 0
)
SELECT ROUND(AVG(first_purchase), 0) AS average_first_purchase
FROM first_customer_order;
-- Observation: New customers take an average of 76 days to make their first purchase.

-- 9. Does the timing of the first purchase by customers change over the years?
WITH first_purchase_ever AS (
    SELECT 
        customers.id, 
        customers.loyalty_program,
        MIN(orders.purchase_ts) as date_of_first_purchase,
        MIN(customers.created_on) as account_creation_date
    FROM core.orders
    JOIN core.customers ON orders.customer_id = customers.id
    WHERE orders.purchase_ts > customers.created_on
    GROUP BY customers.id, customers.loyalty_program
)
SELECT 
    loyalty_program, 
    EXTRACT(YEAR FROM date_of_first_purchase) AS year, 
    ROUND(AVG(DATE_DIFF(date_of_first_purchase, account_creation_date, DAY)), 0) AS first_purchase
FROM first_purchase_ever
GROUP BY loyalty_program, EXTRACT(YEAR FROM date_of_first_purchase)
ORDER BY year ASC;
-- The average days between account creation and the first purchase remains relatively consistent across each year, hovering around the mid-70s days.
-- Loyal customers make their first purchase in 69-79 days, while non-loyal customers take 78-90 days.