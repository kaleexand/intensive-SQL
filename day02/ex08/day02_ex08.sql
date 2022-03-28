SELECT t2.name as name from (SELECT *
FROM person
WHERE gender in ('male') and address in ('Moscow', 'Samara')) as t2
JOIN person_order on person_order.person_id =  t2.id
Join menu m on m.id = menu_id
where m.pizza_name in ('pepperoni pizza', 'mushroom pizza')
ORDER BY name desc