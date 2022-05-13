-- TODO: Q1
-- SELECT * FROM employee2 WHERE MONTH(JoiningDate) = 4;

-- TODO: Q2
-- SELECT * FROM employee2 WHERE MONTH(JoiningDate) < 4;

-- TODO: Q3
-- SELECT firstName, lastName, JoiningDate FROM employee2;

-- TODO: Q4
-- SELECT employee2.firstName, employee2.lastName, employee2.JoiningDate, rewards.RewardDate,
-- DATEDIFF(RewardDate, JoiningDate ) AS "Difference IN days"
-- FROM (employee2
-- INNER JOIN rewards ON employee2.EmployeeID = rewards.EmpID);

-- TODO: Q5
-- SELECT Department, SUM(Salary) AS "Total Salary", COUNT(*) AS "No of Emp" FROM employee2
-- GROUP BY Department
-- ORDER BY Salary DESC;


