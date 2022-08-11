-- Verify flipr:flips on pg

BEGIN;


-- XXX Add verifications here.
SELECT id
     , nickname
     , body
     , timestamp
  FROM flipr.flips
 WHERE FALSE;


ROLLBACK;
