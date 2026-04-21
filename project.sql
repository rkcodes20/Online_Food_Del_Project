CREATE DATABASE Food_app_project;
USE Food_app_project;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(255),
    city VARCHAR(255),
    signup_date DATE NOT NULL,
    gender ENUM('Male', 'Female', 'Other')
);

-- CREATE TABLE restaurants (restaurant_id, restaurant_name, city, cuisine, rating))
USE Food_app_project;
CREATE TABLE restaurants (
    restaurant_id INT PRIMARY KEY,
    restaurant_name VARCHAR(255),
    city VARCHAR(255),
    cuisine VARCHAR(255),
    rating FLOAT
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    restaurant_id INT NOT NULL,
    order_date DATE NOT NULL,
    order_amount DECIMAL(10, 2),
    discount DECIMAL(5, 2),
    payment_method ENUM('Cash', 'Card', 'Upi'),
    delivery_time INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (restaurant_id) REFERENCES restaurants(restaurant_id)
);

-- CREATE TABLE delivery_agents (agent_id, agent_name, city, joining_date, rating)
CREATE TABLE delivery_agents (
    agent_id INT PRIMARY KEY,
    agent_name VARCHAR(255),
    city VARCHAR(255),
    joining_date DATE NOT NULL,
    rating DECIMAL(3, 2)
);

-- create table order item (order_item_id, order_id, item_name, quantity, price)
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT NOT NULL,
    item_name VARCHAR(255),
    quantity INT,
    price DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);CREATE TABLE restaurants (
    restaurant_id INT PRIMARY KEY,
    restaurant_name VARCHAR(255),
    city VARCHAR(255),
    cuisine VARCHAR(255),
    rating FLOAT
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    restaurant_id INT NOT NULL,
    order_date DATE NOT NULL,
    order_amount DECIMAL(10, 2),
    discount DECIMAL(5, 2),
    payment_method ENUM('Cash', 'Card', 'Upi'),
    delivery_time INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (restaurant_id) REFERENCES restaurants(restaurant_id)
);

-- CREATE TABLE delivery_agents (agent_id, agent_name, city, joining_date, rating)
CREATE TABLE delivery_agents (
    agent_id INT PRIMARY KEY,
    agent_name VARCHAR(255),
    city VARCHAR(255),
    joining_date DATE NOT NULL,
    rating DECIMAL(3, 2)
);

-- create table order item (order_item_id, order_id, item_name, quantity, price)
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT NOT NULL,
    item_name VARCHAR(255),
    quantity INT,
    price DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

