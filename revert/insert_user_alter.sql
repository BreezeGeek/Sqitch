-- Revert flipr:insert_user_alter from pg

BEGIN;

-- XXX Add DDLs here.
DROP FUNCTION flipr.insert_user(TEXT, TEXT);

COMMIT;
