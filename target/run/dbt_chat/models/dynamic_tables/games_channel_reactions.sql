
        

    
        

    create or replace dynamic table DBT_CHAT.SLACK.games_channel_reactions
        target_lag = '5 minutes'
        warehouse = DEX_WH
        as (
            



    SELECT
        NULLIF(TRIM(SPLIT_PART(reactions, ' ', 1)), '') as emoji,
        NULLIF(TRIM(SPLIT_PART(reactions, ' ', 2)), '')::integer as reaction_count
    FROM games_channel
    WHERE reactions <> '' -- ensure is not empty/null/etc
    order by reaction_count desc


        )
    ;
    alter dynamic table DBT_CHAT.SLACK.games_channel_reactions refresh



    


    