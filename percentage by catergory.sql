SELECT pizza_types .category,
round(sum(order_details.quantity*pizzas.price)  / ( SELECT  round(sum(order_details.quantity * pizzas.price),2) As total_sales
FROM 
order_details	
 join
 pizzas on pizzas.pizza_id = order_details.pizza_id) * 100,2) as revenue
 from pizza_types join pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
join order_details
on order_details.pizza_id = pizzas.pizza_id
group by pizza_types.category order by revenue desc