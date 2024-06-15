-- Your code here
SELECT customers.first_name, customers.last_name, customers.phone_number FROM order_details
JOIN customers, purchases, tools ON (tools.id = order_details.tool_id
    AND purchases.id = order_details.purchase_id
    AND customers.id = order_details.customer_id)
WHERE tools.name = 'Pipe Cutter'
ORDER BY purchases.id DESC
LIMIT 1;
