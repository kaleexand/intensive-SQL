select 
	case 
		when name = 'Denis' then 'true' else 'false' 
	end as check_name, foo.*
from (SELECT 
	(select name from person p where p.id = person_order.person_id) as Name
FROM person_order
WHERE (menu_id = 13 or menu_id = 14 menu_id = 18) AND order_date in ('2022-01-07'))) as foo