SELECT 
	(select name from person p where p.id = t1.person_id) as person_name,
	(select name from pizzeria  where pizzeria.id = t1.pizzeria_id) as pizzeria_name
FROM 
	(select pizzeria_id, person_id, visit_date from person_visits ) as t1
WHERE visit_date between '2022-01-07' and '2022-01-09'
ORDER BY person_name ASC, pizzeria_name DESC