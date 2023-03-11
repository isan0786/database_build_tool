select a.*, b.st_name
from {{ref('customer_data')}} as a
left join {{ref('state_data')}} as b
on a.state_code = b.state_code 
where a.state_code='{{ var("selected_state") }}'


/* -- below query works 
select customer_id, city
from {{ref('customer_data')}} 
left join {{ref('state_data')}} 
on {{ref('customer_data')}}.state_code = {{ref('state_data')}}.state_code 
where {{ref('customer_data')}}.state_code='{{ var("selected_state") }}'
*/
