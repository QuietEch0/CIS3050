/* The following tables provide a very small portion of the data that will be kept in the database. The data needs to be inserted into the database for testing purposes. Write the INSERT commands necessary to place the following data in the tables that were created in Problem 96. */

/* Insert into MEMBERSHIP */
 
INSERT INTO MEMBERSHIP (MEM_NUM, MEM_FNAME, MEM_LNAME, MEM_STREET, MEM_CITY, MEM_STATE, MEM_ZIP, MEM_BALANCE)
VALUES
(102, 'Tami', 'Dawson', '2632 Takli Circle', 'Norene', 'TN', '37136', 11),
(103, 'Court', 'Knight', '4025 Cornell Court', 'Flatgap', 'KY', '41219', 6),
(104, 'Jamal', 'Melendez', '788 East 145th Avenue', 'Quebeck', 'TN', '38579', 0),
(105, 'Iva', 'Mcclain', '6045 Musket Ball Circle', 'Summit', 'KY', '42783', 15),
(106, 'Miranda', 'Parks', '4469 Maxwell Place', 'Germantown', 'TN', '38183', 0),
(107, 'Rosario', 'Elliott', '7578 Danner Avenue', 'Columbia', 'TN', '38402', 5),
(108, 'Mattie', 'Guy', '4390 Evergreen Street', 'Lily', 'KY', '40740', 0),
(109, 'Clint', 'Ochoa', '1711 Elm Street', 'Greeneville', 'TN', '37745', 10),
(110, 'Lewis', 'Rosales', '4524 Southwind Circle', 'Counce', 'TN', '38326', 0),
(111, 'Stacy', 'Mann', '2789 East Cook Avenue', 'Murfreesboro', 'TN', '37132', 8),
(112, 'Luis', 'Trujillo', '7267 Melvin Avenue', 'Heiskell', 'TN', '37754', 3),
(113, 'Minnie', 'Gonzales', '6430 Vasili Drive', 'Williston', 'TN', '38076', 0)
;
 
/* Insert into RENTAL */
 
INSERT INTO RENTAL (RENT_NUM, RENT_DATE, MEM_NUM)
VALUES
(1001, '2016-03-01', 103),
(1002, '2016-03-01', 105),
(1003, '2016-03-02', 102),
(1004, '2016-03-02', 110),
(1005, '2016-03-02', 111),
(1006, '2016-03-02', 107),
(1007, '2016-03-02', 104),
(1008, '2016-03-03', 105),
(1009, '2016-03-03', 111);
 
/* Insert into PRICE */
 
INSERT INTO PRICE (PRICE_CODE, PRICE_DESCRIPTION, PRICE_RENTFEE, PRICE_DAILYLATEFEE)
VALUES
(1, 'Standard', 2, 1),
(2, 'New Release', 3.5, 3),
(3, 'Discount', 1.5, 1),
(4, 'Weekly Special', 1, 0.5);
 
/* Insert into MOVIE */
 
INSERT INTO MOVIE (MOVIE_NUM, MOVIE_TITLE, MOVIE_YEAR, MOVIE_COST, MOVIE_GENRE, PRICE_CODE)
VALUES
(1234, 'The Cesar Family Christmas', 2014, 39.95, 'FAMILY', 2),
(1235, 'Smokey Mountain Wildlife', 2011, 59.95, 'ACTION', 1),
(1236, 'Richard Goodhope', 2015, 59.95, 'DRAMA', 2),
(1237, 'Beatnik Fever', 2014, 29.95, 'COMEDY', 2),
(1238, 'Constant Companion', 2015, 89.95, 'DRAMA', NULL),
(1239, 'Where Hope Dies', 2005, 25.49, 'DRAMA', 3),
(1245, 'Time to Burn', 2012, 45.49, 'ACTION', 1),
(1246, 'What He Doesn''t Know', 2013, 58.29, 'COMEDY', 1);
 
/* Insert into VIDEO */
 
INSERT INTO VIDEO (VID_NUM, VID_INDATE, MOVIE_NUM)
VALUES
(54321,'2015-06-18',1234),
(54324,'2015-06-18',1234),
(54325,'2015-06-18',1234),
(34341,'2014-01-22',1235),
(34342,'2014-01-22',1235),
(34366,'2016-03-02',1236),
(34367,'2016-03-02',1236),
(34368,'2016-03-02',1236),
(34369,'2016-03-02',1236),
(44392,'2015-10-21',1237),
(44397,'2015-10-21',1237),
(59237,'2016-02-14',1237),
(61388,'2014-01-25',1239),
(61353,'2013-01-28',1245),
(61354,'2013-01-28',1245),
(61367,'2015-07-30',1246),
(61369,'2015-07-30',1246);
 
/* Insert into DETAILRENTAL */
 
INSERT INTO DETAILRENTAL (RENT_NUM, VID_NUM, DETAIL_FEE, DETAIL_DUEDATE, DETAIL_RETURNDATE, DETAIL_DAILYLATEFEE)
VALUES
(1001, 34342, 2, '2016-03-04', '2016-03-02', NULL),
(1001, 61353, 2, '2016-03-04', '2016-03-03', 1),
(1002, 59237, 3.5, '2016-03-04', '2016-03-04', 3),
(1003, 54325, 3.5, '2016-03-04', '2016-03-09', 3),
(1003, 61369, 2, '2016-03-06', '2016-03-09', 1),
(1003, 61388, 0, '2016-03-06', '2016-03-09', 1),
(1004, 44392, 3.5, '2016-03-05', '2016-03-07', 3),
(1004, 34367, 3.5, '2016-03-05', '2016-03-07', 3),
(1004, 34341, 2, '2016-03-07', '2016-03-07', 1),
(1005, 34342, 2, '2016-03-07', '2016-03-05', 1),
(1005, 44397, 3.5, '2016-03-05', '2016-03-05', 3),
(1006, 34366, 3.5, '2016-03-05', '2016-03-04', 3),
(1006, 61367, 2, '2016-03-07', NULL, 1),
(1007, 34368, 3.5, '2016-03-05', NULL, 3),
(1008, 34369, 3.5, '2016-03-05', '2016-03-05', 3),
(1009, 54324, 3.5, '2016-03-05', NULL, 3),
(1001, 34366, 3.5, '2016-03-04', '2016-03-02', 3);