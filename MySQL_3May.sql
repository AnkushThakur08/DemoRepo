-- TODO: TABLE Creation
/* CREATE TABLE Employee2(
    employee_id INTEGER PRIMARY KEY ,
    name VARCHAR(255) NOT NULL,
    months INTEGER NOT NULL,
    Salary INTEGER NOT NULL
)
 */

/* INSERT INTO Employee2(employee_id,name,months, Salary ) VALUES
(12228, "Rose", 15, 1968),
(33645, "Angela", 1, 3443),
(45692, "Frank", 17, 1608),
(56118, "Patrick", 7, 1345),
(59725, "Lisa", 11, 2330),
(74197, "Kimberly", 16, 4372),
(78454, "Bonnie", 8, 1771),
(83565, "Michael", 6, 2017),
(98607, "Todd", 5, 3396),
(99989, "Joe", 9, 3573)
 */

-- TODO: PART 1
/* SELECT COUNT(employee_id), name, months, Salary, months*Salary AS "Total Salary" FROM employee2
WHERE Salary = (SELECT  MAX(Salary) FROM employee2) */

-- TODO: FINAL Query
SELECT months*Salary AS "Total Salary" , COUNT(employee_id) AS "No of Emp" FROM employee2
WHERE Salary = (SELECT  MAX(Salary) FROM employee2)
