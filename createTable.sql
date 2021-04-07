
CREATE TABLE customers(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	payment_info VARCHAR(150),
	address VARCHAR(150)
-- Will be adding phone variable in separate sql query
);

CREATE TABLE movies(
	movie_id SERIAL PRIMARY KEY,
	title VARCHAR(150),
	rating VARCHAR(50)
);

CREATE TABLE purchase(
	purchase_id SERIAL PRIMARY KEY,
	total NUMERIC(6,2),
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE concessions(
	concession_id SERIAL PRIMARY KEY,
	concession VARCHAR(100),
	price NUMERIC(5,2),
	purchase_id INTEGER NOT NULL,
	FOREIGN KEY(purchase_id) REFERENCES purchase(purchase_id)
);

CREATE TABLE tickets(
	ticket_id SERIAL PRIMARY KEY,
	price NUMERIC(5,2),
	purchase_id INTEGER NOT NULL,
	movie_id INTEGER NOT NULL,
	FOREIGN KEY(purchase_id) REFERENCES purchase(purchase_id),
	FOREIGN KEY(movie_id) REFERENCES movies(movie_id)
);