-- Your code here
SELECT tools.name, tools.price, quantity FROM order_details
JOIN tools, purchases ON (tools.id = order_details.tool_id
    AND purchases.id = order_details.purchase_id)
WHERE tools.name LIKE 'Pipe%'
ORDER BY tools.name, quantity ASC;
