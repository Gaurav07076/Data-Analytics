SELECT JobTitle,COUNT(JobTitle)
FROM EmployeeDemographics
JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE COUNT(JobTitle) > 1
GROUP BY JobTitle

--THis will give an error as Aggregate function cannot be
--inside where Clause


SELECT JobTitle,COUNT(JobTitle)
FROM EmployeeDemographics
JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING COUNT(JobTitle) > 1

-- The HAVING clause is used instead of WHERE with aggregate functions. 
--While the GROUP BY Clause groups rows that have the same values into summary rows. 
--The having clause is used with the where clause in order to find rows with certain conditions. 
--The having clause is always used after the group By clause.


SELECT JobTitle,AVG(Salary)
FROM EmployeeDemographics
JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING AVG(Salary) > 45000
ORDER BY AVG(SALARY)