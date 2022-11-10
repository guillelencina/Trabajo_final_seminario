
insert into public.traspuesta_artista_user
with base_tabla as (
	select 
	* 
	from playlists_artists
),
traspuesta as (
select 
user_id,
artista_1 
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_2 
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_3 
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_4 
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_5 
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_6 
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_7 
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_8 
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_9 
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_10 
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_11 
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_12
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_13
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_14 
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_15
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_16
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_17
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_18
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_19
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_20
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_21
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_22
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_23
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_24
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_25
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_26
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_27
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_28
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_29
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_30
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_31 
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_32
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_33
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_34
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_35
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_36
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_37
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_38
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_39
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_40
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_41
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_42
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_43
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_44
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_45
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_46
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_47
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_48
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_49
from 
base_tabla as bt
group by 1,2
union
select 
user_id,
artista_50
from 
base_tabla as bt
group by 1,2
)
select 
user_id ,
artista_1 as artista 
from traspuesta 
group by 1,2