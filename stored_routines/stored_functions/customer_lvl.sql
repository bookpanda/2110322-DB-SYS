SELECT C.customer_name,
    A.account_number,
    customer_level(A.balance)
FROM account A,
    customer C,
    depositor D
WHERE A.account_number = D.account_number
    AND C.customer_name = D.customer_name;