-- Your code here
--1--
INSERT INTO customers (id, full_name, phone)
VALUES
(1, 'Rachel', 1111111111);

INSERT INTO coffee_orders (id, is_redeemed)
VALUES (1, 0);

--2--
SELECT points FROM customers
WHERE full_name = 'Rachel';

UPDATE customers SET points = points + 1
WHERE full_name = 'Rachel';

INSERT INTO coffee_orders (is_redeemed)
VALUES(0);

--3--
INSERT INTO customers (full_name, email, phone)
VALUES
('Monica', 'monica@friends.show', 2222222222),
('Phoebe', 'phoebe@friends.show', 3333333333);

--4--
UPDATE customers SET points = points + 3
WHERE full_name = 'Phoebe';

INSERT INTO coffee_orders (is_redeemed)
VALUES(0);

--5--
UPDATE customers SET points = points + 4
WHERE full_name = 'Rachel';

INSERT INTO coffee_orders (is_redeemed)
VALUES(0);

UPDATE customers SET points = points + 4
WHERE full_name = 'Monica';

INSERT INTO coffee_orders (is_redeemed)
VALUES(0);

--6--
SELECT points FROM customers
WHERE full_name = 'Monica';

--7--
SELECT points FROM customers
WHERE full_name = 'Rachel';

UPDATE customers SET points = points - 10
WHERE full_name = 'Rachel';

INSERT INTO coffee_orders (is_redeemed)
VALUES(1);

--8--
INSERT INTO customers (full_name, email)
VALUES
('Joey', 'joey@friends.show'),
('Chandler', 'chandler@friends.show'),
('Ross', 'ross@friends.show');

--9--
UPDATE customers SET points = points + 6
WHERE full_name = 'Ross';

INSERT INTO coffee_orders (is_redeemed)
VALUES(0);

--10--
UPDATE customers SET points = points + 3
WHERE full_name = 'Monica';

INSERT INTO coffee_orders (is_redeemed)
VALUES(0);

--11--
SELECT points FROM customers
WHERE full_name = 'Phoebe';

UPDATE customers SET points = points + 1
WHERE full_name = 'Phoebe';

INSERT INTO coffee_orders (is_redeemed)
VALUES(0);

--12--
UPDATE customers SET points = points - 2
WHERE full_name = 'Ross';

--13--
UPDATE customers SET points = points + 2
WHERE full_name = 'Joey';

INSERT INTO coffee_orders (is_redeemed)
VALUES(0);

--14--
SELECT points FROM customers
WHERE full_name = 'Monica';

UPDATE customers SET points = points - 10
WHERE full_name = 'Monica';

INSERT INTO coffee_orders (is_redeemed)
VALUES(1);

--15--
DELETE FROM customers
WHERE full_name = 'Chandler';

--16--
SELECT points FROM customers
WHERE full_name = 'Ross';

UPDATE customers SET points = points + 1
WHERE full_name = 'Ross';

INSERT INTO coffee_orders (is_redeemed)
VALUES(0);

--17--
SELECT points FROM customers
WHERE full_name = 'Joey';

UPDATE customers SET points = points + 1
WHERE full_name = 'Joey';

INSERT INTO coffee_orders (is_redeemed)
VALUES(0);

--18--
UPDATE customers SET email = 'p_as_in_phoebe@friends.show'
WHERE full_name = 'Phoebe';
