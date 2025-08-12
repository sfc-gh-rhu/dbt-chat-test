


    



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


