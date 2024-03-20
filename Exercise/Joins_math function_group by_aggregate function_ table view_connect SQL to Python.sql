use b88;

-- Exercise 9 -- 

-- List all movies and their combined sales in millons of dollars--

select * from Movie_sales; 

SELECT 
    title,
    (domestic_sales + international_sales) / 1000000 AS combined_sales
FROM
    movies m
        INNER JOIN
    movie_sales m1 ON m.id = m1.movie_id;
    
    -- List all Movies and their ratings in percent --
    SELECT 
    title,
    (rating)*10 AS Percentage_rating
FROM
    movies m
        INNER JOIN
    movie_sales m1 ON m.id = m1.movie_id;
    
   -- List all moives that were released on even number year --
   
   SELECT 
    title, year
FROM
    movies
WHERE
    year % 2 = 0;
    
#### You can create views for that  - Virtual table It will get stored but take 
#### much space in your memory

create view mv1 as 
(
SELECT 
    title,
    (domestic_sales + international_sales) / 1000000 AS combined_sales
FROM
    movies m
        INNER JOIN
    movie_sales m1 ON m.id = m1.movie_id);
    
    select * from mv1;
    
    -- Exercise 10
    -- Find the longest time that an employee has been at the studio -- 
select name, max(Years_employed) as Max_employment from employee_building
group by name order by Max_employment desc limit 1;
    
    -- For each role find the average number of years employed by employees in that role -- 
    
    select role, avg(Years_employed) as Avg_employment from employee_building
group by role;

-- Find the total number of employee years workes worked in each building -- 

select role, sum(Years_employed) as Total_employment from employee_building
group by role;

select * from movies;

SELECT 
    title, AVG(length_mins) AS Avg_len
FROM
    movies
WHERE
    director = 'John Lassester'
group by title having Avg_len < 100;

-- Exercise 11 -- 

-- Find the number of Artists in the studio (Without a Having Clause) --

select role, count(*) as num_artists
from employee_building where role  = 'Artist';

-- Find the number of Employees of each role in the studio -- 

select role, count(*) 
from employee_building group by role;

-- Find the total number of years employed by all engineers -- 

SELECT 
    role, SUM(Years_employed)
FROM
    employee_building
GROUP BY role
HAVING role = 'Engineer';

#### How to connect Python with MySQL and Pull the data from there ---














    


   