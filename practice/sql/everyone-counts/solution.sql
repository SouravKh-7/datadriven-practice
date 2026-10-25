
select 
  age_bucket,
  count(*) as user_count
from users
group by age_bucket
having count(*) > 1
order by user_count desc
