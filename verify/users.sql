-- Verify flipr:users on pg

BEGIN;

-- XXX Add verifications here.

SELECT nickname, password, timestamp
  FROM flipr.users
 WHERE FALSE;

ROLLBACK;
