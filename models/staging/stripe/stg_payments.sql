
with source as (

    select * from {{ source('stripe', 'payment') }}

),

renamed as (

    select
        id as payment_id,
        orderid as order_id,
        paymentmethod as method,
        status,
        round(amount/100.0,2) as amount,
        created as payment_date,
        _batched_at

    from source

)

select * from renamed
