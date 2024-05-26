INSERT INTO Services (service_id, service_name, price)
VALUES
    (1, 'Room Service - Breakfast', 15.00),
    (2, 'Laundry Service', 20.00),
    (3, 'Room Cleaning', 60.00),
    (4, 'Airport Transfer', 30.00);

SELECT * FROM Services;
SELECT COUNT(*) AS total_services FROM Services;
SELECT service_name, price FROM Services WHERE price > 50;
SELECT DISTINCT service_name FROM Services;
SELECT service_name FROM Services WHERE service_id IN (SELECT service_id FROM Room_Service);