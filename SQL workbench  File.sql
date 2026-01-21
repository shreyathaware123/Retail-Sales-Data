-- ### Phase 2: Database Management and Querying ###

# Creating Database retail sales
Create Database retail_sales;
use retail_sales;

# Reading the data from all tables
select * from brands;
select * from categories;
select * from customers;
select * from order_items;
select * from orders;
select * from products;
select * from staffs;
select * from stocks;
select * from stores;

# Adding Primary Keys
 ------------------------------
ALTER TABLE brands
ADD PRIMARY KEY (brand_id);

ALTER TABLE categories
ADD PRIMARY KEY (category_id);

ALTER TABLE customers
ADD PRIMARY KEY (customer_id);

ALTER TABLE order_items
ADD order_item_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY;

ALTER TABLE orders
ADD PRIMARY KEY (order_id);

ALTER TABLE products
ADD PRIMARY KEY (product_id);

ALTER TABLE staffs
ADD PRIMARY KEY (staff_id);

ALTER TABLE stocks
ADD stock_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY;

ALTER TABLE stores
ADD PRIMARY KEY (store_id);

# brands
-- Step 1: Identify the NULL row 

SELECT * FROM brands
WHERE Brand_id IS NULL
  AND Brand_Name IS NULL
;

-- Step 2: Delete the NULL row 

DELETE FROM brands
WHERE Brand_ID IS NULL
  AND Brand_Name IS NULL;
  
#categories
-- Step 1: Identify the NULL row  

SELECT * FROM categories
WHERE Category_ID IS NULL
  AND Category_Name IS NULL
;

-- Step 2: Delete the NULL row 

DELETE FROM categories
WHERE Category_ID IS NULL
  AND Category_Name IS NULL;
  
# customers
-- Step 1: Identify the NULL row  

SELECT * FROM customers
WHERE Customer_ID IS NULL
  AND First_Name IS NULL
  AND Last_Name IS NULL
  AND Email IS NULL
  AND Street IS NULL
  AND City IS NULL
  AND State IS NULL
  AND Zip_Code IS NULL
  ;
  
-- Step 2: Delete the NULL row 

DELETE FROM customers
WHERE Customer_ID IS NULL
  AND First_Name IS NULL
  AND Last_Name IS NULL
  AND Email IS NULL
  AND Street IS NULL
  AND City IS NULL
  AND State IS NULL
  AND Zip_Code IS NULL
  ;

# order_items
-- Step 1: Identify the NULL row  

SELECT * FROM order_items
WHERE Order_ID IS NULL
  AND Item_ID IS NULL
  AND Product_ID IS NULL
  AND Quantity IS NULL
  AND List_Price IS NULL
  AND Discount IS NULL
  AND order_item_id IS NULL
  ;
  
-- Step 2: Delete the NULL row 

DELETE FROM order_items
WHERE Order_ID IS NULL
  AND Item_ID IS NULL
  AND Product_ID IS NULL
  AND Quantity IS NULL
  AND List_Price IS NULL
  AND Discount IS NULL
  AND order_item_id IS NULL
  ;

#orders
-- Step 1: Identify the NULL row  

SELECT * FROM orders
WHERE Order_ID IS NULL
  AND Customer_ID IS NULL
  AND Order_Status IS NULL
  AND Required_Date IS NULL
  AND Shipped_Date IS NULL
  AND Store_ID IS NULL
  AND Staff_ID IS NULL
  ;
  
-- Step 2: Delete the NULL row 

DELETE FROM order_items
WHERE Order_ID IS NULL
  AND Customer_ID IS NULL
  AND Order_Status IS NULL
  AND Required_Date IS NULL
  AND Shipped_Date IS NULL
  AND Store_ID IS NULL
  AND Staff_ID IS NULL
  ;
  
# products
-- Step 1: Identify the NULL row  

SELECT * FROM products
WHERE Product_ID IS NULL
  AND Product_Name IS NULL
  AND Brand_ID IS NULL
  AND Category_ID IS NULL
  AND Model_Year IS NULL
  AND List_Price IS NULL
  ;
  
-- Step 2: Delete the NULL row 

DELETE FROM order_items
WHERE Product_ID IS NULL
  AND Product_Name IS NULL
  AND Brand_ID IS NULL
  AND Category_ID IS NULL
  AND Model_Year IS NULL
  AND List_Price IS NULL
  ;

