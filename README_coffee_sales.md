# ☕ Coffee Sales SQL Practice

This is a beginner-friendly SQL practice project using a Coffee Sales dataset.

I'm using this project to practice SQL step by step and learn how to explore, clean, analyze, and find useful business insights from sales data.

## 🎯 What I'm Learning

Through this project, I'm practicing:

- Creating databases and tables
- Importing CSV data into PostgreSQL
- Understanding data types
- Exploring sales data using SQL
- Filtering data using `WHERE`
- Sorting data using `ORDER BY`
- Finding unique values using `DISTINCT`
- Handling `NULL` values
- Using aggregate functions such as `COUNT()`, `SUM()`, `AVG()`, `MIN()`, and `MAX()`
- Using `GROUP BY` and `HAVING`
- Using `CASE WHEN`
- Working with dates and time
- Writing subqueries
- Practicing business-focused SQL questions

## 📊 Dataset

The dataset contains coffee sales transaction information.

Each row represents a coffee sale.

### Main Columns

- `S_No` — Unique identifier for each transaction
- `date` — Date of the transaction
- `datetime` — Time of the transaction
- `cash_type` — Payment method
- `card` — Card identifier when applicable
- `money` — Amount paid for the coffee
- `coffee_name` — Name of the coffee sold

## 🗄️ Database

I'm using **PostgreSQL** for this project.

### Table Creation

```sql
CREATE TABLE coffee_sales (
    S_No SERIAL PRIMARY KEY,
    date DATE,
    datetime TIME,
    cash_type VARCHAR(50),
    card VARCHAR(100),
    money DECIMAL(10,2),
    coffee_name VARCHAR(50)
);
```

## 🔍 Practice Areas

### 1. 🔎 Data Exploration

I'll practice questions such as:

- How many total sales are in the dataset?
- What different coffee types are available?
- What payment methods are used?
- What is the minimum coffee price?
- What is the maximum coffee price?
- What is the average coffee price?

### 2. 📊 Sales Analysis

I'll practice finding:

- Number of sales for each coffee
- Total revenue for each coffee
- Average selling price for each coffee
- Cheapest and most expensive price for each coffee
- Top-selling coffee types
- Top coffees by revenue

### 3. 💳 Payment Analysis

I'll analyze:

- Cash vs card transactions
- Number of transactions by payment method
- Revenue by payment method
- Average transaction value by payment method

### 4. 📅 Date Analysis

I'll practice:

- Number of sales per day
- Daily revenue
- Highest revenue day
- Number of different coffees sold each day

### 5. 🧠 SQL Concepts

This project will also help me practice:

- `SELECT`
- `WHERE`
- `DISTINCT`
- `ORDER BY`
- `LIMIT`
- `GROUP BY`
- `HAVING`
- `COUNT()`
- `SUM()`
- `AVG()`
- `MIN()`
- `MAX()`
- `CASE WHEN`
- Subqueries
- Date functions
- Window functions

## 📁 Project Structure

```text
coffee-sales-sql-practice/
│
├── data/
│   └── coffee_sales.csv
│
├── sql/
│   └── coffee_sales_analysis.sql
│
└── README.md
```

## 🛠️ Tools I'm Using

- 🐘 PostgreSQL
- 🖥️ pgAdmin 4
- 💻 SQL
- 📄 CSV
- 🌱 Git
- 🐙 GitHub

## 📚 Purpose

This is a **learning project**, not a finished professional portfolio project.

I'm building it step by step to improve my SQL and data analysis skills using a real-world sales dataset.

The main goal is to understand how SQL can be used to answer practical business questions from raw sales data.

---

⭐ **Learning SQL one query at a time.**
