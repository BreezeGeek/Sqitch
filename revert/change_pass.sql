-- Revert flipr:change_pass from pg

BEGIN;

-- XXX Add DDLs here.
DROP FUNCTION flipr.change_pass(TEXT, TEXT, TEXT);

COMMIT;
