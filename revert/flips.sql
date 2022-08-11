-- Revert flipr:flips from pg

BEGIN;

-- XXX Add DDLs here.
DROP TABLE flipr.flips;

COMMIT;
