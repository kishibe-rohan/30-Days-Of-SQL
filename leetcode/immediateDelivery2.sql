-- If the preferred delivery date of the customer is the same as the order date then the order is called immediate otherwise it's called scheduled.

-- The first order of a customer is the order with the earliest order date that customer made. It is guaranteed that a customer has exactly one first order.

-- Write an SQL query to find the percentage of immediate orders in the first orders of all customers, rounded to 2 decimal places.

select round(100*sum(case when order_date=customer_pref_delivery_date then 1 else 0 end)/count(distinct customer_id), 2) immediate_percentage 
from Delivery
where (customer_id, order_date) in 
    (select customer_id, min(order_date)
    from Delivery
    group by customer_id)