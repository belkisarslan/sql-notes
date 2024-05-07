select * from Categories

--delete from <Dosya Ad�> where <Ko�ul>
delete from Categories where CategoryName = 'Teknoloji'

--Categories tablosuna i�erikleri ayn� olan iki �r�n ekleyelim
insert into Categories(CategoryName, Description) values('Teknoloji','Teknoloji kategorisi aciklamasi')

--Bu ekledi�imiz iki �r�nden yaln�zca birini silelim
delete from Categories where CategoryID = 11

--g�ncelleme i�lemi
--update Tablo Ad� set kolon1 = de�er1, kolon2 = de�er2 where Ko�ul
update Categories set CategoryName = 'Bah�e Gere�leri', Description = 'Bah�e gere�leri a��klamas�' where CategoryID=10

--Aggregate Fonksiyonlar
--Count(): Belirli bir sutundaki de�erlerin say�s�n� d�nd�r�r
--SUM(): Bir s�tundaki t�m de�erlerin toplam�n� hesaplar
--AVG(): Bir s�tundaki t�m de�erlerin ortalamas�n� hesaplar
--MIN(): Bir s�tundaki en k���k de�eri bulur
--MAX(): Bir s�tundaki en b�y�k de�eri bulur

select * from Products

--Products tablosundaki UnitPrice kolonundaki en k���k veriyi getiren sorguyu yaz�n�z
select MIN(UnitPrice) from Products
--2,50

select MAX(UnitPrice) from Products
--263,50

--Toplam�, en k�����, en b�y���, ka� tane de�er oldu�u ve ortalamas�
select
SUM(UnitPrice) as Toplama,
MIN(UnitPrice) as [En Kucuk],
MAX(UnitPrice) as [En Buyuk],
COUNT(UnitPrice) as Say�s�,
AVG(UnitPrice) as Ortalama
from Products
--2222,71	2,50	263,50	77	28,8663