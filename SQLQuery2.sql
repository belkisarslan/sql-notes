select * from Products
-- Products tablosundaki ProductName ve UnitsInStock kolonlarındaki verilerin 25(dahil) 50(dahil) arasında olanlarları getir.
select ProductName, UnitsInStock from Products where UnitsInStock <= 50 and UnitsInStock >= 25