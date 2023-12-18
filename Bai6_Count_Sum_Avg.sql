-- Dem so luong khac hang
SELECT COUNT(CustomerID) AS "Number of customers"
FROM Customers;

--Tinh tong so tien van chuyen cua tat ca cac don dat hang
SELECT SUM(Orders.Freight) AS [SumFreighr]
FROM [dbo].[Orders];

--Tinh trung binh so luong dat hang (Quantity) cua tat ca san pham trong bang [Order Details]
SELECT AVG(Quantity) AS "AvgQuantity"
FROM [Order Details];

--Bai tap: Dem so luong
--Tinh tong so luong hang trong kho
--Tinh trung binh gia cua cac san pham co trong bang Products

SELECT COUNT(*) AS [NumberOfProducts], 
	   SUM(UnitsInStock) AS [TotalUnitsInStock],
	   AVG([UnitPrice]) AS [AvgPrice]
FROM [Products]

