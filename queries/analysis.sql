select * 
from customers
where customer_id is NULL 
or first_name is NULL
or last_name is NULL
or email is NULL
or city is NULL
or state is NULL 
or created_at is NULL