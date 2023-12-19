--Loc ra tat ca cac khach hang, cac khach hang nay den tu quoc gia co bat dau bang chu 'A'
SELECT *
FROM [dbo].[Customers]
WHERE [Country] LIKE 'A%';

--Lay ra tat ca cac don dat hang, duoc gui den thanh pho co chua chu 'a'
SELECT *
FROM [dbo].[Orders]
WHERE [ShipCity] LIKE '%a%';

--Loc ra tat ca cac don hang voi 
-- ShipCountry LIKE 'U_'
-- ShipCountry LIKE 'U%'
SELECT *
FROM [dbo].[Orders]
WHERE [ShipCountry] LIKE 'U_';

SELECT *
FROM [dbo].[Orders]
WHERE [ShipCountry] LIKE 'U%';

--BT1: Lay ra tat ca cac nha cung cap co chu 'b' trong ten Cong ty cua ho
SELECT *
FROM [dbo].Suppliers
WHERE [CompanyName] LIKE '%b%'

--BT2: Hãy lấy ra tất cả các Employee có ký tự thứ 3 là 's' trong TitleOfCourtesy
SELECT *
FROM [dbo].[Employees]
WHERE [TitleOfCourtesy] LIKE '__s%';

--BT3: Liệt kệ danh sách các Suppliers có số điện thoại :có chứa số 4 và có đuôi 22 (Bảng Suppliers).
SELECT *
FROM [dbo].[Suppliers]
WHERE [Phone] LIKE '%4%22';