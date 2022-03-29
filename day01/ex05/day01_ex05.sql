-- Please write a SQL statement which returns all possible combinations between `person` and `pizzeria` tables and please set ordering by person identifier and then by pizzeria identifier columns. Please take a look at the result sample below.

-- | person.id | person.name | age | gender | address | pizzeria.id | pizzeria.name | rating |
-- | ------ | ------ | ------ | ------ | ------ | ------ | ------ | ------ |
-- | 1 | Anna | 16 | female | Moscow | 1 | Pizza Hut | 4.6 |
-- | 1 | Anna | 16 | female | Moscow | 2 | Dominos | 4.3 |
-- | ... | ... | ... | ... | ... | ... | ... | ... |

SELECT  person.id as "person.id", person.name as "person.name", person.age, person.gender, person.address, pizzeria.id as "pizzeria.id", pizzeria.name as "pizzeria.name", pizzeria.rating
   FROM person  CROSS JOIN pizzeria
ORDER BY person.id, pizzeria.id

