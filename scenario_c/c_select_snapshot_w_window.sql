-- select * from {{ ref('c_member_sub_snapshot') }}

with final as (
select 
    digipass_id
    , status
    , dbt_valid_from
    , dbt_valid_to
    , last_value(address) over (partition by digipass_id order by updated_at asc) as address
from {{ ref('c_member_sub_snapshot') }}
-- order by digipass_id, updated_at
)

select 
    digipass_id
    , status
    , address
    , max(dbt_valid_from)
    , max(dbt_valid_to)
from final 
group by 1,2,3
order by 1,4