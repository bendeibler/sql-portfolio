# SQL E-Commerce Database

## Overview

To showcase my SQL skills and techniques, I created an e-commerce database containing 4 tables. This entails setting up a retail database, performing exploratory analysis, and answering business related questions. 

## Schema

- Customers: Customer_id, first_name, last_name, email, city, state, created_at

- Products: product_id, product_name, price, stock_quantity

- Orders: order_id, customer_id, order_date, status

- Order_items: order_item_id, order_id, product_id, quantity, unit_price

## Data Exploration

Check for Null Values

select * 
from customers
where customer_id is NULL 
   or first_name is NULL
   or last_name  is NULL
   or email      is NULL
   or city       is NULL
   or state      is NULL 
   or created_at is NULL

select *
from products
where product_id is NULL
   or product_name is NULL
   or price is NULL
   or stock_quantity is NULL

select *
from orders
where order_id is NULL
  or customer_id is NULL
  or order_date is NULL
  or status is NULL

select * 
from order_items
where order_item_id is NULL
  or order_id is NULL
  or product_id is NULL
  or quantity is NULL
  or unit_price is NULL

Remove Null values

Delete from customers
where customer_id is NULL 
   or first_name is NULL
   or last_name  is NULL
   or email      is NULL
   or city       is NULL
   or state      is NULL 
   or created_at is NULL

Delete from products
where product_id is NULL
   or product_name is NULL
   or price is NULL
   or stock_quantity is NULL

Delete from orders
where order_id is NULL
  or customer_id is NULL
  or order_date is NULL
  or status is NULL

Delete from order_items
where order_item_id is NULL
  or order_id is NULL
  or product_id is NULL
  or quantity is NULL
  or unit_price is NULL


## Queries

### Show name, product, and total price of purchases over $500
select c.first_name, c.last_name, p.product_name, (oi.quantity * oi.unit_price) as total_price
from customers c
join orders o on c.customer_id = o.customer_id
join order_items oi on o.order_id = oi.order_id
join products p on oi.product_id = p.product_id
where (oi.quantity * oi.unit_price) > 500;

### Show number of customers from each state
select state, count(state)
from customers
group by state
order by count(state) desc;


### Order products by price
select product_name, price
from products
order by price desc;


### Number of orders by status
select status, count(status)
from orders
group by count(status)
order by count(status) desc;


### Show total amount purchase by state
select c.state, sum(oi.quantity * oi.unit_price) as total
from customers c
left join orders o
on c.customer_id = o.customer_id
left join order_items oi
on oi.order_id = o.order_id
group by c.state
order by total desc;


### Show average amount per purchase per state
select c.state, round(avg(oi.quantity * oi.unit_price), 2) as avg_amount
from customers c
left join orders o
on c.customer_id = o.customer_id
left join order_items oi
on oi.order_id = o.order_id
group by c.state
order by avg(oi.quantity * oi.unit_price) desc;


### 




## Findings