# staffs
-- Step 1: Identify the NULL row 
  
  SELECT * FROM staffs
  WHERE Staff_ID IS NULL
  AND First_Name IS NULL
  AND Last_Name IS NULL
  AND email IS NULL
  AND phone IS NULL
  AND Active IS NULL
  AND Store_ID IS NULL
  AND Manager_ID IS NULL
  ;
  
-- Step 2: Delete the NULL row 

DELETE FROM staffs
WHERE Staff_ID IS NULL
  AND First_Name IS NULL
  AND Last_Name IS NULL
  AND email IS NULL
  AND phone IS NULL
  AND Active IS NULL
  AND Store_ID IS NULL
  AND Manager_ID IS NULL
  ;
  
#Stocks
-- Step 1: Identify the NULL row 
  
  SELECT * FROM stocks
  WHERE Store_ID IS NULL
  AND Product_ID IS NULL
  AND Quantity IS NULL
  AND stock_id IS NULL
  ;
  
-- Step 2: Delete the NULL row 

DELETE FROM stocks
WHERE Store_ID IS NULL
  AND Product_ID IS NULL
  AND Quantity IS NULL
  AND stock_id IS NULL
  ;
  
#stores
-- Step 1: Identify the NULL row 
  
  SELECT * FROM stores
  WHERE Store_ID IS NULL
  AND Store_Name IS NULL
  AND Phone IS NULL
  AND Email IS NULL
  AND Street IS NULL
  AND City IS NULL
  AND State IS NULL
  AND Zip_Code IS NULL
  ;
  
-- Step 2: Delete the NULL row 

DELETE FROM staffs
WHERE Store_ID IS NULL
  AND Store_Name IS NULL
  AND Phone IS NULL
  AND Email IS NULL
  AND Street IS NULL
  AND City IS NULL
  AND State IS NULL
  AND Zip_Code IS NULL
  ;

# step 3: Verifying nulls are removed

select * from brands;
select * from categories;
select * from customers;
select * from order_items;
select * from orders;
select * from products;
select * from staffs;
select * from stocks;
select * from stores;

-- 1. Remove empty row from brands
DELETE FROM brands
WHERE brand_id IS NULL
   OR brand_name IS NULL;

-- 2. Remove empty row from categories
DELETE FROM categories
WHERE category_id IS NULL
   OR category_name IS NULL;

-- 3. Remove empty row from customers
DELETE FROM customers
WHERE customer_id IS NULL
   OR First_Name IS NULL
   OR Last_Name IS NULL
   OR Email IS NULL
   OR Street IS NULL
   OR City IS NULL
   OR State IS NULL
   OR Zip_Code IS NULL;

-- 4. Remove empty row from order_items
DELETE FROM order_items
WHERE item_id IS NULL
   OR order_id IS NULL
   OR product_id IS NULL
   OR quantity IS NULL
   or List_Price IS NULL
   or Discount IS NULL;

-- 5. Remove empty row from orders
select * from orders;
DELETE FROM orders
WHERE order_id IS NULL
   OR customer_id IS NULL
   OR order_date IS NULL
   or Order_Status IS NULL
   or Required_Date IS NULL
   or Shipped_Date IS NULL
   or Store_ID IS NULL
   or Staff_ID IS NULL;

-- 6. Remove empty row from products
select * from products;
DELETE FROM products
WHERE product_id IS NULL
   OR product_name IS NULL
   OR category_id IS NULL
   OR Brand_ID IS NULL
   or Model_Year IS NULL
   or List_Price IS NULL;

-- 7. Remove empty row from staffs
select * from staffs;
DELETE FROM staffs
WHERE staff_id IS NULL
   OR First_Name IS NULL
   OR Last_Name IS NULL
   or Email IS NULL
   or Phone IS NULL
   or Active IS NULL
   or Store_ID IS NULL
   or Manager_ID IS NULL;

-- 8. Remove empty row from stocks
select * from stocks;
DELETE FROM stocks
WHERE stock_id IS NULL
   OR store_id IS NULL
   OR quantity IS NULL
   or Product_ID IS NULL;

-- 9. Remove empty row from stores
select * from stores;
DELETE FROM stores
WHERE store_id IS NULL
   OR store_name IS NULL
   OR phone IS NULL
   or Email IS NULL
   or Street IS NULL
   or City IS NULL
   or State IS NULL
   or Zip_Code IS NULL;
   
-- ### Creating Foreign Key Relationships Between Tables ###
   
-- 1️ products → categories
ALTER TABLE products
ADD CONSTRAINT fk_products_categories
FOREIGN KEY (category_id) REFERENCES categories(category_id);

