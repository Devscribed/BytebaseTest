CREATE TABLE `orderdetails` (
  `OrderDetailID` INT NOT NULL AUTO_INCREMENT,
  `OrderID` INT DEFAULT NULL,
  `ProductID` INT DEFAULT NULL,
  `Quantity` INT DEFAULT NULL,
  `UnitPrice` DECIMAL(10, 2) DEFAULT NULL,
  PRIMARY KEY (OrderDetailID)
)
ENGINE = INNODB,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_0900_ai_ci;

ALTER TABLE `orderdetails` 
  ADD CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (OrderID)
    REFERENCES orders(OrderID);

ALTER TABLE `orderdetails` 
  ADD CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (ProductID)
    REFERENCES products(ProductID);