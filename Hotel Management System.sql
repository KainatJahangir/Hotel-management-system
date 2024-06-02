CREATE DATABASE hotel;
USE hotel;

CREATE TABLE Guests (
    guest_id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20)
);

CREATE TABLE Rooms (
    room_number INT PRIMARY KEY,
    room_type VARCHAR(50),
    price DECIMAL(10, 2),
    is_booked BOOLEAN
);

CREATE TABLE Bookings (
    booking_id INT PRIMARY KEY,
    guest_id INT,
    room_number INT,
    check_in_date DATE,
    check_out_date DATE,
    FOREIGN KEY (guest_id) REFERENCES Guests(guest_id),
    FOREIGN KEY (room_number) REFERENCES Rooms(room_number)
);

CREATE TABLE Staff (
    staff_id INT PRIMARY KEY,
    name VARCHAR(50),
    staff_gender ENUM('male','female'),
    position VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20)
);

CREATE TABLE Services (
    service_id INT PRIMARY KEY,
    service_name VARCHAR(50),
    price DECIMAL(10, 2)
);

CREATE TABLE Room_Service (
    service_id INT,
    room_number INT,
    quantity INT,
    service_time TIME,
    FOREIGN KEY (service_id) REFERENCES Services(service_id),
    FOREIGN KEY (room_number) REFERENCES Rooms(room_number)
);

CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    booking_id INT,
    amount DECIMAL(10, 2),
    payment_type ENUM('check','cash'),
    FOREIGN KEY (booking_id) REFERENCES Bookings(booking_id)
);

CREATE TABLE Expenses (
    expense_id INT PRIMARY KEY,
    expense_name VARCHAR(50),
    amount DECIMAL(10, 2),
    expense_date DATE
);

CREATE TABLE Suppliers (
    supplier_id INT PRIMARY KEY,
    name VARCHAR(50),
    contact_person VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20)
);

CREATE TABLE Supply_Orders (
    order_id INT PRIMARY KEY,
    supplier_id INT,
    order_date DATE,
    order_quantity INT,
    delivery_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id)
);

INSERT INTO Guests (guest_id, name, email, phone)
VALUES 
    (1, 'Ali', 'Ali@gmail.com', '123-456-7890'),
    (2, 'Rida', 'Rida@gmail.com', '987-654-3210'),
    (3, 'Eman', 'Eman@gmail.com', '456-789-0123'),
    (4, 'Fatima', 'Fatima@gmail.com', '321-654-9870'),
    (5, 'Kamran', 'Kamran@gmail.com', '567-890-1234'),
    (6, 'Sanaullah', 'Sanaullah@gmail.com', '234-567-8901');

INSERT INTO Rooms (room_number, room_type, price, is_booked)
VALUES
    (101, 'Standard', 100.00, FALSE),
    (102, 'Standard', 100.00, FALSE),
    (103, 'Deluxe', 150.00, TRUE),
    (104, 'Standard', 100.00, FALSE),
	(105, 'Deluxe', 150.00, FALSE),
    (106, 'Suite', 200.00, TRUE);

    
INSERT INTO Bookings (booking_id, guest_id, room_number, check_in_date, check_out_date)
VALUES
    (1, 1, 101, '2024-06-01', '2024-06-05'),
    (2, 2, 102, '2024-06-10', '2024-06-15'),
    (3, 3, 103, '2024-07-01', '2024-07-05'),
    (4, 4, 104, '2024-06-20', '2024-06-25'),
    (5, 5, 105, '2024-07-10', '2024-07-15'),
    (6, 6, 106, '2024-08-01', '2024-08-05');


INSERT INTO Staff (staff_id, name, staff_gender, position, email, phone)
VALUES
    (1, 'Javeria', 'female', 'Receptionist', 'Javeria@gmail.com', '111-222-3333'),
    (2, 'Nomaan', 'male', 'Housekeeping', 'Noman@gmail.com', '444-555-6666'),
    (3, 'Saima', 'female', 'Chef', 'Saima@gmail.com', '777-666-5555'),
    (4, 'Waqar', 'male', 'Security', 'Waqar@gmail.com', '333-222-1111'),
    (5,'Sameer umair','male','Manager','Sameer umair@gmail.com','0223-822-1102');
    

INSERT INTO Services (service_id, service_name, price)
VALUES
    (1, 'Room Service - Breakfast', 15.00),
    (2, 'Laundry Service', 20.00),
    (3, 'Room Cleaning', 60.00),
    (4, 'Airport Transfer', 30.00);

INSERT INTO Room_Service (service_id, room_number, quantity, service_time)
VALUES
    (1, 101, 2, '08:00:00'),
    (2, 102, 1, '10:00:00'),
    (3, 104, 1, '09:00:00'),
    (4, 105, 1, '12:00:00');
  

INSERT INTO Payments (payment_id, booking_id, amount, payment_type)
VALUES
    (1, 1, 400.00, 'cash'),
    (2, 2, 500.00, 'check'),
    (3, 3, 600.00, 'check'),
    (4, 4, 500.00, 'cash');

INSERT INTO Expenses (expense_id, expense_name, amount, expense_date)
VALUES
    (1, 'Maintenance', 200.00, '2024-05-15'),
    (2, 'Utilities', 300.00, '2024-05-20'),
    (3, 'Repairs', 150.00, '2024-05-10'),
    (4, 'Staff Salaries', 400.00, '2024-05-25');

