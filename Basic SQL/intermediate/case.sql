select firstname,lastname,age,
case
	when age > 30 then 'Old'
	when age BETWEEN 27 AND 30 then 'Young'
	else 'Baby'
end
from [employeeDemographics]
where age is not null 
order by age