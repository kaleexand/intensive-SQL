select pizza_name, price, pizzeria.name as pizzeria_name
from menu
join pizzeria on pizzeria.id = menu.pizzeria_id
left JOIN person_order ON person_order.menu_id = menu.id
where order_date is NULL
ORDER BY pizza_name, price