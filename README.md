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

![Image Alt](https://github.com/EliasPotagas/ShopNest/blob/4e3af273615ec338ad363a7f2bf1595f29bf59df/Overall_Sales_Growth.png)

  - In 2020, we experienced exceptional growth, surpassing expectations with a $10.2M increase in revenue (+300% YoY), AOV rising to $300 (+81% YoY), and a total orders reaching 11k (+86% YoY).
  - However since the beginning of 2021 we saw a gradual decline across metrics with revenue down 11% and our AOV 15% despite an orders increase of 6%. This downward trend continued in 2022 with a 46% decline in revenue with other metrics following a similar trajectory.
  - Our Loyalty Program has been showing strong performance. Initially non-subscribers contributed the majority of revenue and orders. However, between Q1 2021 and Q3 2022, subscriber base grew significantly, surpassing non-subscribed users across key metrics.
  - Apple products accounted for 50% of total sales, with the iPhone having the lowest sales volume but a high AOV. Targeted marketing for high-AOV, low-volume products through bundle promotions could drive significant revenue growth.



# Loyalty Program
  ![Image Alt](https://github.com/EliasPotagas/ShopNest/blob/08789661e3d166a6d48f96b0ad707898d5695051/loyalty_program_2.png)
The program, launched in 2019 to incentivize more frequent purchases through points-based rewards and discount offers and is now undergoing a four-year performance evaluation to determine whether it should be continued.
  - Sales Growth: The Loyalty Program was initially contributing a modest 11% of total sales, while non-members accounted for 89%. However, by 2021, members' contribution to total revenue had risen significantly to 50%, a level that was sustained in 2022.
  - AOV Growth: The AOV for loyalty members has been steadily rising highlighting the effectiveness of our loyalty program perks driving higher spending among members, whereas non-members appear less inclined to spend due to the absence of these rewards and benefits.
  - Revenue Contribution: Between Q4 2020 and Q3 2022, loyalty members placed most orders, with a 10% higher order rate and rising AOV. While non-members generated $17 million in sales (2019–2022) versus $10 million from members, loyalty revenue is on track to surpass non-members, underscoring the program’s growing impact.
  - Insight: Given the positive trajectory in order volume, AOV, and overall sales among loyalty members, it is recommended to increase promotion and marketing efforts for the Loyalty Program to attract more users to boost overall AOV.






# Geographical Trends
  ![Image Alt](https://github.com/EliasPotagas/ShopNest/blob/5911e3e67ee3c0d57b0f2a08f1b3b8c053982a08/Country_Sales.png)
ShopNest serves customers in 194 countries across four global regions: North America (NA), Europe, Middle East & Africa (EMEA), Asia-Pacific (APAC), and Latin America (LATAM).
  - Top Market Contributor: The top 10 best-performing countries accounted for 80% of total revenue and 71% of total orders, with the United States leading at 47% of total sales ($13.3M) and an average order value (AOV) of $262. The highest sales contributor in the U.S. was the Sony gaming monitor contributing 35% of countries sales.
  - Highest AOV: Japan recorded the highest AOV at $395, driven by strong laptop sales, which contributed 50% of the region’s total revenue. This indicates a high consumer preference for premium tech products, presenting an opportunity to expand laptop promotions for Loyalty members to utilize.
  - Loyalty Program Impact: Across all regions, Loyalty Program members contributed 40% of sales, reinforcing its global effectiveness and continued growth as its benefits gain traction.



# Product Trends
## Brands
![Image Alt](https://github.com/EliasPotagas/ShopNest/blob/265eab5c076a2d574bb8018a00938cab75aa6b3e/Brand_performance.png)

## Products
![Image Alt](https://github.com/EliasPotagas/ShopNest/blob/265eab5c076a2d574bb8018a00938cab75aa6b3e/product_table.png)


## Sales
![Image Alt](https://github.com/EliasPotagas/ShopNest/blob/ecb02a17ce3206e107610003f7fef65da51e91e8/test3.png)

  - Sales Leader: Apple products led in sales, generating $14M in revenue, accounting for 48% of total orders, with an AOV of $271, making it the dominant sales contributor across all four regions.
  - Highest Order Volume: Apple AirPods were the best-performing product in terms of order count, with 48K orders (45% of total orders), generating $7.8M in sales (28% of total revenue) and an AOV of $160.
  - Top Product: Sony’s Gaming Monitor was the top-performing product by revenue, contributing 35% of total revenue, with an AOV of $420.
  - Underperforming Brand: Despite Samsung products making up 30% of total orders, they only accounted for 3% of total sales, due to a low AOV of $28.
### Recommendations:
- Samsung Products: While demand is high, introducing product bundles with higher AOV items could drive increased revenue and profitability by encouraging larger purchases.
- Apple iPhone: With only 288 orders but a high AOV of $740, targeted Loyalty Program promotions with exclusive discounts for existing Apple consumers could boost sales, strengthen Loyalty Program engagement, and drive a notable increase in total revenue.


## Refunds
![Image Alt](https://github.com/EliasPotagas/ShopNest/blob/0ffbddf33d55fbaec22057b26aa197b82d60fe02/brand_refunds_v3.png)
  
  - The overall refund rate stood at 5.04%, with 5,379 refunds issued out of 108K orders, totaling $1.7M in refund costs.
  - Apple products accounted for the majority of refunds (3,111), with a 5.91% return rate, totaling $1.2M in refund costs, representing 70% of all refunds issued.
  - Apple AirPods accounted for 83% of all Apple product refunds, making them the primary driver of returns. Meanwhile, MacBook laptops had the highest return rate among Apple products at 11.6%.
  - Lenovo’s Thinkpad Laptop had the highest overall refund rate at 12%, exceeding all other product categories.
### Recommendation: 
  - Conduct a quality assurance review and consumer feedback analysis to identify the key reasons behind the high return rates, particularly for ThinkPad and Apple laptops, and implement necessary improvements to reduce refunds.





# Sales Trends
![Image Alt](https://github.com/EliasPotagas/ShopNest/blob/990a627492be5e6a8befdc41491ad8f417dd8427/sales_graph_3.png)
  - Seasonal Trends
![Image ALt](https://github.com/EliasPotagas/ShopNest/blob/56a708c71e03e3e1d4d1e2bde1ee48dafbb07fe4/Seasonal_table_2.png)


  - -When did users make their first purchase? Was there a change depending on the year?
# Insights and Recommendations


# Summary 
- Since its launch in 2019, the Loyalty Program has significantly expanded, growing from 11% to 50% of total sales by 2021, a level sustained in 2022. Additionally, AOV for loyalty members has been steadily increasing, highlighting the effectiveness of the program's perks in driving higher spending. Expanding promotions could further boost participation and overall revenue.

Geographical Sales Insights: The U.S. remains the dominant market, contributing 47% of total sales ($13.3M), while Japan leads in AOV at $395, driven by premium laptop sales. Loyalty members account for 40% of global sales, reinforcing the program’s effectiveness.

Product Performance Trends: Apple products lead in sales ($14M, 48% of total orders), with AirPods dominating order volume (48K orders, $7.8M in sales). Sony’s Gaming Monitor is the top revenue generator (35% of total revenue, AOV of $420), while Samsung struggles with profitability despite high order volume.

Refund Analysis & Recommendations: The overall refund rate stands at 5.04%, with Apple products contributing 70% of total refunds ($1.2M), primarily due to AirPods (83% of Apple refunds). Lenovo’s ThinkPad Laptop has the highest refund rate (12%), necessitating quality assurance reviews and targeted product improvements to reduce return rates.
