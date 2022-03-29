
-- Please find the names of pizzerias where Dmitriy visited and can buy pizzas he eats for less than 800 rubles on 8th of January of 2022.

SELECT pizzeria.name
FROM( SELECT * FROM menu WHERE price < 800) t1
JOIN pizzeria ON pizzeria.id = t1.pizzeria_id
JOIN
(SELECT * FROM person_visits WHERE visit_date = '2022-01-08') t2 ON t2.pizzeria_id = pizzeria.id
JOIN 
(SELECT * FROM person WHERE person.name = 'Dmitriy') t3 ON t3.id = t2.person_id