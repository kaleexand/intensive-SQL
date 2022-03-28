WITH tabl AS
(select missing_date 
from (select gs::date as missing_date
from generate_series('2022-01-01', '2022-01-10','1 day'::interval) as gs) t
left join (select visit_date from person_visits where (person_id = 1 or person_id = 2 )) t1
on t1.visit_date = missing_date
where visit_date is null
order by missing_date
)
SELECT * FROM tabl