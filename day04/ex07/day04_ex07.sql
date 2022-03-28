INSERT INTO person_visits (ID, person_id, pizzeria_id, visit_date) 
VALUES ((SELECT MAX(id )+1 FROM person_visits), 
		(SELECT person.id FROM person WHERE person.name = 'Dmitriy'), 
		(SELECT pizzeria.id FROM pizzeria WHERE pizzeria.name in ((select pizzeria.name
from pizzeria
join (select * from menu where price < 800) as m on m.pizzeria_id = pizzeria.id)
except
(select pizzeria.name
from pizzeria
join person_visits as pv on pv.pizzeria_id = pizzeria.id
join (select * from person where person.name = 'Dmitriy') as t1 on t1.id = pv.person_id
join (select * from menu where price < 800) as m on m.pizzeria_id = pizzeria.id))),
		'2022-01-08');

REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;

-- select * from mv_dmitriy_visits_and_eats
