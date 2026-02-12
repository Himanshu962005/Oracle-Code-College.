/* Create a View in Oracle/SQL Server. */
-- View Creation Query.
CREATE OR REPLACE VIEW Employee_Salary_View AS
SELECT
e.eid,
e.ename,
e.edesignation,
e.salary AS base_salary,
e.eaddress,
s.month,
s.deptid,
s.working_days,
s.gross,
s.incentive,
s.deduction,
s.bonus,
s.net_salary
FROM
    employee e
JOIN
    salary s
ON
    e.eid = s.eid;
-- Now Run this to See the Output.
SELECT * FROM Employee_Salary_View;
