SELECT * FROM sales_analysis.`sql - retail sales analysis_utf`;
RENAME TABLE `sales_analysis`.`sql - retail sales analysis_utf` TO `sales_analysis`.`retail_sales`;

SELECT * FROM retail_sales
limit 10
;
select count(*) from retail_sales;

ALTER TABLE retail_sales RENAME COLUMN ï»¿transactions_id TO transaction_id;
select * from retail_sales;

-- check null values
select * from retail_sales
where sale_time is null
or 
sale_date is null
or
age is null;

-- delete operation
SET SQL_SAFE_UPDATES = 0;
delete  from retail_sales
where sale_time is null
or 
sale_date is null
or
age is null;
--
-- how many sales you have ?
select count(*) as total_sale from retail_sales;
-- how many customer we have?
select count(distinct customer_id) as total_sale from retail_sales ;

-- 
select count(distinct customer_id) as total_sale from retail_sales ;
--  selecting distint category
select distinct category from retail_sales;

--
select distinct age from retail_sales;
select distinct age from retail_sales;
select distinct price_per_unit from retail_sales;
