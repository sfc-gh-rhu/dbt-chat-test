
        

    
        create dynamic table DBT_CHAT.SLACK.tech_channel
        target_lag = '5 minutes'
        warehouse = DEX_WH
        as (
            -- Only get the rows which have the channel name of games
select * 
from dbt_chat.slack.slack_chat_data
where 1=1
    and channel_name ilike 'tech'
order by timestamp desc
        )

    


    