select * from retail_sales;
-- data analytics and business key problems and answers

-- Q1. write a sql query to retrive all column for sales made on "2022-11-05"
select * from retail_sales 
where sale_date = "2022-11-05";
-- Q2. write query for all trasaction where the category is 'clothing' and the quantity 
--     sold is more than 10 in the month of nov-22

SELECT *
FROM retail_sales
WHERE category = 'clothing'
  AND DATE_FORMAT(sale_date, '%Y-%m') = '2022-11'
  and
  quantiy > 3 ;
-- Q3. write the sql query to calculate the total sales for each category.
select  
category, sum(total_sale) as net_sale,
		  count(*) as total_orders
 from retail_sales
group by 1;
-- Q 4 . write a sql query to find the average age of who purchased item form the 'beuty' category
select 
    avg(age) 
from retail_sales
where category='Beauty';

-- Q5. write a sql query to find all trasaction where the total_sales is greter than 1000.

select * from retail_sales
where total_sale > 1000 ;
  
--  Q6 .write a sql query for to find the total number of trasactions made by each gender in each in category.alter
  select 
     category,
     gender,
     count(*) as total_trans
from retail_sales
group by category,
		 gender
order by 1;
     
-- Q 7.  write a query to calculate the average sale for each month. find out best selling month in each year.
SELECT *
FROM (
  SELECT
    EXTRACT(YEAR FROM sale_date) AS year,
    EXTRACT(MONTH FROM sale_date) AS month,
    AVG(total_sale) AS avg_monthly_sale,
    RANK() OVER (
      PARTITION BY EXTRACT(YEAR FROM sale_date)
      ORDER BY AVG(total_sale) DESC
    ) AS sale_rank
  FROM
    retail_sales
  GROUP BY
    EXTRACT(YEAR FROM sale_date),
    EXTRACT(MONTH FROM sale_date)
) AS ranked_months
WHERE sale_rank = 1;


-- Q8.  write sql query to find the top  5 customers based on the highest sales
select 
    customer_id,
    sum(total_sale) as total_sales
 from retail_sales
 group by 1
 order by 2 desc
 limit 5
 ;
 -- Q9. write a sql query to find the number of unique customers who purches item from category.
;

-- Q10. write a sql query to create and shift and number of orders (example morning 12, 17, evening >17)
WITH hourly_sale AS (
    SELECT *,
        CASE
            WHEN EXTRACT(HOUR FROM sale_time) < 12 THEN 'morning'
            WHEN EXTRACT(HOUR FROM sale_time) BETWEEN 12 AND 17 THEN 'afternoon'
            ELSE 'evening'
        END AS shift
    FROM retail_sales
)

SELECT 
    shift,
    COUNT(*) AS total_orders
FROM 
    hourly_sale
GROUP BY 
    shift;
