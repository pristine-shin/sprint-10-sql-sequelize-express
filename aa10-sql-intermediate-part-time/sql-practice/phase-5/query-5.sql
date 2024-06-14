-- Find names of the cats whose owners are both George Beatty and Melynda Abshire, or just George Beatty, or just Melynda Abshire
-- Your code here
SELECT DISTINCT name FROM cats
    JOIN owners, cat_owners ON (cats.id = cat_owners.cat_id AND owners.id = cat_owners.owner_id)
    WHERE owners.first_name IN ('George', 'Melynda')
    AND owners.last_name IN ('Beatty', 'Abshire');
