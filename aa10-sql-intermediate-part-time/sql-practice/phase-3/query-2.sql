-- Find All the Toys for Hermione's cats
-- Your code here

SELECT toys.name FROM toys
    JOIN cats, owners, cat_owners ON (cats.id = cat_owners.cat_id AND owners.id = cat_owners.owner_id AND owners.first_name = 'Hermione' AND cats.id = toys.cat_id);
