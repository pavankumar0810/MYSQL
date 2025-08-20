create database assignment;
use assignment;
CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(20)
);


CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(20),
    DeptID INT,
    Salary INT,
    Hire_Date DATE,
    FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)
);


INSERT INTO Departments (DeptID, DeptName) VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Sales');

 
INSERT INTO Employees (EmpID, EmpName, DeptID, Salary, Hire_Date) VALUES
(101, 'John', 1, 50000, '2018-02-12'),
(102, 'Alice', 2, 60000, '2019-07-10'),
(103, 'Bob', 1, 55000, '2020-05-05'),
(104, 'Carol', 3, 45000, '2017-09-20');

SELECT * FROM Employees;
SELECT EmpName, Salary FROM Employees;
SELECT e.*
FROM Employees e
JOIN Departments d ON e.DeptID = d.DeptID
WHERE d.DeptName = 'IT';

SELECT * FROM Employees WHERE Salary > 50000;

SELECT * FROM Employees WHERE Hire_Date < '2020-01-01';

SELECT * FROM Employees ORDER BY Salary DESC;

SELECT COUNT(*) AS TotalEmployees FROM Employees;

SELECT AVG(Salary) AS AverageSalary FROM Employees;

SELECT Departments.DeptName, MAX(Employees.Salary) AS MaxSalary FROM Employees JOIN Departments ON Employees.DeptID = Departments.DeptID GROUP BY Departments.DeptName;

SELECT d.DeptName, COUNT(e.EmpID) AS EmployeeCount
FROM Employees e
JOIN Departments d ON e.DeptID = d.DeptID
GROUP BY d.DeptName
HAVING COUNT(e.EmpID) > 1;

SELECT * FROM Employees WHERE EmpName LIKE 'A%';

SELECT * FROM Employees WHERE Salary BETWEEN 45000 AND 60000;

SELECT e.EmpName, d.DeptName FROM Employees e JOIN Departments d ON e.DeptID = d.DeptID;

SELECT d.DeptName, COUNT(e.EmpID) AS EmployeeCount FROM Employees e JOIN Departments d ON e.DeptID = d.DeptID GROUP BY d.DeptName;

SELECT e.EmpName, d.DeptName
FROM Employees e LEFT JOIN Departments d ON e.DeptID = d.DeptID;


















