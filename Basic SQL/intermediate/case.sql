select firstname,lastname,age,
case
	when age > 30 then 'Old'
	when age BETWEEN 27 AND 30 then 'Young'
	else 'Baby'
end
from [employeeDemographics]
where age is not null 
order by age

SELECT FirstName,LastName,JobTitle,Salary,
CASE 
	WHEN JobTitle = 'SalesMan' THEN Salary + (Salary*.10)
	WHEN JobTitle = 'Accountant' THEN Salary+ (Salary*.05)
	WHEN JobTitle = 'HR' THEN Salary+ (Salary*.03)
	else Salary + (Salary*.01)
END AS SalaryAfterRaise
FROM EmployeeDemographics
JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
