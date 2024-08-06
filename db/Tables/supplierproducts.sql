CREATE TABLE `supplierproducts` (
  `SupplierProductID` INT NOT NULL AUTO_INCREMENT,
  `SupplierID` INT DEFAULT NULL,
  `ProductID` INT DEFAULT NULL,
  `SupplyPrice` DECIMAL(10, 2) DEFAULT NULL,
  PRIMARY KEY (SupplierProductID)
)
ENGINE = INNODB,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_0900_ai_ci;

ALTER TABLE `supplierproducts` 
  ADD CONSTRAINT `supplierproducts_ibfk_1` FOREIGN KEY (SupplierID)
    REFERENCES suppliers(SupplierID);

ALTER TABLE `supplierproducts` 
  ADD CONSTRAINT `supplierproducts_ibfk_2` FOREIGN KEY (ProductID)
    REFERENCES products(ProductID);