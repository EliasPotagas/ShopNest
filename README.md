# Background
Founded in 2017, ShopNest is a leading global e-commerce platform specializing in a wide array of high-quality electronics. Initially focused on online sales, the company has swiftly expanded its reach to customers worldwide. With a diverse product offering that includes sought-after brands like Apple, Samsung, Lenovo, and Bose, ShopNest has established itself as a trusted name for tech enthusiasts. The company utilizes various marketing strategies to grow its customer base. As ShopNest continues to scale, it remains dedicated to providing the latest innovations and ensuring a superior customer experience.

<details>
  <summary>Goals</summary>

   **ShopNest** has gathered extensive data on key business metrics, including **sales performance, average order value (AOV), order trends, refunds, loyalty program engagement, regional sales, and marketing effectiveness**. However, this data remains largely **unrefined**, limiting its potential to drive **strategic decision-making and business growth**. By analyzing these metrics, **ShopNest** can gain a deeper understanding of **customer behavior, operational efficiencies, and market trends**.

   The goals are to **focus on cleaning, organizing, and visualizing** the data to uncover meaningful insights that support teams across **finance, sales, product, and marketing**. By leveraging **interactive dashboards and data-driven analysis**, the goal is to **optimize business strategies, enhance customer engagement, and improve overall performance**, ensuring **continued growth in the competitive e-commerce landscape**.
</details>

<details>
  <summary>Stakeholder Questions</summary>

  - **What were the overall trends in sales during this time?**

  - **Should we continue using the loyalty program?**

  - **What was our refund rate?**

  - **How well did our products perform?**

</details>

<details>
  <summary>Tools Used</summary>
  
  - **SQL**: Script can be found here.
  - **Excel**: Workbook can be found here.
  - **Tableau**: Dashboard can be found here.
    
</details>

# Executive Summary

<p align="center">
  <img src="https://github.com/EliasPotagas/ShopNest/blob/c45ae66720e87c17fa2226ecf2de265001b84f1f/Pictures/Executive_dashboard.png" alt="Image Alt">
</p>

**Total overall sales** from **January 1st, 2019 to December 31st, 2022** were **$28M**, with **108K total orders**. The company’s **AOV** was **$260**, and the overall **refund rate** stood at **5.04%**.

- **Covid Spike**: In **2020**, the company saw a significant surge across all key metrics. **Revenue** soared by **160%** to **$10M**, while **units sold** doubled to **34K**. The **AOV** also rose from **$230** to **$300**. **MacBooks** led the growth, with sales skyrocketing by **383%**, making them a major contributor to the revenue spike. **March** recorded the highest percentage increase in sales, rising by **50%**, coinciding with the onset of **COVID-19 lockdowns**.

- **Sales Decline**: **December 2020** marked the peak across all key metrics, but since then, the company has struggled to sustain those levels, experiencing a downturn. This decline can be attributed to the implementation of **return-to-office policies** and reduced consumer need for electronics, as many had already made significant purchases the previous year. **Sales declined by 10% in 2021** and further plummeted by **46% in 2022**, with other metrics following a similar downward trajectory.

- **Program Performance**: The **Loyalty Program** has shown strong performance and continues to demonstrate promising growth. Since its inception, it has expanded significantly, increasing the **share of total sales** from **11% in 2019** to **50% by 2021**—a level maintained in **2022**. Furthermore, the **AOV for loyalty members** has been gradually increasing, while **non-member AOV** has declined.

- **Product Performance**: **Sony’s gaming monitor** was the **top performer**, contributing **35% of total sales**, while **Apple products** led as the **top brand**, accounting for **50% of sales**. The overall **refund rate** stands at **5.04%**, with **Apple products** making up **70% of total refunds**, amounting to **$1.2M in refund costs**. Additionally, **Laptops** had the **highest refund rate at 12%**.



