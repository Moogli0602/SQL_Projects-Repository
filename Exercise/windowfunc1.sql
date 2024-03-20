-- Window Functions in SQL
-- 1. row_number()
use b76;
select * from movies;

select title, year, row_number() over() as row_num
from movies;

use b88;
select * from wind;
select *, row_number() over() as row_num from wind;
select *, row_number() over(partition by Dept) as row_num from wind;
select *, row_number() over(partition by Dept order by salary desc) as row_num from wind;
select *, row_number() over(partition by Designation order by salary desc) as row_num from wind;

select *, rank() over(partition by dept order by salary desc) as rank_num from wind;

-- Tuesday will be Last Session  - 07:00 P.M -  






