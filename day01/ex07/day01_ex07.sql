select order_date, concat(name, ' (age:', age,')') as person_information
from person_order as po
join person p on p.id = po.person_id
ORDER BY order_date, name