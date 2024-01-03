SELECT 
o.order_id,
i.item_price,
o.quantity,
i.item_category,
i.item_name,
a.delivery_address,
a.delivery_address2,
a.delivery_city,
a.delivery_zipcode,
o.delivery
FROM
orders o
LEFT JOIN item i ON o.item_id = i.item_id
LEFT JOIN address a ON o.add_id = a.add_id;