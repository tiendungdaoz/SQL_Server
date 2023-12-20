--VD1: Lay ra tat ca cac don hang chua duoc giao (Shipped Date = NULL)
SELECT *
FROM Orders
WHERE ShippedDate IS NULL;

--=> Dem so don hang chua duoc giao
SELECT COUNT(OrderID) AS "So don chua duoc giao"
FROM Orders
WHERE ShippedDate IS NULL;

--Lay ra danh sach khach hang co khu vuc (Region) khong bi NULL
SELECT *
FROM Customers
WHERE Region IS NOT NULL;

--Lay danh sach cac khach hang khong co ten cong ty
SELECT *
FROM Customers
WHERE CompanyName IS NULL;

--BT1:Lay ra tat ca cac don hang chua duoc giao hang, va co khu vuc giao hang KHONG bi NULL
SELECT *
FROM Orders
WHERE (ShippedDate IS NULL) AND ([ShipRegion] IS NOT NULL);

--BT2: Lay ra tat ca cac san pham co ten va co o trong kho
SELECT *
FROM Products
WHERE ([ProductName] IS NOT NULL) AND ([UnitsInStock] IS NOT NULL) AND (UnitsInStock > 0);
