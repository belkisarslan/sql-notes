--Products tablosundaki b�t�n verileri getir
SELECT * from Products

--Products tablosundaki ilk 5 veriyi getir
SELECT top 5 * from Products 

--Products tablosundaki ProductName UnitPrice ve UnitsOnOrder verilerinin ilk 5ini getir
SELECT top 5 ProductName, UnitPrice, UnitsOnOrder from Products

--Order tablosundaki b�t�n verileri getir
SELECT * from Orders

--WHERE ko�ullar�
--Product id'si 1 olan �r�n� getir
select * from Products where ProductId = 1

--Fiyatlar� 6 ile 25 aras�nda olan �r�nleri getir
select * from Products where UnitPrice between 6 and 25

--Products tablosundaki ProductName, UnitPrice, ReorderLevel kolonlar�ndan ReorderLevel de�eri 0 ve 15 aras�nda olan de�erleri getir
select ProductName, UnitPrice, ReorderLevel from Products where ReorderLevel between 0 and 15