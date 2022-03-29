
-- Find full information about all possible pizzeria names and prices to get mushroom or pepperoni pizzas. Please sort the result by pizza name and pizzeria name then. The result of sample data is below (please use the same column names in your SQL statement).

-- | pizza_name | pizzeria_name | price |
-- | ------ | ------ | ------ |
-- | mushroom pizza | Dominos | 1100 |
-- | mushroom pizza | Papa Johns | 950 |
-- | pepperoni pizza | Best Pizza | 800 |
-- | ... | ... | ... |
select pizza_name, p.name as pizzeria_name, price
from menu
right join  pizzeria p on pizzeria_id = p.id
where pizza_name in ('mushroom pizza')
union
select pizza_name, p.name as pizzeria_name, price
from menu
right join  pizzeria p on pizzeria_id = p.id
where pizza_name in ('pepperoni pizza')
order by pizza_name, pizzeria_name
