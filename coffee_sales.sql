drop table if exists coffee_sales;

--Creating Table
create table coffee_sales(
S_No SERIAL PRIMARY KEY,
date Date,
datetime TIME,
cash_type varchar(50),
card varchar(100),
money decimal(10,2),
coffee_name varchar(50)
)

--Checking Everything imported Right way
SELECT *
FROM coffee_sales
limit 10;

--Q2. Find the total number of sales
SELECT count(*)
FROM coffee_sales

--Q3. Find all different coffee types
SELECT distinct coffee_name
FROM coffee_sales

--Q4. Find all payment methods
SELECT distinct cash_type
FROM coffee_sales

--Q5. Find the minimum, maximum and average coffee price
SELECT distinct avg(money) as Average,
Max(money) as Maximum,
Min(money) as Minimum
FROM coffee_sales

--Q6. Find all sales where the coffee price is greater than ₹30
SELECT s_no,coffee_name,
money
FROM coffee_sales
where money >30;

--Q7. Find all sales of a specific coffee
SELECT coffee_name,money
FROM coffee_sales
where coffee_name = 'Latte'

--Q8. Find coffees priced between ₹30 and ₹50
SELECT money,coffee_name
FROM coffee_sales
where money between 30 and 50;

--Q9. Find cash transactions
SELECT distinct coffee_name,
date,
money,
cash_type
FROM coffee_sales
where cash_type = 'cash'

--Q10. Find card transactions
SELECT distinct coffee_name,
date,
money,
cash_type
FROM coffee_sales
where cash_type = 'card'


--Q11. Find the 10 most expensive coffee purchases
SELECT distinct coffee_name,
date,
money,
cash_type
FROM coffee_sales
order by money desc
limit 10;

--Q12. Find the 10 cheapest purchases
SELECT distinct coffee_name,
date,
money,
cash_type
FROM coffee_sales
order by money asc
limit 10;

--Q13. How many coffees were sold?
SELECT distinct count(s_no),coffee_name
FROM coffee_sales
group by coffee_name

--Q14. Which coffee has the highest number of sales?
SELECT distinct count(s_no),coffee_name
FROM coffee_sales
group by coffee_name
order by count(s_no) desc
limit 1;

--Q15. Calculate total revenue for each coffee
SELECT distinct sum(money),coffee_name
FROM coffee_sales
group by coffee_name

--Q16. Find the average selling price of each coffee
SELECT distinct avg(money),coffee_name
FROM coffee_sales
group by coffee_name

--Q17. Find the cheapest and most expensive price for each coffee
SELECT distinct coffee_name,
round(avg(money)),
max(money),
min(money)
FROM coffee_sales
group by coffee_name


--Q18. Find coffee types that were sold more than 100 times
SELECT distinct coffee_name,
count(s_no)
FROM coffee_sales
group by coffee_name
having count(s_no) > 100
order by count(s_no) desc

--Q19. Find coffee types generating more than ₹5,000 revenue
SELECT distinct coffee_name,
sum(money) as Total
FROM coffee_sales
group by coffee_name
having sum(money) > 5000

--Q20. Count cash vs card transactions
SELECT distinct cash_type, count(s_no) over(partition by cash_type) as Total
FROM coffee_sales

--Q21. Calculate revenue by payment method
SELECT distinct cash_type, sum(money) over(partition by cash_type) as Total
FROM coffee_sales

--Q23. Find the number of sales on each date
SELECT distinct date, avg(money) as Transcations
FROM coffee_sales
group by date






















