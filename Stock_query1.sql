SELECT 
o.item_id, i.sku, i.item_name, r.ing_id, r.quantity AS recipe_quantity, ing.ing_name, SUM(o.quantity) AS order_quantity
FROM 
orders o
LEFT JOIN item i ON o.item_id = i.item_id
LEFT JOIN recipe r ON i.sku = r.recipe_id
LEFT JOIN ingredient ing ON ing.ing_id = r.ing_id
GROUP BY  o.item_id,  i.sku,  i.item_name,r.ing_id, r.quantity, ing.ing_name;