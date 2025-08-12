{% macro generate_user_messages_count_view(channel) %}
  select 
      channel_name,
      user_id,
      count(message) as messages_sent
  from {{ ref(channel ~ "_channel") }}
  group by channel_name, user_id
  order by channel_name, messages_sent desc
{% endmacro %}