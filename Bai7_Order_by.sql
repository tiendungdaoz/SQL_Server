--Liet ke tat ca cac nha cung cap theo thu tu ten don vi CompanyName tu A-Z
SELECT *
FROM Suppliers
ORDER BY [CompanyName] ASC;

--Liet ke tat ca cac san pham theo thu tu gia giam dan
SELECT *
FROM [dbo].[Products]
ORDER BY [UnitPrice] DESC;

--Lay ra 1 san pham co so luong ban cao nhat tu bang [Order Details], khong dung max
SELECT TOP 1 *
FROM [Order Details]
ORDER BY [Quantity] DESC;

--Bai tap: Liet ke danh sach cac don dat hang (OrderID) trong bang Orders, theo thu tu giam gian cua ngay dat hang(OrderDate)
SELECT OrderID, OrderDate
FROM Orders
ORDER BY OrderDate DESC;

--BT2: Liet ke ten, don gia, so luong sp trong kho cua tat ca san pham trong ban Products
--Sap xep giam dan cua so luong sp trong kho
SELECT [ProductName], [UnitPrice], [UnitsInStock]
FROM [Products]
ORDER BY [UnitsInStock] DESC;
