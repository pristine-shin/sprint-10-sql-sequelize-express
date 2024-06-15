-- This ensures that SQLite enforces FOREIGN KEY constraints
PRAGMA foreign_keys = 1;

-- Your code here
DROP TABLE IF EXISTS purchases;
DROP TABLE IF EXISTS tools;
DROP TABLE IF EXISTS customers;

CREATE TABLE tools (
  name VARCHAR PRIMARY KEY,
  price DECIMAL (4,2),
  department VARCHAR
);

CREATE TABLE customers (
  id INTEGER PRIMARY KEY,
  first_name VARCHAR,
  last_name VARCHAR,
  phone_number INTEGER
);

CREATE TABLE purchases (
  id INTEGER PRIMARY KEY,
  customer_id INTEGER,
  tool_name VARCHAR,
  quantity INTEGER,
  FOREIGN KEY (customer_id) REFERENCES customers(id) ON DELETE CASCADE,
  FOREIGN KEY (tool_name) REFERENCES tools(name) ON DELETE CASCADE
);
