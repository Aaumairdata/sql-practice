-- I will revise my sql concepts today.
-- I will focus on understanding the basics of SQL, including SELECT statements
-- , WHERE clauses,
--  JOIN operations, and aggregate functions. I will also practice writing queries to retrieve data from different tables and apply filters to get specific results. Additionally, I will review the use of GROUP BY and ORDER BY clauses to organize and summarize data effectively. 


-- Exercise 1 for simple fetching data from tables

Select title from movies;
Select director from movies;
Select title,director from movies;
Select title,yyear from movies;
Select * from movies;

-- Exercise 2 for fetching data from tables with conditions (where clause)

-- selecting the row where id is 6
select * from movies where id=6

-- selecting the range of movies released in between 2000 and 2010
Select * from movies where Year BETWEEN 2000 AND 2010;

-- selecting the range of movies not released in years between 2000 and 2010
Select * from movies where Year not Between 2000 and 2010;

-- Find the first 5 Pixar movies and their release year
SELECT Title, Year FROM movies Where id <=5;

-- Exercise 3 for simple fetching data from tables