
        

    
        

    create or replace dynamic table DBT_CHAT.SLACK.channels
        target_lag = '5 minutes'
        warehouse = DEX_WH
        as (
            select distinct channel_name from dbt_chat.slack.slack_chat_data
        )
    ;
    alter dynamic table DBT_CHAT.SLACK.channels refresh



    


    