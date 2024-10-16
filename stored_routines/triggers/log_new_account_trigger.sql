CREATE TRIGGER adding_new_account BEFORE
INSERT ON account FOR EACH ROW EXECUTE FUNCTION log_adding_new_account()