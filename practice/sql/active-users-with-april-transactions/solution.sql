
select 
  count(distinct u.user_id) as active_user_with_transactions
from users as u 
inner join transactions as t
on u.user_id=t.user_id
where u.account_status='active'
and strftime('%Y', t.transaction_date)='2026'
and strftime('%m', t.transaction_date)='04'
