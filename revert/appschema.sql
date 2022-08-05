-- Revert flipr:appschema from pg

BEGIN;
DROP SCHEMA flipr;
-- XXX Add DDLs here.

COMMIT;
