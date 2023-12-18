SELECT [Country],[CompanyName]
FROM [dbo].[Customers];

-- Lay ten cac bo du lieu quoc gia, cong ty KHAC NHAU tu bang Customers
SELECT DISTINCT [Country]
FROM [dbo].[Customers];

SELECT DISTINCT [Country],[CompanyName]
FROM [dbo].[Customers];

--Lay ra ten cac ma so buu dien Khac Nhau tu bang Suppliers
SELECT DISTINCT PostalCode
FROM dbo.Suppliers;

--Lay ra cac du lieu KHAC NHAU ve ho cua nhan vien (Last Name) va cach goi lich su (TitleOfCourtesy) cua Nhan vien
SELECT DISTINCT [LastName],[TitleOfCourtesy]
FROM [dbo].[Employees];

--Lay ra du lieu KHAC NHAU ve ma don vi van chuyen (ShipVia) cua cac don hang (Orders)
SELECT DISTINCT ShipVia
FROM [dbo].[Orders];