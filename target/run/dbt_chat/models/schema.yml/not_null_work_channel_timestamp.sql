select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select timestamp
from DBT_CHAT.SLACK.work_channel
where timestamp is null



      
    ) dbt_internal_test