CREATE TABLE Suppliers (
    supplier_id INT PRIMARY KEY,
    name VARCHAR(50),
    contact_person VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20)
);

INSERT INTO Suppliers (supplier_id, name, contact_person, email, phone)
VALUES
    (1, 'ABC Supplies', 'Usman iqbal', 'Usman iqbal@gmail.com', '777-888-9999'),
    (2, 'XYZ Distributors', 'Ayub Ali', 'Ayub Ali@gmail.com', '888-999-0000'),
    (3, 'Pak Trading', 'Ahmed Khan', 'Ahmed Khan@gmail.com', '666-777-8888'),
    (4, 'Global Enterprises', 'Faisal Mahmood', 'Faisal Mahmood@gmail.com', '999-000-1111');
    
SELECT * FROM Suppliers;
SELECT COUNT(*) AS total_suppliers FROM Suppliers;
SELECT * FROM Suppliers WHERE contact_person LIKE 'A%';
SELECT DISTINCT name FROM Suppliers;
SELECT name, contact_person FROM Suppliers WHERE supplier_id IN (SELECT supplier_id FROM Supply_Orders);