# Data-Driven Insights for Water Access Equity in Maji Ndogo

Access to clean and safe water is a fundamental need, yet millions of people in developing regions still face challenges in securing it. In this project, I leveraged **SQL** and **Power BI** to analyze and visualize nationwide water improvement efforts in **Maji Ndogo**, a country with both rural and urban settlements. The goal was to track project completion, assess costs, measure impact, and provide actionable insights to ensure equitable water distribution across provinces.

## Dataset and Methodology
The dataset contained records of water improvement projects across five provinces, covering both **rural and urban towns**. Projects included drilling wells, installing taps, filtration systems (RO and UV), and repairing existing infrastructure.  

The methodology included:
- **Data Cleaning & Preparation (SQL):**  
  - Standardized town and province names  
  - Mapped project types into categories (drill wells, taps, filters, repairs)  
  - Cleaned vendor IDs and cost data  
  - Structured relational models linking vendors, towns, costs, and project outcomes  

- **Power BI Modeling & Dashboards:**  
  - Built measures for cumulative budget, cost, and percentage completion  
  - Designed relational models for town, province, and vendor performance  
  - Integrated completion timelines for progress tracking  

The final structured dataset provided a reliable foundation for monitoring **budget adherence, project status, and regional disparities**.

## Exploratory Data Analysis and Visualization
The exploratory analysis uncovered several critical insights:  

- **Population Impact**  
  - Over **18.3 million people** directly benefited from completed projects.  
  - Urban towns reached **100% basic access** faster, while rural towns lagged behind due to higher costs and slower completion timelines.  

- **Budget vs. Expenditure**  
  - **Budget Allocation:** ₦146.7M  
  - **Actual Spend:** ₦154.4M → a **5.29% budget overrun**  
  - Major overruns were associated with **multi-tap installations** and rural infrastructure repairs.  

- **Urban vs. Rural Cost Disparity**  
  - **Rural Projects:** Average ₦7,310 per project  
  - **Urban Projects:** Average ₦3,970 per project  
  - This highlights the need for **differential budgeting strategies** to balance equity and efficiency.  

- **Project Type Analysis**  
  - **Drilling Wells:** Among the most impactful interventions, serving large populations with moderate costs.  
  - **Installing Taps (6–8 taps):** Significant cost drivers, with average increases of ₦11K–₦17K per project compared to baseline.  
  - **Filtration Systems (RO/UV):** More expensive but essential for improving water quality in densely populated areas.  
  - **Repairs:** Low-cost, high-ROI interventions for sustaining existing infrastructure.  

- **Vendor Performance**  
  - Over **20 vendors** were analyzed across multiple towns.  
  - Some vendors consistently delivered projects under **₦2,600 per capita served**, while others exceeded **₦2,700 per capita**, indicating efficiency gaps.  
  - High-performing vendors such as *Kisangani Filter Solutions* and *Mwanza Water Purification* demonstrated cost-effectiveness with broad coverage.  

- **Completion Timeline Trends**  
  - Projects spanned from **2022 to 2027**.  
  - Peak completion rates occurred between **2024–2025**, aligning with major funding cycles.  
  - Rural projects showed the longest delays, driven by logistics and higher cost structures.  

By combining SQL-based queries with Power BI’s visualization capabilities, I was able to highlight not only **where resources were spent**, but also **how effectively they translated into community impact**.

## Dashboard
[Click here to view the interactive dashboard](https://app.powerbi.com/view?r=eyJrIjoiMzA2NDlkOTItZWQyYi00YmQwLWIyZTAtOTZjOTFjY2Y1OTdkIiwidCI6ImRmODY3OWNkLWE4MGUtNDVkOC05OWFjLWM4M2VkN2ZmOTVhMCJ9)  

![Dashboard](https://github.com/YourUsername/PortfolioProjects/blob/main/MajiNdogoWater/water_dashboard.png)

## Recommendations
To improve equity and sustainability in water distribution across Maji Ndogo:  
1. **Prioritize Rural Communities** – Allocate more resources where water projects are costlier but most needed.  
2. **Optimize Vendors** – Engage high-performing vendors with lower average costs per project.  
3. **Control Budget Overruns** – Strengthen monitoring of projects prone to overspending, especially large-scale tap installations.  
4. **Track Long-Term Impact** – Extend monitoring beyond completion to assess sustainability of access.  
5. **Focus on High-Impact Projects** – Prioritize drilling wells and public tap installations, which serve the largest populations.  

## Conclusion
This project demonstrates how **SQL and Power BI** can be combined to transform raw infrastructure data into actionable insights. By visualizing completion rates, costs, and access across provinces, the analysis supports **data-driven decision-making** that improves transparency, ensures equity, and accelerates progress toward universal clean water access.  
