
-- Please write a SQL statement which returns common rows for attributes order_date, person_id from `person_order` table from one side and visit_date, person_id from `person_visits` table from other side (please see a sample below). Other words, let’s find persons' identifiers which visited and then ordered some pizza on the same day. Actually, please add ordering by action_date in ascending mode and then by person_id by descending mode.

-- | action_date | person_id |
-- | ------ | ------ |
-- | 2022-01-01 | 6 |
-- | 2022-01-01 | 2 |
-- | 2022-01-01 | 1 |
-- | ... | ... |

select order_date as action_date, person_id from person_order
INTERSECT
select visit_date as action_date , person_id from person_visits
order by action_date asc, person_id desc