CREATE TABLE Guests (
    guest_id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20)
);

INSERT INTO Guests (guest_id, name, email, phone)
VALUES 
    (1, 'Ali', 'Ali@gmail.com', '123-456-7890'),
    (2, 'Rida', 'Rida@gmail.com', '987-654-3210'),
    (3, 'Eman', 'Eman@gmail.com', '456-789-0123'),
    (4, 'Fatima', 'Fatima@gmail.com', '321-654-9870'),
    (5, 'Kamran', 'Kamran@gmail.com', '567-890-1234'),
    (6, 'Sanaullah', 'Sanaullah@gmail.com', '234-567-8901');
    
    -- Queries for Guests Table
SELECT * FROM Guests;
SELECT COUNT(*) AS total_guests FROM Guests;
SELECT name, email FROM Guests WHERE phone LIKE '123%';
SELECT DISTINCT email FROM Guests;
SELECT name, email FROM Guests WHERE guest_id IN (SELECT guest_id FROM Bookings);
