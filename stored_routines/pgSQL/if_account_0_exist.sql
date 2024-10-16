do $$ << first_block >>
declare selected_account account %rowtype;
input_account_number account.account_number %type := 0;
begin -- get the account with specific account number
select *
from account into selected_account
where account_number = input_account_number;
if not found then raise notice 'The account number % could not be found',
input_account_number;
end if;
end first_block $$;