# Background
Founded in 2017, ShopNest is a leading global e-commerce platform specializing in a wide array of high-quality electronics. Initially focused on online sales, the company has swiftly expanded its reach to customers worldwide. With a diverse product offering that includes sought-after brands like Apple, Samsung, Lenovo, and Bose, ShopNest has established itself as a trusted name for tech enthusiasts. The company utilizes various marketing strategies, including email campaigns, search engine optimization (SEO), and affiliate networks, to grow its customer base. As ShopNest continues to scale, it remains dedicated to providing the latest innovations and ensuring a superior customer experience.

<details>
  <summary>Goals</summary>

  - The primary objective is to conduct a comprehensive analysis of key business metrics, including sales, average order value (AOV), order trends, and refund trends, spanning the years 2019 to 2022.
  - Additionally, the analysis will focus on evaluating the performance of the loyalty program, regional performance, marketing effectiveness, and platform performance over the specified period.
  - The project involves several key steps:
      - Data cleaning to ensure accuracy and consistency across the various datasets.
      - Organizing and presenting the cleaned data in an interactive dashboard for effective visualization and analysis.
      - A thorough review of the findings and identification of actionable insights to inform business strategy and optimize performance moving forward.
</details>
<details>
  <summary>Stakeholder Questions</summary>

  - **What were the overall trends in sales during this time?**
    - What were the monthly and yearly sales numbers for 2019 and 2022? How about AOV and total sales in dollars?
    - How did these trends vary by product and geography?
    - Which months and products performed the best and worst? Is there any seasonality?

  - **Should we continue using the loyalty program?**
    - What was the monthly number of sales and AOV for customers in the loyalty program versus those not in the program?
    - What is the sales split by region for customers in the loyalty program compared to those not in the program?
    - How do these trends compare between recent months and previous months?

  - **What was our refund rate?**
    - Which products/brands had the highest refund rates?
    - Which products/brands had the highest refunds?
    - How much did we spend on refunds?

  - **What was the most popular product in each region?**
    - What sales portion did each product have for the region?

  - **How long does it take for new users to make their first purchase per year?**
    - Is there a difference with Loyal vs Non Loyal Users?
</details>

<details>
  <summary>Tools Used</summary>
  
  - SQL: Script can be found here.
  - Excel: Workbook can be found here.
  - Tableau: Dashboard can be found here.
</details>

# Entity Relation Diagram

ShopNets database consists of 108,127 records and four tables: orders, customers, geo_lookup, and order_status.

  ![Image Alt](https://github.com/EliasPotagas/ShopNest/blob/dfbf9ebf2af0840c04e10c4037eb0cfaa127f4a3/ERD.png)

# Dashboard 

The interactive dashboard can be found in Tableau Public here. This dashboard enables users to filter by customer region, year, and loyalty program focusing on sales, product, and marketing metrics. 

![Image Alt](https://github.com/EliasPotagas/ShopNest/blob/ab076e8e5909a1c6690d1c3ec7d984469bc62820/Dashboard_v2.png)

# Executive Summary 

Total Overall Sales for the period Jan 1st. 2019 - Dec 31st. 2022 was $28M with 108k total orders. Companies AOV was $260 and our overall refund rate was 3.79%%
![Image Alt](https://github.com/EliasPotagas/ShopNest/blob/7e1bd354f58975c23f26e4080978c00d44e56278/Overall_Sales.png)

- In 2020 we saw the highest growth in Revenue accumulating $10.2M a near 300% increase from previous year, a 31% increase in AOV to $300 and a 100% increase in orders.
- This can be attributed to the pandemic lockdowns and demand for electronic products during COVID-19 lockdowns.
- Since 2020 however, when the pandemic polciies began easing up we started to get see a 10% decline in revenue and 15% in AOV.





























# Loyalty Program
  - AOV + Sales Graph
  - Loyalty Program Sales Slice per region. How was its performance overall?
  - How much has our Loyalty Program grown? Are we increasing our subscribers? We were sharply increasing our Subscribers until 2022 is when we saw a decline in our subscribers but program still increased by 623% overall from 2019 to 2022.
# Product Performance
  - Refunds (Total refunds, refund rate, overall cost)
  - Sales (AOV, Revenue)
  - Slice of total sales per product (per year and overall)
# Geographical Trends
  - Sales by country/region. Who made up the most
  - most frequent product purchased
# Sales Trends
  - Seasonal Trends
  - YoY Trends
  - -When did users make their first purchase? Was there a change depending on the year?
# Insights and Recommendations

