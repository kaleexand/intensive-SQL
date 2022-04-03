select foo.name, count,
	case 
		when count != 0 then 'visit'
	end as action_type
from
(select name, count(visit_date)
from person_visits pv
join pizzeria p on p.id = pv.pizzeria_id
group by name
order by count desc
limit 3) as foo
union
select foo1.name, count,
	case 
		when count != 0 then 'order'
	end as action_type
from
(select p.name, count(order_date)
from person_order po
join menu m on po.menu_id = m.id
join pizzeria p on p.id = m.pizzeria_id
group by name
order by count desc
limit 3) as foo1
order by action_type, count desc