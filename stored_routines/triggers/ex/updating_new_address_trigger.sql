CREATE TRIGGER updating_new_address
AFTER
UPDATE ON customer FOR EACH ROW EXECUTE FUNCTION log_address_history()