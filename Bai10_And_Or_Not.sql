--Liet ke tat ca san pham co so luong trong kho (UnitsInStock) < 50 hoac > 100
SELECT *
FROM [dbo].[Products]
WHERE ([UnitsInStock] < 50) OR ([UnitsInStock] > 100);

--Liet ke tat ca cac don hang den Brazil da bi giao muon ([RequiredDate] < [ShippedDate])
SELECT *
FROM [dbo].[Orders]
WHERE [ShipCountry] = 'Brazil' AND [RequiredDate] < [ShippedDate];

--Lay ra tat ca cac san pham co gia < 100$ va ma san pham khac 1
SELECT *
FROM [dbo].[Products]
WHERE [UnitPrice] < 100 AND NOT([CategoryID] = 1);

SELECT *
FROM [dbo].[Products]
WHERE NOT([UnitPrice] > 100 OR [CategoryID] = 1);

