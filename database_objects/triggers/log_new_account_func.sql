CREATE OR REPLACE FUNCTION log_adding_new_account() RETURNS TRIGGER language plpgsql AS $$ BEGIN
INSERT INTO TriggerTime
VALUES(now());
RETURN NEW;
END;
$$