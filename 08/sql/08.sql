/* Write the query for all the invoices that will show the invoice number, invoice amount, average invoice amount, and difference between the average invoice amount and the actual invoice amount. */

SET @AVG_INV := (SELECT ROUND(AVG(INV_AMOUNT), 2) FROM INVOICE);
SELECT INV_NUM, INV_AMOUNT, @AVG_INV AS AVG_INV, ROUND(INV_AMOUNT - @AVG_INV, 2) AS DIFF
FROM INVOICE;