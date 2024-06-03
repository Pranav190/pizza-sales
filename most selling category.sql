SELECT pizza_types.category,
sum (order_details.quantity) AS quantity
FROM pizza_types join pizzas
On pizza_types.pizza_type_id = pizzas.pizza_type_id
join order_details
on order_details.pizza_id = pizzas.pizza_id
group by pizza_types.category ORDER By quantity desc