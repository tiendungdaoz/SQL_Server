--Lay "CompanyName" va dat ten thay the "Cong ty"; "PostalCode: dat ten thay the "Ma buu dien" trong bang Customers
SELECT CompanyName AS [Cong ty],  PostalCode AS [Ma buu dien] 
FROM Customers;

--Vidu 2
select FirstName as Ten, LastName as Ho
from Employees;

--Vidu3: Lay ra 15 dong dau tien tat ca cac cot trong bang Orders, dat ten thay the cho bang la O
select top 15 *
from Orders as O

--Bai tap: Lay ra cac cot va dat ten thay the nhu sau
-- ProductName -> Ten san pham
--SupplierID -> Ma nha cung cap
--CategoryID -> Ma the loai
--Dat ten thay the cho bang Product la p, su dung ten thay the de truy van cac cot ben tren
-- Chi lay 5 SP dau tien trong bang
SELECT TOP 5 p.[ProductName] AS "Ten san pham", p.[SupplierID] AS [Ma nha cung cap], p."CategoryID" AS "Ma the loai"
FROM [Products] AS p