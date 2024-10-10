SELECT c.customer_id,
    c.customer_name
FROM customer c
    LEFT JOIN ordert o ON o.customer_id = c.customer_id
WHERE o.customer_id IS NULL