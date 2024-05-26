CREATE TABLE Bookings (
    booking_id INT PRIMARY KEY,
    guest_id INT,
    room_number INT,
    check_in_date DATE,
    check_out_date DATE,
    FOREIGN KEY (guest_id) REFERENCES Guests(guest_id),
    FOREIGN KEY (room_number) REFERENCES Rooms(room_number)
);

INSERT INTO Bookings (booking_id, guest_id, room_number, check_in_date, check_out_date)
VALUES
    (1, 1, 101, '2024-06-01', '2024-06-05'),
    (2, 2, 102, '2024-06-10', '2024-06-15'),
    (3, 3, 103, '2024-07-01', '2024-07-05'),
    (4, 4, 104, '2024-06-20', '2024-06-25'),
    (5, 5, 105, '2024-07-10', '2024-07-15'),
    (6, 6, 106, '2024-08-01', '2024-08-05');

SELECT * FROM Bookings;
SELECT guest_id, COUNT(*) AS booking_count FROM Bookings GROUP BY guest_id;
SELECT * FROM Bookings WHERE check_out_date BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 7 DAY);
SELECT * FROM Bookings WHERE DATEDIFF(check_out_date, check_in_date) > 3;
SELECT b.booking_id, g.name, r.room_number, r.room_type 
FROM Bookings b
JOIN Guests g ON b.guest_id = g.guest_id
JOIN Rooms r ON b.room_number = r.room_number;
