select t1.*,
	formula < average as comparison 
	from (select address, 
		  round(max - (cast(min AS DEC(6,2))/max), 2) as formula, 
		  average
from (select address, max(age), min(age), round(avg(age), 2) as average
from person
group by address) as t1) as t1