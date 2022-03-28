select *
from (select id as object_id, pizza_name as object_name from menu
union
select id as object_id, name as object_name from person) as t1
order by LOWER(object_name) ASC
