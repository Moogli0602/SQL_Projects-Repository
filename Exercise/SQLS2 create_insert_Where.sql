use b88;
/* Show tabel Multi-line comments */
Show tables;
select * from Student;
CREATE TABLE Movies (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    title VARCHAR(255) NOT NULL,
    director VARCHAR(255),
    year INT,
    length_minutes INT
);
-- insert Recored in table
INSERT INTO Movies VALUES (01, 'Toy Story', 'John Lasseter', 1995, 81);
INSERT INTO Movies VALUES (02, 'A Bugs Life', 'John Lasseter', 1998, 95);
INSERT INTO Movies VALUES (03, 'Toy Story 2', 'John Lasseter', 1999, 93);
INSERT INTO Movies VALUES (04, 'Monsters, Inc.', 'Pete Docter', 2001, 92);
INSERT INTO Movies VALUES (05, 'Finding Nemo', 'Andrew Stanton', 2003, 107);
INSERT INTO Movies VALUES (06, 'The Incredibles', 'Brad Bird', 2004, 116);
INSERT INTO Movies VALUES (07, 'Cars', 'John Lasseter', 2006, 117);
INSERT INTO Movies VALUES (08, 'Ratatouille', 'Brad Bird', 2007, 115);
INSERT INTO Movies VALUES (09, 'WALL-E', 'Andrew Stanton', 2008, 104);
INSERT INTO Movies VALUES (10, 'Up', 'Pete Docter', 2009, 101);
INSERT INTO Movies VALUES (11, 'Toy Story 3', 'Lee Unkrich', 2010, 103);
INSERT INTO Movies VALUES (12, 'Cars2', 'John Lasseter', 2011, 120);
INSERT INTO Movies VALUES (13, 'Brave', 'Brenda Chapman', 2012, 102);
INSERT INTO Movies VALUES (14, 'Monsters University', 'Dan Scanlon', 2013, 110);

-- Exercise 1 — Tasks
/* Find the title of each film
• Find the director of each film
• Find the title and director of each film
• Find the title and year of each film
• Find all the information about each film */

select title from Movies;
select director from Movies;
select title, year from Movies; 
select title, director from Movies; 
select * from Movies;

#Exercise 2 — Tasks
/* 
 Find the movie with a row id of 6
• Find the movies released in the years 
between 2000 and 2010
• Find the movies not released in the years 
between 2000 and 2010
• Find the first 5 Pixar movies and their 
release year */
select title from Movies where id = 6;
select title from Movies where year between 2000 and 2010;
select title from Movies where year not between 2000 and 2010;
select title, year from Movies where year <= 2003;

#Exercise 3 — Tasks
/*  • Find all the Toy Story movies 
• Find all the movies directed by John Lasseter 
• Find all the movies (and director) not 
directed by John Lasseter 
• Find all the WALL-* movies */
select title, director from Movies where title like "%Toy Story%";
select title, director from Movies where director like "%John Lasseter%"; -- or
select title, director from Movies where director = "John Lasseter";
select title, director from Movies where director <> "John Lasseter";
select * from Movies where title like "WALL-_";