/* Write a query to display the movie number, movie title, movie cost, and movie genre for all action or comedy movies that cost less than $50. Sort the results in ascending order by genre.

For the queries below, be sure to select the columns in the order shown in each table! All column names containing underscores (_) must be uppercase, for example MOVIE_TITLE. */


SELECT MOVIE_NUM, MOVIE_TITLE, MOVIE_COST, MOVIE_GENRE
FROM MOVIE
WHERE MOVIE_COST < 50 AND (MOVIE_GENRE = 'ACTION' OR MOVIE_GENRE = 'COMEDY')
ORDER BY MOVIE_GENRE ASC;