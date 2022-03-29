-- Please write a SQL statement which returns menu’s identifier and pizza names from `menu` table and person’s identifier and person name from `person` table in one global list (with column names are presented on a sample below) ordered by object_name column.

-- | object_id | object_name |
-- | ------ | ------ |
-- | 2 | Andrey |
-- | 1 | Anna |
-- | 8 | cheese pizza |
-- | ... | ... |

select *
from (select id as object_id, pizza_name as object_name from menu
union
select id as object_id, name as object_name from person) as t1
order by LOWER(object_name) ASC
