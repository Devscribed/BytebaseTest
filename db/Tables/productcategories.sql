CREATE TABLE `productcategories` (
  `ProductID` INT NOT NULL,
  `CategoryID` INT NOT NULL,
  PRIMARY KEY (ProductID, CategoryID)
)
ENGINE = INNODB,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_0900_ai_ci;

ALTER TABLE `productcategories` 
  ADD CONSTRAINT `productcategories_ibfk_1` FOREIGN KEY (ProductID)
    REFERENCES products(ProductID);

ALTER TABLE `productcategories` 
  ADD CONSTRAINT `productcategories_ibfk_2` FOREIGN KEY (CategoryID)
    REFERENCES categories(CategoryID);