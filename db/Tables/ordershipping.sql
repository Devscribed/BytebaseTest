CREATE TABLE `ordershipping` (
  `OrderShippingID` INT NOT NULL AUTO_INCREMENT,
  `OrderID` INT DEFAULT NULL,
  `ShippingMethodID` INT DEFAULT NULL,
  `ShippingDate` DATE DEFAULT NULL,
  PRIMARY KEY (OrderShippingID)
)
ENGINE = INNODB,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_0900_ai_ci;

ALTER TABLE `ordershipping` 
  ADD CONSTRAINT `ordershipping_ibfk_1` FOREIGN KEY (OrderID)
    REFERENCES orders(OrderID);

ALTER TABLE `ordershipping` 
  ADD CONSTRAINT `ordershipping_ibfk_2` FOREIGN KEY (ShippingMethodID)
    REFERENCES shippingmethods(ShippingMethodID);