/* Write a query to display the movie genre and the number of movies in each genre.

For the queries below, be sure to select the columns in the order shown in each table! All column names containing underscores (_) must be uppercase, for example MEM_NUM. */


SELECT MOVIE_GENRE, COUNT(*) AS 'Number of Movies'
FROM MOVIE
GROUP BY MOVIE_GENRE;