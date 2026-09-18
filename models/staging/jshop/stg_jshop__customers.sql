  select
        id as customer_id,
        first_name,
        last_name
    -- from raw.jshop.customers
    from {{ source('jshop', 'customers') }}