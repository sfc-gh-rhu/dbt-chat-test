
  create or replace   view DBT_CHAT.SLACK.slack_chat_logs
  
   as (
    select * from dbt_chat.slack.slack_chat_logs
  );

