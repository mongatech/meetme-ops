CREATE TYPE friend_status AS ENUM ('accepted', 'requested', 'declined');

CREATE TABLE friends (
	user_id INTEGER NOT NULL REFERENCES users(id),
	friend_id INTEGER NOT NULL REFERENCES users(id),
	status friend_status,
	created_at DATETIME,
    updated_at DATETIME
	UNIQUE(user_id, friend_id)
);