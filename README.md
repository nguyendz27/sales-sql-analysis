# Dự Án Phân Tích Dữ Liệu Bán Hàng Bằng SQL

---

# Tổng Quan Dự Án

Dự án sử dụng SQL để phân tích dữ liệu bán hàng nhằm đánh giá hiệu suất kinh doanh, hành vi khách hàng, hiệu quả sản phẩm và xu hướng doanh thu.

Mục tiêu của dự án là rèn luyện kỹ năng SQL cho Data Analyst đồng thời áp dụng tư duy business để đưa ra insight và đề xuất phù hợp cho doanh nghiệp.

---

## Bộ Dữ Liệu

Dự án bao gồm 3 bảng chính:

### Customers

- CustomerID
- CustomerName
- Segment
- City

### Products

- Product
- StandardPrice
- Cost
- Category

### Orders

- OrdersID
- OrderDate
- CustomerID
- Product
- Quantity
- UnitPrice
- DiscountPct
- SalePerson

---

## Công Cụ Sử Dụng

- SQL Server
- Excel
- GitHub

---

## Kỹ Năng SQL Được Sử Dụng

- JOIN
- GROUP BY
- Hàm tổng hợp (SUM, COUNT, AVG)
- CASE WHEN
- HAVING
- Common Table Expression (CTE)
- Window Function
- Ranking Function
- Running Total
- Phân tích KPI kinh doanh

---

## Các Câu Hỏi Business

### Phân tích doanh thu

- Tổng doanh thu và lợi nhuận là bao nhiêu?
- Doanh thu thay đổi theo thời gian như thế nào?
- Sản phẩm nào tạo ra doanh thu cao nhất?

### Phân tích sản phẩm

- Danh mục sản phẩm nào tạo lợi nhuận cao nhất?
- Sản phẩm nào có biên lợi nhuận cao nhất?

### Phân tích khách hàng

- Nhóm khách hàng nào đóng góp doanh thu lớn nhất?
- Khách hàng nào chi tiêu nhiều nhất?
- Tỷ lệ khách hàng quay lại là bao nhiêu?

### Phân tích bán hàng

- Nhân viên bán hàng nào có hiệu suất tốt nhất?

### Chỉ số nâng cao

- Giá trị trung bình mỗi đơn hàng (AOV) là bao nhiêu?
- Doanh thu cộng dồn tăng trưởng như thế nào?

---

## Insight Nổi Bật

- Laptop là danh mục sản phẩm tạo lợi nhuận cao nhất.
- Doanh thu có xu hướng tăng trưởng ổn định theo thời gian.
- Doanh thu tập trung chủ yếu vào một số sản phẩm chủ lực.
- Nhóm khách hàng Retail và SME đóng góp phần lớn doanh thu.
- Tỷ lệ khách hàng quay lại cao cho thấy khả năng giữ chân khách hàng tốt.
- Một số sản phẩm có doanh thu không quá cao nhưng lại có biên lợi nhuận rất tốt.

---

## Cấu Trúc Project

sales-sql-analysis/

   dataset/
   
     sales_data.xlsx
     
   sql/
   
     01_schema.sql
     02_basic_analysis.sql
     03_advanced_analysis.sql
     
   insights/
   
     findings.md
     
 README.md

---

## Kết Quả Đạt Được

Thông qua dự án này, tôi đã cải thiện:

- Kỹ năng truy vấn SQL
- Tư duy phân tích business
- Phân tích KPI
- Kỹ năng data storytelling
- Cách tổ chức project cho portfolio

---

## Tác Giả

Bùi Nguyễn Anh Nguyên

---

# Sales SQL Analysis Project

# Project Overview

This project analyzes sales data to evaluate business performance, customer behavior, product profitability, and sales trends using SQL.

The goal of this project is to practice SQL for data analysis while applying business thinking to generate insights and recommendations.

---

## Dataset

The dataset includes 3 main tables:

### Customers

- CustomerID
- CustomerName
- Segment
- City

### Products

- Product
- StandardPrice
- Cost
- Category

### Orders

- OrdersID
- OrderDate
- CustomerID
- Product
- Quantity
- UnitPrice
- DiscountPct
- SalePerson

---

## Tools Used

- SQL Server
- Excel
- GitHub

---

## SQL Skills Demonstrated

- JOIN
- GROUP BY
- Aggregation
- CASE WHEN
- HAVING
- Common Table Expressions (CTE)
- Window Functions
- Ranking Functions
- Running Total Analysis
- Business KPI Analysis

---

## Business Questions

### Revenue Analysis

- What is the total revenue and profit?
- How does revenue change over time?
- Which products generate the most revenue?

### Product Analysis

- Which category generates the highest profit?
- Which products have the highest profit margin?

### Customer Analysis

- Which customer segment contributes the most revenue?
- Who are the top customers?
- What is the repeat customer rate?

### Sales Analysis

- Which salesperson performs best?

### Advanced Metrics

- What is the Average Order Value (AOV)?
- How does cumulative revenue grow over time?

---

## Key Insights

- Laptop products generate the highest profit.
- Revenue shows a steady upward trend over time.
- Revenue is concentrated in a small number of top-performing products.
- Retail and SME customers contribute the largest share of revenue.
- Repeat customer rate is high, indicating strong customer retention.
- Some products have lower revenue but significantly higher profit margins.

---

## Project Structure

sales-sql-analysis/

   dataset/
   
     sales_data.xlsx
     
   sql/
   
     01_schema.sql
     02_basic_analysis.sql
     03_advanced_analysis.sql
     
   insights/
   
     findings.md
     
 README.md

---

## Project Outcomes

This project helped strengthen:

- SQL querying skills
- Business analysis thinking
- KPI analysis
- Data storytelling
- Project organization for portfolio usage

---

## Author

Bui Nguyen Anh Nguyen
