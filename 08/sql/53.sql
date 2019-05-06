/* Write a query to display the book number and the number of times each book has been checked out. Do not include books that have never been checked out. */


SELECT BOOK_NUM, COUNT(CHECK_OUT_DATE) AS "Times Checked Out"
FROM CHECKOUT
WHERE CHECK_OUT_DATE IS NOT NULL
GROUP BY BOOK_NUM
ORDER BY COUNT(CHECK_OUT_DATE) DESC
LIMIT 20;