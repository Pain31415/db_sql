-- Retrieve all records from the Wards table.
SELECT * FROM Wards;

-- Retrieve surnames and phone numbers of all doctors.
SELECT Surname, Phone FROM Doctors;

-- Retrieve distinct floor numbers from the Wards table.
SELECT DISTINCT Floor FROM Wards;

-- Retrieve names of diseases along with their severity levels.
SELECT Name AS 'Name of Disease', Severity AS 'Severity of Disease' FROM Diseases;

-- Retrieve all columns from Departments table joining with Wards table on the Building column.
SELECT * FROM Departments d JOIN Wards w ON d.Building = w.Building;

-- Retrieve names of departments located in Building 5 with funding less than 30000.
SELECT Name FROM Departments WHERE Building = 5 AND Financing < 30000;

-- Retrieve names of departments located in Building 3 with funding between 12000 and 15000.
SELECT Name FROM Departments WHERE Building = 3 AND Financing BETWEEN 12000 AND 15000;

-- Retrieve names of wards located in Buildings 4 or 5 on the 1st floor.
SELECT Name FROM Wards WHERE Building IN (4, 5) AND Floor = 1;

-- Retrieve names, building numbers, and funding amounts of departments located in Buildings 3 or 6 with funding less than 11000 or more than 25000.
SELECT Name, Building, Financing FROM Departments WHERE Building IN (3, 6) AND (Financing < 11000 OR Financing > 25000);

-- Retrieve surnames of doctors whose total salary (salary + premium) exceeds 1500.
SELECT Surname FROM Doctors WHERE Salary + Premium > 1500;

-- Retrieve surnames of doctors whose salary is more than twice their premium.
SELECT Surname FROM Doctors WHERE Salary > 2 * Premium;

-- Retrieve distinct names of examinations scheduled on days 1, 2, or 3 between 12:00 and 15:00.
SELECT DISTINCT Name FROM Examinations WHERE DayOfWeek IN (1, 2, 3) AND StartTime BETWEEN '12:00' AND '15:00';

-- Retrieve names of departments located in Buildings 1, 3, 8, or 10.
SELECT Name, Building FROM Departments WHERE Building IN (1, 3, 8, 10);

-- Retrieve names of diseases with severity levels not equal to 1 or 2.
SELECT Name FROM Diseases WHERE Severity NOT IN (1, 2);

-- Retrieve names of departments not located in Buildings 1 or 3.
SELECT Name FROM Departments WHERE Building NOT IN (1, 3);

-- Retrieve names of departments located in Buildings 1 or 3.
SELECT Name FROM Departments WHERE Building IN (1, 3);

-- Retrieve surnames of doctors whose surnames start with 'N'.
SELECT Surname FROM Doctors WHERE Surname LIKE 'N%';
