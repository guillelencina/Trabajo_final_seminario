insert into public.users
with users_seeds as (
select 
    substring(uri,14,length(uri)) as user_id,
    name,
    cast(followers_count as int),
    cast(following_count as int)
from staging.users_file 
)
select *
from users_seeds;