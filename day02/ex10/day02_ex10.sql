-- Please find the names of people who lives on the same address. Make sure that the result is ordered by 1st person, 2nd person's name and common address. The sample of data is presented below. Please make sure your column names are corresponding column names below.

-- | person_name1 | person_name2 | common_address | 
-- | ------ | ------ | ------ |
-- | Andrey | Anna | Moscow |
-- | Denis | Kate | Kazan |
-- | Elvira | Denis | Kazan |
-- | ... | ... | ... |


select distinct person_name1, person_name2, common_address from (SELECT distinct person.name as person_name1, address, id as id1
FROM person) as t2
join (SELECT person.name as person_name2, address as common_address, id as id2
FROM person ) as t1 on common_address = t2.address 
where person_name1 <> person_name2 
and  (id1 = (id2 + 1) or id1 = (id2 + 2))
order by 1,2,3;
