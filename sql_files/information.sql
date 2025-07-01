#Orders by State (Top 10)
SELECT 
    c.customer_state,
    COUNT(DISTINCT o.order_id) AS total_orders
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_state
ORDER BY total_orders DESC
LIMIT 10;

# Revenue by State
SELECT 
    c.customer_state,
    ROUND(SUM(oi.price), 2) AS total_revenue
FROM order_items oi
JOIN orders o ON oi.order_id = o.order_id
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_state
ORDER BY total_revenue DESC;

# Monthly Order Volume
SELECT 
    DATE_FORMAT(order_purchase_timestamp, '%Y-%m') AS order_month,
    COUNT(*) AS total_orders
FROM orders
GROUP BY order_month
ORDER BY order_month;

#Top 10 Product Categories by Quantity Sold
SELECT 
    pt.product_category_name_english,
    COUNT(*) AS total_sold
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
JOIN product_category_translation pt ON p.product_category_name = pt.product_category_name
GROUP BY pt.product_category_name_english
ORDER BY total_sold DESC
LIMIT 10;
# Payment Method Distribution
SELECT 
    payment_type,
    COUNT(*) AS payment_count
FROM order_payments
GROUP BY payment_type
ORDER BY payment_count DESC;

#Review Score Distribution
SELECT 
    review_score,
    COUNT(*) AS total_reviews
FROM order_reviews
GROUP BY review_score
ORDER BY review_score DESC;


#Total Revenue Per Month
SELECT 
    DATE_FORMAT(o.order_purchase_timestamp, '%Y-%m') AS month,
    ROUND(SUM(oi.price), 2) AS monthly_revenue
FROM order_items oi
JOIN orders o ON oi.order_id = o.order_id
GROUP BY month;

#Top 10 Sellers by Revenue
SELECT 
    s.seller_id,
    ROUND(SUM(oi.price), 2) AS total_revenue
FROM order_items oi
JOIN sellers s ON oi.seller_id = s.seller_id
GROUP BY s.seller_id
ORDER BY total_revenue DESC
LIMIT 10;


