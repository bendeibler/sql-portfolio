-- Categories
INSERT INTO categories (category_name, description) VALUES
('Electronics', 'Phones, laptops, and accessories'),
('Clothing', 'Apparel for men and women'),
('Home & Kitchen', 'Furniture, cookware, and decor'),
('Sports & Outdoors', 'Equipment and gear for sports'),
('Books', 'Fiction, nonfiction, and textbooks');

-- Customers
INSERT INTO customers (first_name, last_name, email, city, state) VALUES
('James', 'Smith', 'jsmith@email.com', 'Boston', 'MA'),
('Emily', 'Johnson', 'ejohnson@email.com', 'Burlington', 'VT'),
('Michael', 'Williams', 'mwilliams@email.com', 'Providence', 'RI'),
('Sarah', 'Brown', 'sbrown@email.com', 'Portland', 'ME'),
('David', 'Jones', 'djones@email.com', 'Hartford', 'CT'),
('Jessica', 'Garcia', 'jgarcia@email.com', 'Boston', 'MA'),
('Daniel', 'Martinez', 'dmartinez@email.com', 'Burlington', 'VT'),
('Ashley', 'Davis', 'adavis@email.com', 'Providence', 'RI'),
('Matthew', 'Wilson', 'mwilson@email.com', 'Albany', 'NY'),
('Amanda', 'Taylor', 'ataylor@email.com', 'Portland', 'ME');

-- Products
INSERT INTO products (product_name, category_id, price, stock_quantity) VALUES
('iPhone 15', 1, 999.99, 50),
('Samsung Galaxy S24', 1, 899.99, 40),
('Laptop Pro 16"', 1, 1299.99, 25),
('Wireless Earbuds', 1, 149.99, 100),
('Nike Running Shoes', 2, 89.99, 75),
('Levi Jeans', 2, 59.99, 60),
('Winter Jacket', 2, 129.99, 30),
('Coffee Maker', 3, 79.99, 45),
('Cast Iron Skillet', 3, 49.99, 55),
('Yoga Mat', 4, 34.99, 80),
('Golf Club Set', 4, 499.99, 15),
('Tennis Racket', 4, 89.99, 25),
('The Great Gatsby', 5, 12.99, 200),
('Data Science Handbook', 5, 49.99, 40),
('SQL for Beginners', 5, 39.99, 35);

-- Orders
INSERT INTO orders (customer_id, order_date, status) VALUES
(1, '2024-01-05', 'completed'),
(2, '2024-01-10', 'completed'),
(3, '2024-01-15', 'completed'),
(4, '2024-01-20', 'completed'),
(5, '2024-02-01', 'completed'),
(6, '2024-02-10', 'completed'),
(7, '2024-02-15', 'completed'),
(8, '2024-03-01', 'completed'),
(9, '2024-03-10', 'completed'),
(10, '2024-03-15', 'completed'),
(1, '2024-03-20', 'completed'),
(2, '2024-04-01', 'completed'),
(3, '2024-04-10', 'shipped'),
(4, '2024-04-15', 'shipped'),
(5, '2024-04-20', 'pending');

-- Order Items
INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 999.99),
(1, 4, 2, 149.99),
(2, 5, 1, 89.99),
(2, 6, 2, 59.99),
(3, 3, 1, 1299.99),
(4, 8, 1, 79.99),
(4, 9, 1, 49.99),
(5, 11, 1, 499.99),
(6, 2, 1, 899.99),
(7, 7, 1, 129.99),
(7, 10, 1, 34.99),
(8, 14, 1, 49.99),
(8, 15, 1, 39.99),
(9, 12, 1, 89.99),
(10, 13, 2, 12.99),
(11, 4, 1, 149.99),
(12, 5, 2, 89.99),
(13, 1, 1, 999.99),
(14, 8, 1, 79.99),
(15, 11, 1, 499.99);