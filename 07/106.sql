/* Write a query to display the movie number, movie title, and price code for all movies with a title that starts with the letter R.

For the queries below, be sure to select the columns in the order shown in each table! All column names containing underscores (_) must be uppercase, for example MOVIE_TITLE. */


SELECT MOVIE_NUM, MOVIE_TITLE, PRICE_CODE
FROM MOVIE
WHERE MOVIE_TITLE LIKE 'R%';