select * from Products
-- Products tablosundaki ProductName ve UnitsInStock kolonlar�ndaki verilerin 25(dahil) 50(dahil) aras�nda olanlarlar� getir.
select ProductName, UnitsInStock from Products where UnitsInStock <= 50 and UnitsInStock >= 25