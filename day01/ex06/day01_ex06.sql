select action_date, person.name
from (select order_date as action_date, person_id from person_order
union 
select visit_date as action_date , person_id from person_visits) as t1
join person on person.id = t1.person_id
order by action_date asc, person.name desc