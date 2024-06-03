SELECT quantity, count(order_details_id) AS Details
from	order_details group by quantity