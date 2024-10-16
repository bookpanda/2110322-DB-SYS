do $$
declare -- sort by 1: branch_name, 2: balance
    sort_type smallint := 1;
-- return the number of accounts
rec_count int := 10;
-- use to iterate over the account
rec record;
-- dynamic query
query text;
begin query := 'select branch_name, balance from account ';
if sort_type = 1 then query := query || 'order by branch_name';
elsif sort_type = 2 then query := query || 'order by balance';
else raise 'invalid sort type %s',
sort_type;
end if;
query := query || ' LIMIT ' || rec_count;
for rec in execute query using rec_count loop raise notice '% - %',
rec.balance,
rec.branch_name;
end loop;
end;
$$