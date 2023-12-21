--Tinh so luong don dat hang trong nam 1997 cua tung khach hang
select CustomerID, COUNT(*) as "TotalOrders", year([OrderDate]) as "Year" from Orders
where year([OrderDate]) = 1997
group by CustomerID, year([OrderDate])
order by CustomerID asc;

--Loc ra cac don hang duoc dat hang vao thang 5 nam 1997
select * from Orders
where month([OrderDate]) = 5 and year([OrderDate]) = 1997;

--Lay ra danh sach don hang duoc dat ngay 4-9-1996
select * from Orders
where OrderDate = '1996-09-04';

--Lay danh sach khach hang dat hang trong nam 1998, tong so don hang moi thang, sap xep thang tang dan
select [CustomerID], month([OrderDate]) as "Month", count(OrderID) as "TotalOrder" from Orders
where year([OrderDate]) = 1998
group by CustomerID, month([OrderDate])
order by month([OrderDate]) asc;

--BT1: Loc ra cac don hang duoc giao trong thang 5, sap xep tang dan theo nam
select [OrderID], [CustomerID], [ShippedDate]  from Orders
where month([ShippedDate]) = 5
order by year([ShippedDate]) asc;

--BT2: Đếm  số  lượng  nhân  viên  theo  City  và  có  năm  sinh là 1992
select [City], count(EmployeeID) as "TotalEmployees" from Employees
where year([BirthDate]) = 1992
group by [City];