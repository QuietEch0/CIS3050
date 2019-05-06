/* Write a query to display the patron ID, full name (first and last), and patron type for all patrons. Sort the results by patron type, then by last name and first name. Ensure that all sorting is case insensitive. */


SELECT PAT_ID, CONCAT(PAT_FNAME, " ", PAT_LNAME) AS "NAME" , PAT_TYPE
FROM PATRON
ORDER BY PAT_TYPE ASC, PAT_LNAME ASC
LIMIT 20;