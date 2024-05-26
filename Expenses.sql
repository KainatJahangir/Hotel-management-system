CREATE TABLE Expenses (
    expense_id INT PRIMARY KEY,
    expense_name VARCHAR(50),
    amount DECIMAL(10, 2),
    expense_date DATE
);


INSERT INTO Expenses (expense_id, expense_name, amount, expense_date)
VALUES
    (1, 'Maintenance', 200.00, '2024-05-15'),
    (2, 'Utilities', 300.00, '2024-05-20'),
    (3, 'Repairs', 150.00, '2024-05-10'),
    (4, 'Staff Salaries', 400.00, '2024-05-25');


SELECT * FROM Expenses;
SELECT COUNT(*) AS total_expenses FROM Expenses;
SELECT * FROM Expenses WHERE amount > 100;
SELECT DISTINCT expense_name FROM Expenses;
SELECT * FROM Expenses WHERE expense_date BETWEEN DATE_SUB(CURDATE(), INTERVAL 1 MONTH) AND CURDATE();
