Select FirstName 
FROM EmployeeDemographics


Select Top(5) * 
FROM EmployeeDemographics

Select DISTINCT(Gender)
FROM EmployeeDemographics

Select COUNT(LastName)
FROM EmployeeDemographics

Select COUNT(LastName) AS LastNameCount 
FROM EmployeeDemographics

Select MAX(Salary)
FROM EmployeeSalary

Select AVG(Salary)
FROM EmployeeSalary

-- If in master database and you want to acecess table in any other database
SELECT *
FROM [Sql Basic].dbo.EmployeeSalary



