select pr.name, count(visit_date) as count_of_visits
from person_visits pv
full join pizzeria p on p.id = pv.pizzeria_id
join person pr on pr.id = pv.person_id
group by pr.name
HAVING count(visit_date) > 3