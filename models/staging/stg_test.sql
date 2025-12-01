with

source as (

    select * from {{ source('ecom', 'raw_customers') }}

),

lower_case as (

    select

        ----------  ids
        id as customer_id,

        ---------- text
        lower(name) as customer_name

    from source

)

select * from lower_case
