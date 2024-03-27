select * from Products
-- Products tablosundaki ProductName ve UnitsInStock kolonlar�ndaki verilerin 25(dahil) 50(dahil) aras�nda olanlarlar� getir.
select ProductName, UnitsInStock from Products where UnitsInStock <= 50 and UnitsInStock >= 25
  
-- Products tablosundaki CategoryID si 1 veya 3 olan verileri getir.
select * from Products where CategoryID =1 or CategoryID =3

--in komutu kullan�m�
-- Products tablosundaki QuantityPerUnit kolonundaki de�erleri '24 - 12 oz bottles' olan ve '24 - 250 ml bottles' olan verileri getir
select * from Products where QuantityPerUnit in ('24 - 12 oz bottles','24 - 250 ml bottles')

-- <> e�it de�ildir komutu kullan�m�
--Products tablosundaki CategoryID si 3 e e�it olmayanlar� getir
select * from Products where CategoryID <>3

-- order by s�ralama i�lemi
--Products tablosundaki verileri ProductName kolonuna g�re a'dan z'ye s�ralay�n�z.
select * from Products order by ProductName asc

--Products tablosundaki verileri ProductName kolonuna g�re z'den a'ya s�ralay�n�z.
select * from Products order by ProductName desc

--Products tablosundaki ProductName, UnitPrice, CategoryID kolonlar�ndaki verileri
--UnitPrice de�erine g�re artan �ekilde listeleyen
--CategoryID si 2ye e�it olmayan ve
--ProductName kolonundaki verilerden 'on' s�zc��� ge�en verileri listeleyin.
select ProductName, UnitPrice, CategoryID from Products where CategoryID <>2 and ProductName like '%on%' order by UnitPrice asc

--Categories tablosuna veri ekleme (insert)
--id otomatik olarak artt�r�l�r yazmam�z� gerek yok
insert into Categories(CategoryName, Description) values('Teknoloji','Teknoloji kategorisi aciklamasi')
select * from Categories