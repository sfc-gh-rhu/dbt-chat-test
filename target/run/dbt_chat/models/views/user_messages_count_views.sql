
  create or replace   view DBT_CHAT.SLACK.user_messages_count_views
  
   as (
    






    select 
        user_id,
        count(message) as messages_sent
    from DBT_CHAT.SLACK.general_channel
    group by user_id

    
        union all
    

    select 
        user_id,
        count(message) as messages_sent
    from DBT_CHAT.SLACK.games_channel
    group by user_id

    
        union all
    

    select 
        user_id,
        count(message) as messages_sent
    from DBT_CHAT.SLACK.work_channel
    group by user_id

    



  );

