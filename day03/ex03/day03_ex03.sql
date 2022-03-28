select distinct pizzeria_name from (select  pizzeria.name as pizzeria_name, gender, g.id
from pizzeria
join person_visits on person_visits.pizzeria_id = pizzeria.id
JOIN (select * from person where gender in ('female')) as g ON g.id = person_visits.person_id) as t1
union all
select distinct pizzeria_name from (select  pizzeria.name as pizzeria_name, gender, g.id
from pizzeria
join person_visits on person_visits.pizzeria_id = pizzeria.id
JOIN (select * from person where gender in ('male')) as g ON g.id = person_visits.person_id) as t1
order by pizzeria_name