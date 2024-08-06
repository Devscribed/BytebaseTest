CREATE VIEW `view1`
AS
	SELECT
	  `o`.`OrderID` AS `OrderID`,
	  `o`.`CustomerID` AS `CustomerID`,
	  `o`.`OrderDate` AS `OrderDate`,
	  `o`.`TotalAmount` AS `TotalAmount`
	FROM `orders` `o`;