-- 2️ products → brands
ALTER TABLE products
ADD CONSTRAINT fk_products_brands
FOREIGN KEY (brand_id) REFERENCES brands(brand_id);

-- 3️ orders → customers
ALTER TABLE orders
ADD CONSTRAINT fk_orders_customers
FOREIGN KEY (customer_id) REFERENCES customers(customer_id);

-- 4️ order_items → orders
ALTER TABLE order_items
ADD CONSTRAINT fk_orderitems_orders
FOREIGN KEY (order_id) REFERENCES orders(order_id);

-- 5️ order_items → products
ALTER TABLE order_items
ADD CONSTRAINT fk_orderitems_products
FOREIGN KEY (product_id) REFERENCES products(product_id);


-- 6️ stocks → stores
ALTER TABLE stocks
ADD CONSTRAINT fk_stocks_stores
FOREIGN KEY (store_id) REFERENCES stores(store_id);

-- 7️  orders → staffs 
ALTER TABLE orders
ADD CONSTRAINT fk_orders_staffs
FOREIGN KEY (staff_id) REFERENCES staffs(staff_id);

### STORE-WISE AND REGION WISE SALES ANALYSIS ### 

## Store-wise Revenue ##
-- Store-wise total revenue
-- Calculates total revenue for each store
SELECT 
    s.store_id,
    s.store_name,
    SUM((oi.list_price - oi.discount) * oi.quantity) AS total_revenue 
FROM stores AS s
JOIN orders AS o
    ON s.store_id = o.store_id
JOIN order_items AS oi
    ON o.order_id = oi.order_id
GROUP BY s.store_id, s.store_name
ORDER BY total_revenue DESC;

### Region-wise Revenue (using state as region) ### 
-- Region-wise total revenue
-- Calculates total revenue for each state (considered as region)

SELECT 
    s.state AS region,
    SUM((oi.list_price - oi.discount) * oi.quantity) AS total_revenue
FROM stores AS s
JOIN orders AS o
    ON s.store_id = o.store_id
JOIN order_items AS oi
    ON o.order_id = oi.order_id
GROUP BY s.state
ORDER BY total_revenue DESC;

select * from products;
select * from order_items;
select * from orders;

### PRODUCT-WISE SALES AND INVENTORY TRENDS ### 

# Product-wise Total Sales and Revenue
-- Product-wise total sales and revenue
-- Calculates total quantity sold and total revenue for each product

-- > This table lets you see which products are selling the most and which generate the most revenue

SELECT 
    p.product_id,
    p.product_name,
    SUM(oi.quantity) AS total_quantity_sold,  -- Total units sold
    SUM((oi.list_price - oi.discount) * oi.quantity) AS total_revenue  -- Total revenue generated
FROM products AS p
JOIN order_items AS oi
    ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_revenue DESC;  -- Top-selling products first

# Product-wise Current Inventory
-- Product-wise inventory
-- Calculates total stock available for each product across all stores

SELECT 
    p.product_id,
    p.product_name,
    SUM(st.quantity) AS total_inventory  -- Total units available in stock
FROM products AS p
JOIN stocks AS st 
    ON p.product_id = st.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_inventory DESC;  -- Products with most stock first

### STAFFS PERFORMANCE REPORT ###	
-- Shows total orders handled and total revenue generated by each staff
-- This table helps to: 1) Total orders handled by each staff, 2) Total revenue generated by each staff

SELECT 
    sf.staff_id,
    CONCAT(sf.first_name, ' ', sf.last_name) AS staff_name,  -- Full name of staff 
    COUNT(DISTINCT o.order_id) AS total_orders,             -- Total orders handled
    # Revenue per order item = (list_price - discount) * quantity
    SUM((oi.list_price - oi.discount) * oi.quantity) AS total_revenue  -- Total revenue generated
FROM staffs AS sf
JOIN orders AS o
    ON sf.staff_id = o.staff_id
JOIN order_items AS oi
    ON o.order_id = oi.order_id
GROUP BY sf.staff_id, staff_name
ORDER BY total_revenue DESC;  -- Shows top-performing staff first

### CUSTOMER ORDERS AND ORDER FREQUENCY ### 
-- Customer Orders and Frequency Report
-- Shows total orders, total items, and total revenue for each customer

