-- Create Database Uber;
-- Use Uber;

Use demoproject;

-- QUERY TO GET ALL THE DATA FROM THE TABLE
SELECT * FROM onlinesalesdata;


-- QUERY TO EXTRACT MONTH FROM DATE
SELECT `Date`,
		month(Date)
        from onlinesalesdata;

-- QUERY TO GET TOTAL REVENUE LIMITING TO SPECIFIC TIME PERIODS, ORDERED IN DESCENDING
SELECT sum(`Total Revenue`) as Total_Revenue,
    month(Date) as Month 
    from onlinesalesdata
    where `Date` between '2024-01-15 00:00:00' and '2024-06-15 00:00:00'
    group by `Month`
	order by `Total_Revenue` desc;
     
-- QUERY TO GET TRANSACTION COUNT FOR EACH PRODUCT CATEGORY 
SELECT count(distinct(`Transaction ID`)),
	    `Product Category`
        from onlinesalesdata
        group by `Product Category`;
       


