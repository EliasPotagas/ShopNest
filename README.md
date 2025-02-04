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

The interactive dashboard can be found in Tableau Public here. 

![Image Alt](https://github.com/EliasPotagas/ShopNest/blob/ab076e8e5909a1c6690d1c3ec7d984469bc62820/Dashboard_v2.png)

# Executive Summary 

Total overall sales from January 1st, 2019 to December 31st, 2022 were $28M, with 108K total orders. The company’s AOV was $260, and the overall refund rate stood at 5.04%.

![Image Alt](https://github.com/EliasPotagas/ShopNest/blob/7e1bd354f58975c23f26e4080978c00d44e56278/Overall_Sales.png)

  - In 2020, we experienced exceptional growth, surpassing expectations with a $10.2M increase in revenue (+300% YoY), AOV rising to $300 (+81% YoY), and a total orders reaching 11k (+86% YoY).
  - However since the beginning of 2021 we saw a gradual decline across metrics with revenue down 11% and our AOV 15% despite an orders increase of 6%. This downward trend continued in 2022 with a 46% decline in revenue with other metrics following a similar trajectory.
  - Our Loyalty Program has been showing strong performance. Initially non-subscribers contributed the majority of revenue and orders. However, between Q1 2021 and Q3 2022, subscriber base grew significantly, surpassing non-subscribed users across key metrics.
  - Apple products accounted for 50% of total sales, with the iPhone having the lowest sales volume but a high AOV. Targeted marketing for high-AOV, low-volume products through bundle promotions could drive significant revenue growth.













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

