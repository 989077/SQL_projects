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
