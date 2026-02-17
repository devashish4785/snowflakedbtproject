{{ config(materialized='view',schema='STAGING_STAGE') }}

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
from {{ source('RAW_STAGE','PEOPLE_DATA')}}