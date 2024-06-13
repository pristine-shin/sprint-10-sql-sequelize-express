-- Step 1
-- Connecting both sides of a many-to-many relationship involves JOINing the
-- join table on to one side of the relationship, then JOINing the other side
-- on to the join table.
-- Your code here
SELECT musicians.first_name, instruments.type FROM musician_instruments
  JOIN musicians, instruments ON (musician_instruments.musician_id = musicians.id AND musician_instruments.instrument_id = instruments.id);
