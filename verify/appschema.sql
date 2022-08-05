-- Verify flipr:appschema on pg

BEGIN;

-- XXX Add verifications here.

DO $$
BEGIN
   ASSERT (SELECT has_schema_privilege('flipr', 'usage'));
END $$;


ROLLBACK;
