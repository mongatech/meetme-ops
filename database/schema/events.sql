CREATE TABLE events (
	id PRIMARY KEY,
	host_id INTEGER REFERENCES users(id),
	thumbnail BLOB,
	title TEXT,
	description TEXT,
	address_line_1 TEXT,
	address_line_2 TEXT,
	address_line_3 TEXT,
	city TEXT,
	state VARCHAR(2),
	zip_5 VARCHAR(5),
	created_at DATETIME,
    updated_at DATETIME
);