create unique index idx_menu_unique on menu (pizzeria_id, pizza_name);

EXPLAIN ANALYZE select pizza_name, pizzeria_id from menu 