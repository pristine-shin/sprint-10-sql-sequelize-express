-- Your code here
-- UPDATE tools
-- SET department = ''
-- WHERE department = 'Plumbing';

CREATE INDEX tools_department
ON tools (department)
WHERE department = 'Plumbing';

DROP INDEX IF EXISTS tools_department;
