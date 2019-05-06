/* Write the query to show the invoice number, customer number, customer name, invoice date, and invoice amount for all customers in the CUSTOMER table with a balance of $1,000 or more. */


SELECT INVOICE.INV_NUM, CUSTOMER.CUST_NUM, CUSTOMER.CUST_LNAME, CUSTOMER.CUST_FNAME, DATE_FORMAT(INVOICE.INV_DATE, '%d-%b-%y') AS INV_DATE, INVOICE.INV_AMOUNT 
FROM CUSTOMER
INNER JOIN INVOICE ON CUSTOMER.CUST_NUM = INVOICE.CUST_NUM
WHERE CUSTOMER.CUST_BALANCE >= 1000.00;