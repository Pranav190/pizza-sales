SELECT
round (order_details.quantity * pizzas.price) As totalprice
 FROM order_details join pizzas
 on pizzas.pizza_id = order_details.pizza_id
