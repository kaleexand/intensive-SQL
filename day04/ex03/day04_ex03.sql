select missing_date
from (select generate_date as missing_date from v_generated_dates) t
left join (select visit_date from person_visits where visit_date between '2022-01-01' and '2022-01-31')as t1
on t1.visit_date = missing_date
where visit_date is null
order by missing_date