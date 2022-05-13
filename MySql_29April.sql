-- TODO: TABLE1
/* CREATE TABLE Company(
company_code VARCHAR(10) PRIMARY KEY,
founder VARCHAR(100) NOT NULL
) 

INSERT INTO Company (company_code,founder) VALUES
("C1", "Monika"), ("C2", "Samantha")
 */

-- TODO: TABLE2
/* CREATE TABLE Lead_Manager(
    lead_Manager_code VARCHAR(100) PRIMARY KEY,
    company_code VARCHAR(10) NOT NULL,
    FOREIGN KEY (company_code) REFERENCES Company(company_code)
    )

INSERT INTO Lead_Manager(lead_Manager_code, company_code ) VALUES
("LM1", "C1"),
("LM2", "C2"); */

-- TODO: TABLE3
/* CREATE TABLE Senior_Manager(
    senior_Manager_code VARCHAR(10) PRIMARY KEY, 
    lead_Manager_code VARCHAR(10) NOT NULL,
    company_code VARCHAR(10) NOT NULL,
    FOREIGN KEY (lead_Manager_code) REFERENCES Lead_Manager(lead_Manager_code),
    FOREIGN KEY (company_code) REFERENCES Company(company_code)
)


 INSERT INTO Senior_Manager(senior_Manager_code, lead_Manager_code, company_code) VALUES 
 ("SM1", "LM1", "C1"),
 ("SM2", "LM1", "C1"),
 ("SM3", "LM2", "C2") */

--  TODO: TABLE4
/* CREATE TABLE Manager(
    manager_code VARCHAR(10) PRIMARY KEY,
    senior_Manager_code VARCHAR(10) NOT NULL,
    lead_Manager_code VARCHAR(10) NOT NULL,
    company_code VARCHAR(10) NOT NULL,
    FOREIGN KEY (senior_Manager_code) REFERENCES Senior_Manager(senior_Manager_code),
    FOREIGN KEY (lead_Manager_code) REFERENCES Lead_Manager(lead_Manager_code),
    FOREIGN KEY (company_code) REFERENCES Company (company_code)
)

INSERT INTO Manager(manager_code, senior_Manager_code, lead_Manager_code,company_code) VALUES
("M1", "SM1", "LM1", "C1"),
("M2", "SM3", "LM2", "C2"),
("M3", "SM3", "LM2", "C2")
 */
-- TODO: TABLE5
/* CREATE TABLE Employee(
    employee_code VARCHAR(10) PRIMARY KEY,
    manager_code VARCHAR(10) NOT NULL,
    senior_Manager_code VARCHAR(10) NOT NULL,
    lead_Manager_code VARCHAR(10) NOT NULL,
    company_code VARCHAR(10) NOT NULL,
    FOREIGN KEY (manager_code) REFERENCES Manager(manager_code),
    FOREIGN KEY (senior_Manager_code) REFERENCES Senior_Manager(senior_Manager_code),
    FOREIGN KEY (lead_Manager_code) REFERENCES Lead_Manager(lead_Manager_code),
    FOREIGN KEY (company_code) REFERENCES Company (company_code)
)

INSERT INTO Employee(employee_code, manager_code, senior_Manager_code, lead_Manager_code, company_code) VALUES 
("E1", "M1", "SM1", "LM1", "C1"),
("E2", "M1", "SM1", "LM1", "C1"),
("E3", "M2", "SM3", "LM2", "C2"),
("E4", "M3", "SM3", "LM2", "C2") */

SELECT Company.company_code, Company.founder, COUNT( DISTINCT Lead_Manager.lead_Manager_code) AS "Total No of Lead Manager", 
COUNT(DISTINCT Senior_Manager.senior_Manager_code) AS "Total No of Senior Manager", COUNT( DISTINCT Manager.manager_code) AS "Total No of Manager", COUNT(Employee.employee_code) AS "Total No of Employee"
FROM  ((((Employee
    INNER JOIN Company ON Company.company_code = Employee.company_code)
    INNER JOIN Lead_Manager ON Lead_Manager.lead_Manager_code = Employee.lead_Manager_code )
    INNER JOIN Senior_Manager ON Senior_Manager.senior_Manager_code = Employee.senior_Manager_code )
    INNER JOIN Manager ON Manager.manager_code = Employee.manager_code)
    GROUP BY Lead_Manager.lead_Manager_code, Company.company_code;






