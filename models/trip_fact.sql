with
    trips as (
        select
            ride_id,
            --rideable_type,
            date(to_timestamp(started_at)) as trip_date,
            end_station_id,
            start_statio_id as start_station_id,
            member_csual as member_casual,
            timestampdiff(
                second, to_timestamp(started_at), to_timestamp(ended_at)
            ) as trip_duration_seconds
 
        from {{ ref('stg_bike') }}
        where ride_id != '"bike_id"' and RIDE_ID != 'bikeid'

    )

select *
from trips
