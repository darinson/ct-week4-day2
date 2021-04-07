ALTER TABLE customers
ADD phone VARCHAR(15);

UPDATE customers
SET phone = '(949)-891-3945'
WHERE first_name = 'Darin';

UPDATE customers
SET phone = '(301)-039-6593'
WHERE first_name = 'Jordan';

UPDATE customers
SET phone = '(123)-495-2034'
WHERE first_name = 'Elle';

UPDATE customers
SET phone = '(909)-294-2934'
WHERE first_name = 'Michael';

INSERT INTO purchase(
	purchase_id,
	total,
	customer_id
) VALUES(
	4,
	100.00,
	4
);

-- Michael Scott decided to buy his employees tickets to Batman Begins!
UPDATE tickets
SET purchase_id = 4
WHERE movie_id = 2;

SELECT *
FROM tickets;