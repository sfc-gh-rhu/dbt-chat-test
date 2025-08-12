
    
    

select
    timestamp as unique_field,
    count(*) as n_records

from DBT_CHAT.SLACK.general_channel
where timestamp is not null
group by timestamp
having count(*) > 1


