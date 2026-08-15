WITH daily_weather as (

    select
    *
    from {{source('demo','t_weather')}}

 
    
)

select *
from daily_weather   