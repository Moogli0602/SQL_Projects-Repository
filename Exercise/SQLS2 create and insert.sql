-- creating database
create database b88;
-- to activatedata base
use b88;
-- create table
CREATE TABLE student (
    id INT primary key not null,
    name TEXT,
    marks INT
);
-- select Qury to view the table
select * from student;
 -- insert records in the table
 insert into student value (01, "ABC",45);
 insert into student value (02, "CDF",55);
  insert into student value (03, "EFG",72);
  select id, marks from student;
  -- create another table in the same data base as student_details
  -- id Address Phone
  CREATE TABLE student_details (
    Id INT primary key not null,
    Address TEXT,
    Phone INT
);
drop table student_details;