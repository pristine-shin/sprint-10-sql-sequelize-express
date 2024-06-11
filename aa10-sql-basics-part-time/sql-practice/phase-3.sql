-- Your code here
--1--
INSERT INTO customers (id, full_name, phone)
VALUES
(1, 'Rachel', 1111111111);

--2--
SELECT points FROM customers
WHERE full_name = 'Rachel';

UPDATE customers SET points = points + 1
WHERE full_name = 'Rachel';

UPDATE coffee_orders SET is_redeemed = 0
WHERE full_name = 'Rachel';

--3--
INSERT INTO customers (full_name, email, phone)
VALUES
('Monica', 'monica@friends.show', 2222222222),
('Phoebe', 'phoebe@friends.show', 3333333333);

--4--
UPDATE customers SET points = points + 3
WHERE full_name = 'Phoebe';

--5--
UPDATE customers SET points = points + 4
WHERE full_name = 'Rachel';

UPDATE customers SET points = points + 4
WHERE full_name = 'Monica';

--6--
SELECT points FROM customers
WHERE full_name = 'Monica';

--7--
SELECT points FROM customers
WHERE full_name = 'Rachel';

UPDATE customers SET points = points - 10
WHERE full_name = 'Rachel';

--8--
INSERT INTO customers (full_name, email)
VALUES
('Joey', 'joey@friends.show'),
('Chandler', 'chandler@friends.show'),
('Ross', 'ross@friends.show');

--9--
UPDATE customers SET points = points + 6
WHERE full_name = 'Ross';

--10--
UPDATE customers SET points = points + 3
WHERE full_name = 'Monica';

--11--
SELECT points FROM customers
WHERE full_name = 'Phoebe';

UPDATE customers SET points = points + 1
WHERE full_name = 'Phoebe';

--12--
