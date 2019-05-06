/* Write the query that will generate a combined list of customers from the tables CUSTOMER and CUSTOMER_2 that do not include the duplicate customer records. Only the customer named Juan Ortega shows up in both customer tables. */


SELECT CUST_LNAME, CUST_FNAME FROM CUSTOMER
UNION 
SELECT CUST_LNAME, CUST_FNAME FROM CUSTOMER_2;