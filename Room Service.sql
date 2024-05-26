CREATE TABLE Room_Service (
    service_id INT,
    room_number INT,
    quantity INT,
    service_time TIME,
    FOREIGN KEY (service_id) REFERENCES Services(service_id),
    FOREIGN KEY (room_number) REFERENCES Rooms(room_number)
);


INSERT INTO Room_Service (service_id, room_number, quantity, service_time)
VALUES
    (1, 101, 2, '08:00:00'),
    (2, 102, 1, '10:00:00'),
    (3, 104, 1, '09:00:00'),
    (4, 105, 1, '12:00:00');

SELECT * FROM Room_Service;
SELECT room_number, COUNT(*) AS service_count 
FROM Room_Service 
GROUP BY room_number;
SELECT * FROM Room_Service WHERE service_time > '10:00:00';
SELECT DISTINCT room_number FROM Room_Service;
SELECT rs.room_number, s.service_name, rs.quantity, rs.service_time 
FROM Room_Service rs
JOIN Services s ON rs.service_id = s.service_id;