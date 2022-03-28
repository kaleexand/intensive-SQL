select COALESCE(per.name, '-') as person_name, visit_date, COALESCE(t2.name, '-') as pizzeria_name
from (
select visit_date, pizzeria_id, person_id, name
from (
select visit_date, pizzeria_id, person_id
from person_visits 
where visit_date between '2022-01-01' and '2022-01-03'	) as t
FULL join pizzeria p on t.pizzeria_id = p.id) as t2
FULL join person per on t2.person_id = per.id
ORDER BY person_name, visit_date, pizzeria_name 