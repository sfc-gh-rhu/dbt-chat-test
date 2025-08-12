



    SELECT
        NULLIF(TRIM(SPLIT_PART(reactions, ' ', 1)), '') as emoji,
        NULLIF(TRIM(SPLIT_PART(reactions, ' ', 2)), '')::integer as reaction_count
    FROM channel_table
    WHERE reactions IS NOT NULL

