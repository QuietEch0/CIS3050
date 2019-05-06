/* Write a query to display the book number, title, author last name, author first name, patron ID, last name, and patron type for all books currently checked out to a patron. Sort the results by book title. */


SELECT BOOK.BOOK_NUM, BOOK_TITLE, AU_LNAME, AU_FNAME, PATRON.PAT_ID, PAT_LNAME, PAT_TYPE
FROM BOOK
JOIN CHECKOUT ON CHECKOUT.BOOK_NUM = BOOK.BOOK_NUM
JOIN WRITES ON WRITES.BOOK_NUM = BOOK.BOOK_NUM
JOIN AUTHOR ON AUTHOR.AU_ID = WRITES.AU_ID
JOIN PATRON ON CHECKOUT.PAT_ID = PATRON.PAT_ID
WHERE CHECK_IN_DATE IS NULL
ORDER BY BOOK_TITLE ASC
LIMIT 20;