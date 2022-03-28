INSERT INTO menu (ID, pizzeria_id, pizza_name, price) 
VALUES ((SELECT MAX(id )+1 FROM MENU M), (SELECT pizzeria.id FROM pizzeria WHERE pizzeria.name = 'Dominos'), 'sicilian pizza', '900')