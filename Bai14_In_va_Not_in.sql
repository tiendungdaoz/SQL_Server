--Loc ra tat ca don hang voi dieu kien:
--Don hang duoc giao den: Germany, UK, Brazil
SELECT *
FROM [dbo].[Orders]
WHERE [ShipCountry] IN ('Germany', 'UK', 'Brazil');

--Loc ra tat ca don hang voi dieu kien:
--Don hang KHONG duoc giao den: Germany, UK, Brazil
SELECT *
FROM [dbo].[Orders]
WHERE [ShipCountry] NOT IN ('Germany', 'UK', 'Brazil');

--Lay ra cac san pham co ma the loai KHAC: 2,3,4
SELECT *
FROM Products
WHERE [CategoryID] NOT IN (2,3,4);

--Liet ke cac nhan vien khong phai la nu tu bang Employees
SELECT *
FROM Employees
WHERE [TitleOfCourtesy] IN ('Mr.','Dr.');

--BT1: Lay ra tat ca khach hang den tu 1 trong cac thanh pho: Berlin, London, Warszawa
SELECT *
FROM [dbo].[Customers]
WHERE [City] IN ('Berlin','London','Warszawa');

--BT2: Lấy ra tất cả những những sản phẩm có mã nhà cung cấp có giá trị từ 1 đến 5.
SELECT *
FROM [dbo].[Products]
WHERE [SupplierID] IN (1,2,3,4,5);

--BT3: Viết câu lệnh sql lấy ra tên của nhân viên có họ là Leverling,Peacock,Suyama
SELECT FirstName
FROM [dbo].[Employees]
WHERE LastName IN ('Leverling','Peacock','Suyama');
