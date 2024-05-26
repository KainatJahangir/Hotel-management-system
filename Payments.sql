CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    booking_id INT,
    amount DECIMAL(10, 2),
    payment_type ENUM('check','cash'),
    FOREIGN KEY (booking_id) REFERENCES Bookings(booking_id)
);

INSERT INTO Payments (payment_id, booking_id, amount, payment_type)
VALUES
    (1, 1, 400.00, 'cash'),
    (2, 2, 500.00, 'check'),
    (3, 3, 600.00, 'check'),
    (4, 4, 500.00, 'cash');
    
    SELECT * FROM Payments;
SELECT payment_type, COUNT(*) AS payment_count 
FROM Payments 
GROUP BY payment_type;
SELECT * FROM Payments WHERE amount > 200;
SELECT DISTINCT payment_type FROM Payments;
SELECT p.payment_id, b.guest_id, b.room_number, p.amount, p.payment_type 
FROM Payments p
JOIN Bookings b ON p.booking_id = b.booking_id;