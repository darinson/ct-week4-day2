INSERT INTO customers(
	customer_id,
	first_name,
	last_name,
	payment_info,
	address
) VALUES(
	1,
	'Darin',
	'Son',
	'1234-1234-1234-1234 567 01/01',
	'101 Ridge Valley Irvine,CA 92620'
),(
	2,
	'Jordan',
	'Tang',
	'5678-5678-5678-5678 123 02/02',
	'102 Ferrini Rd San Luis Obispo,CA 93401'
),(
	3,
	'Elle',
	'Woods',
	'1010-1010-1010-1010 987 03/03',
	'555 Smarty Rd Beverly Hills,CA 90909'
),(
	4,
	'Michael',
	'Scott',
	'3030-3030-3030-3030 583 02/12',
	'123 Gray Building Scranton, PA 12343'
)
;

INSERT INTO movies(
	movie_id,
	title,
	rating
) VALUES(
	1,
	'Legally Blonde',
	'PG-13'
),(
	2,
	'Batman Begins',
	'PG-13'
);

INSERT INTO purchase(
	purchase_id,
	total,
	customer_id
) VALUES(
	1,
	25,
	1
),(
	2,
	10,
	1
),(
	3,
	5,
	2
);

INSERT INTO concessions(
	concession_id,
	concession,
	price,
	purchase_id
) VALUES(
	1,
	'popcorn',
	'4.99',
	1
),(
	2,
	'chocolate',
	'4.99',
	3
);

INSERT INTO tickets(
	ticket_id,
	price,
	purchase_id,
	movie_id
) VALUES(
	1,
	9.99,
	1,
	1
),(
	2,
	9.99,
	1,
	1
),(
	3,
	9.99,
	2,
	1
);

-- Changing the NOT NULL property on purchase_id column for tickets table
ALTER TABLE tickets
ALTER COLUMN purchase_id
DROP NOT NULL;

-- Filling the tickets table with unpurchased tickets
INSERT INTO tickets(
	ticket_id,
	price,
	purchase_id,
	movie_id
) VALUES(
	4,
	9.99,
	NULL,
	1
),(
	5,
	9.99,
	NULL,
	1
),(
	6,
	9.99,
	NULL,
	1
),(
	7,
	9.99,
	NULL,
	1
),(
	8,
	9.99,
	NULL,
	1
),(
	9,
	9.99,
	NULL,
	1
),(
	10,
	9.99,
	NULL,
	1
),(
	11,
	9.99,
	NULL,
	2
),(
	12,
	9.99,
	NULL,
	2
),(
	13,
	9.99,
	NULL,
	2
),(
	14,
	9.99,
	NULL,
	2
),(
	15,
	9.99,
	NULL,
	2
),(
	16,
	9.99,
	NULL,
	2
),(
	17,
	9.99,
	NULL,
	2
),(
	18,
	9.99,
	NULL,
	2
),(
	19,
	9.99,
	NULL,
	2
),(
	20,
	9.99,
	NULL,
	2
);