SELECT
pizzas.size , count(order_details.order_details_id) AS order_count
from pizzas  join order_details	
ON 
pizzas.pizza_id = order_details.pizza_id
group by pizzas.size ORDER BY order_count desc;	