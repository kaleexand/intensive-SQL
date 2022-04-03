COMMENT ON COLUMN person_discounts.id
   IS 'record number in the table';
COMMENT ON COLUMN person_discounts.person_id
   IS 'unique client id';
COMMENT ON COLUMN person_discounts.pizzeria_id
   IS 'unique pizzeria id in the table';
COMMENT ON COLUMN person_discounts.discount
   IS 'discount amount if “amount of orders” = 1 then “discount” = 10.5, if “amount of orders” = 2 then “discount” = 22, else “discount” = 30';