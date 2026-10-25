select
  user_id, 
  count(user_id) as total_sessions
from 
  user_sessions
group by user_id
having count(*) >( select avg(cnt)
from (select count(*) as cnt from user_sessions
group by user_id ) as sub
)
order by total_sessions
