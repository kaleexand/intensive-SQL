-- Please write a SQL statement which returns a list of pizzerias names which have not been visited by persons. 

select pizzeria.name as pizzeria_name
from pizzeria
left join person_visits pv on pv.pizzeria_id = pizzeria.id
where visit_date is null