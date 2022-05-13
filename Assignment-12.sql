-- INSERT INTO Employee2(firstName, lastName,SALARY, JoiningDate, Department ) VALUES
-- ("Viram", "batra", 600000, "2022-04-08", "Finance"),
-- ("Sher", "Shah", 650000, "2022-02-08", "Finance"),
-- ("Karan", "Shergil", 700000, "2022-01-08", "Human Resource"),
-- ("Vipul", "Sharma", 600000, "2022-03-08", "Human Resource"),
-- ("Shagun", "Sharma", 800000, "2022-04-25", "Front End"),
-- ("Ankush", "Sharma", 900000, "2022-03-25", "Front End")

-- TODO: Q1
-- SELECT Department, SUM(Salary) as "Total_Salary" FROM employee2
-- GROUP BY department
-- HAVING Total_Salary > 500000
-- ORDER BY Total_Salary DESC;

-- TODO: Q2
-- SELECT employee2.firstName, employee2.lastName, rewards.RewardDate, Rewards.Amount
-- FROM (employee2
-- INNER JOIN Rewards ON employee2.EmployeeID = rewards.EmpID)
-- WHERE Amount IS NOT NULL

-- TODO: Q3
-- SELECT employee2.firstName, employee2.lastName, Rewards.Amount AS "rewards"
-- FROM (employee2
-- LEFT JOIN rewards ON employee2.EmployeeID = Rewards.EmpID)
-- WHERE Amount IS NULL

-- TODO: Q4
-- SELECT firstName, lastName, salary,
-- CASE
--     WHEN EmployeeID = 1 THEN SALARY *.5
--     WHEN EmployeeID = 2 THEN SALARY *.8
--     Else SALARY *.15
-- END AS "Custom"
-- FROM employee2;

-- SELECT firstName, lastName, salary, salary*5/100 AS "5% Salary", salary*8/100 AS "8% Salary", salary*15/100 AS "15% Salary" FROM employee2; 


-- TODO: Q5
-- SELECT firstName, lastName, Department,
-- CASE
--     WHEN Department = "BackEnd" THEN  "BE"
--     WHEN Department = "Finance" THEN "FNC"
--     WHEN Department = "Human Resource" THEN "HR"
--     WHEN Department = "Front End" THEN "FE"
--     ELSE "Others"
-- END AS "Dept"
-- FROM employee2;

select LENGTH("aakash")- LENGTH(REPLACE("aakash", 'a', ''));




