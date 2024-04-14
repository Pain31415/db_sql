-- Inserting a record for a department with Building number 1, Funding of 30000, located on the 2nd Floor, named "Department 1".
INSERT INTO Departments (Building, Financing, Floor, Name) VALUES (1, 30000, 2, 'Department 1');

-- Inserting a record for a disease with the name "Disease 1" and severity level 3.
INSERT INTO Diseases (Name, Severity) VALUES ('Disease 1', 3);

-- Inserting a record for a doctor with the name "Doctor 1", phone number '1234567890', premium of 500, salary of 2000, and surname "Surname 1".
INSERT INTO Doctors (Name, Phone, Premium, Salary, Surname) VALUES ('Doctor 1', '1234567890', 500, 2000, 'Surname 1');

-- Inserting a record for an examination on Day 1, ending at '15:00', named "Examination 1", starting at '12:00'.
INSERT INTO Examinations (DayOfWeek, EndTime, Name, StartTime) VALUES (1, '15:00', 'Examination 1', '12:00');

-- Inserting a record for a ward in Building 2, on the 3rd Floor, named "Ward 1".
INSERT INTO Wards (Building, Floor, Name) VALUES (2, 3, 'Ward 1');