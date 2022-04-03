ALTER TABLE person_discounts
add constraint ch_nn_person_id check(person_id is not null);

ALTER TABLE person_discounts
add constraint ch_nn_pizzeria_id check(pizzeria_id is not null);

ALTER TABLE person_discounts
add constraint ch_nn_discount check(discount is not null);

ALTER TABLE person_discounts
ALTER discount SET DEFAULT 0;

ALTER TABLE person_discounts
add constraint ch_range_discount check(discount between 0  and 100);