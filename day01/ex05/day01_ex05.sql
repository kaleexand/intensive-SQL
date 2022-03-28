SELECT  person.id as "person.id", person.name as "person.name", person.age, person.gender, person.address, pizzeria.id as "pizzeria.id", pizzeria.name as "pizzeria.name", pizzeria.rating
   FROM person  CROSS JOIN pizzeria
ORDER BY person.id, pizzeria.id

