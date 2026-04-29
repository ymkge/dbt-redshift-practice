with source as (
    select * from {{ source('main', 'raw_users') }}
)

select
    id as user_id,
    name as user_name,
    email as user_email,
    created_at as account_created_at
from source
