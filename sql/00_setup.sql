
CREATE DATABASE IF NOT EXISTS sql_practice_portfolio;
USE sql_practice_portfolio;

-- Challenge 1: Product reviews
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL
);

CREATE TABLE reviews (
    review_id INT PRIMARY KEY,
    product_id INT NOT NULL,
    user_id INT NOT NULL,
    submit_date DATE NOT NULL,
    stars INT NOT NULL,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO products VALUES
(1, 'Laptop'),
(2, 'Headphones'),
(3, 'Keyboard');

INSERT INTO reviews VALUES
(1, 1, 101, '2026-01-05', 5),
(2, 1, 102, '2026-01-12', 4),
(3, 1, 103, '2026-02-03', 3),
(4, 2, 104, '2026-01-15', 4),
(5, 2, 105, '2026-01-20', 5),
(6, 3, 106, '2026-02-10', 4);

-- Challenge 2: Room rentals
CREATE TABLE rooms (
    room_id INT PRIMARY KEY,
    room_name VARCHAR(100) NOT NULL
);

CREATE TABLE room_rentals (
    rental_id INT PRIMARY KEY,
    room_id INT NOT NULL,
    rental_date DATE NOT NULL,
    FOREIGN KEY (room_id) REFERENCES rooms(room_id)
);

INSERT INTO rooms VALUES
(1, 'Room A'),
(2, 'Room B'),
(3, 'Room C'),
(4, 'Room D');

INSERT INTO room_rentals VALUES
(1, 1, '2026-01-01'),
(2, 1, '2026-01-10'),
(3, 1, '2026-01-20'),
(4, 2, '2026-02-01'),
(5, 2, '2026-02-15'),
(6, 3, '2026-03-01'),
(7, 4, '2026-03-05'),
(8, 4, '2026-03-15'),
(9, 4, '2026-03-25'),
(10, 4, '2026-03-30');

-- Challenge 3: Properties and bookings
CREATE TABLE properties (
    property_id INT PRIMARY KEY,
    city VARCHAR(100) NOT NULL
);

CREATE TABLE bookings (
    booking_id INT PRIMARY KEY,
    property_id INT NOT NULL,
    status VARCHAR(30) NOT NULL,
    total_price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (property_id) REFERENCES properties(property_id)
);

INSERT INTO properties VALUES
(1, 'Rome'),
(2, 'Milan'),
(3, 'Rome'),
(4, 'Turin'),
(5, 'Milan');

INSERT INTO bookings VALUES
(1, 1, 'completed', 500.00),
(2, 2, 'completed', 700.00),
(3, 3, 'completed', 350.00),
(4, 4, 'cancelled', 400.00),
(5, 5, 'completed', 250.00),
(6, 1, 'pending', 600.00),
(7, 2, 'completed', 450.00);

-- Challenge 4: Passengers
CREATE TABLE passengers (
    passenger_id INT PRIMARY KEY,
    name VARCHAR(200) NOT NULL
);

INSERT INTO passengers VALUES
(1, 'Anna Smith'),
(2, 'Alexander Johnson'),
(3, 'Christopher Alexander'),
(4, 'Maria Garcia'),
(5, 'Christopher Alexander');

-- Challenge 5: School timetable
CREATE TABLE Timepair (
    id INT PRIMARY KEY,
    start_pair TIME NOT NULL,
    end_pair TIME NOT NULL
);

INSERT INTO Timepair VALUES
(1, '08:30:00', '09:15:00'),
(2, '09:20:00', '10:05:00'),
(3, '10:15:00', '11:00:00'),
(4, '11:05:00', '11:50:00'),
(5, '12:50:00', '13:35:00');
