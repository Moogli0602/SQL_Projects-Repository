use b88;
show tables;
select * from Movies;
-- Exercise - 4
-- list of all director pf pixer movies (alphabetically), without duplicates. --
SELECT DISTINCT
    (director)
FROM
    movies
ORDER BY director ASC;

-- list the last 4 pixer movies released released (odered from most resent to least) -- 
-- list the first five pixer movies shorted alphabetically ---
-- List of next five pixer movies shrted by alphabetically --

SELECT DISTINCT
    title, year 
FROM
    movies
ORDER BY year desc
limit 4;

SELECT DISTINCT
    title, year 
FROM
    movies
ORDER BY title asc
limit 5;

SELECT 
    title
FROM
    movies
ORDER BY title ASC
LIMIT 5 offset 5;

#### csv // json  upload your dataset
select * from movies;
select movie_id from movie_sales;
-- Exercise  - 6
##### Find the Domestic and International Sales for each movie

SELECT 
    title, domestic_sales, international_sales
FROM
    movies m
        JOIN   -- We can use right Join / Left join/ inner join / Full join --
    movie_sales m1 ON m.id = m1.movie_id;
    
-- Show the sales number for each movie that did internationally rather then domestically --    
    SELECT 
    title, domestic_sales, international_sales
FROM
    movies m
        JOIN     
    movie_sales m1 ON m.id = m1.movie_id 
WHERE international_sales > domestic_sales;

-- list all movies by their rating in descesnding order --
SELECT 
    title, rating
FROM
    movies m
        JOIN
    movie_sales m1 ON m.id = m1.movie_id order by rating desc;
    
    ## sub table crations from main table 
 CREATE TABLE Sales_agg (SELECT title, rating FROM
    movies m
        JOIN
    movie_sales m1 ON m.id = m1.movie_id
ORDER BY rating DESC);
    
    select * from Sales_agg;
    
    -- Exercise 7 --

select * from employee_building;
select * from building_capacity;

-- find the list of all buildiings that have employees --

select distinct building from employee_building;
 -- find the list of all bulidings and their capacity --
select * from building_capacity;

-- List of all bulidings and the distinct employee roles in each buliding (including empty bulidings)

SELECT DISTINCT
    building_name, role
FROM
    building_capacity b
        LEFT JOIN
    employee_building b1 ON b.building_name = b1.building;
    
    -- Exercise 8 --
-- Find the name and role of all employee who have not been assigned to a buliding --
    SELECT 
    name, role
FROM
    employee_building
WHERE
    building IS NULL;
    
    -- Find the name of the bulidings that hold on employees--
    
    SELECT DISTINCT
    building_name
FROM
    building_capacity b
        LEFT JOIN
    employee_building b1 ON b.building_name = b1.building
WHERE
    role IS NULL;
    
    
 create temporary table temp
 (
 select title , year from movies
 );
 
 select * from temp;
 
    
    
    
    
    
    
    
    
    
    



 

  


 
