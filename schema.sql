CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT UNIQUE
);

CREATE TABLE events (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    date DATE
);

CREATE TABLE registrations (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(id),
    event_id INT REFERENCES events(id)
);
