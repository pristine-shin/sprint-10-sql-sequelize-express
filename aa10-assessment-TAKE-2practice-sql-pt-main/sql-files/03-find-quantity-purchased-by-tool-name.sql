-- Your code here
SELECT tools.name, tools.price, quantity FROM purchases
JOIN tools ON (tools.name = purchases.tool_name)
WHERE tools.name LIKE 'Pipe%'
ORDER BY tools.name, quantity;
