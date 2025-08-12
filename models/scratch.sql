with final as (
select 
    a.snowflake_account_type, 
    a.salesforce_account_name, 
    to_timestamp_ltz(query_start_time)::date as ds, 
    h.*,
    count(*) over (partition by deployment, account_id, object_name) total_project_runs,
    case when total_project_runs > 1 then 'return runs' else 'new run' end type_of_run
    
from snowhouse_import.prod.dbt_history_etl_v h
join snowscience.dimensions.dim_accounts_history a
    on a.snowflake_account_id = h.account_id 
    and a.snowflake_deployment = h.deployment
    and a.general_date = to_timestamp_ltz(query_start_time)::date
where  to_timestamp_ltz(query_start_time)::date = :daterange
    and a.snowflake_account_type = :certified_organization_type
    and a.snowflake_deployment = :certified_deployment 
    and a.agreement_type =:agreement_type

)

select 
    ds
    , type_of_run
    , count(*) executions
    , count(distinct deployment || account_id || object_name) number_of_projects
    , count(distinct deployment || salesforce_account_name) number_of_customers
from final
where object_type = 'DBT_PROJECT' and type_of_run = 'return runs'
group by all