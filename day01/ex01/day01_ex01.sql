-- Please modify a SQL statement from “exercise 00” by removing the object_id column then change ordering by object_name for part of data from the `person` table and then by `menu` table (like presented on a sample below). Please save duplicates!

-- | object_name |
-- | ------ |
-- | Andrey |
-- | Anna |
-- | ... |
-- | cheese pizza |
-- | cheese pizza |
-- | ... |

select *
from (select pizza_name as object_name from menu
union all
select name as object_name from person order by object_name) as t
order by object_name 


