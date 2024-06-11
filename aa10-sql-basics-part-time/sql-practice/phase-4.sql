-- Your code here

--Step 1 and 2
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS performance_reviews;
DROP TABLE IF EXISTS parties;

CREATE TABLE employees (
    first_names VARCHAR(40) NOT NULL,
    last_names VARCHAR(40) NOT NULL,
    departments VARCHAR(40) NOT NULL,
    roles VARCHAR(255),
    romantic_relationships VARCHAR(90)
);

CREATE TABLE performance_reviews (
    first_names VARCHAR(40) NOT NULL,
    last_names VARCHAR(40) NOT NULL,
    scores INTEGER(2)
);

CREATE TABLE parties (
    budgets NUMERIC(5,2),
    locations BOOLEAN
);

--Step 3

--1
INSERT INTO employees (first_names, last_names, departments, roles)
VALUES
('Michael', 'Scott', 'Management', 'Regional Manager');

--2
INSERT INTO employees (first_names, last_names, departments, roles)
VALUES
('Dwight', 'Schrute', 'Sales', 'Assistant Regional Manager');

--3
INSERT INTO employees (first_names, last_names, departments, roles)
VALUES
('Jim', 'Halpert', 'Sales', 'Sales Representative');
