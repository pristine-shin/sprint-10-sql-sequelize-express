--Write a JOIN query to get the list of toys belonging to Garfield.
SELECT toys.name
FROM toys
JOIN cats ON (cats.id = toys.cat_id)
WHERE
    cats.name = 'Garfield';

--Rewrite the JOIN query using a subquery instead.
SELECT name
FROM toys
WHERE cat_id IN (
    SELECT id
    FROM cats
    WHERE name = 'Garfield'
);

--Give Garfield a new toy named "Pepperoni" using a subquery for Garfield's id.
INSERT INTO toys (name, cat_id)
VALUES (
    'Pepperoni',
    (
        SELECT id
        FROM cats
        WHERE name='Garfield'
    )
);
