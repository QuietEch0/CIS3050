/* Write a query to display the minimum balance, maximum balance, and average balance for memberships that have a rental.

For the queries below, be sure to select the columns in the order shown in each table! All column names containing underscores (_) must be uppercase, for example MOVIE_TITLE. */


SELECT MIN(MEM_BALANCE) AS 'Minimum Balance', MAX(MEM_BALANCE) AS 'Maximum Balance', AVG(MEM_BALANCE) AS 'Average Balance'
FROM MEMBERSHIP;