-- Find the name of the cats who have an owner whose first name begins with an "H"
-- Your code here
SELECT name FROM cats
    JOIN owners, cat_owners ON (cats.id = cat_owners.cat_id AND owners.id = cat_owners.owner_id AND owners.first_name LIKE 'H%');
