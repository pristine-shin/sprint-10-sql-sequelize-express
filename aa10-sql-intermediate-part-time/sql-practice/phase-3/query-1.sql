-- Find Hermione's cats
-- Your code here
SELECT cats.name FROM cat_owners
    JOIN cats, owners ON (cats.id = cat_owners.cat_id AND owners.id = cat_owners.owner_id AND owners.first_name = 'Hermione');
