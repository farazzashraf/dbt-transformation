{% snapshot restaurant_name_snapshot_check %}

    {{
        config(
            target_schema='public',
            strategy='check',
            unique_key='id',
            check_cols=['name'],
        )
    }}

    select * from public.restaurants

{% endsnapshot %}   