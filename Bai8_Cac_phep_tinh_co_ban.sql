--Tinh so luong hang ton trong kho
--StockRemaining = UnitsInStock - UnitsOnOrders

SELECT [ProductID], [ProductName],
	   [UnitsInStock],
	   [UnitsOnOrder],
	   ([UnitsInStock] - [UnitsOnOrder]) AS [StockRemaining]
FROM [dbo].[Products];

--Tinh gia tri don hang chi tiet cho tat ca cac san pham trong bang Order Details
-- OrderDetailValue = UnitPrice x Quantity
SELECT *, ([UnitPrice] * [Quantity]) AS [OrderDetailValue]
FROM [Order Details];

--Tinh ty le: FreightRatio = AVG(Freight)/MAX(Freight)
SELECT ( AVG(Freight)/MAX(Freight)) AS "FreightRatio"
FROM Orders;

--Bai tap: Liet ke danh sach cac san pham va gia cua tung san pham sau khi giam 10%
SELECT [ProductID], [ProductName], [UnitPrice],
       ([UnitPrice]*90/100) AS [ReducePrice]
FROM [Products]

