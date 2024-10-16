CREATE TABLE address_audit_log(address VARCHAR, exec_time timestamp NOT NULL);
--
UPDATE customer
SET customer_street = 'a'
WHERE customer_name = 'Alan' -- DROP TRIGGER updating_new_address ON customer;
    -- DROP FUNCTION log_address_history;
select *
from address_audit_log