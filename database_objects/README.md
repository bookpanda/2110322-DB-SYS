```bash
# list stored functions/procedures
\df

# list triggers
\dS [table_name]

# list views
\d+ [view_name]

# drop
DROP FUNCTION get_all_customers_with_their_level()
DROP PROCEDURE get_all_customers_with_their_level()
DROP TRIGGER updating_new_address ON customer;
```

## Stored Procedures
- no return values
- stored function cannot do transactions, but stored procedures can