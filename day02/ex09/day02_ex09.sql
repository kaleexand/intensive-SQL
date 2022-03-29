-- Please find the names of all females who orders both pepperoni and cheese pizzas (at any time and any pizzerias). Make sure that the result is ordered by person name. The sample of data is presented below.

-- | name | 
-- | ------ | 
-- | Anna | 
-- | ... |

select t2.name from (select distinct name, pizza_name, person.id
from person
join person_order p on p.person_id = person.id
join  menu m on m.id = p.menu_id
where gender in ('female') and pizza_name in ('cheese pizza')) as t1
join 
(select distinct name, pizza_name, person.id
from person
join person_order p on p.person_id = person.id
join  menu m on m.id = p.menu_id
where gender in ('female') and pizza_name in ('pepperoni pizza')) as t2 on t2.name = t1.name
order by name