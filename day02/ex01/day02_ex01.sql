
-- Please write a SQL statement which returns the missing days from the interval from 1st to 10th of January 2022 for visits of persons with identifiers 1 and 2. Please order by visiting days in ascending mode. The sample of data with column name is presented below.

-- | missing_date |
-- | ------ |
-- | 2022-01-03 |
-- | 2022-01-04 |
-- | 2022-01-05 |
-- | ... |

select missing_date 
from (select gs::date as missing_date
from generate_series('2022-01-01', '2022-01-10','1 day'::interval) as gs) t
left join (select visit_date from person_visits where (person_id = 1 or person_id = 2 )) t1
on t1.visit_date = missing_date
where visit_date is null
order by missing_date
