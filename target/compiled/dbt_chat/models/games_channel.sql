-- Set as a dynamic table to keep the data up to date with the source table.


-- Only get the rows which have the channel name of games
select * 
from dbt_chat.slack.slack_chat_data
where 1=1
    and channel_name ilike 'games'
order by timestamp desc