-- Exercise 12

-- Find the number of movies each director has directed 
SELECT director, COUNT(Title) FROM movies GROUP BY director;

-- Find the total domestic and international sales that can be attributed to each director
Select director,SUM((domestic_sales+international_sales)) as Total_Sales
from movies 
Inner join boxoffice on movies.id=boxoffice.movie_id 
Group by director

-- Exercise 13 (Insert Querries )

-- Add the studio's new production, Toy Story 4 to the list of movies (you can use any director)
Insert INTO Movies(Title,Director,Year,Length_minutes) VALUES ('Toy Story 4','Umair Shabbir',2026,30);


--  Toy Story 4 has been released to critical acclaim!
--  It had a rating of 8.7,
--  and made 340 million domestically 
--  and 270 million internationally.
--  Add the record to the BoxOffice table.
Insert INTO 
Boxoffice(Movie_id,Rating,Domestic_sales,International_sales)
VALUES (15,88.7,340*1000000,270*1000000);

-- Exercise 14 (Update Queries)    

-- The director for A Bug's Life is incorrect, it was actually directed by John Lasseter ✓
Update Movies 
Set Director = "John Lasseter" 
Where Title like "A Bug's Life";

-- The year that Toy Story 2 was released is incorrect, it was actually released in 1999
Update Movies Set Year = 1999 where Title like "Toy Story 2";

-- Both the title and director for
--  Toy Story 8 is incorrect! The title 
--  should be "Toy Story 3" and it was directed by Lee Unkrich

Update movies 
set title="Toy Story 3", director="Lee Unkrich"
where title="Toy Story 8";


-- Exercise 15 (Delete Queries)

-- This database is getting too big, lets remove all movies that were released before 2005.
Delete from movies where year<2005

-- Andrew Stanton has also left the studio, so please remove all movies directed by him. ✓
Delete from movies where Director like "Andrew Stanton"
