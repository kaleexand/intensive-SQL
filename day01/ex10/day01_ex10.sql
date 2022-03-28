select t2.name as person_name, pizza_name, piz.name as pizzeria_name
from (select *
from (select *
from person p
join person_order po on po.person_id = p.id) as t1
join menu m on m.id = t1.menu_id) as t2
join pizzeria piz on piz.id = t2.pizzeria_id
order by t2.name, pizza_name, piz.name
