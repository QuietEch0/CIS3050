/* Write a query to display the patron ID, last name, number of times that patron has ever checked out a book, and the number of different books the patron has ever checked out. For example, if a given patron has checked out the same book twice, that would count as two checkouts but only one book. Limit the results to only patrons that have made at least three checkouts. Sort the results in descending order by number of books, then in descending order by number of checkouts, then in ascending order by patron ID. */


SELECT CHECKOUT.PAT_ID, PAT_LNAME, COUNT(CHECK_NUM) AS "NUM CHECKOUTS", COUNT(DISTINCT(BOOK_NUM) ) AS "NUM DIFFERENT BOOKS"
FROM CHECKOUT
JOIN PATRON ON PATRON.PAT_ID = CHECKOUT.PAT_ID
GROUP BY CHECKOUT.PAT_ID
HAVING COUNT(CHECK_NUM) > 2
ORDER BY COUNT(DISTINCT(BOOK_NUM)) DESC, COUNT(CHECK_NUM) DESC, CHECKOUT.PAT_ID ASC
LIMIT 20;