do $$ << first_block >>
declare account_count integer := 0;
begin -- get the number of accounts
select count(*) into account_count
from account;
-- assert a message when the assert conditon is false or null
assert account_count > 1000,
'Test assert ';
end first_block $$;