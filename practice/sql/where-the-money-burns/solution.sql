

select 
  svc_name 
from cloud_costs
group by svc_name 
having avg(amount) > (select avg(amount) from cloud_costs)
