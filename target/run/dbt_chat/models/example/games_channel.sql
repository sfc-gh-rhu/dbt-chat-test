
  create or replace   view DBT_CHAT.SLACK.games_channel
  
   as (
    select * 
from DBT_CHAT.SLACK.slack_chat_logs
where 1=1
    and channel = 'games'
order by timestamp desc
  );

