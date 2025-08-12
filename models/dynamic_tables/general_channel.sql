-- Only get the rows which have the channel name of games
select * 
from {{ source('dbt_chat', 'slack_chat_data') }}
where 1=1
    and channel_name ilike 'general'
order by timestamp desc