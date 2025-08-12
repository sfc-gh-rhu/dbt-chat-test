select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
        select *
        from DBT_CHAT.SLACK_dbt_test__audit.not_null_work_channel_reactions
    
      
    ) dbt_internal_test