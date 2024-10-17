select table_name
from INFORMATION_SCHEMA.views
where table_schema = ANY (current_schemas(false));