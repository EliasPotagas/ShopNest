-- ===============================
-- SALES PERFORMANCE QUERIES
-- ===============================

-- 1. Loyalty Program Performance by Region (Sales, AOV, Orders, Refunds)
WITH region_total_sales AS (
    SELECT 
        geo_lookup.region AS Region,
        SUM(orders.usd_price) AS total_region_sales
    FROM core.orders
    LEFT JOIN core.customers ON orders.customer_id = customers.id
    LEFT JOIN core.geo_lookup ON customers.country_code = geo_lookup.country
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
LEFT JOIN core.customers ON orders.customer_id = customers.id
LEFT JOIN core.geo_lookup ON customers.country_code = geo_lookup.country
LEFT JOIN core.order_status ON order_status.order_id = orders.id
LEFT JOIN region_total_sales ON geo_lookup.region = region_total_sales.Region 
GROUP BY customers.loyalty_program, geo_lookup.region
ORDER BY Sales DESC, geo_lookup.region;

-- 2. Top 5 Countries by Sales Contribution
SELECT 
    DENSE_RANK() OVER(ORDER BY SUM(orders.usd_price) DESC) AS ranking,
    customers.country_code,
    ROUND(SUM(orders.usd_price), 2) AS Total_Revenue,
    ROUND(
        SUM(orders.usd_price) / (SELECT SUM(orders.usd_price) FROM core.orders) * 100, 2
    ) AS Percent_Total
FROM core.orders
LEFT JOIN core.customers ON orders.customer_id = customers.id
GROUP BY customers.country_code
ORDER BY ranking ASC;

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
    LEFT JOIN core.customers ON orders.customer_id = customers.id
    WHERE DATE(purchase_ts) BETWEEN '2019-01-01' AND '2022-12-31'
    GROUP BY customers.loyalty_program, EXTRACT(YEAR FROM purchase_ts)
)
SELECT *, 
    ROUND(
        (revenue - LAG(revenue, 1) OVER(PARTITION BY loyalty_program ORDER BY year ASC)) /
        LAG(revenue, 1) OVER(PARTITION BY loyalty_program ORDER BY year ASC) * 100, 2
    ) AS yoy_change
FROM loyalty_rev;

-- ===============================
-- REFUNDS & COST ANALYSIS
-- ===============================

-- 4. Refund Cost & Overall Refund Rate
SELECT 
    ROUND(SUM(orders.usd_price), 2) AS refund_cost,
    ROUND(COUNT(refund_ts) / (SELECT COUNT(product_id) FROM core.orders) * 100, 2) AS refund_rate
FROM core.orders
LEFT JOIN core.order_status ON orders.id = order_status.order_id
WHERE refund_ts IS NOT NULL;

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
LEFT JOIN core.order_status ON orders.id = order_status.order_id
GROUP BY product_name
ORDER BY Revenue_Percent DESC, Refund_Rate DESC;

-- 6. Refund Rate and Count for Each Product Overall
SELECT 
    COUNT(*) AS refunds_issued, 
    ROUND(COUNT(*) / (SELECT COUNT(*) FROM core.order_status) * 100,2) AS refund_rate
FROM core.order_status
WHERE order_status.refund_ts IS NOT NULL;

-- ===============================
-- PRODUCT PERFORMANCE
-- ===============================

-- 7. Most Frequently Purchased Product by Region
WITH product_ranking AS (
    SELECT
        DENSE_RANK() OVER(PARTITION BY region ORDER BY COUNT(orders.product_name) DESC) AS ranking,
        orders.product_name, 
        geo_lookup.region,
        COUNT(orders.product_name) AS Frequency
    FROM core.orders
    LEFT JOIN core.customers ON orders.customer_id = customers.id
    LEFT JOIN core.geo_lookup ON customers.country_code = geo_lookup.country
    GROUP BY orders.product_name, geo_lookup.region
)
SELECT 
    product_name, 
    region, 
    Frequency
FROM product_ranking
WHERE ranking = 1
ORDER BY Frequency DESC, product_name ASC, region ASC;

-- 8. Most Popular Product by Region
WITH region_orders AS (
    SELECT 
        geo_lookup.region,
        CASE
            WHEN orders.product_name = '27in"" 4k gaming monitor' THEN '27in 4K Gaming Monitor'
            ELSE INITCAP(orders.product_name)
        END AS product,
        COUNT(orders.id) AS frequency
    FROM core.orders
    LEFT JOIN core.customers ON orders.customer_id = customers.id
    LEFT JOIN core.geo_lookup ON customers.country_code = geo_lookup.country
    GROUP BY geo_lookup.region, product
),
ranked_products AS (
    SELECT *, 
        DENSE_RANK() OVER(PARTITION BY region ORDER BY frequency DESC) AS ranking
    FROM region_orders
)
SELECT * 
FROM ranked_products 
WHERE ranking = 1;

-- ===============================
-- CUSTOMER BEHAVIOR ANALYSIS
-- ===============================

-- 9. Quarterly Trends for AOV and Revenue in North America
WITH year_quarter_sales AS (
    SELECT
        EXTRACT(YEAR FROM orders.purchase_ts) AS year,
        EXTRACT(QUARTER FROM orders.purchase_ts) AS quarter,
        ROUND(SUM(orders.usd_price), 2) AS Revenue,
        ROUND(AVG(orders.usd_price), 2) AS AOV
    FROM core.orders
    LEFT JOIN core.customers ON orders.customer_id = customers.id
    LEFT JOIN core.geo_lookup ON customers.country_code = geo_lookup.country
    WHERE geo_lookup.region = 'NA'
    GROUP BY year, quarter
)
SELECT
    year,
    quarter,
    Revenue,
    ROUND(
        (Revenue - LAG(Revenue, 1) OVER (ORDER BY year, quarter)) / 
        LAG(Revenue, 1) OVER (ORDER BY year, quarter) * 100, 2
    ) AS Revenue_Quarterly_Change,
    AOV,
    ROUND(
        (AOV - LAG(AOV, 1) OVER (ORDER BY year, quarter)) / 
        LAG(AOV, 1) OVER (ORDER BY year, quarter) * 100, 2
    ) AS AOV_Quarterly_Change
FROM year_quarter_sales
ORDER BY year, quarter;

-- 10. Time to First Purchase for New Customers
WITH first_customer_order AS (
    SELECT 
        customers.id, 
        DATE_DIFF(MIN(orders.purchase_ts), MIN(customers.created_on), DAY) AS first_purchase
    FROM core.orders
    LEFT JOIN core.customers ON orders.customer_id = customers.id
    GROUP BY customers.id
    HAVING first_purchase > 0
)
SELECT ROUND(AVG(first_purchase), 0) AS average_first_purchase
FROM first_customer_order;

-- 11. Average Time to Deliver for Website Purchases in 2022 or Mobile Purchases in Any Year
SELECT 
    geo_lookup.region, 
    ROUND(AVG(DATE_DIFF(order_status.delivery_ts, order_status.purchase_ts, DAY)),2) AS avg_time_to_delivery
FROM core.orders
LEFT JOIN core.customers ON orders.customer_id = customers.id
LEFT JOIN core.geo_lookup ON customers.country_code = geo_lookup.country
LEFT JOIN core.order_status ON orders.id = order_status.order_id
WHERE 
    (EXTRACT(YEAR FROM orders.purchase_ts) = 2022 AND orders.purchase_platform = 'website')
    OR (orders.purchase_platform = 'mobile') 
GROUP BY geo_lookup.region
ORDER BY avg_time_to_delivery DESC;
