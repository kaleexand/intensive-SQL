select pizzeria.name as pizzeria_name from (select pizzeria_id, visit_date from (select *
from person 
WHERE person.name = 'Andrey') as p_n
join person_visits on person_visits.person_id = p_n.id
where visit_date not in (
select order_date from (select *
from person 
WHERE person.name = 'Andrey') as p_n
join person_order on person_order.person_id = p_n.id)) as t1
join pizzeria on pizzeria.id = t1.pizzeria_id