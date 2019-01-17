CREATE TABLE event_comments (
    id INTEGER PRIMARY KEY,
    event_id INTEGER REFERENCES events(id),
    user_id INTEGER REFERENCES users(id),
    parent_comment_id INTEGER,
    comment NVARCHAR(250),
    created_at DATETIME,
    updated_at DATETIME
);