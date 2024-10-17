call close_saving_account('Babara', '10');
CREATE OR REPLACE procedure close_saving_account(cust_name VARCHAR, acct_number VARCHAR) language plpgsql AS $$ BEGIN
DELETE FROM account A
WHERE account_number = acct_number;
DELETE FROM depositor D
WHERE account_number = acct_number;
END;
$$