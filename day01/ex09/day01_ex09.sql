
-- Please write a 2 SQL statements which returns a list of pizzerias names which have not been visited by persons by using IN for 1st one and EXISTS for the 2nd one.

select 
	name
from
	pizzeria
where name in ( select name
from pizzeria
left join person_visits pv on pv.pizzeria_id = pizzeria.id
where visit_date is null
)

select pizzeria.name
from pizzeria
where NOT exists (select *
from person_visits
where pizzeria.id = person_visits.pizzeria_id 
) 
