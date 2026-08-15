with trips as (
    select 
    RIDE_ID,
    RIDEABLE_TYPE,
    DATE(TO_TIMESTAMP(STARTED_AT)) AS TRIP_DATE,
    END_STATION_ID,
    START_STATIO_ID AS START_STATION_ID,
    MEMBER_CSUAL AS MEMBER_CASUAL,
    TIMESTAMPDIFF(SECOND, TO_TIMESTAMP(STARTED_AT), TO_TIMESTAMP(ENDED_AT)) as TRIP_DURATION_SECONDS
    
    from  {{ source('demo','bike') }}
    where  ride_id != 'ride_id'

)

select * from trips 