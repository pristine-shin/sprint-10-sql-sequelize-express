DROP TABLE IF EXISTS friends;

CREATE TABLE friends (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL
);

INSERT INTO friends (id, first_name, last_name)
VALUES
  (1, 'Amy', 'Pond');
--   (2, 'Rose', 'Tyler'),
--   (3, 'Martha', 'Jones'),
--   (4, 'Donna', 'Noble'),
--   (5, 'River', 'Song');

INSERT INTO friends (first_name, last_name)
VALUES
  ('Rose', 'Tyler'),
  ('Martha', 'Jones'),
  ('Donna', 'Noble'),
  ('River', 'Song');
