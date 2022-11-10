insert into public.playlists
with  base_users_file as (
select 
    substring(uri,14,length(uri)) as user_id,
    name,
    followers_count,
    following_count,
    cast(regexp_matches(public_playlist,'(spotify:playlist.+?,)','g') as varchar) as p_p
 from staging.users_file
),
final_base as (
select 
    user_id,
	name,
	followers_count,
	following_count,
	p_p,
	substring(p_p,20,length(p_p)) as playlist_id 
from base_users_file
)
select 
    substring(playlist_id,1,length(playlist_id)-4) as playlist_id,	
    user_id,
	name	 
from final_base