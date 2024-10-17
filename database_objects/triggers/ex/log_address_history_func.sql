CREATE OR REPLACE FUNCTION log_address_history() RETURNS TRIGGER language plpgsql AS $$ BEGIN IF NEW.customer_street IS DISTINCT
FROM OLD.customer_street THEN
INSERT INTO address_audit_log (address, exec_time)
VALUES (OLD.customer_street, now());
END IF;
RETURN NEW;
END;
$$