/* Create the tables shown in the diagram. */


CREATE TABLE CUSTOMER (
  CUST_NUM INT(4) PRIMARY KEY AUTO_INCREMENT, CUST_LNAME VARCHAR(15), CUST_FNAME VARCHAR(15), CUST_BALANCE DECIMAL(8,2)
)AUTO_INCREMENT=1000;

CREATE TABLE CUSTOMER_2 (
  CUST_NUM INT(4) PRIMARY KEY AUTO_INCREMENT, CUST_LNAME VARCHAR(15), CUST_FNAME VARCHAR(15)
)AUTO_INCREMENT=2000;

CREATE TABLE INVOICE (
  INV_NUM INT(4) PRIMARY KEY AUTO_INCREMENT, CUST_NUM INT(4), INV_DATE DATE, INV_AMOUNT DECIMAL(8,2),  FOREIGN KEY(CUST_NUM) REFERENCES CUSTOMER(CUST_NUM) ON UPDATE CASCADE ON DELETE CASCADE)AUTO_INCREMENT=8000;