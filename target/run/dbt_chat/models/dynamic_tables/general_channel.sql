
        

    
        

    create or replace dynamic table DBT_CHAT.SLACK.general_channel
        target_lag = '5 minutes'
        warehouse = DEX_WH
        as (
            -- Only get the rows which have the channel name of games
select * 
from dbt_chat.slack.slack_chat_data
where 1=1
    and channel_name ilike 'general'
order by timestamp desc
        )
    ;
    alter dynamic table DBT_CHAT.SLACK.general_channel refresh



    


    