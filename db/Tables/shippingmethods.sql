CREATE TABLE `shippingmethods` (
  `ShippingMethodID` INT NOT NULL AUTO_INCREMENT,
  `ShippingMethodName` VARCHAR(100) DEFAULT NULL,
  `ShippingCost` DECIMAL(10, 2) DEFAULT NULL,
  PRIMARY KEY (ShippingMethodID)
)
ENGINE = INNODB,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_0900_ai_ci;