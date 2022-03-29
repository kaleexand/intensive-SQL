-- Please write a SQL which returns unique pizza names from the `menu` table and ordering by pizza_name column in descending mode. Please pay attention to the Denied section.

select pizza_name from menu
union 
select pizza_name from menu
order by pizza_name desc