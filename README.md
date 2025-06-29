# Online-Book-Store-DB-Project
# 📚 Online Bookstore SQL Project

This project simulates a basic Online Bookstore system built using SQL. It includes a relational database with three core tables: Customers, Books, and Orders. The project demonstrates database design, data insertion, and a series of SQL queries to retrieve meaningful insights about customer purchases, book inventory, and order history.

📁 Project Contents
This repository includes the following files:

schema.sql – SQL commands to create all three tables with proper keys and constraints

queries.sql – A collection of 20 useful SQL queries with use-case-oriented logic

Customers.csv, Books.csv, Orders.csv – Sample CSV files to populate the tables

README.md – Documentation and project overview (this file)

🗃️ Database Schema
The database consists of the following three tables:

🧑 Customers
customer_id – SERIAL (Primary Key)

name – Customer name

email – Email address

phone – Contact number

city – City of residence

country – Country of residence

📘 Books
book_id – SERIAL (Primary Key)

title – Title of the book

author – Author name

genre – Genre (e.g., Fiction, Sci-Fi)

published_year – Year the book was published

price – Price of the book

stock – Number of copies in stock

🧾 Orders
order_id – SERIAL (Primary Key)

customer_id – Foreign Key referencing Customers

book_id – Foreign Key referencing Books

order_date – Date of the order

quantity – Quantity of books ordered

total_amount – Total amount for the order


🧠 SQL Queries Included
The queries.sql file contains 20 useful queries, such as:

Retrieve all books in the 'Fiction' genre

Find books published after 1950

List all customers from Canada

Show all orders by a particular customer

Calculate total sales per customer

Display out-of-stock books

Find the most frequently ordered books

Join books and orders to show order details

Sort books by price or stock

Count total customers per country

These queries use standard SQL operations like SELECT, WHERE, JOIN, GROUP BY, ORDER BY, and more.

🛠 Tools Used
Database: PostgreSQL

Data Format: CSV for input data

SQL Scripting: .sql files for schema and queries

🚀 How to Run This Project
Clone or download this repository

Import schema.sql into your SQL environment (PostgreSQL, MySQL, etc.)

Load the Customers.csv, Books.csv, and Orders.csv data into their respective tables

Run the queries from queries.sql to test and analyze the system

✅ Use Cases Demonstrated
Customer segmentation by country

Book catalog filtering by genre, price, or stock

Order history analysis

Revenue calculation

Inventory tracking

👨‍🎓 Learning Objectives
This project demonstrates key database concepts, including:

Table creation and data types

Primary and foreign key relationships

Writing efficient SQL queries

Working with CSV data sources.



