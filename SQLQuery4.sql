-- ALTER Operation

--PART-A

--1. Add two more columns City VARCHAR (20) and Pincode INT.
ALTER TABLE DEPOSIT
ADD CITY VARCHAR(20),PINCODE INT;

SELECT * FROM DEPOSIT;
--2. Change the size of CNAME column from VARCHAR (50) to VARCHAR (35).
ALTER TABLE DEPOSIT
ALTER COLUMN CNAME VARCHAR(35);

SELECT * FROM DEPOSIT;
--3. Change the data type DECIMAL to INT in amount Column.
ALTER TABLE DEPOSIT
ALTER COLUMN AMOUNT INT;

SELECT * FROM DEPOSIT;
--4. Rename Column ActNo to ANO.
EXEC SP_RENAME 'DEPOSIT.ACTNO','ANO';

SELECT * FROM DEPOSIT;
--5. Delete Column City from the DEPOSIT table.
ALTER TABLE DEPOSIT
DROP COLUMN CITY;

SELECT * FROM DEPOSIT;
--6. Change name of table DEPOSIT to DEPOSIT_DETAIL.
EXEC SP_RENAME 'DEPOSIT','DEPOSIT_DETAIL';

SELECT * FROM DEPOSIT_DETAIL;

-- FOR COPY DEPOSIT FROM DEPOSIT_DETAIL

SELECT * INTO DEPOSIT_DETAIL FROM DEPOSIT;

--PART-B:

--1. Rename Column ADATE to AOPENDATE OF DEPOSIT_DETAIL table.
EXEC SP_RENAME 'DEPOSIT_DETAIL.ADATE' , 'AOPENDATE';

SELECT * FROM DEPOSIT_DETAIL;
--2. Delete Column AOPENDATE from the DEPOSIT_DETAIL table.
ALTER TABLE DEPOSIT_DETAIL
DROP COLUMN AOPENDATE;

SELECT * FROM DEPOSIT_DETAIL;
--3. Rename Column CNAME to CustomerName.

EXEC SP_RENAME 'DEPOSIT_DETAIL.CNAME' , 'CUSTOMERNAME';

SELECT * FROM DEPOSIT_DETAIL;

--PART-C

CREATE TABLE STUDENT_DETAIL(
	ENROLLMENT_NO VARCHAR(20),
	NAME VARCHAR(25),
	CPI DECIMAL(5,2),
	BIRTHDATE DATETIME
);

--1. Add two more columns City VARCHAR (20) (Not null) and Backlog INT (Null).
ALTER TABLE STUDENT_DETAIL
ADD CITY VARCHAR(20) NOT NULL DEFAULT 'RAJKOT',BACKLOG INT;

SELECT * FROM STUDENT_DETAIL;
--2. Change the size of NAME column of student_detail from VARCHAR (25) to VARCHAR (35).
ALTER TABLE STUDENT_DETAIL
ALTER COLUMN NAME VARCHAR(35);

SELECT * FROM STUDENT_DETAIL;
--3. Change the data type DECIMAL to INT in CPI Column.
ALTER TABLE STUDENT_DETAIL
ALTER COLUMN CPI INT;

SELECT * FROM STUDENT_DETAIL;
--4. Rename Column Enrollment_No to ENO.
EXEC SP_RENAME 'STUDENT_DETAIL.ENROLLMENT_NO' , 'ENO';

SELECT * FROM STUDENT_DETAIL;
--5. Delete Column City from the student_detail table.
ALTER TABLE STUDENT_DETAIL
DROP COLUMN CITY;

SELECT * FROM STUDENT_DETAIL;
--6. Change name of table student_detail to STUDENT_MASTER
EXEC SP_RENAME 'STUDENT_DETAIL' , 'STUDENT_MASTER';

SELECT * FROM STUDENT_MASTER;

-- FOR COPY STUDENT_DETAIL FROM STUDENT_MASTER

SELECT * INTO STUDENT_DETAIL FROM STUDENT_MASTER;

