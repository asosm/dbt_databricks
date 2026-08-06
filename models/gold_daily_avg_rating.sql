SELECT
    date(date_format(r.created_at,'yyyy-MM-dd')) as review_date,
    p.product_name,
    r.product_id,
    avg(r.rating) as avg_rating
FROM

{{ ref('bronze_reviews')}} r 
LEFT JOIN {{ref('silver_products')}} p 
ON r.product_id = p.id
GROUP BY all