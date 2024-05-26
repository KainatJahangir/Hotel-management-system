CREATE TABLE Staff (
    staff_id INT PRIMARY KEY,
    name VARCHAR(50),
    staff_gender ENUM('male','female'),
    position VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20)
);

INSERT INTO Staff (staff_id, name, staff_gender, position, email, phone)
VALUES
    (1, 'Javeria', 'female', 'Receptionist', 'Javeria@gmail.com', '111-222-3333'),
    (2, 'Nomaan', 'male', 'Housekeeping', 'Noman@gmail.com', '444-555-6666'),
    (3, 'Saima', 'female', 'Chef', 'Saima@gmail.com', '777-666-5555'),
    (4, 'Waqar', 'male', 'Security', 'Waqar@gmail.com', '333-222-1111'),
    (5,'Sameer umair','male','Manager','Sameer umair@gmail.com','0223-822-1102');
    
SELECT * FROM Staff;
SELECT staff_gender, COUNT(*) AS total 
FROM Staff 
GROUP BY staff_gender 
HAVING COUNT(*) > 0;
SELECT name, position FROM Staff WHERE position = 'Manager';
SELECT DISTINCT position FROM Staff;
SELECT name, email FROM Staff WHERE email LIKE '%@hotel.com';