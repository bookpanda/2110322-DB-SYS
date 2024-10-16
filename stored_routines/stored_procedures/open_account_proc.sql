CREATE OR REPLACE procedure open_new_saving_account(
        cust_name VARCHAR,
        acct_number VARCHAR,
        branch_name VARCHAR,
        balance NUMERIC
    ) language plpgsql AS $$ BEGIN
INSERT INTO customer(customer_name)
SELECT cust_name
WHERE NOT EXISTS (
        SELECT C.customer_name
        FROM customer C
        WHERE C.customer_name = cust_name
    );
INSERT INTO account
VALUES(acct_number, branch_name, balance);
INSERT INTO depositor
VALUES(cust_name, acct_number);
END;
$$