# Sales Trends (MAYBE HAVE OVERVIEW BULLET POINTS?? LIKE 3-4 GOING OVER GENERAL TRENDS FOR ALL GRAPHS??)
![Image Alt](https://github.com/EliasPotagas/ShopNest/blob/912f6dd272da51bdd74be7e148cb1f726614e397/Executive_summary.png)
<table>
  <tr>
    <td style="background-color: #222; color: white; width: 50%; vertical-align: top;">
      <h2 style="margin: 0; padding: 0; display: inline-block;">Sales</h2>
      <ul>
        <li><b>Entire Period:</b> Average monthly revenue of <b>$585K</b>, with a <b>0.6% growth rate</b>.</li>
        <li><b>Pandemic Surge:</b> Sales jumped <b>160%</b> to <b>$10M</b>, peaking at <b>$1.25M in December 2020</b>.</li>
        <li><b>Post-Pandemic:</b> Sales fell <b>10% in 2021</b> and <b>46% in 2022</b>, dropping to <b>$178K</b> in October marking a new company low in revenue.</li>
      </ul>
      <h2 style="margin: 10px 0 0 0; padding: 0; display: inline-block;">AOV</h2>
      <ul>
        <li><b>Entire Period:</b> AOV averaged <b>$253</b> with <b>0.0% growth rate</b>.</li>
        <li><b>Peak & Drop:</b> AOV hit <b>$321 in October 2020</b> but declined to <b>$217 by October 2022 with a -1.62% monthly growth rate</b>.</li>
        <li><b>AOV Increase:</b> <strong>MacBook laptop</strong>, <strong>Apple AirPods</strong>, and <strong>Sony's gaming monitor</strong> were the primary drivers of the high <strong>AOV</strong>.</li>
        &nbsp;
      </ul>
    </td>
    <td style="background-color: #222; color: white; width: 50%; vertical-align: top;">
      <h2 style="margin: 0; padding: 0; display: inline-block;">Orders</h2>
      <ul>
        <li><b>Entire Period:</b> Average <b>2.2K orders per month</b>, with a <b>0.72% growth rate</b>.</li>
        <li><b>Pandemic Peak:</b> Orders peaked at <b>4K in December 2020 growing 100% from last year</b>.</li>
        <li><b>Post-Pandemic Drop:</b> Fell to <b>825 in October 2022</b>, a <b>50% decline</b> from 2019.</li>
      </ul>
      <h2 style="margin: 10px 0 0 0; padding: 0; display: inline-block;">Refunds</h2>
      <ul>
        <li><b>Entire Period:</b> Average <b>112 refunds per month</b>, with a growth rate of <b>0.76%</b>.</li>
        <li><b>Pandemic Spike:</b> Peaked at <b>369 in December 2020</b>.</li>
        <li><b>Data Gap:</b> Tracking refund issues occurred after <b>August 2021</b>.</li>
       &nbsp;
      </ul>
    </td>
  </tr>
</table>

## Seasonal Performance TODO 
![Image Alt](https://github.com/EliasPotagas/ShopNest/blob/84e39a1d6507966e211737963f3a3c9c133feb67/Pictures/seasonal_dashboard_2.png)

# Loyalty Program
  ![Image Alt](https://github.com/EliasPotagas/ShopNest/blob/bb2a8f6ebadb942e9c12ac36372265e2c456722f/Pictures/loyalty_dashboard_4.png)
The program, **launched in 2019**, was designed to incentivize **more frequent purchases** through **points-based rewards** and **discount offers**. It is now undergoing a **four-year performance evaluation** to determine whether it should be continued.

- **Sales Growth**: The **Loyalty Program** was initially contributing a modest **11% of total sales**, while **non-members** accounted for **89%**. However, by **2021**, members' contribution to total revenue had risen significantly to **50%**, a level that was sustained in **2022**.  
- **AOV Growth**: The **Average Order Value (AOV)** for **loyalty members** has been steadily rising, highlighting the effectiveness of our **loyalty program perks** in driving **higher spending** among members, whereas **non-members** appear **less inclined to spend** due to the absence of these **rewards and benefits**.  
- **Revenue Contribution**: Between **Q4 2020 and Q3 2022**, **loyalty members** placed **most orders**, with a **10% higher order rate** and **rising AOV**. While **non-members** generated **$17 million** in sales (**2019–2022**) versus **$10 million** from **members**, **loyalty revenue is on track to surpass non-members**, underscoring the **program’s growing impact**.  
- **Insight**: Given the **positive trajectory** in **order volume, AOV, and overall sales** among **loyalty members**, it is recommended to **increase promotion and marketing efforts** for the **Loyalty Program** to attract more users and **boost overall AOV**.  





# Geographical Trends
  ![Image Alt](https://github.com/EliasPotagas/ShopNest/blob/a1f2bc748ed794181916e74a1ff5cde28e89a752/regiona_dashboard.png)
ShopNest serves customers in **194 countries** across four global regions: **North America (NA), Europe, Middle East & Africa (EMEA), Asia-Pacific (APAC),** and **Latin America (LATAM)**.

- **Top Market Contributor**: The **top 10 best-performing countries** accounted for **80% of total revenue** and **71% of total orders**, with the **United States** leading at **47% of total sales ($13.3M)** and an **average order value (AOV) of $262**. The highest sales contributor in the **U.S.** was the **Sony gaming monitor**, contributing **35% of the country’s sales**.  

- **Highest AOV**: **Japan** recorded the **highest AOV at $395**, driven by **strong laptop sales**, which contributed **50% of APAC's total revenue**. This indicates a **high consumer preference** for **premium tech products**, presenting an opportunity to **expand laptop promotions** for **Loyalty members** to utilize.  

- **Loyalty Program Impact**: Across **all regions**, **Loyalty Program members** contributed **40% of sales**, reinforcing its **global effectiveness** and **continued growth** as its **benefits gain traction**.  


# Brand Trends
![Image Alt](https://github.com/EliasPotagas/ShopNest/blob/265eab5c076a2d574bb8018a00938cab75aa6b3e/Brand_performance.png)
- **Apple’s Market Dominance:** Apple products contributed **50.6% of total sales**, generating **$14 million** in revenue. They accounted for **48% of total orders** with an **AOV of $271**, remaining the top sales driver across all **four regions** and consistently leading each year.  

- **Samsung’s Low Revenue Contribution:** Despite making up **30% of total orders**, Samsung products contributed only **3% of total sales** due to a significantly lower **AOV of $28**.  

- **Premium Products:** The strong sales performance of **Apple and Sony** highlights consumer demand and interest in **premium, high-value products with long-lasting quality and use**.  


## Products
![Image Alt](https://github.com/EliasPotagas/ShopNest/blob/265eab5c076a2d574bb8018a00938cab75aa6b3e/product_table.png)

- **Highest Order Volume:** Apple AirPods led in order count with **48K orders (45% of total orders)**, generating **$7.8M in sales (28% of total revenue)** with an **AOV of $160**.  

- **Top Product by Revenue:** Sony’s Gaming Monitor was the highest revenue-generating product, contributing **35% of total revenue**, with an **AOV of $420**.  

- **Laptop Demand & High AOV:** Laptops accounted for **33% of total sales ($9.5M)**. Despite having the **lowest order volume**, they had the **highest AOV**, averaging **$1.3K per order**.
- **Least Popular Product:** Bose Headphones had the weakest performance, recording just **3K units sold** and **27 total orders**, making them the **least desirable product** in our catalog.
- **Apple iPhone’s Underperformance:** Despite high demand for Apple products, the iPhone was the **worst-performing product**, with only **288 units sold**, generating **$213K in sales**.


### Recommendations:
- **Samsung Products**: While **demand is high**, introducing **product bundles** with **higher AOV items** could drive **increased revenue and profitability** by encouraging **larger purchases**.  

- **Apple iPhone**: With only **288 orders** but a **high AOV of $740**, targeted **Loyalty Program promotions** with **exclusive discounts** for existing **Apple consumers** could **boost sales**, strengthen **Loyalty Program engagement**, and drive a **notable increase in total revenue**.  

- **Removing the Bose Headphones**: Due to their **poor performance** and **lack of resonance with customers**, removing them from the website would create space for a **more appealing and higher-performing product**.  




## Refunds TODO 
<p align="center">
  <img src="https://github.com/EliasPotagas/ShopNest/blob/0ffbddf33d55fbaec22057b26aa197b82d60fe02/brand_refunds_v3.png" alt="Image Alt">
</p>
  
- The overall **refund rate** stood at **5.04%**, with **5,379 refunds** issued out of **108K orders**, totaling **$1.7M** in refund costs.
- **Apple products** accounted for the majority of refunds (**3,111**), with a **5.91% return rate**, totaling **$1.2M** in refund costs, representing **70%** of all refunds issued.
- **Apple AirPods** accounted for **83%** of all Apple product refunds, making them the **primary driver of returns**. 
- Lenovo’s ThinkPad laptops and Apple’s MacBook laptops had the highest refund rates, with ThinkPads reaching 12%, surpassing all other product categories.

## Refunds by Products UPDATE IMAGE
<p align="center">
  <img src="https://github.com/EliasPotagas/ShopNest/blob/53d46b7d38d2a9cb327766928eb55a26c137447c/Pictures/refunds_dashboard.png" alt="Image Alt">
</p>

### Recommendation: 
  - Conduct a quality assurance and consumer feedback review to identify the key reasons behind the high return rates for the laptops and implement necessary improvements to reduce refunds.

# Insights and Recommendations

### **Loyalty Program**
- The **Loyalty Program** should continue, as its **performance has been steadily improving each year**, successfully driving members to **purchase higher-value products**. Its increasing **effectiveness** highlights the importance of **further promotion**.  
- The program has been able to **surpass and consistently outperform non-members** in **AOV, sales, and orders**. The **exclusive perks and benefits** offered incentivize members to **spend more**, reinforcing the **value of the program**.  
- To **maximize its success**, the program should be **promoted to high-AOV returning customers** who are not yet members.  
- **A meeting** with the marketing team to introduce a **refer-a-friend program**, aimed at encouraging existing members to **bring in new users**, ultimately driving **engagement and sales growth**.

### **Product Changes**
- The **Bose Sound Headphones** should be **removed** from our product offerings as they have been the **worst-performing product** consistently over the past **four years**, occupying **valuable space** that could be better utilized for **higher-performing products**.  
- A **review with the product team** should be conducted to **identify a better-performing product** to replace the headphones with, **optimizing sales** and **use of space on the website**.  

### **Boost Sales**
- To **drive overall sales**, we can provide **exclusive iPhone discounts** to **high-AOV loyalty program members**, **incentivizing purchases**, **increasing units sold**, and **enhancing member engagement** with the program.  
- In **markets like Japan**, where demand for **Apple and premium products** is high, implementing **region-specific promotions or discounts** will leverage **consumer preferences** and **drive sales**.  

### **Refund Rates**
- A **quality assurance review** with the **product team** is necessary to **analyze factors contributing to the 12% laptop refund rate**. This review should **assess potential issues** such as **product defects, customer dissatisfaction, or misleading expectations**.  
- A **meeting with the data engineering team** is necessary to **address the lack of refund tracking beyond August 2021** and determine the **root cause of the data gap**.  

# Dashboard 

The interactive dashboard can be found in Tableau Public here. 

![Image Alt](https://github.com/EliasPotagas/ShopNest/blob/ab076e8e5909a1c6690d1c3ec7d984469bc62820/Dashboard_v2.png)


# Entity Relation Diagram

ShopNet's database consists of **108,127 records** and **four tables**: orders, customers, geo_lookup, and order_status.

  ![Image Alt](https://github.com/EliasPotagas/ShopNest/blob/dfbf9ebf2af0840c04e10c4037eb0cfaa127f4a3/ERD.png)





