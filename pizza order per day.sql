SELECT round(avg(quant) ,0) As quantity from
(Select orders.date, sum(order_details.quantity) as quant
from orders join order_details
on orders.order_id = order_details.order_id
group by orders.date) AS order_quantity
