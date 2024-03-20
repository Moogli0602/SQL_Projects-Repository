-- Creating of Database
create database b88;
-- To activate a database
use b88;
-- Creation of Tables
CREATE TABLE student (
    id INT primary key not null,
    name TEXT,
    marks INT
);
-- Select Query to view the table
select * from student;

-- Insert records in tha table
insert into student values (01, "ABC", 45);
insert into student values (02, "CDF", 55);
insert into student values (03, "EFG", 72);

-- Show me only ID and Marks
Select id, marks from student;

-- Create another table in the same database as student_details
-- ID, address, phoneno
CREATE TABLE student_details (
    id INT NOT NULL PRIMARY KEY,
    address TEXT,
    phone INT
);
-- To drop your table from the database
drop table student_details;
#########################################################################



