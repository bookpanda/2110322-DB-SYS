do $$ << first_block >>
declare selected_account account %rowtype;
begin -- get the branch_name and balance of account number 4
select * into selected_account
from account
where account_number = '4';
-- display a message
raise notice 'The branch_name and balance is %, %',
selected_account.branch_name,
selected_account.balance;
end first_block $$;