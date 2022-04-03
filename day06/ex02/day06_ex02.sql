select p.name as person_name, pizza_name, price, price * (100 - discount)/100 as discount_price 
from person_order po
join menu m on m.id = po.menu_id
join person p on p.id = po.person_id
join person_discounts pd on pd.person_id = p.id and pd.pizzeria_id = m.pizzeria_id
order by person_name, pizza_name