USE tourandtravel;

DROP TABLE IF EXISTS enqueries;

CREATE TABLE enqueries(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    contact VARCHAR(12) NULL,
    description TEXT NULL,
    created_at datetime DEFAULT CURRENT_TIMESTAMP,
    updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY ( id )
);

DROP TABLE IF EXISTS users;

CREATE TABLE users(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    contact VARCHAR(12) NULL,
    password VARCHAR(50) NOT NULL,
    created_at datetime DEFAULT CURRENT_TIMESTAMP,
    updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY ( id )
);


DROP TABLE IF EXISTS customers;

CREATE TABLE customers(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    contact VARCHAR(12) NULL,
    password VARCHAR(50) NOT NULL,
    created_at datetime DEFAULT CURRENT_TIMESTAMP,
    updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY ( id )
);


DROP TABLE IF EXISTS tours;

CREATE TABLE tours(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    destination VARCHAR(100) NOT NULL,
    start_date DATE,
    end_date DATE,
    price DECIMAL(8,6) NOT NULL,
    discount_price DECIMAL(8,6) NOT NULL,
    image TEXT NULL,
    description TEXT NULL,
    created_at datetime DEFAULT CURRENT_TIMESTAMP,
    updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY ( id )
);


DROP TABLE IF EXISTS tour_bookings;

CREATE TABLE tour_bookings(
    id INT NOT NULL AUTO_INCREMENT,    
    customer_id INT(8) NOT NULL,
    description TEXT NULL,
    booking_status ENUM( 'pending', 'complete', 'cancel') NOT NULL,
    created_at datetime DEFAULT CURRENT_TIMESTAMP,
    updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY ( id ),
    FOREIGN KEY ( customer_id ) REFERENCES customers(id)
);


DROP TABLE IF EXISTS cars;

CREATE TABLE cars(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(8,6) NOT NULL,
    discount_price DECIMAL(8,6) NOT NULL,
    image TEXT NULL,
    description TEXT NULL,
    created_at datetime DEFAULT CURRENT_TIMESTAMP,
    updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY ( id )
);


DROP TABLE IF EXISTS car_bookings;

CREATE TABLE car_bookings(
    id INT NOT NULL AUTO_INCREMENT,    
    customer_id INT(8) NOT NULL,
    description TEXT NULL,
    booking_status ENUM( 'pending', 'complete', 'cancel') NOT NULL,
    created_at datetime DEFAULT CURRENT_TIMESTAMP,
    updated_at datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY ( id ),
    FOREIGN KEY ( customer_id ) REFERENCES customers(id)
);
