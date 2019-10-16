INSERT INTO users (name, email, password)
VALUES ('Duncan Mann', 'duncan@mann.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'), 
('Elvis Prestley', 'elvis@elvis.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'), 
('Steve Harvey', 'steve@harvey.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, street, country, city, province, post_code)
VALUES (1, 'Sweet Pad', 'Nice home in Toronto.', 'thumbnail', 'cover-photo', 'My street', 'Canada', 'Toronto', 'Ontario', '1Z10A0'),
(2, 'Elvis House', 'Description', 'thumbnail', 'cover-photo', 'My street', 'Canada', 'Toronto', 'Ontario', '1Z10A0'),
(3, 'Steves House', 'Description', 'thumbnail', 'cover-photo', 'street', 'USA', 'somewhere', 'somewhere', '2B23S3');

INSERT INTO reservations (guest_id, property_id, start_date, end_date) 
VALUES (1, 1, '2018-09-11', '2018-09-26'),
(2, 2, '2019-01-04', '2019-02-01'),
(3, 3, '2021-10-01', '2021-10-14');

INSERT INTO property_reviews (guest_id, reservation_id, property_id, rating, message)
VALUES (2, 1, 1, 2, 'Not great'), 
(1, 2, 2, 4, 'Great!'),
(3, 2, 1, 5, 'Nice');

INSERT INTO rates (property_id, start_date, end_date, cost_per_night)
VALUES (1, '2018-09-11', '2018-09-15', 20), 
(2, '2018-07-11', '2018-07-15', 15),
(3, '2014-09-11', '2018-09-15', 30);

INSERT INTO guest_reviews (guest_id, owner_id, reservation_id, rating, message)
VALUES (1, 2, 1, 3, 'Nice'),
(2, 3, 2, 5, 'Sweet'),
(3, 1, 3, 1, 'Not great');

