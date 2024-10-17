CREATE OR REPLACE FUNCTION get_customers_with_sum_balance() RETURNS TABLE(customer_name VARCHAR, sum_balance NUMERIC) LANGUAGE plpgsql AS $$ BEGIN RETURN query
SELECT c.customer_name,
    sum(A.balance) AS sum_balance
FROM customer C,
    depositor D,
    account A
WHERE A.account_number = D.account_number
    AND C.customer_name = D.customer_name
GROUP BY C.customer_name
ORDER BY sum_balance DESC;
END;
$$