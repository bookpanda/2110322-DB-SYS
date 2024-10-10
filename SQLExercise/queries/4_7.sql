WITH OrderedProductQuantity AS (
    SELECT p.product_id,
        p.product_description,
        SUM(o.ordered_quantity) AS amount
    FROM product p
        JOIN order_line o ON p.product_id = o.product_id
    GROUP BY p.product_id
)
SELECT product_id,
    product_description
FROM OrderedProductQuantity
WHERE amount = (
        SELECT MAX(amount)
        FROM OrderedProductQuantity
    )