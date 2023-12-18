--Tim gia thap nhat cua cac san pham trong bang Products
SELECT MIN(UnitPrice) AS [MinPrice]
FROM Products;

--Lay ra ngay dat hang gan nhat tu bang Order
SELECT MAX(Orders.OrderDate) AS "Ngay dat hang gan nhat"
FROM Orders;

--Lay ra san pham(Ten va Ma san pham) co so luong hang ton kho lon nhat
--Tim so luong han ton kho lon nhat
SELECT MAX([UnitsInStock]) AS [So luong hang trong kho]
FROM Products;
