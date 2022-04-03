select p.address, pz.name, count(order_date) as count_of_orders
from person_order po
join person p on p.id = po.person_id
join person_visits on p.id = person_visits.person_id
join pizzeria pz on pz.id = person_visits.pizzeria_id
group by pz.name, p.address
order by p.address, pz.name
