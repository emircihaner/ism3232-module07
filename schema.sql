CREATE TABLE IF NOT EXISTS repairs (
    ticket_id TEXT PRIMARY KEY,
    customer TEXT NOT NULL,
    bike TEXT NOT NULL,
    status TEXT NOT NULL,
    pickup_date TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS parts (
    name TEXT PRIMARY KEY,
    price REAL NOT NULL,
    stock INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS change_requests (
    number INTEGER PRIMARY KEY AUTOINCREMENT,
    ticket_id TEXT NOT NULL,
    new_value TEXT NOT NULL,
    status TEXT NOT NULL DEFAULT 'waiting'
);

INSERT OR IGNORE INTO repairs (ticket_id, customer, bike, status, pickup_date) VALUES
    ('R200', 'Jordan Lee', 'road bike', 'in repair', '2026-11-20'),
    ('R201', 'Priya Nair', 'kids bike', 'ready', '2026-11-18'),
    ('R202', 'Samira Patel', 'commuter bike', 'waiting for parts', '2026-11-25'),
    ('R203', 'Devon Brooks', 'mountain bike', 'in repair', '2026-11-23'),
    ('R204', 'Hannah Cho', 'hybrid bike', 'ready', '2026-11-19');

INSERT OR IGNORE INTO parts (name, price, stock) VALUES
    ('inner tube', 8.00, 25),
    ('brake pads', 15.00, 0),
    ('chain', 22.00, 10),
    ('gear cable', 9.50, 14),
    ('bar tape', 18.00, 6);