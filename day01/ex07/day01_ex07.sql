
-- Please write a SQL statement which returns the date of order from the `person_order` table and corresponding person name (please rename an output calculated column to person_information) which made an order from the `person` table like the next sample below. Add a sort by both columns in ascending mode.

-- | order_date | person_information |
-- | ------ | ------ |
-- | 2022-01-01 | Andrey (age:21) |
-- | 2022-01-01 | Andrey (age:21) |
-- | 2022-01-01 | Anna (age:16) |
-- | ... | ... |

select order_date, concat(name, ' (age:', age,')') as person_information
from person_order as po
join person p on p.id = po.person_id
ORDER BY order_date, name