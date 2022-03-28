select id as menu_id from menu
EXCEPT
select id  from(SELECT 
 (select id from menu m where m.id = person_order.menu_id) as id
FROM person_order
) as e
order by menu_id