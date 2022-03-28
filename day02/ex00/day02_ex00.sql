select pizzeria.name as pizzeria_name
from pizzeria
left join person_visits pv on pv.pizzeria_id = pizzeria.id
where visit_date is null