SELECT * FROM STUDENT_DETAIL;

-- DELETE , TRUNCATE , DROP Operation

--PART-A

--1. Delete all the records of DEPOSIT_DETAIL table having amount greater than and equals to 4000.
DELETE FROM DEPOSIT_DETAIL
WHERE AMOUNT >= 4000;

SELECT * FROM DEPOSIT_DETAIL;
--2. Delete all the accounts CHANDI BRANCH.
DELETE FROM DEPOSIT_DETAIL
WHERE BNAME = 'CHANDI';

SELECT * FROM DEPOSIT_DETAIL;
--3. Delete all the accounts having account number (ANO) is greater than 105.
DELETE FROM DEPOSIT_DETAIL
WHERE ANO > 105;

SELECT * FROM DEPOSIT_DETAIL;
--4. Delete all the records of Deposit_Detail table. (Use Truncate)
TRUNCATE TABLE DEPOSIT_DETAIL;

SELECT * FROM DEPOSIT_DETAIL;
--5. Remove Deposit_Detail table. (Use Drop)
DROP TABLE DEPOSIT_DETAIL;

--PART-B

CREATE TABLE EMPLOYEE_MASTER(
	EMPNO INT,
	EMPNAME VARCHAR(25),
	JOININGDATE DATETIME,
	SALARY DECIMAL(8,2),
	CITY VARCHAR(20),
);

SELECT * FROM EMPLOYEE_MASTER;

INSERT INTO EMPLOYEE_MASTER VALUES
(101,'KEYUR','2002-01-05',12000,'RAJKOT'),
(102,'HARDIK','2004-02-15',14000,'AHMEDABAD'),
(103,'KAJAL','2006-03-14',15000,'BARODA'),
(104,'BHOOMI','2005-06-23',12500,'AHMEDABAD'),
(105,'HARMIT','2004-02-15',14000,'RAJKOT'),
(106,'MITESH','2001-09-25',5000,'JAMNAGAR'),
(107,'MEERA',NULL,7000,'MORBI'),
(108,'KISHAN','2003-02-06',10000,'NULL');

SELECT * FROM EMPLOYEE_MASTER;

--1. Delete all the records of Employee_MASTER table having salary greater than and equals to 14000.
DELETE FROM EMPLOYEE_MASTER
WHERE SALARY >= 14000;

SELECT * FROM EMPLOYEE_MASTER;
--2. Delete all the Employees who belongs to �RAJKOT� city.
DELETE FROM EMPLOYEE_MASTER
WHERE CITY = 'RAJKOT';

SELECT * FROM EMPLOYEE_MASTER;
--3. Delete all the Employees who joined after 1-1-2007.
DELETE FROM EMPLOYEE_MASTER
WHERE JOININGDATE > '2007-01-01';

SELECT * FROM EMPLOYEE_MASTER;
--4. Delete the records of Employees whose joining date is null and Name is not null.
DELETE FROM EMPLOYEE_MASTER
WHERE JOININGDATE IS NULL AND EMPNAME IS NOT NULL;

SELECT * FROM EMPLOYEE_MASTER;
--5. Delete the records of Employees whose salary is 50% of 20000.
DELETE FROM EMPLOYEE_MASTER
WHERE SALARY = 20000*50/100;

SELECT * FROM EMPLOYEE_MASTER;
--6. Delete the records of Employees whose City Name is not empty.
DELETE FROM EMPLOYEE_MASTER
WHERE CITY = '';

SELECT * FROM EMPLOYEE_MASTER;
--7. Delete all the records of Employee_MASTER table. (Use Truncate)
TRUNCATE TABLE EMPLOYEE_MASTER;

SELECT * FROM EMPLOYEE_MASTER;
--8. Remove Employee_MASTER table. (Use Drop)
DROP TABLE EMPLOYEE_MASTER;

--Part � C:

--1. Summarize Delete, Truncate and Drop

--DELETE delete the row with condition
--TRUNCETE delete the row with OUT condition
--DROP delete the table with data and schima
