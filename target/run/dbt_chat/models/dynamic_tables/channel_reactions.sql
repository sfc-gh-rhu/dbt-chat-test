
        

    
        create dynamic table DBT_CHAT.SLACK.channel_reactions
        target_lag = '5 minutes'
        warehouse = DEX_WH
        as (
            


    



    SELECT
        NULLIF(TRIM(SPLIT_PART(reactions, ' ', 1)), '') as emoji,
        NULLIF(TRIM(SPLIT_PART(reactions, ' ', 2)), '')::integer as reaction_count
    FROM general_channel
    WHERE reactions IS NOT NULL



    



    SELECT
        NULLIF(TRIM(SPLIT_PART(reactions, ' ', 1)), '') as emoji,
        NULLIF(TRIM(SPLIT_PART(reactions, ' ', 2)), '')::integer as reaction_count
    FROM games_channel
    WHERE reactions IS NOT NULL



    



    SELECT
        NULLIF(TRIM(SPLIT_PART(reactions, ' ', 1)), '') as emoji,
        NULLIF(TRIM(SPLIT_PART(reactions, ' ', 2)), '')::integer as reaction_count
    FROM work_channel
    WHERE reactions IS NOT NULL



        )

    


    