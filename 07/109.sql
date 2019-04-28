/* Write a query to display the movie number, movie title, and movie cost for all movies that cost more than $40.

For the queries below, be sure to select the columns in the order shown in each table! All column names containing underscores (_) must be uppercase, for example MOVIE_TITLE. */


SELECT MOVIE_NUM, MOVIE_TITLE, MOVIE_COST
FROM MOVIE
WHERE MOVIE_COST > 40;