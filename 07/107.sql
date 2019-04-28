/* Write a query to display the movie title, movie year, and movie cost for all movies that contain the word hope in the title. Sort the results in ascending order by title.

For the queries below, be sure to select the columns in the order shown in each table! All column names containing underscores (_) must be uppercase, for example MOVIE_TITLE. */


SELECT MOVIE_TITLE, MOVIE_YEAR, MOVIE_COST
FROM MOVIE
WHERE MOVIE_TITLE LIKE '%hope%'
ORDER BY MOVIE_TITLE ASC;