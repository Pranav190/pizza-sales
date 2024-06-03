select name, revenue from
(select category , name , revenue,
rank() over(PARTITION by category order by revenue DESC)as rn
From
(SELECT 
pizza_types.category, pizza_types.name,
sum((order_details.quantity) * pizzas.price) as revenue
from pizza_types join pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
join order_details
on order_details.pizza_id = pizzas.pizza_id
group by pizza_types.category, pizza_types.name) as a) as b
WHERE rn <=3

