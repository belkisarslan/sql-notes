select * from Products
-- Products tablosundaki ProductName ve UnitsInStock kolonlarýndaki verilerin 25(dahil) 50(dahil) arasýnda olanlarlarý getir.
select ProductName, UnitsInStock from Products where UnitsInStock <= 50 and UnitsInStock >= 25