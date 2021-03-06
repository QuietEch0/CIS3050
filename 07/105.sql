/* Write a query to display the movie title, movie year, and movie genre for all movies sorted by movie genre in ascending order, then sorted by movie year in descending order within genre.

For the queries below, be sure to select the columns in the order shown in each table! All column names containing underscores (_) must be uppercase, for example MOVIE_TITLE. */


SELECT MOVIE_TITLE, MOVIE_YEAR, MOVIE_GENRE
FROM MOVIE
ORDER BY MOVIE_GENRE ASC, MOVIE_YEAR DESC;