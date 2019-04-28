/* Write a single SQL command to increase all price rental fee values in the PRICE table by $0.50. */


UPDATE PRICE
SET PRICE_RENTFEE = PRICE_RENTFEE + 0.50;