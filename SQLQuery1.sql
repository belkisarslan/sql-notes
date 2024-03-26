--Products tablosundaki bütün verileri getir
SELECT * from Products

--Products tablosundaki ilk 5 veriyi getir
SELECT top 5 * from Products 

--Products tablosundaki ProductName UnitPrice ve UnitsOnOrder verilerinin ilk 5ini getir
SELECT top 5 ProductName, UnitPrice, UnitsOnOrder from Products

--Order tablosundaki bütün verileri getir
SELECT * from Orders

--WHERE koþullarý
--Product id'si 1 olan ürünü getir
select * from Products where ProductId = 1

--Fiyatlarý 6 ile 25 arasýnda olan ürünleri getir
select * from Products where UnitPrice between 6 and 25

--Products tablosundaki ProductName, UnitPrice, ReorderLevel kolonlarýndan ReorderLevel deðeri 0 ve 15 arasýnda olan deðerleri getir
select ProductName, UnitPrice, ReorderLevel from Products where ReorderLevel between 0 and 15