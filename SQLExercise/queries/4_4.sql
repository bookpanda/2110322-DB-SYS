WITH ProductOrderCounts AS (
    SELECT product_id,
        COUNT(*) AS order_count
    FROM order_line
    GROUP BY product_id
)
SELECT poc.product_id,
    p.product_description
from ProductOrderCounts poc
    JOIN product p ON poc.product_id = p.product_id
WHERE poc.order_count = (
        SELECT MAX(order_count)
        FROM ProductOrderCounts
    )