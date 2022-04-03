create unique index idx_person_discounts_unique ON person_discounts (person_id, pizzeria_id)
Set enable_seqscan to off;

EXPLAIN ANALYZE
select *
from person_discounts
where person_id = 9 and pizzeria_id = 5