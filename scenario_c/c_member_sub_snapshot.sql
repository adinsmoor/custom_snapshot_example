{% snapshot c_member_sub_snapshot %}
    {{
        config(
            target_schema='snapshots_dev',
            unique_key='digipass_id',
            strategy='check',
              check_cols=['status','address']
        )
    }}

    select * from {{ ref('c_src_member_subscription_details') }}

 {% endsnapshot %}