select * from Products
-- Products tablosundaki ProductName ve UnitsInStock kolonlarýndaki verilerin 25(dahil) 50(dahil) arasýnda olanlarlarý getir.
select ProductName, UnitsInStock from Products where UnitsInStock <= 50 and UnitsInStock >= 25
  
-- Products tablosundaki CategoryID si 1 veya 3 olan verileri getir.
select * from Products where CategoryID =1 or CategoryID =3

--in komutu kullanýmý
-- Products tablosundaki QuantityPerUnit kolonundaki deðerleri '24 - 12 oz bottles' olan ve '24 - 250 ml bottles' olan verileri getir
select * from Products where QuantityPerUnit in ('24 - 12 oz bottles','24 - 250 ml bottles')

-- <> eþit deðildir komutu kullanýmý
--Products tablosundaki CategoryID si 3 e eþit olmayanlarý getir
select * from Products where CategoryID <>3

-- order by sýralama iþlemi
--Products tablosundaki verileri ProductName kolonuna göre a'dan z'ye sýralayýnýz.
select * from Products order by ProductName asc

--Products tablosundaki verileri ProductName kolonuna göre z'den a'ya sýralayýnýz.
select * from Products order by ProductName desc

--Products tablosundaki ProductName, UnitPrice, CategoryID kolonlarýndaki verileri
--UnitPrice deðerine göre artan þekilde listeleyen
--CategoryID si 2ye eþit olmayan ve
--ProductName kolonundaki verilerden 'on' sözcüðü geçen verileri listeleyin.
select ProductName, UnitPrice, CategoryID from Products where CategoryID <>2 and ProductName like '%on%' order by UnitPrice asc

--Categories tablosuna veri ekleme (insert)
--id otomatik olarak arttýrýlýr yazmamýzý gerek yok
insert into Categories(CategoryName, Description) values('Teknoloji','Teknoloji kategorisi aciklamasi')
select * from Categories