SELECT 
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,  -- Full name of customer
    COUNT(DISTINCT o.order_id) AS total_orders,               -- Total orders placed
    SUM(oi.quantity) AS total_items_ordered,                 -- Total quantity of items ordered
    SUM((oi.list_price - oi.discount) * oi.quantity) AS total_revenue  --  Total revenue - (list_price - discount) * quantity
FROM customers AS c
JOIN orders AS o
    ON c.customer_id = o.customer_id
JOIN order_items AS oi
    ON o.order_id = oi.order_id
GROUP BY c.customer_id, customer_name
ORDER BY total_orders DESC;  -- Shows most active customers first

### REVENUE AND DISCOUNT ANALYSIS ### 
-- Shows total revenue, total discount, and average discount per unit for each product

SELECT 
    p.product_id,
    p.product_name,
    SUM((oi.list_price - oi.discount) * oi.quantity) AS total_revenue,  -- Total revenue
    SUM(oi.discount * oi.quantity) AS total_discount,                   -- Total discount given
    AVG(oi.discount) AS avg_discount_per_unit                             -- Average discount per unit
FROM products AS p
JOIN order_items AS oi
    ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_revenue DESC;  -- Shows top revenue-generating products first

### CREATE SQL VIEWS FOR REUSABLE INSIGHTS 

-- 1) Store-wise Total Revenue 
-- CREATE VIEW store_total_revenue AS
SELECT 
    s.store_id,
    s.store_name,
    SUM((oi.list_price - oi.discount) * oi.quantity) AS total_revenue
FROM stores AS s
JOIN orders AS o
    ON s.store_id = o.store_id
JOIN order_items AS oi
    ON o.order_id = oi.order_id
GROUP BY s.store_id, s.store_name;

-- 2) Region-wise Total Revenue
-- CREATE VIEW region_total_revenue AS
SELECT 
    s.state AS region,
    SUM((oi.list_price - oi.discount) * oi.quantity) AS total_revenue
FROM stores AS s
JOIN orders AS o
    ON s.store_id = o.store_id
JOIN order_items AS oi
    ON o.order_id = oi.order_id
GROUP BY s.state;

-- 3) Product-wise Sales and Revenue
CREATE VIEW product_sales AS
SELECT 
    p.product_id,
    p.product_name,
    SUM(oi.quantity) AS total_quantity_sold,
    SUM((oi.list_price - oi.discount) * oi.quantity) AS total_revenue
FROM products AS p
JOIN order_items AS oi
    ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name;

-- 4)Product Inventory
-- CREATE VIEW product_inventory AS
SELECT 
    p.product_id,
    p.product_name,
    SUM(st.quantity) AS total_inventory
FROM products AS p
JOIN stocks AS st 
    ON p.product_id = st.product_id
GROUP BY p.product_id, p.product_name;

-- 5) Staff Performance
-- CREATE VIEW staff_performance AS
SELECT 
    sf.staff_id,
    CONCAT(sf.first_name, ' ', sf.last_name) AS staff_name,
    COUNT(DISTINCT o.order_id) AS total_orders,
    SUM((oi.list_price - oi.discount) * oi.quantity) AS total_revenue
FROM staffs AS sf
JOIN orders AS o
    ON sf.staff_id = o.staff_id
JOIN order_items AS oi
    ON o.order_id = oi.order_id
GROUP BY sf.staff_id, staff_name;

-- 6) Customer Orders and Frequency
-- CREATE VIEW customer_orders AS
SELECT 
    c.customer_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    COUNT(DISTINCT o.order_id) AS total_orders,
    SUM(oi.quantity) AS total_items_ordered,
    SUM((oi.list_price - oi.discount) * oi.quantity) AS total_revenue
FROM customers AS c
JOIN orders AS o
    ON c.customer_id = o.customer_id
JOIN order_items AS oi
    ON o.order_id = oi.order_id
GROUP BY c.customer_id, customer_name;

-- 7) Revenue and Discount Analysis
-- CREATE VIEW revenue_discount AS
SELECT 
    p.product_id,
    p.product_name,
    SUM((oi.list_price - oi.discount) * oi.quantity) AS total_revenue,
    SUM(oi.discount * oi.quantity) AS total_discount,
    AVG(oi.discount) AS avg_discount_per_unit
FROM products AS p
JOIN order_items AS oi
    ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name;

## Reading data from all the views 

SELECT * FROM store_total_revenue;
SELECT * FROM region_total_revenue;
SELECT * FROM product_sales;
SELECT * FROM product_inventory;
SELECT * FROM staff_performance;
SELECT * FROM customer_orders ;
SELECT * FROM  revenue_discount ;







  
 
 
















