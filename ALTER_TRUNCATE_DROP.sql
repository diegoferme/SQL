CREATE DATABASE Coursera_1;
USE Coursera_1;
CREATE TABLE PETSALE(
ID INTEGER NOT NULL,
PET CHAR(20),
SALEPRICE DECIMAL(6,2),
PROFIT DECIMAL(6,2),
SALEDATE DATE
);
CREATE TABLE PET(
ID INTEGER NOT NULL,
ANIMAL VARCHAR(20),
QUANTITY INTEGER
);

INSERT INTO PETSALE VALUES
    (1,'Cat',450.09,100.47,'2018-05-29'),
    (2,'Dog',666.66,150.76,'2018-06-01'),
    (3,'Parrot',50.00,8.9,'2018-06-04'),
    (4,'Hamster',60.60,12,'2018-06-11'),
    (5,'Goldfish',48.48,3.5,'2018-06-14');
    
INSERT INTO PET VALUES
    (1,'Cat',3),
    (2,'Dog',4),
    (3,'Hamster',2);

SELECT * FROM PETSALE;
SELECT * FROM PET;

ALTER TABLE PETSALE
ADD COLUMN QUANTITY INTEGER;

SELECT * FROM PETSALE;

ALTER TABLE PETSALE
ADD PRIMARY KEY (ID);

UPDATE PETSALE SET QUANTITY = 9 WHERE ID = 1;
UPDATE PETSALE SET QUANTITY = 3 WHERE ID = 2;
UPDATE PETSALE SET QUANTITY = 2 WHERE ID = 3;
UPDATE PETSALE SET QUANTITY = 6 WHERE ID = 4;
UPDATE PETSALE SET QUANTITY = 24 WHERE ID = 5;

SELECT * FROM PETSALE;

ALTER TABLE PETSALE
DROP COLUMN PROFIT;

SELECT * FROM PETSALE;

ALTER TABLE PETSALE CHANGE PET PET VARCHAR(20);
SELECT * FROM PETSALE;

ALTER TABLE PETSALE CHANGE PET ANIMAL VARCHAR(20);
## ALTER TABLE PETSALE
## RENAME COLUMN PET TO ANIMAL;
SELECT * FROM PETSALE;

TRUNCATE TABLE PET;
SELECT * FROM PET;

DROP TABLE PET;
SELECT * FROM PET;