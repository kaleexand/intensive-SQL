select name, count + count2 as total_count
from (select name, count(visit_date)
from person_visits pv
full join pizzeria p on p.id = pv.pizzeria_id
group by name) as t2
join
(select p.name as name2, count(order_date) as count2
from person_order po
full join menu m on po.menu_id = m.id
full join pizzeria p on p.id = m.pizzeria_id
group by name) as t1 on t2.name = t1.name2
order by total_count desc