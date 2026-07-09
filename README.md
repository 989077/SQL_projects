# SQL PROJECTS
# Project 1
This is a comprehensive SQL project involving Database Design, CRUD operations, and Advanced Data Analysis. Below is a structured README.md file you can use for your GitHub repository.
# Library Management System - SQL Sales & Analytics
📌 Project Overview
 -- This project demonstrates the implementation of a Library Management System using SQL. It covers the end-to-end process of creating a database, defining table relationships (schemas), performing CRUD operations, and generating complex analytical reports to manage library operations like book issues, returns, and employee performance.

🏗️ Database Schema
The database, library_db, consists of the following 6 core tables:

1. Branch: Information about various library branches.

2. Employees: Staff details and branch assignments.

3. Members: Registered library users.

4. Books: Inventory including category, price, and availability status.

5. Issued_Status: Tracks which books were issued to which members by which employees.

6. Return_Status: Records the return dates of issued books.


## 🚀 Features & Tasks
1. Database Setup & CRUD
Schema Creation: Built a relational database with primary and foreign keys.

Data Insertion: Populated tables with sample data for members, books, and employees.

Updates: Managed data integrity (e.g., updating member addresses).

Deletions: Handled records removal based on specific conditions.

2. Advanced Data Analysis
The project includes several complex queries to solve real-world library problems:

Overdue Tracking: Identified members with books kept longer than the 30-day return period.

Revenue Generation: Calculated total rental income grouped by book category.

Employee Performance: Linked employees to their respective managers and branches for reporting.

Active Membership: Automated the identification of "Active Members" who borrowed books within the last 2 months.

3. Reporting & Summary Tables
Used CTAS (Create Table As Select) to generate dynamic reports:

book_issued_cnt: Tracks how many times each book title has been issued.

branch_reports: A high-level summary showing total books issued, returned, and total revenue per branch.

# 📝 Troubleshooting & Notes
Foreign Key Integrity: Ensure that books and members records exist before inserting into issued_status.

Date Formats: The analysis uses CURRENT_DATE and INTERVAL. Depending on your SQL engine (MySQL vs. PostgreSQL), syntax for date subtraction may vary slightly.

#  🛍️ Retail Sales Analysis SQL Project

📊 Project Overview
This project focuses on performing exploratory data analysis (EDA) and resolving core business challenges using Structured Query Language (SQL). By querying a structured transaction dataset retail_sales, the analysis aims to reveal actionable business insights on consumer demographics, seasonal shopping frequencies, high-value conversion pipelines, and behavioral patterns relative to temporal shift shifts.

The query scripts cover essential analytical techniques, including aggregations, window operations (RANK()), date formatting transformations, and conditional categorization logic (CASE statements).

🛠️ Data Code Review & Quality Assurance
During standard optimization passes of your source queries, the following updates were established to maintain syntax stability across standard relational engines (such as MySQL and PostgreSQL):

Typo Resolution (Q2): Corrected a critical column structural mismatch where quantiy was specified instead of quantity.

Logic Alignment (Q2): The question requested transactions where quantity sold is more than 10, but the code checked > 3. This has been updated to quantity > 10 to match the business request.

Missing Solution Deployment (Q9): Handled and provided the core syntax layout resolving the missing implementation for counting distinct consumers per retail category.

Keyword Collision Safeguards (Q4): Modified text parameters like 'beuty' to match clean string conventions 'Beauty' while ensuring robust data coverage.

🚀 Key Business Problems Solved (Questions & Code)
