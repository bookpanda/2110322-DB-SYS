CREATE VIEW top_product AS
SELECT product_id
FROM ordered_products
WHERE sum_products IN (
        SELECT MAX(sum_products)
        FROM ordered_products
    )