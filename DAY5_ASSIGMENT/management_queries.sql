USE RetailInventoryDB;

-- Before correction
SELECT Supplier_ID, Supplier_Name, Supplier_Phone
FROM Suppliers WHERE Supplier_ID = 1;

-- Correct supplier phone number
UPDATE Suppliers
SET Supplier_Phone = '9888880001'
WHERE Supplier_ID = 1;

-- After correction
SELECT Supplier_ID, Supplier_Name, Supplier_Phone
FROM Suppliers WHERE Supplier_ID = 1;

-- Before removing discontinued SKU
SELECT * FROM Products WHERE SKU = 'P010';
SELECT * FROM Inventory WHERE SKU = 'P010';

-- Inventory row must be deleted first due to ON DELETE RESTRICT
DELETE FROM Inventory WHERE SKU = 'P010';
DELETE FROM Products WHERE SKU = 'P010';

-- After removal
SELECT * FROM Products WHERE SKU = 'P010';
SELECT * FROM Inventory WHERE SKU = 'P010';

-- Schema tables, engines and approximate row counts
SELECT TABLE_NAME, ENGINE, TABLE_ROWS
FROM information_schema.TABLES
WHERE TABLE_SCHEMA = 'RetailInventoryDB';

-- Explore system databases (metadata/system information)
SELECT SCHEMA_NAME FROM information_schema.SCHEMATA;
SHOW DATABASES;
SHOW TABLES FROM mysql;
SHOW TABLES FROM performance_schema;
SHOW TABLES FROM sys;
