SELECT *
FROM EmployeeDemographics

SELECT * FROM EmployeeSalary

SELECT *
FROM EmployeeDemographics INNER JOIN EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT *
FROM EmployeeDemographics FULL OUTER JOIN EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT *
FROM EmployeeDemographics LEFT OUTER JOIN EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT *
FROM EmployeeDemographics RIGHT OUTER JOIN EmployeeSalary
ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


-- Want to find salary of which employee is largest 
SELECT e.EmployeeID,FirstName,LastName, Salary FROM EmployeeDemographics as e
INNER JOIN EmployeeSalary as f
 ON e.EmployeeID = f.EmployeeID
 WHERE FirstName <> 'Michael'
 ORDER BY Salary DESC