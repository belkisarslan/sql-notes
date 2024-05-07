select * from Categories

--delete from <Dosya Adý> where <Koþul>
delete from Categories where CategoryName = 'Teknoloji'

--Categories tablosuna içerikleri ayný olan iki ürün ekleyelim
insert into Categories(CategoryName, Description) values('Teknoloji','Teknoloji kategorisi aciklamasi')

--Bu eklediðimiz iki üründen yalnýzca birini silelim
delete from Categories where CategoryID = 11

--güncelleme iþlemi
--update Tablo Adý set kolon1 = deðer1, kolon2 = deðer2 where Koþul
update Categories set CategoryName = 'Bahçe Gereçleri', Description = 'Bahçe gereçleri açýklamasý' where CategoryID=10

--Aggregate Fonksiyonlar
--Count(): Belirli bir sutundaki deðerlerin sayýsýný döndürür
--SUM(): Bir sütundaki tüm deðerlerin toplamýný hesaplar
--AVG(): Bir sütundaki tüm deðerlerin ortalamasýný hesaplar
--MIN(): Bir sütundaki en küçük deðeri bulur
--MAX(): Bir sütundaki en büyük deðeri bulur

select * from Products

--Products tablosundaki UnitPrice kolonundaki en küçük veriyi getiren sorguyu yazýnýz
select MIN(UnitPrice) from Products
--2,50

select MAX(UnitPrice) from Products
--263,50

--Toplamý, en küçüðü, en büyüðü, kaç tane deðer olduðu ve ortalamasý
select
SUM(UnitPrice) as Toplama,
MIN(UnitPrice) as [En Kucuk],
MAX(UnitPrice) as [En Buyuk],
COUNT(UnitPrice) as Sayýsý,
AVG(UnitPrice) as Ortalama
from Products
--2222,71	2,50	263,50	77	28,8663