INSERT INTO Suppliers (supplier_id, name, contact_person, email, phone)
VALUES
    (1, 'ABC Supplies', 'Usman iqbal', 'Usman iqbal@gmail.com', '777-888-9999'),
    (2, 'XYZ Distributors', 'Ayub Ali', 'Ayub Ali@gmail.com', '888-999-0000'),
    (3, 'Pak Trading', 'Ahmed Khan', 'Ahmed Khan@gmail.com', '666-777-8888'),
    (4, 'Global Enterprises', 'Faisal Mahmood', 'Faisal Mahmood@gmail.com', '999-000-1111');

INSERT INTO Supply_Orders (order_id, supplier_id, order_date, order_quantity, delivery_date, total_amount)
VALUES
    (1, 1, '2024-05-25', 100, '2024-06-01', 2000.00),
    (2, 2, '2024-05-26', 50, '2024-06-05', 1500.00),
    (3, 3, '2024-05-24', 75, '2024-06-10', 1800.00),
    (4, 4, '2024-05-27', 30, '2024-06-15', 1200.00);

-- Queries for Guests Table
SELECT * FROM Guests;
SELECT COUNT(*) AS total_guests FROM Guests;
SELECT name, email FROM Guests WHERE phone LIKE '123%';
SELECT DISTINCT email FROM Guests;
SELECT name, email FROM Guests WHERE guest_id IN (SELECT guest_id FROM Bookings);

-- Queries for Rooms Table
SELECT * FROM Rooms;
SELECT COUNT(*) AS booked_rooms FROM Rooms WHERE is_booked = TRUE;
SELECT room_number, room_type, price FROM Rooms WHERE price > 100;
SELECT DISTINCT room_type FROM Rooms;
SELECT room_number, room_type FROM Rooms WHERE is_booked = FALSE;

-- Queries for Bookings Table
SELECT * FROM Bookings;
SELECT guest_id, COUNT(*) AS booking_count FROM Bookings GROUP BY guest_id;
SELECT * FROM Bookings WHERE check_out_date BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 7 DAY);
SELECT * FROM Bookings WHERE DATEDIFF(check_out_date, check_in_date) > 3;
SELECT b.booking_id, g.name, r.room_number, r.room_type 
FROM Bookings b
JOIN Guests g ON b.guest_id = g.guest_id
JOIN Rooms r ON b.room_number = r.room_number;

-- Queries for Staff Table
SELECT * FROM Staff;
SELECT staff_gender, COUNT(*) AS total 
FROM Staff 
GROUP BY staff_gender 
HAVING COUNT(*) > 0;
SELECT name, position FROM Staff WHERE position = 'Manager';
SELECT DISTINCT position FROM Staff;
SELECT name, email FROM Staff WHERE email LIKE '%@gmail.com';

-- Queries for Services Table
SELECT * FROM Services;
SELECT COUNT(*) AS total_services FROM Services;
SELECT service_name, price FROM Services WHERE price > 50;
SELECT DISTINCT service_name FROM Services;
SELECT service_name FROM Services WHERE service_id IN (SELECT service_id FROM Room_Service);

-- Queries for Room_Service Table
SELECT * FROM Room_Service;
SELECT room_number, COUNT(*) AS service_count 
FROM Room_Service 
GROUP BY room_number;
SELECT * FROM Room_Service WHERE service_time > '10:00:00';
SELECT DISTINCT room_number FROM Room_Service;
SELECT rs.room_number, s.service_name, rs.quantity, rs.service_time 
FROM Room_Service rs
JOIN Services s ON rs.service_id = s.service_id;

-- Queries for Payments Table
SELECT * FROM Payments;
SELECT payment_type, COUNT(*) AS payment_count 
FROM Payments 
GROUP BY payment_type;
SELECT * FROM Payments WHERE amount > 200;
SELECT DISTINCT payment_type FROM Payments;
SELECT p.payment_id, b.guest_id, b.room_number, p.amount, p.payment_type 
FROM Payments p
JOIN Bookings b ON p.booking_id = b.booking_id;

-- Queries for Expenses Table
SELECT * FROM Expenses;
SELECT COUNT(*) AS total_expenses FROM Expenses;
SELECT * FROM Expenses WHERE amount > 100;
SELECT DISTINCT expense_name FROM Expenses;
SELECT * FROM Expenses WHERE expense_date BETWEEN DATE_SUB(CURDATE(), INTERVAL 1 MONTH) AND CURDATE();

-- Queries for Suppliers Table
SELECT * FROM Suppliers;
SELECT COUNT(*) AS total_suppliers FROM Suppliers;
SELECT * FROM Suppliers WHERE contact_person LIKE 'A%';
SELECT DISTINCT name FROM Suppliers;
SELECT name, contact_person FROM Suppliers WHERE supplier_id IN (SELECT supplier_id FROM Supply_Orders);

-- Queries for Supply_Orders Table
SELECT * FROM Supply_Orders;
SELECT supplier_id, COUNT(*) AS order_count 
FROM Supply_Orders 
GROUP BY supplier_id;
SELECT * FROM Supply_Orders WHERE total_amount > 500;
SELECT DISTINCT order_date FROM Supply_Orders;
SELECT so.order_id, s.name, s.contact_person, so.total_amount 
FROM Supply_Orders so
JOIN Suppliers s ON so.supplier_id = s.supplier_id;
