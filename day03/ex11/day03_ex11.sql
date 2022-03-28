UPDATE menu SET price= round(price-(price * 0.1))
WHERE pizza_name = 'greek pizza'