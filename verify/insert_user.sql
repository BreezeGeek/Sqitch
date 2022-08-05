-- Verify flipr:insert_user on pg

BEGIN;

-- XXX Add verifications here.
BEGIN;
SELECT has_function_privilege('flipr.insert_user(text, text)', 'execute');
ROLLBACK;


ROLLBACK;
