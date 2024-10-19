CREATE DATABASE IF NOT EXISTS alx_book_store;

USE alx_book_store;

--Stores information about authors.
CREATE TABLE Authors(
    author_id INT PRIMARY KEY,
    author_name VARCHAR(215)
);

-- Stores information about books available in the bookstore.
CREATE TABLE Books(
    book_id INT PRIMARY KEY,
    title VARCHAR(130),
    author_id INT,
    price DOUBLE,
    publication_date DATE
    FOREIGN KEY (author_id) REFERENCES Authors(author_id),
);


--Stores information about customers.
CREATE TABLE Customers(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
);

--Stores information about orders placed by customers.
CREATE TABLE Orders(
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE
    FOREIGN KEY customer_id REFERENCES Customers(customer_id),
);

--Stores information about the books included in each order.
CREATE TABLE Order_Details(
    order_detail_id INT PRIMARY KEY,
    order_id INT,  
    book_id INT, 
    FOREIGN KEY order_id REFERENCES Orders(order_id),
    FOREIGN KEY book_id REFERENCES Books(book_id)
);