-- Your code here
SELECT tools.name, quantity FROM purchases
JOIN tools ON (tools.name = purchases.tool_name)
ORDER BY tools.name, quantity;
