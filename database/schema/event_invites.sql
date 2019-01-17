CREATE TYPE event_response AS ENUM ('attending', 'not_attending', 'maybe', 'pending');

CREATE TABLE event_invites (
    event_id INTEGER REFERENCES events(id),
    user_id INTEGER REFERENCES users(id),
    response event_response,
    created_at DATETIME,
    updated_at DATETIME,
    UNIQUE(event_id, user_id)
);