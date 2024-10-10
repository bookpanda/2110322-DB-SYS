WITH CustomerOrders AS (
    SELECT c.customer_id,
        c.customer_name,
        COUNT(*) AS number_of_orders
    FROM customer c
        JOIN ordert o ON c.customer_id = o.customer_id
    GROUP BY c.customer_id
    ORDER BY number_of_orders DESC
)
SELECT customer_id,
    customer_name
FROM CustomerOrders
WHERE number_of_orders = (
        SELECT MAX(number_of_orders)
        FROM CustomerOrders
    )