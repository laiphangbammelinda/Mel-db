-- Insert sample data
INSERT INTO users (name, email) VALUES
('Alice', 'alice@email.com'),
('Bob', 'bob@email.com');

INSERT INTO events (title, date) VALUES
('Tech Talk', '2026-05-10'),
('Workshop', '2026-05-15');

INSERT INTO registrations (user_id, event_id) VALUES
(1, 1),
(2, 2);

-- Basic queries
SELECT * FROM users;

-- Join query
SELECT u.name, e.title
FROM users u
JOIN registrations r ON u.id = r.user_id
JOIN events e ON r.event_id = e.id;
