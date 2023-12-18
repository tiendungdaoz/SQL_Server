--Viet cau lenh SQL lay ra ten cua tat ca cac san pham
SELECT [ProductName]
FROM [dbo].[Products];

--Cau lenh lay ten san pham, gia ban tren moi don vi, so luong san pham tren don vi
SELECT [ProductName],[UnitPrice],[QuantityPerUnit]
FROM [dbo].[Products]

--Cau lenh lay ra ten khach hang va quoc gia cua khach hang
SELECT [CustomerID],[Country]
FROM [dbo].[Customers];

--Cau lenh lay ra ten va sdt cua tat ca nha cung cap
SELECT CompanyName, Phone
FROM dbo.Suppliers

--Lay ra tat ca du lieu tu bang Product
SELECT *
FROM dbo.Products;

--Lay ra tat ca du lieu tu bang Khach hang
SELECT *
FROM dbo.Customers;