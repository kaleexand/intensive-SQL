create view v_symmetric_union as
select person_id from (select *
from person_visits
where visit_date = '2022-01-02'
except
select *
from person_visits
where visit_date = '2022-01-06') as t1
union 
select person_id from  (select *
from person_visits
where visit_date = '2022-01-06'
except
select *
from person_visits
where visit_date = '2022-01-02') as t2
order by person_id