CREATE TABLE Supply_Orders (
    order_id INT PRIMARY KEY,
    supplier_id INT,
    order_date DATE,
    order_quantity INT,
    delivery_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id)
);

INSERT INTO Supply_Orders (order_id, supplier_id, order_date, order_quantity, delivery_date, total_amount)
VALUES
    (1, 1, '2024-05-25', 100, '2024-06-01', 2000.00),
    (2, 2, '2024-05-26', 50, '2024-06-05', 1500.00),
    (3, 3, '2024-05-24', 75, '2024-06-10', 1800.00),
    (4, 4, '2024-05-27', 30, '2024-06-15', 1200.00);

SELECT * FROM Supply_Orders;
SELECT supplier_id, COUNT(*) AS order_count 
FROM Supply_Orders 
GROUP BY supplier_id;
SELECT * FROM Supply_Orders WHERE total_amount > 500;
SELECT DISTINCT order_date FROM Supply_Orders;
SELECT so.order_id, s.name, s.contact_person, so.total_amount 
FROM Supply_Orders so
JOIN Suppliers s ON so.supplier_id = s.supplier_id;
