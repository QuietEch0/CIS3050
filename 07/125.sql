/* Write a query to display the movie number, movie genre, average cost of movies in that genre, cost of the individual movie, and the percentage difference between the average movie cost and the individual movie cost. The results are shown in the table below.

The percentage difference is the cost of the individual movie minus the average cost of movies in that genre, divided by the average cost of movies in that genre multiplied by 100.

For example, if the average cost of movies in the family genre is $25 and a given family movie costs $26, then the calculation would be [(26 − 25) / 25 * 100], or 4.00 percent. In this case, the individual movie costs 4 percent more than the average family movie.

For the queries below, be sure to select the columns in the order shown in each table! All column names containing underscores (_) must be uppercase, for example MOVIE_TITLE. */


/* Using OVER PARTITION BY, MYSQL 8.0 */
SELECT MOVIE_NUM, MOVIE_GENRE, AVG(MOVIE_COST) OVER (PARTITION BY MOVIE_GENRE) AS 'GENRE AVERAGE', MOVIE_COST, ( (MOVIE_COST - AVG(MOVIE_COST) OVER (PARTITION BY MOVIE_GENRE) ) / 25 ) * 100
FROM MOVIE;


/* HOW TO JOIN TWO SELECTS, MYSQL 5.7 */
SELECT ALPHA.MOVIE_NUM, ALPHA.MOVIE_GENRE, BETA.GAVG AS 'Average Cost', ALPHA.MOVIE_COST, ROUND((ALPHA.MOVIE_COST - BETA.GAVG) / BETA.GAVG * 100,2) AS 'PER-DIFF' FROM
(SELECT MOVIE_NUM, MOVIE_GENRE, MOVIE_COST FROM MOVIE) AS ALPHA INNER JOIN
(SELECT MOVIE_GENRE, ROUND(AVG(MOVIE_COST),2) AS GAVG FROM MOVIE GROUP BY MOVIE_GENRE) AS BETA
ON ALPHA.MOVIE_GENRE = BETA.MOVIE_GENRE;