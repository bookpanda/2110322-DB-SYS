START TRANSACTION;
INSERT INTO boat
VALUES(112, 'AAA', 'Black');
INSERT INTO boat
VALUES(113, 'BBB', 'Red');
SELECT *
FROM boat;
--
-- run them separately (transaction first, then COMMIT or ROLLBACK)
-- COMMIT;