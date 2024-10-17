CREATE VIEW ordered_products AS
SELECT product_id,
    count(order_id) AS sum_products
FROM order_line
GROUP BY product_id;