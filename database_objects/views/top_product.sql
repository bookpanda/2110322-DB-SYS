SELECT product_id,
    product_description
FROM PRODUCT
WHERE product_id IN (
        SELECT *
        FROM top_product
    );