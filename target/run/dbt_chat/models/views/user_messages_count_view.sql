
  create or replace   view DBT_CHAT.SLACK.user_messages_count_view
  
   as (
    -- how do we automate this like it is in the macro?
-- depends_on: DBT_CHAT.SLACK.games_channel
-- depends_on: DBT_CHAT.SLACK.work_channel
-- depends_on: DBT_CHAT.SLACK.general_channel





-- loop through each channel, grab the message counts by user

    select 
        channel_name,
        user_id,
        count(message) as messages_sent
    from DBT_CHAT.SLACK.games_channel
    group by channel_name, user_id

    
        union all
    

    select 
        channel_name,
        user_id,
        count(message) as messages_sent
    from DBT_CHAT.SLACK.general_channel
    group by channel_name, user_id

    
        union all
    

    select 
        channel_name,
        user_id,
        count(message) as messages_sent
    from DBT_CHAT.SLACK.work_channel
    group by channel_name, user_id

    

    -- order by must go outside of the union all loop
    order by channel_name, messages_sent desc


  );

