{{ config(materialized='incremental',schema='INTERMEDIATE_STAGE'
            ,unique_key='USER_ID'
            ,on_schema_change='sync_all_columns')}}


with source_data as (
    select 
    INDEX_	as index_,
    USER_ID	,
    FIRSTNAME	,
    LASTNAME	,
    SEX	,
    EMAIL	,
    PHONE	,
    DATEOFBIRTH	,
    JOBTITLE	,
    LOAD_DATE	
from {{ ref('people_stg_table') }})

select * from source_data

{% if is_incremental() %}
    where load_date > (select max(load_date) from {{ this }})

{% endif %}
