USE RetailInventoryDB;

INSERT INTO Categories (Category_Name) VALUES
('Electronics'), ('Accessories'), ('Home Appliances'), ('Furniture'),
('Stationery'), ('Sports'), ('Kitchen'), ('Personal Care'),
('Toys'), ('Books');

INSERT INTO Suppliers (Supplier_Name, Supplier_Phone) VALUES
('Alpha Supplies','9000000001'), ('Beta Traders','9000000002'),
('Gamma Wholesale','9000000003'), ('Delta Distributors','9000000004'),
('Epsilon Goods','9000000005'), ('Zeta Retail Supply','9000000006'),
('Eta Products','9000000007'), ('Theta Imports','9000000008'),
('Iota Vendors','9000000009'), ('Kappa Supply Co','9000000010');

INSERT INTO Warehouses (Warehouse_Name, City) VALUES
('Central Warehouse','Chennai'), ('North Warehouse','Chennai'),
('South Warehouse','Chennai'), ('East Warehouse','Chennai'),
('West Warehouse','Chennai'), ('Metro Warehouse','Coimbatore'),
('Lake Warehouse','Madurai'), ('Hill Warehouse','Salem'),
('Port Warehouse','Tuticorin'), ('City Warehouse','Trichy');

INSERT INTO Products (SKU, Product_Name, Category_ID, Supplier_ID) VALUES
('P001','Laptop',1,1), ('P002','Mouse',2,2), ('P003','Mixer',3,3),
('P004','Office Chair',4,4), ('P005','Notebook',5,5),
('P006','Football',6,6), ('P007','Cookware Set',7,7),
('P008','Hair Dryer',8,8), ('P009','Toy Car',9,9),
('P010','SQL Basics Book',10,10);

INSERT INTO Inventory (SKU, Warehouse_ID, Quantity, Reorder_Level) VALUES
('P001',1,25,5), ('P002',1,120,20), ('P003',2,18,5),
('P004',3,14,4), ('P005',4,300,50), ('P006',5,40,10),
('P007',6,22,6), ('P008',7,16,4), ('P009',8,75,15),
('P010',9,60,10);
