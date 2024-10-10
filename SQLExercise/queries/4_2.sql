SELECT postal_code,
    COUNT(*) AS customer_numbers
FROM customer
GROUP BY postal_code
HAVING COUNT(*) > 1
ORDER BY customer_numbers DESC