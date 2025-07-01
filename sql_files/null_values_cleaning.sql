-- Disable safe update mode
SET SQL_SAFE_UPDATES = 0;

-- 1. Replace NULLs in `order_reviews`
UPDATE order_reviews
SET review_comment_title = 'No Title'
WHERE review_comment_title IS NULL;

UPDATE order_reviews
SET review_comment_message = 'No Comment'
WHERE review_comment_message IS NULL;

--  2. Replace NULLs in `orders`
UPDATE orders
SET order_approved_at = '2000-01-01 00:00:00'
WHERE order_approved_at IS NULL;

UPDATE orders
SET order_delivered_carrier_date = '2000-01-01 00:00:00'
WHERE order_delivered_carrier_date IS NULL;

UPDATE orders
SET order_delivered_customer_date = '2000-01-01 00:00:00'
WHERE order_delivered_customer_date IS NULL;

-- 3. Replace NULLs in `products`
update products
SET product_category_name = 'unknown_category'
WHERE product_category_name IS NULL;

UPDATE products
SET product_name_lenght = 0
WHERE product_name_lenght IS NULL;

UPDATE products
SET product_description_lenght = 0
WHERE product_description_lenght IS NULL;

UPDATE products
SET product_photos_qty = 0
WHERE product_photos_qty IS NULL;

UPDATE products
SET product_weight_g = 0
WHERE product_weight_g IS NULL;

UPDATE products
SET product_length_cm = 0
WHERE product_length_cm IS NULL;

UPDATE products
SET product_height_cm = 0
WHERE product_height_cm IS NULL;

UPDATE products
SET product_width_cm = 0
WHERE product_width_cm IS NULL;

--  Re-enable safe update mode
SET SQL_SAFE_UPDATES = 1;
select * from order_reviews;
select * from orders;
select * from products;