select * from (select pizza_name, pizzeria_name from (select pizza_name, pizzeria.name as pizzeria_name, p_n
from (select name as pe, menu_id, person.name as p_n
from person_order po
join person on person_id = person.id
where name in ('Anna') ) as t
join menu on t.menu_id = menu.id
join pizzeria on pizzeria_id = pizzeria.id) as p_a) as e
union
select pizza_name as pz, pizzeria_name as pn from (select pizza_name, pizzeria.name as pizzeria_name, p_n
from (select name as pe, menu_id, person.name as p_n
from person_order po
join person on person_id = person.id
where name in ('Denis') ) as t1
join menu on t1.menu_id = menu.id
join pizzeria on pizzeria_id = pizzeria.id) as p_d
where pizza_name in (
	select pizza_name from (select pizza_name, pizzeria.name as pizzeria_name, p_n
from (select name as pe, menu_id, person.name as p_n
from person_order po
join person on person_id = person.id
where name in ('Anna') ) as t
join menu on t.menu_id = menu.id
join pizzeria on pizzeria_id = pizzeria.id) as r
)
order by pizza_name, pizzeria_name