/* Write a query to display the movie year, movie title, and movie cost sorted by movie year in descending order.

For the queries below, be sure to select the columns in the order shown in each table! All column names containing underscores (_) must be uppercase, for example MOVIE_TITLE. */


SELECT MOVIE_YEAR, MOVIE_TITLE, MOVIE_COST
FROM MOVIE
ORDER BY MOVIE_YEAR DESC, MOVIE_TITLE ASC;