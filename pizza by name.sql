SELECT pizza_types.name, 
sum(order_details.quantity * pizzas.price) As revenue
from pizza_types  JOIN pizzas
on pizzas.pizza_type_id = pizza_types.pizza_type_id
join order_details
on order_details.pizza_id = pizzas.pizza_id
Group by pizza_types.name order by revenue desc
Limit 3
