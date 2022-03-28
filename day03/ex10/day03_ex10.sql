INSERT INTO person_order (ID, person_id, menu_id, order_date) 
VALUES ((SELECT MAX(id )+1 FROM person_visits), 
		(SELECT person.id FROM person WHERE person.name = 'Denis'), 
		(SELECT menu.id FROM menu WHERE menu.pizza_name = 'sicilian pizza'),
		'2022-02-24');
INSERT INTO person_order (ID, person_id, menu_id, order_date) 
VALUES ((SELECT MAX(id )+1 FROM person_visits), 
		(SELECT person.id FROM person WHERE person.name = 'Irina'), 
		(SELECT menu.id FROM menu WHERE menu.pizza_name = 'sicilian pizza'),
		'2022-02-24');