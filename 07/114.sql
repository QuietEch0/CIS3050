/* Write a query to display the movie genre and average cost of movies in each genre.

For the queries below, be sure to select the columns in the order shown in each table! All column names containing underscores (_) must be uppercase, for example MEM_NUM. */


SELECT MOVIE_GENRE, ROUND(AVG(MOVIE_COST), 2) AS 'Average Movie Cost'
FROM MOVIE
GROUP BY MOVIE_GENRE;