
with source as (

    select * from {{ source('jaffle_shop', 'customers') }}

),

renamed as (

    select
        id as customer_id,
        first_name,
        last_name,
        first_name || ' ' || last_name as full_name

    from source

)

select * from renamed
