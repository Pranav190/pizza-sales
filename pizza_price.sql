SELECT
pizza_types.name, pizzas.price
FROM pizza_types join pizzas
pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
Order BY pizzas.price DESC
Limit 6