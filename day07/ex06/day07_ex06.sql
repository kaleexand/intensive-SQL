select  p.name, 
		count(po.order_date) as count_of_orders , 
		round(avg (price), 2) as average_price, 
		round(max(price),2) as max_price, 
		round(min(price),2) as min_price 
from menu
join person_order po on po.menu_id = menu.id
join pizzeria p on p.id = menu.pizzeria_id
group by p.name
order by p.name