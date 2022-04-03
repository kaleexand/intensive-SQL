INSERT INTO person_discounts(
select foo.id, person_id, pizzeria_id,
	case
		when amount = 1 then 10.5
		when amount = 2 then 22
		else 30
	end as discount
from 	
(SELECT row_number() over() as id, person_id, amount, pizzeria_id
FROM
(select person_id, pizzeria_id, count(menu_id) as amount
from person_order
join menu on menu.id = person_order.menu_id
group by person_id, pizzeria_id
) as t1) as foo
)