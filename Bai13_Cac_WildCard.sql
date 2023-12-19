--Loc ra tat ca khach hang co ten lien he(ContactName) bat dau bang chu 'A'
SELECT *
FROM [dbo].[Customers]
WHERE [ContactName] LIKE 'A%'

--Loc ra tat ca khach hang co ten lien he bat dau bang chu H, va co chu thu 2 la bat ky ki tu nao
SELECT *
FROM [dbo].[Customers]
WHERE [ContactName] LIKE 'H_%'

--Loc ra tat ca cac don hang duoc gui den thanh pho co chu cai bat dau la L, chu cai thu 2 la u hoac o
SELECT *
FROM [dbo].[Orders]
WHERE [ShipCity] LIKE 'L[u,o]%'

--Loc ra tat ca cac don hang duoc gui den thanh pho co chu cai bat dau la L, chu cai thu 2 khong la u va khong la o
SELECT *
FROM [dbo].[Orders]
WHERE [ShipCity] LIKE 'L[^u,o]%'

--Loc ra tat ca cac don hang duoc gui den thanh pho co chu cai bat dau la L, chu cai thu 2 la ky tu tu a den e
SELECT *
FROM [dbo].[Orders]
WHERE [ShipCity] LIKE 'L[a-e]%'

--Lay ra tat ca cac nha cung cap hang co ten cong ty bat dau bang chu A va khong chua ky tu b trong ten
SELECT *
FROM [dbo].[Suppliers]
WHERE [CompanyName] LIKE 'A%[^b]%'