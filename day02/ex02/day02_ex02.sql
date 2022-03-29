-- Please write a SQL statement which returns a whole list of person names which visited (or not visited) pizzerias during the time interval from 1st to 3rd of January 2022 from one side and the whole list of pizzeria names which have been visited or not from the other side. The sample of data with needed column names is presented below. Please pay attention to the substitution value ‘-’ for NULL values in person_name and pizzeria_name columns. Please also add order by all 3 columns.

-- | person_name | visit_date | pizzeria_name |
-- | ------ | ------ | ------ |
-- | - | null | DinoPizza |
-- | - | null | DoDo Pizza |
-- | Andrey | 2022-01-01 | Dominos |
-- | Andrey | 2022-01-02 | Pizza Hut |
-- | Anna | 2022-01-01 | Pizza Hut |
-- | Denis | null | - |
-- | Dmitriy | null | - |
-- | ... | ... | ... |


select COALESCE(per.name, '-') as person_name, visit_date, COALESCE(t2.name, '-') as pizzeria_name
from (
select visit_date, pizzeria_id, person_id, name
from (
select visit_date, pizzeria_id, person_id
from person_visits 
where visit_date between '2022-01-01' and '2022-01-03'	) as t
FULL join pizzeria p on t.pizzeria_id = p.id) as t2
FULL join person per on t2.person_id = per.id
ORDER BY person_name, visit_date, pizzeria_name 