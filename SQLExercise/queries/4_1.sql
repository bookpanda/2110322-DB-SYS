SELECT postal_code,
    COUNT(*) AS customer_numbers
FROM customer
GROUP BY postal_code
ORDER BY customer_numbers DESC