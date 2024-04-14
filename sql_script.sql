-- Create the Groups table
CREATE TABLE Groups (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Name NVARCHAR(10) NOT NULL UNIQUE,
    Rating INT NOT NULL CHECK (Rating >= 0 AND Rating <= 5),
    Year INT NOT NULL CHECK (Year >= 1 AND Year <= 5)
);

-- Create the Departments table
CREATE TABLE Departments (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Financing MONEY NOT NULL DEFAULT 0,
    Name NVARCHAR(100) NOT NULL UNIQUE
);

-- Create the Faculties table
CREATE TABLE Faculties (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Name NVARCHAR(100) NOT NULL UNIQUE
);

-- Create the Teachers table
CREATE TABLE Teachers (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    EmploymentDate DATE NOT NULL CHECK (EmploymentDate >= '1990-01-01'),
    Name NVARCHAR(MAX) NOT NULL,
    Premium MONEY NOT NULL DEFAULT 0 CHECK (Premium >= 0),
    Salary MONEY NOT NULL CHECK (Salary > 0),
    Surname NVARCHAR(MAX) NOT NULL
);