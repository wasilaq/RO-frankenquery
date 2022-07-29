select * from {{ ref('stg_payments') }}
where amount > 10000
