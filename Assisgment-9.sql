/* CREATE TABLE Workers(
    EmployeeID INTEGER PRIMARY KEY AUTO_INCREMENT,
    firstName VARCHAR(100) NOT NULL,
    lastName VARCHAR(100) NOT NULL,
    email VARCHAR(200) NOT NULL,
    phoneNumber INT(12) NOT NULL,
    hireDate DATE NOT NULL,
    JobId INT(10) NOT NULL,
    Salary INT(8),
    ManagerId INT(10) NOT NULL,
    DepartmentId INT(10) NOT NULL
) ; */

/* INSERT INTO Workers(firstName, lastName, email, phoneNumber, hireDate, JobId, Salary, ManagerId, DepartmentId) VALUES
("Ankush", "Thakur", "ankush@gmail.com", 99999, "2022-04-08", 01, 15000, 50, 1)
("Diksha", "Thakur", "diksha@gmail.com", 99999, "2022-01-08", 02, 25000, 51, 2),
("Rahul", "Kumar", "rahul@gmail.com", 99999, "2022-02-08", 03, 20000, 51, 2),
("Yash", "Matta", "yash@gmail.com", 99999, "2022-01-15", 04, 35000, 52, 3),
("Vannet", "Sharma", "vannet@gmail.com", 99999, "2022-01-30", 05, 29000, 53, 4),
("Vipul", "Thakur", "vipul@gmail.com", 99999, "2022-02-05", 06, 25000, 54, 5),
("kartik", "Gandhi", "Kartik@gmail.com", 99999, "2022-2-10", 07, 45000, 50, 1),
("Kalpana", "Bhatia", "kalpana@gmail.com", 99999, "2022-02-08", 08, 95000, 51, 2),
("Rohit", "Bali", "rohit@gmail.com", 99999, "2022-02-20", 09, 15000, 52, 3),
("Rohit", "Sharma", "rohit@gmail.com", 99999, "2022-03-28", 10, 45000, 53, 3),
("shubham", "Chauchun", "shubham@gmail.com", 99999, "2022-03-1", 11, 35000, 54, 4),
("Akshat", "Sharma", "akshat@gmail.com", 99999, "2022-03-15", 12, 55000, 54, 4),
("Dhask", "Thakur", "dhask@gmail.com", 99999, "2022-03-20", 13, 1000, 50, 5),
("Anushka", "Thakur", "Anushka@gmail.com", 99999, "2022-03-030", 14, 125000, 50, ),
("ABC", "xyz", "abc@gmail.com", 99999, "2022-03-030", 14, 225000, 50, 2); */

-- TODO:Q1
-- SELECT COUNT(JobId) As "Jobs Available" FROM Workers;

-- TODO: Q2
-- SELECT SUM(Salary) as "Total Salary" FROM Workers;

-- TODO: Q3
-- SELECT firstName, lastName, Salary FROM Workers 
-- WHERE Salary = (SELECT MIN(Salary) FROM Workers);

-- TODO: Q4
-- CREATE TABLE Department(
--     id INT(10) NOT NULL,
--     Name VARCHAR(255) NOT NULL,
--     emp_id INT(10) NOT NULL,
--     FOREIGN KEY (emp_id) REFERENCES Workers(EmployeeID)
-- );

-- INSERT INTO Department(id, Name, emp_id) VALUES 
-- (1, "React", 1 ), (2, "Angular", 2 ), (3, "Vue", 3), (4, "React Native", 4), (5, "Flutter", 5), 
-- (2, "Angular",6), (2, "Angular", 7), (2, "Angular", 8), (5, "Flutter", 9), (5, "Flutter", 10),
-- (5, "Flutter", 11), (5, "Flutter", 12), (2, "Angular", 15), (5, "Flutter", 13), (5, "Flutter", 14);

-- SELECT workers.firstName, workers.lastName, workers.Salary, department.name 
-- FROM (Workers 
-- INNER JOIN department ON department.emp_id = workers.EmployeeID)
-- WHERE department.name = "Angular" AND SALARY = (SELECT MAX(Salary) FROM workers)

-- TODO:Q5
-- SELECT AVG(SALARY), COUNT(*) AS "No of Emp", workers.DepartmentId, department.name 
-- FROM (workers
-- INNER JOIN department ON department.emp_id = workers.EmployeeID)
-- WHERE workers.DepartmentId = 5;

-- TODO: Q6
-- SELECT MAX(Salary), MIN(salary), SUM(Salary), AVG(Salary)FROM workers;  

-- TODO: Q7
-- SELECT COUNT(*) AS "No of Employees", DepartmentId
-- FROM (workers 
-- INNER JOIN department ON department.emp_id = workers.EmployeeID
-- )GROUP BY departmentId;

-- TODO: Q8
-- SELECT ABS( (SELECT MAX(SALARY) FROM workers) - (SELECT MIN(SALARY) FROM workers)) AS "Salary Diff";


-- TODO: Q9
-- SELECT firstName, lastName, Salary, ManagerId FROM workers
-- WHERE SALARY = (SELECT MIN(SALARY) FROM workers);

-- TODO: Q10
SELECT SUM(Salary), departmentID FROM workers
GROUP BY departmentId;

