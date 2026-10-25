

select 
  log_level,
  count(*) as total_count
from server_logs
WHERE log_level in ('CRITICAL','ERROR', 'WARN')
group by log_level
order by log_level

 
