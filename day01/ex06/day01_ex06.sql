-- Let's return our mind back to exercise #03 and change our SQL statement to return person names instead of person identifiers and change ordering by action_date in ascending mode and then by person_name by descending mode. Please take a look at a sample of data below.

-- | action_date | person_name |
-- | ------ | ------ |
-- | 2022-01-01 | Irina |
-- | 2022-01-01 | Anna |
-- | 2022-01-01 | Andrey |
-- | ... | ... |


select action_date, person.name
from (select order_date as action_date, person_id from person_order
union 
select visit_date as action_date , person_id from person_visits) as t1
join person on person.id = t1.person_id
order by action_date asc, person.name desc