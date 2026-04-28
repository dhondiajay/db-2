
CREATE TABLE Librarybooks 
(    ANO NUMBER(5) PRIMARY KEY,
    Title VARCHAR2(50),
    Author VARCHAR2(50),
    Department VARCHAR2(50),
    Purchasedate DATE,
    Price NUMBER(5)
);
-- output: table created 

-- 2. Create the Dependent Table with Primary and Foreign Key
CREATE TABLE Issuedbooks 
(    ANO NUMBER(5) PRIMARY KEY,
    Borrower VARCHAR2(50),
    FOREIGN KEY (ANO) REFERENCES Librarybooks(ANO)
);
-- output: table created 

-- 3. Insert 5 records into Librarybooks 
INSERT INTO Librarybooks VALUES (101, 'DBSC', 'NAVATHE', 'CS', '01-JAN-1999', 100);
INSERT INTO Librarybooks VALUES (102, 'DM', 'Ravi', 'stats', '01-JAN-2000', 200);
INSERT INTO Librarybooks VALUES (103, 'SI', 'Rajesh', 'stats', '01-JAN-2001', 300);
INSERT INTO Librarybooks VALUES (104, 'SI', 'Ravesh', 'Maths', '01-JAN-2002', 500);
INSERT INTO Librarybooks VALUES (105, 'TTT', 'Nair', 'Social', '01-JAN-2003', 600);

-- 4. Insert 5 records into Issuedbooks
INSERT INTO Issuedbooks VALUES (101, 'Jamshida');
INSERT INTO Issuedbooks VALUES (102, 'Rithika');
INSERT INTO Issuedbooks VALUES (103, 'Afifa');
INSERT INTO Issuedbooks VALUES (104, 'Ambika');
INSERT INTO Issuedbooks VALUES (105, 'Tasmeena');

--(b) Delete the record of the book titled 'DBSC' from Librarybooks table
DELETE FROM Librarybooks 
WHERE Title = 'DBSC';

--(c) change the Department of the book title "Discrete Maths [DM] to 'cs'
UPDATE Librarybooks 
SET Department = 'CS' 
WHERE ANO = 104;

--(d) List all books that belong to "cs" department
Select * FROM librarybooks
where Department = 'cs';

--List all bookes that belong to "cs" department and are written by author "Navathe".
Select * FROM librarybooks
where Department = 'cs' AND Author = 'NAVATHE';

--(F) List all Computer (Deportorent="cs") that have been issued
SELECT purchasedate FROM LibraryBooks 
WHERE Department = 'CS';

--(G) List all books which have a price less than 500 or purchased before 01-JAN-2004
SELECT purchasedate FROM Librarybooks 
WHERE Price < 500

SELECT * FROM Librarybooks
where Purchasedate BETWEEN '01-JAN-1999' AND '01-JAN-2004';
