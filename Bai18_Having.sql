--Cho biet nhung khach hang nao da dat nhieu hon 20 don hang, sap xep theo thu tu tong so don hang giam dan
select [CustomerID], count(OrderID) as "TotalOrders" from Orders
group by [CustomerID]
having count(OrderID) > 20
order by count(OrderID) desc;

--Loc ra nhung nha cung cap san pham co tong so luong hang trong kho > 30 va trung binh don gia co gia tri duoi 50
select SupplierID, sum([UnitsInStock]) as "TotalUnitsInStock", avg([UnitPrice]) as "AvgPrice" from Products
group by SupplierID
having sum([UnitsInStock]) > 30 and avg([UnitPrice]) < 50;

--Cho biet tong so tien van chuyen cua tung thang, trong nua nam sau cua nam 1996,
--Tong tien van chuyen > 1000$
--sap xep theo thang tang dan 
select month([ShippedDate]) as "Month", sum([Freight]) as "TotalFreight" from Orders
where year([ShippedDate]) = 1996 and month([ShippedDate]) > 6
group by month([ShippedDate])
having sum([Freight]) > 1000
order by month([ShippedDate]) asc;

--BT1: Loc ra nhung thanh pho co so luong don hang > 16, sap xep theo tong so luong giam dan
select [ShipCity], count([OrderID]) as "TotalOrders" from Orders
group by [ShipCity]
having count([OrderID]) > 16
order by count([OrderID]) desc;

--BT2: Lọc ra những đơn hàng được  giao đến LonDon  
--và có tổng số tiền vận chuyển lớn hơn 50, 
--sắp  xếp  giảm  dần  tổng  số tiền vận chuyển
select [OrderID],[ShipCity],[Freight] from [dbo].[Orders]
where [ShipCity] = 'London' and Freight > 50
order by Freight desc; 

--BT3: Lọc ra các khách hàng có tổng số đơn hàng đã đặt trong năm 1996 lớn hơn 2, 
-- sắp xếp theo thứ tự tong don hang giảm dần, dữ liệu  lấy trong bảng Orders

select [CustomerID], count([OrderID]) as "TotalOrder" from Orders
where year([OrderDate]) = 1996
group by [CustomerID]
having count([OrderID]) > 2
order by count([OrderID]) desc;