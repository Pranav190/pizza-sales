SELECT date, 
sum(revenue) over (orders by date) as cum_revenue
FROM
(SELECT orders.date,
sum(order_details.quantity * pizzas.price) as revenue
 from order_details join pizzas
on order_details.pizza_id = pizzas.pizza_id
join orders 
on  orders.order_id = order_details.order_id
group by order.date) as sales