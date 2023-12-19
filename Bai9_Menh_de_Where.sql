-- Liet ke tat ca nhan vien tu den tu thanh pho London
SELECT *
FROM Employees
WHERE [City] = 'London';

-- Liet ke tat ca nhan vien tu den tu thanh pho London
-- Sap xep LastName theo thu tu A->Z
SELECT *
FROM Employees
WHERE [City] = 'London'
ORDER BY [LastName] ASC;

--Liet ke tat ca don hang bi giao muon
--Ngay can giao hang ([RequiredDate]), ngay giao thuc te ([ShippedDate])
SELECT [OrderID], [RequiredDate], [ShippedDate]
FROM [dbo].[Orders]
WHERE ([RequiredDate] < [ShippedDate]);

SELECT COUNT(*) AS "So don giao hang muon"
FROM [dbo].[Orders]
WHERE ([RequiredDate] < [ShippedDate]);

--Lay ra tat ca cac don hang chi tiet ma duoc giam gia > 10%
SELECT *
FROM [dbo].[Order Details]
WHERE ([Discount] > 0.1);

--BT1. Viết  câu lệnh SQL liệt  kê  tất  cả  khách  hàng  có  địa  chỉ  ở London  và được sắp xếp tăng dần theo mã khách hàng (CustomerID)
SELECT *
FROM [dbo].[Customers]
WHERE [City] = 'London'
ORDER BY [CustomerID] ASC;

--BT2. Viết  câu  lệnh  SQL  lấy  10 dòng  đầu  của  tất  cả  các  sản  phẩm  có số lượng  sản  phẩm  tồn  kho  lớn  hơn  10.
SELECT TOP 10 *
FROM [dbo].[Products]
WHERE [UnitsInStock] > 10;

--BT3: 3. Hãy liệt kê tất cả sản phẩm có số lượng sản  phẩm  trong  kho  nhỏ  hơn số lượng sản phẩm đang được đặt hàng 
-- và được sắp xếp  theo  ProductName  tăng dần từ A-Z
SELECT *
FROM [dbo].[Products]
WHERE ([UnitsInStock] < [UnitsOnOrder])
ORDER BY [ProductName];