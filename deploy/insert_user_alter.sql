-- Deploy flipr:insert_user to pg
-- requires: users
-- requires: appschema
-- Function to insert records in users table
BEGIN;

-- XXX Add DDLs here.
DROP FUNCTION flipr.insert_user(TEXT, TEXT);
CREATE OR REPLACE FUNCTION flipr.insert_user(
    name TEXT,
    password TEXT
) RETURNS VOID LANGUAGE SQL SECURITY DEFINER AS $$
    INSERT INTO flipr.users VALUES($1, md5($2));
$$;

COMMIT;
