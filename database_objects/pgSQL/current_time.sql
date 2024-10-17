do $$ << first_block >>
declare start_at constant time = now();
begin -- display a message
raise notice 'The current time is %',
start_at;
end first_block $$;