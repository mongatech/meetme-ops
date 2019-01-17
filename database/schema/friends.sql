CREATE TABLE friends (
	user_id INTEGER NOT NULL REFERENCES users (id),
	friend_id INTEGER NOT NULL REFERENCES users (id),
	UNIQUE(user_id, friend_id)
);