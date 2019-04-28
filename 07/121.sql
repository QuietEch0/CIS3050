/* Write a query to display the membership number, first name, last name, and balance of the memberships that have a rental.

For the queries below, be sure to select the columns in the order shown in each table! All column names containing underscores (_) must be uppercase, for example MOVIE_TITLE. */


SELECT MEMBERSHIP.MEM_NUM, MEMBERSHIP.MEM_FNAME, MEMBERSHIP.MEM_LNAME, MEMBERSHIP.MEM_BALANCE
FROM MEMBERSHIP
INNER JOIN RENTAL ON MEMBERSHIP.MEM_NUM = RENTAL.MEM_NUM;