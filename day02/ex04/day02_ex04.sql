select pizza_name, p.name as pizzeria_name, price
from menu
right join  pizzeria p on pizzeria_id = p.id
where pizza_name in ('mushroom pizza')
union
select pizza_name, p.name as pizzeria_name, price
from menu
right join  pizzeria p on pizzeria_id = p.id
where pizza_name in ('pepperoni pizza')
order by pizza_name, pizzeria_name
