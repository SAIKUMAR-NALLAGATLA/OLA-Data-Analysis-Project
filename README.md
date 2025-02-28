# OLA Data Analyst Project 🚖📊

## 📌 Overview
This project analyzes ride booking data for OLA in Bengaluru, covering booking trends, cancellations, ride distances, customer & driver ratings, and revenue insights using SQL and Power BI.

## 📂 Project Structure
```
OLA-Data-Analysis-Project/
├── data/               # Dataset files (CSV, Excel, SQL dumps)
│   ├── Bookings-100000-Rows.csv
├── scripts/            # SQL queries and Python scripts
│   ├── OLa_DataAnalysis.sql
├── reports/            # Power BI dashboards
│   ├── Ola_DataAnalysis.pbix
├── images/             # Visualizations & report screenshots
├── README.md           # Project documentation
├── requirements.txt    # Dependencies (if applicable)
```

## 🎯 Objectives
✔ **Ride Trends**: Increased bookings on weekends and match days  
✔ **Cancellations**: 7% by customers, 18% by drivers  
✔ **Ratings**: Average driver rating per vehicle type  
✔ **Revenue Analysis**: Higher fares on weekends  

## 📊 Data Description
The dataset consists of **100,000** ride booking records with the following key attributes:
- **Date, Time** – Timestamp of booking
- **Booking Status** – Success, Cancelled, Incomplete
- **Customer & Driver Ratings** – Satisfaction scores
- **Vehicle Type** – Auto, Sedan, SUV, Mini, Bike, eBike
- **Ride Distance, Booking Value** – Fare and distance metrics
- **Cancellation Reasons** – By customer & driver
- **Payment Method** – Cash, UPI, Card

## 🛠️ Technologies Used
- **SQL** (Data Analysis & Queries)
- **Power BI** (Dashboard & Visualization)
- **Python** (For preprocessing, if required)
- **Excel/CSV** (Data storage and manipulation)

## 📌 SQL Analysis
```sql
-- Retrieve all successful bookings
SELECT * FROM bookings WHERE Booking_Status = 'Success';

-- Find the average ride distance for each vehicle type
SELECT Vehicle_Type, AVG(Ride_Distance) AS avg_distance
FROM bookings
GROUP BY Vehicle_Type;
```
For full SQL queries, check **`scripts/OLa_DataAnalysis.sql`**.

## 📈 Power BI Dashboard
A comprehensive Power BI report analyzes:
✔ Ride Volume Over Time  
✔ Booking Status Breakdown  
✔ Top 5 Vehicle Types by Ride Distance  
✔ Revenue Insights by Payment Method  
✔ Cancellation Reasons Analysis  
✔ Driver & Customer Ratings Distribution  

📌 View the dashboard: **`reports/Ola_DataAnalysis.pbix`**

## 📥 Installation & Usage
1️⃣ Clone the repo:
```bash
git clone https://github.com/SAIKUMAR-NALLAGATLA/OLA-Data-Analysis-Project.git
```
2️⃣ Install dependencies (if applicable):
```bash
pip install -r requirements.txt
```
3️⃣ Run SQL Queries:
```bash
mysql -u root -p < scripts/OLa_DataAnalysis.sql
```
4️⃣ Open Power BI Report:
- Open **`Ola_DataAnalysis.pbix`** in Power BI to explore visualizations.

## 🤝 Contributing
Feel free to fork this repository and contribute by improving SQL queries, adding visualizations, or refining insights!
---
🚀 **Show some love by starring this repo!**

