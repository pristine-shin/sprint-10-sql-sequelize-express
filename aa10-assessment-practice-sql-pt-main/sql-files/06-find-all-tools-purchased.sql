-- Your code here
SELECT tools.name, quantity FROM order_details
JOIN tools, purchases ON (tools.id = order_details.tool_id
    AND purchases.id = order_details.purchase_id)
ORDER BY tools.name, quantity ASC;
