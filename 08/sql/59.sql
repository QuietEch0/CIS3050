/* Write a query to display the patron ID, first and last name of all patrons that have never checked out any book. Sort the result by patron last name then first name. */


SELECT PATRON.PAT_ID, PAT_FNAME, PAT_LNAME
FROM PATRON
WHERE NOT EXISTS (SELECT * FROM CHECKOUT WHERE CHECKOUT.PAT_ID = PATRON.PAT_ID)
ORDER BY PAT_LNAME ASC, PAT_FNAME ASC
LIMIT 20;