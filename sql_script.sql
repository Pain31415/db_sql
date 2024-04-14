-- 1. Вивести таблицю кафедр, але розташувати її поля у зворотньому порядку.
SELECT Id, Financing, Name FROM Departments;

-- 2. Вивести назви груп та їх рейтинги:
SELECT Name AS "Group Name", Rating AS "Group Rating" FROM Groups;

-- 3. Інформація для викладачів – прізвище, відсоток ставки від надбавки та ставки від зарплати:
SELECT Surname, 
       CONVERT(DECIMAL(5, 2), (CAST(Salary AS DECIMAL(10, 2)) / CAST((Salary + Premium) AS DECIMAL(10, 2))) * 100) AS "Salary Percentage", 
       CONVERT(DECIMAL(5, 2), (CAST(Premium AS DECIMAL(10, 2)) / CAST((Salary + Premium) AS DECIMAL(10, 2))) * 100) AS "Premium Percentage" 
FROM Teachers;

-- 4. Факультети у зручному форматі:
SELECT CONCAT('Декан факультету ', Name, ' – ', Dean, '.') AS Faculty_Info FROM Faculties;

-- 5. Прізвища професорів із зарплатою вище 1050:
SELECT Surname, Position FROM Teachers WHERE IsProfessor = 1 AND Salary > 1050;

-- 6. Кафедри з фінансуванням меншим за 11000 або більше 25000:
SELECT Name FROM Departments WHERE Financing < 11000 OR Financing > 25000;

-- 7. Факультети, за винятком "Computer Science":
SELECT Name FROM Faculties WHERE Name != 'Computer Science';

-- 8. Прізвища та посади викладачів, які не є професорами:
SELECT Surname, Position FROM Teachers WHERE IsProfessor = 0;

-- 9. Прізвища, посади, ставки та надбавки асистентів з надбавкою в діапазоні від 160 до 550:
SELECT Surname, Position, Salary, Premium FROM Teachers WHERE IsAssistant = 1 AND Premium BETWEEN 160 AND 550;

-- 10. Прізвища та ставки асистентів:
SELECT Surname, Salary FROM Teachers WHERE IsAssistant = 1;

-- 11. Прізвища та посади викладачів, які були прийняті на роботу до 01.01.2000:
SELECT Surname, Position FROM Teachers WHERE EmploymentDate < '2000-01-01';

-- 12. Назви кафедр до "Software Development" в алфавітному порядку:
SELECT Name AS "Name of Department" FROM Departments WHERE Name < 'Software Development' ORDER BY Name;

-- 13. Прізвища асистентів зі зарплатою не більше 1200:
SELECT Surname FROM Teachers WHERE IsAssistant = 1 AND (Salary + Premium) <= 1200;

-- 14. Назви груп 5-го курсу з рейтингом від 2 до 4:
SELECT Name FROM Groups WHERE Year = 5 AND Rating BETWEEN 2 AND 4;

-- 15. Прізвища асистентів зі ставкою менше 550 або надбавкою менше 200:
SELECT Surname FROM Teachers WHERE IsAssistant = 1 AND (Salary < 550 OR Premium < 200);