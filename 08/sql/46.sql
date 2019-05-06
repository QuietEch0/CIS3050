/* Write a query to display the patron ID, patron full name, and patron type for each patron. */


SELECT PAT_ID, CONCAT(PAT_FNAME, " ", PAT_LNAME) AS "Patron Name", PAT_TYPE
FROM PATRON
LIMIT 20;