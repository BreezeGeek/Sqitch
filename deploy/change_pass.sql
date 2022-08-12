-- Deploy flipr:change_pass to pg
-- requires: users
-- requires: appschema

BEGIN;

-- XXX Add DDLs here.
DROP FUNCTION flipr.change_pass;
CREATE OR REPLACE FUNCTION flipr.change_pass(
    nickname    TEXT,
	newpass TEXT,
    oldpass TEXT
    
) RETURNS BOOLEAN LANGUAGE plpgsql SECURITY DEFINER AS $$
BEGIN
    UPDATE flipr.users
       SET password = md5($2)
     WHERE nickname = $1
       AND password = md5($3);
    RETURN FOUND;
END;
$$;


COMMIT;
