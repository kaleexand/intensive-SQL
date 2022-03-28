select distinct person_name1, person_name2, common_address from (SELECT distinct person.name as person_name1, address, id as id1
FROM person) as t2
join (SELECT person.name as person_name2, address as common_address, id as id2
FROM person ) as t1 on common_address = t2.address 
where person_name1 <> person_name2 
and  (id1 = (id2 + 1) or id1 = (id2 + 2))
order by 1,2,3;
