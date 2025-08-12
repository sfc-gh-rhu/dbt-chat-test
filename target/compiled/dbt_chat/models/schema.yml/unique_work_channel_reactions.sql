
    
    

select
    reactions as unique_field,
    count(*) as n_records

from DBT_CHAT.SLACK.work_channel
where reactions is not null
group by reactions
having count(*) > 1


