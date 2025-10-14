# 🍕 Pizza Sales Data Analysis using MySQL  

## 📖 Project Overview  
This project focuses on analyzing a **pizza sales dataset** using **MySQL** to extract meaningful business insights that can drive data-driven decisions.  
The dataset contains detailed transactional data including order information, pizza types, categories, sizes, quantities, prices, and timestamps.  

The goal of this project is to demonstrate strong **SQL querying, data analysis, and business intelligence skills** by answering key questions about sales performance, product trends, and customer behavior.  

Through this project, 50+ SQL queries were written to explore and analyze different aspects of sales such as **total revenue**, **top-selling pizzas**, **monthly trends**, **category performance**, and **average order values**.  

---

## 🧩 Dataset Description  
The dataset includes the following key fields:  
- `order_id` – Unique identifier for each order  
- `pizza_id` – Unique identifier for each pizza sold  
- `pizza_name` – Full name of the pizza  
- `pizza_name_id` – Identifier for pizza type/variant  
- `pizza_category` – Category (Classic, Veggie, Supreme, etc.)  
- `pizza_size` – Pizza size (S, M, L, XL, XXL)  
- `quantity` – Number of pizzas sold  
- `unit_price` – Price per pizza  
- `total_price` – Total price for the order line  
- `order_date` – Date of order  
- `order_time` – Time of order  
- `pizza_ingredients` – Ingredients used  

---

## 🧠 Key Insights & Analysis Areas  
The analysis includes:  
- **Sales Performance Metrics:** Total revenue, total orders, average order value, and average pizzas per order.  
- **Category and Size Trends:** Revenue and sales breakdown by pizza size and category.  
- **Top/Least Performing Items:** Identifying best and worst-selling pizzas by quantity and revenue.  
- **Time-Based Analysis:** Daily, monthly, and hourly sales trends.  
- **Customer Behavior Insights:** Order composition, popular pizza sizes, and high-demand periods.  

---

## 🧮 SQL Techniques Used  
- Aggregate functions (`SUM()`, `AVG()`, `COUNT()`, `MAX()`, `MIN()`)  
- Grouping and sorting with `GROUP BY` and `ORDER BY`  
- Date and time formatting using `DATE_FORMAT()` and `STR_TO_DATE()`  
- Window functions (`OVER()` with cumulative revenue calculation)  
- Subqueries for percentage calculations and advanced metrics  
- Filtering using `WHERE`, `HAVING`, and conditional expressions  

---

## 📂 Files Included  
- **`pizza_sales.csv`** – Dataset used for analysis  
- **`pizza_sales_queries.sql`** – Contains 50 ready-to-run MySQL queries  
- **`README.md`** – Project documentation and overview  

---

## 📈 Example Questions Answered  
- What is the total revenue generated?  
- Which pizza size or category performs best?  
- What are the top 10 best-selling pizzas by revenue and quantity?  
- When are the peak sales hours and days?  
- What is the average order value and daily revenue trend?  

---

## 🚀 How to Use  
1. Import the `pizza_sales.csv` data into your MySQL database.  
2. Create a table named `pizza_sales` with appropriate columns.  
3. Run the queries from the provided `pizza_sales_queries.sql` file in MySQL Workbench or any SQL IDE.  
4. Explore, visualize, and extend the queries for deeper insights.  

---

## 🔮 Future Enhancements  
- Integrate with **Power BI** or **Tableau** to create interactive dashboards.  
- Use **Python (Pandas + Matplotlib)** for automated data analysis and visualization.  
- Build an **ETL pipeline** to clean, transform, and load new data automatically.  
- Add **stored procedures and views** to simplify repeated analysis tasks.  

---

## 🏁 Conclusion  
This project showcases the use of **SQL for business analytics and data-driven insights**.  
It demonstrates the ability to clean, aggregate, and analyze real-world sales data efficiently.  
The insights generated can help optimize product performance, pricing strategies, and operational efficiency for a pizza restaurant business.  

---

⭐ **If you found this project useful, don’t forget to star the repository!** ⭐  
