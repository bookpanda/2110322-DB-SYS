CREATE or REPLACE procedure transfer(
        from_acct VARCHAR(2),
        to_acct VARCHAR(2),
        amount NUMERIC
    ) language plpgsql AS $$ BEGIN -- subtracting the amount from the sender's account
UPDATE account
SET balance = balance - amount
WHERE account_number = from_acct;
-- adding the amount to the receiver's account
UPDATE account
SET balance = balance + amount
WHERE account_number = to_acct;
COMMIT;
END;
$$