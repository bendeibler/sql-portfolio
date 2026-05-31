# SQL E-Commerce Database

## Overview

To showcase my SQL skills and techniques, I created an e-commerce database containing 5 tables. This entails setting up a retail database, performing exploratory analysis, and answering business related questions. The database contains 5 categories, 10 customers, 15 products, 15 orders, and 15 order items across 6 different states.

## Tools
- Database: PostgreSQL
- Editor: VS Code with SQLTools

## Schema

- Customers: customer_id, first_name, last_name, email, city, state, created_at

- Categories: category_id, category_name, description
  
- Products: product_id, product_name, category_id, price, stock_quantity

- Orders: order_id, customer_id, order_date, status

- Order_items: order_item_id, order_id, product_id, quantity, unit_price

## Data Exploration
Null checks and deletions were performed across all 4 tables. Example for customers:
```sql
select * 
from customers
where customer_id is NULL 
   or first_name is NULL   
   or last_name  is NULL   
   or email      is NULL   
   or city       is NULL   
   or state      is NULL    
   or created_at is NULL
```

Remove Null values

```sql
Delete from customers
where customer_id is NULL 
   or first_name is NULL
   or last_name  is NULL
   or email      is NULL
   or city       is NULL
   or state      is NULL 
   or created_at is NULL
```

## Queries

### Show name, product, and total price of purchases over $500
```sql
select c.first_name, c.last_name, p.product_name, (oi.quantity * oi.unit_price) as total_price
from customers c
join orders o on c.customer_id = o.customer_id
join order_items oi on o.order_id = oi.order_id
join products p on oi.product_id = p.product_id
where (oi.quantity * oi.unit_price) > 500;
```

### Show number of customers from each state
```sql
select state, count(state)
from customers
group by state
order by count(state) desc;
```

### Order products by price
```sql
select product_name, price, category_id
from products
order by price desc;
```

### Number of orders by status
```sql
select status, count(status)
from orders
group by status
order by count(status) desc;
```

### Show total amount purchase by state
```sql
select c.state, sum(oi.quantity * oi.unit_price) as total
from customers c
left join orders o
on c.customer_id = o.customer_id
left join order_items oi
on oi.order_id = o.order_id
group by c.state
order by total desc;
```

### Show average amount per purchase per state
```sql
select c.state, round(avg(oi.quantity * oi.unit_price), 2) as avg_amount
from customers c
left join orders o
on c.customer_id = o.customer_id
left join order_items oi
on oi.order_id = o.order_id
group by c.state
order by avg(oi.quantity * oi.unit_price) desc;
```



## Findings
- Michael Williams accounted for 2 of the 4 purchases over $500
- Out of the 6 states, RI, MA, ME, and VT were the most common, all having 2 orders from each
- Electronics were the most expensive category with 4 out of the top 5 products coming from the electronics category
- Books were the least expensive with 3 out of the bottom 4 products coming from the books category
- 12 out of 15 orders have been completed with 2 orders being shipped and 1 still pending
- Rhode Island had the highest amount purchased with a total 
of $2,389.96 with Massachusetts close behind with a total of $2,349.95
- Rhode Island and Massachusetts also had the highest average purchase with an average of $597.49, and $587.49 respectively
- Maine and New York came in with the lowest average purchase price showing an average amount of $58.99, and $89.99 respectively



