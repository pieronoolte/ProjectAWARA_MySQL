USE crm_database_awara;

SELECT @@AUTOCOMMIT;
SELECT @@FOREIGN_KEY_CHECKS;
SELECT @@SQL_SAFE_UPDATES;

SET @@AUTOCOMMIT = 1;
SET @@AUTOCOMMIT = 0;

SET @@FOREIGN_KEY_CHECKS=0;
SET SQL_SAFE_UPDATES=0;


START TRANSACTION;
DELETE FROM projects WHERE id=4;
DELETE FROM projects WHERE id=5;
DELETE FROM projects WHERE id=6;
DELETE FROM projects WHERE id=7;

-- ROLLBACK;
-- COMMIT;


START TRANSACTION;
INSERT INTO activities(sa_id, act_typ, cst_id, stg_cli, cont_dt, nxt_cont) VALUES
(5, 'Call', 11, 'Decline', '2024-02-07 12:30:45', '2024-01-12 12:30:45'),
(5, 'Meeting', 10, 'Not apply', '2024-02-09 12:30:45', '2024-01-14 12:30:45'),
(5, 'Mail', 10, 'Not apply', '2024-02-11 12:30:45', '2024-02-16 12:30:45'),
(3, 'Meeting', 15, 'Deal', '2024-02-19 12:30:45', '2024-01-24 12:30:45');
SAVEPOINT SP_LOTE1;
INSERT INTO activities(sa_id, act_typ, cst_id, stg_cli, cont_dt, nxt_cont) VALUES
(1, 'Call', 1, 'Negotiation', '2024-02-01 12:30:45', '2024-02-05 12:30:45'),
(3, 'Meeting', 2, 'Deal', '2024-02-03 12:30:45', '2024-01-08 12:30:45'),
(4, 'Call', 5, 'Future Followup', '2024-02-05 12:30:45', '2024-01-10 12:30:45'),
(2, 'Meeting', 8, 'Future Followup', '2024-02-13 12:30:45', '2024-01-18 12:30:45'),
(1, 'Meeting', 1, 'Negotiation', '2024-02-15 12:30:45', '2024-01-20 12:30:45');

-- ROLLBACK TO SP_LOTE1;
-- ROLLBACK;
-- RELEASE SAVEPOINT SP_LOTE1;
-- COMMIT;