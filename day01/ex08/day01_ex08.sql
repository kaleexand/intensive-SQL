select order_date, concat(name, ' (age:', age,')') as person_information
from (select person_id as id, order_date from person_order) as t
NATURAL JOIN  person
ORDER BY order_date, name