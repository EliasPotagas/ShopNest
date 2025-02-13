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

<p align="center">
  <img src="https://github.com/EliasPotagas/ShopNest/blob/227c8b85f038addb5bf805477b8c61dd5085b62d/Executive_summary_2.png" alt="Image Alt">
</p>

Total overall sales from January 1st, 2019 to December 31st, 2022 were $28M, with 108K total orders. The company’s AOV was $260, and the overall refund rate stood at 5.04%.

  - Covid Spike: In 2020, the company saw a significant surge across all key metrics. Revenue soared by 160% to $10M, while units sold doubled to 34K. The AOV also rose from $230 to $300. MacBooks led the growth, with sales skyrocketing by 383%, making them a major contributor to the revenue spike. March recorded the highest percentage increase in sales, rising by 50%, coinciding with the onset of COVID-19 lockdowns.

  - Sales Decline: December 2020 marked the peak across all key metrics, but since then, the company has struggled to sustain those levels, experiencing a downturn. This declne can be attributed to the implementation of return-to-office policies and reduced consumer need for electronics, as many had already made significant purchases the previous year. Sales declined by 10% in 2021 and further plummeted by 46% in 2022, with other metrics following a similar downward trajectory.
  
  - Program Performance: The Loyalty Program has shown strong performance and continues to demonstrate promising growth. Since its inception, it has expanded significantly, increasing the share of total sales from 11% in 2019 to 50% by 2021—a level maintained in 2022. Furthermore, the AOV for loyalty members has been gradually increasing, while non-member AOV has declined. To capitalize on this success, the program should continue and be promoted more actively to users.

  - Product Performance: Sony’s gaming monitor was the top performer, contributing 35% of total sales, while Apple products led as the top brand, accounting for 50% of sales. The overall refund rate stands at 5.04%, with Apple products making up 70% of total refunds, amounting to $1.2M in refund costs. Additionally, Laptops had the highest refund rate at 12%, highlighting a need for quality assurance reviews and product assessments to reduce return rates.


