with source_data as (

    select 1 as digipass_id, '2023-03-20 20:45:19.113 -0700' as updated_at, 'pending' as status, '123 grove' as address union all
    select 2, dateadd(minute, 20, '2023-03-20 20:45:19.113 -0700'), 'pending', '789 lane'
    
    -- select 1 as digipass_id, '2023-03-20 20:55:19.113 -0700' as updated_at, 'pending' as status, '456 grove' as address union all
    -- select 2, dateadd(minute, 20, '2023-03-20 20:55:19.113 -0700'), 'closed', '789 lane'

)

select * from source_data