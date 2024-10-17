CREATE OR REPLACE FUNCTION get_branches_assets_greater_than(con NUMERIC) RETURNS TABLE(
        branch_name VARCHAR,
        branch_city VARCHAR,
        assets NUMERIC
    ) LANGUAGE plpgsql AS $$ BEGIN RETURN query
SELECT *
FROM branch B
WHERE B.assets > con
ORDER BY assets DESC;
END;
$$