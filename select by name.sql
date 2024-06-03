select  pizza_types.name, Sum(order_details.quantity)  AS quantity, round(avg(pizzas.price)) AS Average
from 
pizza_types join pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
JOIN order_details
on order_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.name ORDER BY quantity DESC  
LIMIT 5