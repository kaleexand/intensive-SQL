select name as pizzeria_name from (select  pizzeria.name from pizzeria
join menu on menu.pizzeria_id = pizzeria.id
join person_order po on po.menu_id = menu.id
join 
(select * from person where gender='female') as t1 on t1.id =  po.person_id) as female
except
(select  pizzeria.name from pizzeria
join menu on menu.pizzeria_id = pizzeria.id
join person_order po on po.menu_id = menu.id
join 
(select * from person where gender='male')as t1 on t1.id =  po.person_id) 
order by pizzeria_name