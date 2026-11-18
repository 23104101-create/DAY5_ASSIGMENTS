CREATE DATABASE IF NOT EXISTS RetailInventoryDB;
USE RetailInventoryDB;

CREATE TABLE Categories (
    Category_ID INT AUTO_INCREMENT PRIMARY KEY,
    Category_Name VARCHAR(60) NOT NULL UNIQUE
) ENGINE=InnoDB;

CREATE TABLE Suppliers (
    Supplier_ID INT AUTO_INCREMENT PRIMARY KEY,
    Supplier_Name VARCHAR(100) NOT NULL,
    Supplier_Phone VARCHAR(20) NOT NULL UNIQUE
) ENGINE=InnoDB;

CREATE TABLE Warehouses (
    Warehouse_ID INT AUTO_INCREMENT PRIMARY KEY,
    Warehouse_Name VARCHAR(100) NOT NULL UNIQUE,
    City VARCHAR(60) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE Products (
    SKU VARCHAR(15) PRIMARY KEY,
    Product_Name VARCHAR(100) NOT NULL,
    Category_ID INT NOT NULL,
    Supplier_ID INT NOT NULL,
    CONSTRAINT fk_products_category FOREIGN KEY (Category_ID)
        REFERENCES Categories(Category_ID)
        ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_products_supplier FOREIGN KEY (Supplier_ID)
        REFERENCES Suppliers(Supplier_ID)
        ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB;

CREATE TABLE Inventory (
    SKU VARCHAR(15) NOT NULL,
    Warehouse_ID INT NOT NULL,
    Quantity INT NOT NULL DEFAULT 0,
    Reorder_Level INT NOT NULL DEFAULT 10,
    PRIMARY KEY (SKU, Warehouse_ID),
    CONSTRAINT chk_quantity_nonnegative CHECK (Quantity >= 0),
    CONSTRAINT chk_reorder_nonnegative CHECK (Reorder_Level >= 0),
    CONSTRAINT fk_inventory_product FOREIGN KEY (SKU)
        REFERENCES Products(SKU)
        ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT fk_inventory_warehouse FOREIGN KEY (Warehouse_ID)
        REFERENCES Warehouses(Warehouse_ID)
        ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB;
