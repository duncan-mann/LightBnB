SELECT reservations.*, 
properties.*,
avg(property_reviews.rating) as avg_property_rating 
FROM reservations
JOIN properties ON reservations.property_id = properties.id 
JOIN property_reviews ON property_reviews.property_id = properties.id
WHERE reservations.guest_id = 1 AND end_date < now()::date
GROUP BY reservations.id, properties.id
ORDER BY reservations.start_date;
