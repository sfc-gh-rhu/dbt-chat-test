-- Only get the rows which have the channel name of games
select * 
from dbt_chat.slack.slack_chat_data
where 1=1
    and channel_name ilike 'general'
order by timestamp desc