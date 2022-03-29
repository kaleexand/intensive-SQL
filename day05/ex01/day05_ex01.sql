Set enable_seqscan to off;

EXPLAIN ANALYZE select m.pizza_name, pizzeria.name
from pizzeria
join menu m on m.pizzeria_id = pizzeria.id
order by m.pizza_name, pizzeria.name;
