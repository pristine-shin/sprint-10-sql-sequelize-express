--Write a query to determine the number of cats stored in the database.
SELECT COUNT(*) AS count
FROM cats;

--Write a query for the oldest cat, and the year it was born.
SELECT name, MIN(birth_year) AS oldest_cat FROM cats;

--Write a query for the youngest cat, and the year it was born.
SELECT name, MAX(birth_year) AS youngest_cat FROM cats;


