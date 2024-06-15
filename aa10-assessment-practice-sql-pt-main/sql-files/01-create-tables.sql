-- This ensures that SQLite enforces FOREIGN KEY constraints
PRAGMA foreign_keys = 1;

-- Your code here
DROP TABLE IF EXISTS order_details;
DROP TABLE IF EXISTS purchases;
DROP TABLE IF EXISTS tools;
DROP TABLE IF EXISTS owners;

CREATE TABLE tools (
  id INTEGER PRIMARY KEY NOT NULL,
  name VARCHAR NOT NULL,
  price NUMERIC(4,2) NOT NULL,
  department VARCHAR
);

CREATE TABLE customers (
  id INTEGER PRIMARY KEY NOT NULL,
  first_name VARCHAR NOT NULL,
  last_name VARCHAR NOT NULL,
  phone_number INTEGER NOT NULL
);

CREATE TABLE purchases (
  id INTEGER PRIMARY KEY NOT NULL,
  customer_id INTEGER NOT NULL,
  FOREIGN KEY (customer_id) REFERENCES customers(id) ON DELETE CASCADE
);

CREATE TABLE order_details (
  id INTEGER PRIMARY KEY NOT NULL,
  purchase_id INTEGER NOT NULL,
  customer_id INTEGER NOT NULL,
  tool_id INTEGER NOT NULL,
  quantity INTEGER NOT NULL,
  FOREIGN KEY (tool_id) REFERENCES tools(id) ON DELETE CASCADE,
  FOREIGN KEY (customer_id) REFERENCES customers(id) ON DELETE CASCADE,
  FOREIGN KEY (purchase_id) REFERENCES purchases(id) ON DELETE CASCADE
);
