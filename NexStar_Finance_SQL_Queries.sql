 NexStar Finance SQL Queries
 DAT-515 Enterprise Data Management | SNHU
 Aaliyah Wilson

 Count total customers
SELECT COUNT(*) FROM customers;

Total transaction amount
SELECT SUM(Amount) FROM transactions;

 Highest transaction
SELECT MAX(Amount) FROM transactions;

 Lowest transaction
SELECT MIN(Amount) FROM transactions;

 Filter transactions above $300
SELECT * FROM transactions
WHERE Amount > 300;

 Sort customers by join date
SELECT * FROM customers
ORDER BY JoinDate DESC;

 Join customers with transactions
SELECT customers.FirstName, customers.LastName, transactions.Amount
FROM customers
JOIN transactions ON customers.CustomerID = transactions.CustomerID;

 Join vendors with transactions
SELECT vendors.VendorName, transactions.Amount
FROM vendors
JOIN transactions ON vendors.VendorID = transactions.VendorID;

 Count transactions per vendor
SELECT VendorID, COUNT(*)
FROM transactions
GROUP BY VendorID;

 Total spending by customer
SELECT CustomerID, SUM(Amount)
FROM transactions
GROUP BY CustomerID
ORDER BY SUM(Amount) DESC;
