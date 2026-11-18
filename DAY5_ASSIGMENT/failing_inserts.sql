USE RetailInventoryDB;

-- Run each statement separately to observe the expected error.
-- 1) Duplicate primary key: SKU P001 already exists.
-- INSERT INTO Products (SKU, Product_Name, Category_ID, Supplier_ID)
-- VALUES ('P001','Duplicate Laptop',1,1);

-- 2) Missing parent: Category_ID 999 does not exist.
-- INSERT INTO Products (SKU, Product_Name, Category_ID, Supplier_ID)
-- VALUES ('P011','Invalid Category Product',999,1);

-- 3) Negative quantity violates CHECK (Quantity >= 0).
-- INSERT INTO Inventory (SKU, Warehouse_ID, Quantity, Reorder_Level)
-- VALUES ('P001',1,-5,5);

-- 4) NULL in mandatory column: Product_Name is NOT NULL.
-- INSERT INTO Products (SKU, Product_Name, Category_ID, Supplier_ID)
-- VALUES ('P012',NULL,1,1);
