--Lay ra danh sach cac san pham co gia ban tu 10 den 20$
SELECT *
FROM [dbo].[Products]
WHERE [UnitPrice] BETWEEN 10 AND 20;

--Lay ra danh sach cac don dat hang tu 1996-07-01 den 1996-07-31
SELECT *
FROM [dbo].[Orders]
WHERE [OrderDate] BETWEEN '1996-07-01' AND '1996-07-31';

--Tinh tong so tien van chuyen(Freight) cua cac don hang dat trong thang 7 nam 1996
SELECT SUM(Freight) AS "TotalJullyFreight"
FROM [dbo].[Orders]
WHERE [OrderDate] BETWEEN '1996-07-01' AND '1996-07-31';

--BT1: Lay danh sach cac don dat hang trong nam 1997 va duoc van chuyen bang duong thuy (ShipVia=3)
SELECT *
FROM [dbo].[Orders]
WHERE (ShipVia = 3) AND ([OrderDate] BETWEEN '1997-01-01' AND '1997-12-31');

--BT2.Tính  giá van chuyen trung  bình  của  các  sản  phẩm có  ngày  đặt  hàng trong khoảng từ ngày  1/1/1996 đến  ngày  31/7/1997
SELECT AVG([Freight]) AS "AVGFreight"
FROM [dbo].[Orders]
WHERE [OrderDate] BETWEEN '1996-01-01' AND '1997-07-31';

--BT3: Liệt  kê  tất  cả  các  sản phẩm có đơn giá trong  khoảng từ 50 đến  100 và  Category=1
SELECT *
FROM [dbo].[Products]
WHERE ([UnitPrice] BETWEEN 50 AND 100) AND ([CategoryID]=1);
