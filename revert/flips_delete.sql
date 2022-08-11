-- Revert flipr:flips_delete from pg

BEGIN;

-- XXX Add DDLs here.
DROP FUNCTION flipr.delete_flip(BIGINT);

COMMIT;
