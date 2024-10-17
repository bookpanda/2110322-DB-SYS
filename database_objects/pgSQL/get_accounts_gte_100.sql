do $$ << first_block >>
declare selected_accounts record;
begin -- get all accounts with the balance >= 100
for selected_accounts in
select account_number,
    branch_name,
    balance
from account
where balance >= 100
order by balance loop -- display a message
    raise notice 'The account_number branch_name and balance is %, %, %',
    selected_accounts.account_number,
    selected_accounts.branch_name,
    selected_accounts.balance;
end loop;
end first_block $$;