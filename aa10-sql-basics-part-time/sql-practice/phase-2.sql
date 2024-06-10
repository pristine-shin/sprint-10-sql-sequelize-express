-- Your code here
DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    id PRIMARY KEY INTEGER,
    full_name VARCHAR(40) NOT NULL,
    phone INTEGER(10) UNIQUE,
    email VARCHAR(255) UNIQUE,
    points INTEGER(100) NOT NULL DEFAULT 5,
    created_at NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE coffee_orders (
    id PRIMARY KEY INTEGER,
    is_redeemed BOOLEAN,
    ordered_at NOT NULL DEFAULT TIMESTAMP
);
