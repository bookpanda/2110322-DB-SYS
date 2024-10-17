CREATE OR REPLACE FUNCTION get_all_customers_with_their_level() RETURNS TABLE(
        customer_name VARCHAR,
        sum_balance NUMERIC,
        customer_lvl VARCHAR
    ) LANGUAGE plpgsql AS $$ BEGIN RETURN query
SELECT c.customer_name,
    sum(A.balance) AS sum_balance,
    customer_level(sum(A.balance))
FROM customer C,
    depositor D,
    account A
WHERE A.account_number = D.account_number
    AND C.customer_name = D.customer_name
GROUP BY C.customer_name
ORDER BY sum_balance DESC;
END;
$$