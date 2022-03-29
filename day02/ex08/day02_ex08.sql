
-- Please find the names of all males from Moscow or Samara cities who orders either pepperoni or mushroom pizzas (or both) . Please order the result by person name in descending mode. The sample of output is presented below.

-- | name | 
-- | ------ | 
-- | Dmitriy | 
-- | ... |

SELECT t2.name as name from (SELECT *
FROM person
WHERE gender in ('male') and address in ('Moscow', 'Samara')) as t2
JOIN person_order on person_order.person_id =  t2.id
Join menu m on m.id = menu_id
where m.pizza_name in ('pepperoni pizza', 'mushroom pizza')
ORDER BY name desc