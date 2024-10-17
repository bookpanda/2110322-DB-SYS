EXPLAIN ANALYZE
SELECT *
FROM customer
WHERE country = 'Thailand';
--
CREATE INDEX country_idx ON customer(country);
--
EXPLAIN ANALYZE
SELECT *
FROM customer
WHERE country = 'Thailand';