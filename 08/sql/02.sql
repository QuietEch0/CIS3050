/* Insert the data into the tables you created in Problem 1 using the data shown in the diagram above. */


INSERT INTO CUSTOMER VALUES (
	NULL, 'Smith', 'Jeanne', 1050.11);
SET @1000 = LAST_INSERT_ID();
INSERT INTO CUSTOMER VALUES (
	NULL, 'Ortega', 'Juan', 840.92);
SET @1001 = LAST_INSERT_ID();

INSERT INTO INVOICE VALUES
	(NULL, @1000, '2016-03-23', 235.89),
	(NULL, @1001, '2016-03-23', 312.82),
	(NULL, @1001, '2016-03-30', 528.10),
	(NULL, @1000, '2016-04-12', 194.78),
	(NULL, @1000, '2016-04-23', 619.44)
;

INSERT INTO CUSTOMER_2 VALUES
	(NULL, 'McPherson', 'Anne'),
	(NULL, 'Ortega', 'Juan'),
	(NULL, 'Kowalski', 'Jan'),
	(NULL, 'Chen', 'George')
;