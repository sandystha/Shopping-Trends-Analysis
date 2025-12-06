
# Shopping Trends Analysis

This project analyzes customer behavior, seasonal trends, color preferences, location performance, and loyalty patterns using the `shopping_trends_updated` dataset. The goal is to uncover actionable insights that can support inventory planning, marketing strategies, and customer experience improvements.



## Problem Statement

Retail stores often struggle to understand what drives customer purchases across different seasons, locations, and demographic groups. Without these insights, stocking decisions, marketing strategies, and loyalty programs may be ineffective.

This analysis uses transactional data to answer key business questions such as:
- Who are the customers?
- What items are popular by season?
- Which colors sell the most?
- Which store locations perform best?
- Does previous purchasing behavior influence current spending?

The findings help guide better business decisions around inventory, customer engagement, and resource allocation.

---

##  Key Questions Analyzed

1. **How many unique customers visited the store?**  
2. **What percentage of customers are male vs. female?**  
3. **Which seasons are represented in the dataset?**  
4. **What are the most purchased items by season (Winter, Fall, Spring, Summer)?**  
5. **What are the most popular colors by season?**  
6. **Should stocking strategies vary by store location?**  
7. **Which locations deliver the best customer experience (highest review ratings)?**  
8. **Do customers with more than 10 previous purchases spend more?**

---

## Summary of Findings

### **Customer Demographics**
- **3,900 unique customers**.
- Gender split: **68% male**, **32% female**.

### **Seasonal Item Demand**
- **Winter:** Sunglasses → Pants → Shirt  
- **Fall:** Jacket → Hat → Handbag  
- **Spring:** Sweater → Shorts → Skirt  
- **Summer:** Pants → Dress → Jewelry  

### **Seasonal Color Preferences**
- **Fall:** Magenta, Yellow  
- **Spring:** Olive, Gray  
- **Summer:** Silver, Teal  
- **Winter:** Green, Yellow  

### **Location Insights**
- Most customers: **Montana, California, Idaho**.  
- Best review ratings: **Texas & Wisconsin**.

### **Loyalty Behavior**
- Customers with **10+ previous purchases** spend significantly more than others.  
- Strong correlation between loyalty and higher revenue.

---

## Recommendations

1. **Increase male-oriented inventory**, but maintain optimized female stock.
2. **Stock seasonally relevant items** using observed patterns (e.g., jackets in fall, dresses in summer).
3. **Use seasonal color trends** to plan display themes and buying.
4. **Prioritize inventory & marketing** for high-volume states like Montana & California.
5. **Benchmark customer experience** by learning from Texas & Wisconsin processes.
6. **Strengthen loyalty programs** to drive repeat spending.

---

## Technologies Used
- SQL (CTEs, window functions, aggregations)
- Database: SQL Server

