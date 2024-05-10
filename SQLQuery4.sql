--group by: verileri belirli ya da birden fazla s�tuna g�re grupland�mak i�in
--genellikle min max toplam ortalama gibi toplu i�lemler ile birlikte kullan�l�r

select * from Customers

--�ehirlere g�re m��teri say�s�
select City, COUNT(CustomerID) as MusteriSayisi
from Customers
Group by City 

--M��terinin sipari� say�s�
select * from Orders
select CustomerID, COUNT(OrderID) as OrderCount
from Orders
group by CustomerID

--�al��anlar�n ald��� sipari� say�s�
select EmployeeID, COUNT(OrderID) as OrderCount
from Orders
group by EmployeeID

--�al��anlar�n ald��� �ipari� say�s�n� �oktan aza s�ralay�n�z
select EmployeeID, COUNT(OrderID) as OrderCount
from Orders
group by EmployeeID
order by OrderCount desc

--Ayl�k toplam sipari� say�s�
select MONTH(OrderDate) as Ay, COUNT(OrderID) as AylikSiparisSayisi
from Orders
group by MONTH(OrderDate)

--Y�ll�k toplam sipari� say�s�
select YEAR(OrderDate) as Yil, COUNT(OrderID) as YillikSiparisSayisi
from Orders
group by YEAR(OrderDate)


select * from Products
--�r�n�n kategorisine g�re en y�ksek fiyat
select CategoryID, MAX(UnitPrice) as MaxPrice
from Products
group by CategoryID

--HAVING: Group by ifadesi ile birlikte kullan�l�r. 
--Temel olarak where ko�uluna benzer fark� ise aggregate fonksiyonlarda HAVING kullan�l�r
--CategoryID ye ait �r�n�n stok miktar� toplam� 50den fazla olan �r�nlerin ortalama fiyat�

select CategoryID, AVG(UnitPrice) as OrtFiyat
from Products
group by CategoryID
having SUM(UnitsInStock) > 50

--Ayn� �ehirden 3'den fazla m��teri olan �ehirleri listeleyin
select * from Customers

select City, COUNT(CustomerID) as MusteriSayisi
from Customers
group by City
having COUNT(CustomerID) > 3