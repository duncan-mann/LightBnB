DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS properties CASCADE;
DROP TABLE IF EXISTS property_reviews CASCADE;
DROP TABLE IF EXISTS rates CASCADE;
DROP TABLE IF EXISTS guest_reviews CASCADE;
DROP TABLE IF EXISTS reservations CASCADE;


CREATE TABLE users (
    id SERIAL PRIMARY KEY NOT NULL,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE properties (
    id SERIAL PRIMARY KEY NOT NULL,
    owner_id INTEGER REFERENCES users(id) ON DELETE CASCADE,

    title VARCHAR(255) NOT NULL,
    description TEXT,
    thumbnail_photo_url VARCHAR(255) NOT NULL,
    cover_photo_url VARCHAR(255) NOT NULL,
    cost_per_night INTEGER NOT NULL DEFAULT 0,
    parking_spaces INTEGER NOT NULL DEFAULT 0,
    number_of_bathrooms INTEGER NOT NULL DEFAULT 0,
    number_of_bedrooms INTEGER NOT NULL DEFAULT 0,

    street VARCHAR(255) NOT NULL,
    country VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    province VARCHAR(255) NOT NULL,
    post_code VARCHAR(255) NOT NULL,
    
    active BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE reservations (
    id SERIAL PRIMARY KEY NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    property_id INTEGER REFERENCES properties(id) ON DELETE CASCADE,
    guest_id INTEGER REFERENCES users(id) ON DELETE CASCADE
);

CREATE TABLE property_reviews (
    id SERIAL PRIMARY KEY NOT NULL,
    guest_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
    reservation_id INTEGER REFERENCES reservations(id) ON DELETE CASCADE,
    property_id INTEGER REFERENCES properties(id) ON DELETE CASCADE,
    rating SMALLINT NOT NULL DEFAULT 0,
    message TEXT
);

CREATE TABLE rates (
    id SERIAL PRIMARY KEY NOT NULL,
    property_id INTEGER REFERENCES properties(id) ON DELETE CASCADE,
    start_date DATE,
    end_date DATE,
    cost_per_night SMALLINT NOT NULL DEFAULT 0
);


CREATE TABLE guest_reviews (
    id SERIAL PRIMARY KEY NOT NULL,
    guest_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
    owner_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
    reservation_id INTEGER REFERENCES reservations(id) ON DELETE CASCADE,
    rating SMALLINT NOT NULL DEFAULT 0,
    message TEXT    
);

