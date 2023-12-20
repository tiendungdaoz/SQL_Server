--Hay cho biet tung khach hang da dat bao nhieu don hang
select CustomerID, count([OrderID]) as [TotalOrder] from Orders
group by CustomerID;

--Hay tinh gia tri don gia trung binh theo moi nha cung cap san pham
select SupplierID, avg(UnitPrice) as "AvgPrice" from Products
group by SupplierID;

--Cho biet moi loai san pham thi con tong so luong bao nhieu o trong kho
select CategoryID, sum(UnitsInStock) as [TotalUnitsInStock] from Products
group by CategoryID;

--Hay cho biet gia van don lon nhat va nho nhat cua cac don hang theo tung thanh pho cua cac quoc gia khac nhau
select ShipCountry, ShipCity, max([Freight]) as "Max Freight", min([Freight]) as "Min Freight" from Orders
group by ShipCountry, ShipCity
order by ShipCountry asc, ShipCity asc;

--BT1: Thong ke so luong nhan vien theo tung quoc gia khac nhau
select Country, count([EmployeeID]) as "So luong nhan vien" from Employees
group by Country
