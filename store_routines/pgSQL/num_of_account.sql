do $$ << first_block >>
declare account_count integer := 0;
begin -- get the number of accounts
select count(*) into account_count
from account;
-- display a message
raise notice 'The number of accounts is %',
account_count;
end first_block $$;