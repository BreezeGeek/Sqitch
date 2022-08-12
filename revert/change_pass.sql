-- Deploy flipr:change_pass to pg
-- requires: users
-- requires: appschema

BEGIN;

-- XXX Add DDLs here.
DROP FUNCTION flipr.change_pass(TEXT, TEXT, TEXT);

COMMIT;
