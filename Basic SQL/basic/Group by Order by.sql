SELECT Gender,Count(Gender)
FROM EmployeeDemographics
GROUP BY Gender

--DISTINCT cannot be used with count.

-- The major difference between the DISTINCT and GROUP BY is, 
-- GROUP BY operator is meant for the aggregating or grouping 
-- rows whereas DISTINCT is just used to get distinct values.

SELECT Gender,Count(Gender)
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender

SELECT Gender, Age, Count(Gender) as Count
from EmployeeDemographics
GROUP BY Gender, Age

--order by is used for ascending or descending

SELECT Gender,Count(Gender) as CountGender
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender
ORDER BY CountGender DESC


SELECT *
FROM EmployeeDemographics
ORDER BY AGE,Gender Desc

