/* Write a query to display the patron ID, book number, patron first name and last name, and book title for all currently checked out books. (Remember to use the redundant relationship described in the assignment instructions for current checkouts.) Sort the output by patron last name and book title. */

SELECT PATRON.PAT_ID, BOOK.BOOK_NUM, PATRON.PAT_FNAME, PATRON.PAT_LNAME, BOOK.BOOK_TITLE
FROM CHECKOUT
JOIN BOOK ON (BOOK.BOOK_NUM = CHECKOUT.BOOK_NUM)
JOIN PATRON ON (PATRON.PAT_ID = CHECKOUT.PAT_ID)
WHERE CHECK_IN_DATE IS NULL
ORDER BY PAT_LNAME ASC, BOOK_TITLE ASC
LIMIT 20;