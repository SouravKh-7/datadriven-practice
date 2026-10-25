

select 
  strftime('%Y-%m',us.session_start) as month,
  count(distinct us.user_id) as active_user,
  avg(us.session_duration_sec) as avg_duration_sec
from user_sessions as us
where us.session_start >= DATE('2026-12-28','-6 months')
group by month
having count(*) > 3
order by month 
