CREATE TABLE Rooms (
    room_number INT PRIMARY KEY,
    room_type VARCHAR(50),
    price DECIMAL(10, 2),
    is_booked BOOLEAN
);

INSERT INTO Rooms (room_number, room_type, price, is_booked)
VALUES
    (101, 'Standard', 100.00, FALSE),
    (102, 'Standard', 100.00, FALSE),
    (103, 'Deluxe', 150.00, TRUE),
    (104, 'Standard', 100.00, FALSE),
	(105, 'Deluxe', 150.00, FALSE),
    (106, 'Suite', 200.00, TRUE);
    
SELECT * FROM Rooms;
SELECT COUNT(*) AS booked_rooms FROM Rooms WHERE is_booked = TRUE;
SELECT room_number, room_type, price FROM Rooms WHERE price > 100;
SELECT DISTINCT room_type FROM Rooms;
SELECT room_number, room_type FROM Rooms WHERE is_booked = FALSE;