# Sales Trends
![Image Alt](https://github.com/EliasPotagas/ShopNest/blob/912f6dd272da51bdd74be7e148cb1f726614e397/Executive_summary.png)
<table>
  <tr>
    <td style="background-color: #222; color: white; width: 50%; vertical-align: top;">
      <h2 style="margin: 0; padding: 0; display: inline-block;">Sales</h2>
      <ul>
        <li><b>Entire Period:</b> Average monthly revenue of <b>$585K</b>, with a <b>0.6% growth rate</b>.</li>
        <li><b>Pandemic Surge:</b> Sales jumped <b>160%</b> to <b>$10M</b>, peaking at <b>$1.25M in December</b>.</li>
        <li><b>Post-Pandemic:</b> Sales fell <b>10% in 2021</b> and <b>46% in 2022</b>, dropping to <b>$178K</b> in October marking a new company low.</li>
      </ul>
      <h2 style="margin: 10px 0 0 0; padding: 0; display: inline-block;">AOV</h2>
      <ul>
        <li><b>Entire Period:</b> AOV averaged <b>$253</b> with <b>0.01% growth rate</b>.</li>
        <li><b>Peak & Drop:</b> AOV hit <b>$321 in October 2020</b> but declined to <b>$217 by October 2022</b>.</li>
        <div style="display: none;"> &nbsp;</div>
        <div style="display: none;"> &nbsp;</div>
        <div style="display: none;"> &nbsp;</div>
      </ul>
    </td>
    <td style="background-color: #222; color: white; width: 50%; vertical-align: top;">
      <h2 style="margin: 0; padding: 0; display: inline-block;">Orders</h2>
      <ul>
        <li><b>Entire Period:</b> Average <b>2.2K orders per month</b>, with a <b>0.72% growth rate</b>.</li>
        <li><b>Pandemic Peak:</b> Orders peaked at <b>4K in December 2020</b>.</li>
        <li><b>Post-Pandemic Drop:</b> Fell to <b>825 in October 2022</b>, a <b>50% decline</b> from 2019.</li>
      </ul>
      <h2 style="margin: 10px 0 0 0; padding: 0; display: inline-block;">Refunds</h2>
      <ul>
        <li><b>Entire Period:</b> Average <b>112 refunds per month</b>, growing <b>0.76%</b>.</li>
        <li><b>Pandemic Spike:</b> Peaked at <b>369 in December 2020</b>.</li>
        <li><b>Data Gap:</b> Tracking refund issues occurred after <b>August 2021</b>.</li>
      </ul>
    </td>
  </tr>
</table>



# Loyalty Program
  ![Image Alt](https://github.com/EliasPotagas/ShopNest/blob/38e5d3d380b3b7b0be9e736b037d3c547ce39b47/loyalty_dashboard.png)
The program, launched in 2019 to incentivize more frequent purchases through points-based rewards and discount offers and is now undergoing a four-year performance evaluation to determine whether it should be continued.
  - Sales Growth: The Loyalty Program was initially contributing a modest 11% of total sales, while non-members accounted for 89%. However, by 2021, members' contribution to total revenue had risen significantly to 50%, a level that was sustained in 2022.
  - AOV Growth: The AOV for loyalty members has been steadily rising highlighting the effectiveness of our loyalty program perks driving higher spending among members, whereas non-members appear less inclined to spend due to the absence of these rewards and benefits.
  - Revenue Contribution: Between Q4 2020 and Q3 2022, loyalty members placed most orders, with a 10% higher order rate and rising AOV. While non-members generated $17 million in sales (2019–2022) versus $10 million from members, loyalty revenue is on track to surpass non-members, underscoring the program’s growing impact.
  - Insight: Given the positive trajectory in order volume, AOV, and overall sales among loyalty members, it is recommended to increase promotion and marketing efforts for the Loyalty Program to attract more users to boost overall AOV.






# Geographical Trends
  ![Image Alt](https://github.com/EliasPotagas/ShopNest/blob/a1f2bc748ed794181916e74a1ff5cde28e89a752/regiona_dashboard.png)
ShopNest serves customers in 194 countries across four global regions: North America (NA), Europe, Middle East & Africa (EMEA), Asia-Pacific (APAC), and Latin America (LATAM).
  - Top Market Contributor: The top 10 best-performing countries accounted for 80% of total revenue and 71% of total orders, with the United States leading at 47% of total sales ($13.3M) and an average order value (AOV) of $262. The highest sales contributor in the U.S. was the Sony gaming monitor contributing 35% of countries sales.
  - Highest AOV: Japan recorded the highest AOV at $395, driven by strong laptop sales, which contributed 50% of the region’s total revenue. This indicates a high consumer preference for premium tech products, presenting an opportunity to expand laptop promotions for Loyalty members to utilize.
  - Loyalty Program Impact: Across all regions, Loyalty Program members contributed 40% of sales, reinforcing its global effectiveness and continued growth as its benefits gain traction.



# Brand Trends
![Image Alt](https://github.com/EliasPotagas/ShopNest/blob/265eab5c076a2d574bb8018a00938cab75aa6b3e/Brand_performance.png)
- **Apple’s Market Dominance:** Apple products contributed **50.6% of total sales**, generating **$14 million** in revenue. They accounted for **48% of total orders** with an **AOV of $271**, remaining the top sales driver across all **four regions** and consistently leading each year.  

- **Samsung’s Low Revenue Contribution:** Despite making up **30% of total orders**, Samsung products contributed only **3% of total sales** due to a significantly lower **AOV of $28**.  

- **Premium Products:** The strong sales performance of **Apple and Sony** highlights consumer demand and interest in **premium, high-value products**.  


## Products
![Image Alt](https://github.com/EliasPotagas/ShopNest/blob/265eab5c076a2d574bb8018a00938cab75aa6b3e/product_table.png)

- **Highest Order Volume:** Apple AirPods led in order count with **48K orders (45% of total orders)**, generating **$7.8M in sales (28% of total revenue)** with an **AOV of $160**.  

- **Top Product by Revenue:** Sony’s Gaming Monitor was the highest revenue-generating product, contributing **35% of total revenue**, with an **AOV of $420**.  

- **Laptop Demand & High AOV:** Laptops accounted for **33% of total sales ($9.5M)**. Despite having the **lowest order volume**, they had the **highest AOV**, averaging **$1.3K per order**.
- **Least Popular Product:** Bose Headphones had the weakest performance, recording just **3K units sold** and **27 total orders**, making them the **least desirable product** in our catalog.
- **Apple iPhone’s Underperformance:** Despite high demand for Apple products, the iPhone was the **worst-performing product**, with only **288 units sold**, generating **$213K in sales**.  


### Recommendations:
- Samsung Products: While demand is high, introducing product bundles with higher AOV items could drive increased revenue and profitability by encouraging larger purchases.
- Apple iPhone: With only 288 orders but a high AOV of $740, targeted Loyalty Program promotions with exclusive discounts for existing Apple consumers could boost sales, strengthen Loyalty Program engagement, and drive a notable increase in total revenue.
- Removing the Bose Headphones from the website due to their poor performance and lack of resonance with customers would create space for a more appealing and higher-performing product.




## Refunds
<p align="center">
  <img src="https://github.com/EliasPotagas/ShopNest/blob/0ffbddf33d55fbaec22057b26aa197b82d60fe02/brand_refunds_v3.png" alt="Image Alt">
</p>
  
- The overall **refund rate** stood at **5.04%**, with **5,379 refunds** issued out of **108K orders**, totaling **$1.7M** in refund costs.
- **Apple products** accounted for the majority of refunds (**3,111**), with a **5.91% return rate**, totaling **$1.2M** in refund costs, representing **70%** of all refunds issued.
- **Apple AirPods** accounted for **83%** of all Apple product refunds, making them the **primary driver of returns**. Meanwhile, **MacBook laptops** had the **highest return rate** among Apple products at **11.6%**.
- **Lenovo’s Thinkpad Laptop** had the **highest overall refund rate** at **12%**, exceeding all other product categories.

### Recommendation: 
  - Conduct a quality assurance review and consumer feedback analysis to identify the key reasons behind the high return rates for the ThinkPad and Apple laptops and implement necessary improvements to reduce refunds.

# Insights and Recommendations
