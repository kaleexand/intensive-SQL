-- Please write a SQL statement which returns a difference (minus) of person_id column with saving duplicates between `person_order` table and `person_visits` table for order_date and visit_date are for 7th of January of 2022

select person_id from person_order where order_date = '2022-01-07'
EXCEPT ALL
select person_id from person_visits where visit_date = '2022-01-07'