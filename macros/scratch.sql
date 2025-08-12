  select 
      channel_name,
      user_id,
      count(message) as messages_sent
  -- from {{ ref(channel ~ "_channel") }}
  from dbt_chat.slack.games_channel
  group by channel_name, user_id
  order by channel_name, messages_sent desc;

-- FBE Context
use database USER$ADMIN;
use schema public;

show stages;