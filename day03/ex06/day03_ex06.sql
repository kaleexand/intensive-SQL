select  m.pizza_name as pizza_name, p.name as pizzeria_name1,t1.pizzeria_name2, m.price
from pizzeria p
full join menu m on m.pizzeria_id =p.id
join
(select p.id, p.name as pizzeria_name2, m.pizza_name as name2, m.price as p2 from pizzeria p
full join menu m on m.pizzeria_id =p.id
) as t1 
on  t1.name2 = m.pizza_name
where m.price = t1.p2 and  p.name <>t1.pizzeria_name2 and t1.id < p.id
order by pizza_name