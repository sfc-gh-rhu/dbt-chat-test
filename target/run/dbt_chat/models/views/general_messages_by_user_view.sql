
  create or replace   view DBT_CHAT.SLACK.general_messages_by_user_view
  
   as (
    
  select 
      channel_name,
      user_id,
      count(message) as messages_sent
  from DBT_CHAT.SLACK.general_channel
  group by channel_name, user_id
  order by channel_name, messages_sent desc

  );

