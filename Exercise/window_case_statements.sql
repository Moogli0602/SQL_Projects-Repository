### Window Functions  ---
### 1. row_number() #### It will just assign some values over clause

use employees;
select * from salaries;

#### Row Number --
select emp_no, salary, row_number() over() as Row_num
from salaries;

select emp_no, salary, row_number() over(partition by emp_no order by salary desc) as Row_num
from salaries;

select a.emp_no, max(salary) as max_salary from
(select emp_no, salary, row_number() over (partition by emp_no order by salary desc) as Row_num from salaries)
a group by emp_no;

select a.emp_no, max(salary) as max_salary from
(select emp_no, salary from salaries) a group by emp_no;

#### Rank and Dense Rank
select emp_no, salary, rank() over(partition by emp_no order by salary desc) as Rank_
from salaries;

select emp_no, salary, dense_rank() over(partition by emp_no order by salary desc) as Rank_
from salaries;

select emp_no, salary, rank() over(partition by emp_no order by salary desc) as Rank_
from salaries where emp_no = 11839;

select emp_no, salary, dense_rank() over(partition by emp_no order by salary desc) as Rank_
from salaries where emp_no = 11839;

#### Lag and Lead Functions ### Lag stands for previous and lead for the next one
select * from salaries;

select emp_no, salary, from_date, lag(salary,2) over(partition by from_date) as Lag_
from salaries ;

select emp_no, salary, lead(salary,2) over(partition by emp_no order by salary desc) as lead_
from salaries ;

### Aggregate Function  - MAX, MIn, Avg,count

select * , 
max(salary) over(partition by emp_no) max_salary,
min(salary) over(partition by emp_no) min_salary 
from salaries;


select * , 
avg(salary) over(partition by emp_no) sum_salary
from salaries;

#### If Condittion
select * from employees;
select emp_no,first_name, last_name,
if(gender = 'M', 'Male', 'Female') as gender
from employees;

#### Case Statement
select emp_no,first_name, last_name,
case gender when 'M' then 'Male'
else 'Female' end as gender
from employees;

select * from salaries;
select emp_no, salary,
case when salary < 65000 then 'Salary less_than 65K'
when salary > 65000 then 'Salary greater tha 65K' end as Salary_bracket
from salaries;


