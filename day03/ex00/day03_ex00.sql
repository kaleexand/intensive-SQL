SELECT pizza_name, price, pizzeria_name, visit_date
FROM (select pizza_name, price, pizzeria.name as pizzeria_name, person_visits.visit_date, pizzeria.id, person_visits.person_id
from menu
join pizzeria on pizzeria.id = menu.pizzeria_id
JOIN person_visits ON person_visits.pizzeria_id = pizzeria.id
JOIN person On person.id = person_visits.person_id
WHERE person.name = 'Kate' AND price BETWEEN 800 AND 1000) AS END_V
ORDER BY pizza_name, price, pizzeria_name