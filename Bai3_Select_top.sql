--Lay ra 5 dong dau tien trong bang Customers
SELECT TOP 5 *
FROM [dbo].[Customers];

--Viet cau lenh SQL lay ra 30% nhan vien cong ty
SELECT TOP 30 PERCENT *
FROM [dbo].[Employees]; 

--Lay ra cac MA KHACH HANG voi quy dinh ma khach hang KHAC NHAU, chi lay 5 dong du lieu dau tien
SELECT DISTINCT TOP 5 [CustomerID]
FROM [dbo].[Orders];