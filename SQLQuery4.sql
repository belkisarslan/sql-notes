--group by: verileri belirli ya da birden fazla sütuna göre gruplandýmak için
--genellikle min max toplam ortalama gibi toplu iþlemler ile birlikte kullanýlýr

select * from Customers

--Þehirlere göre müþteri sayýsý
select City, COUNT(CustomerID) as MusteriSayisi
from Customers
Group by City 

--Müþterinin sipariþ sayýsý
select * from Orders
select CustomerID, COUNT(OrderID) as OrderCount
from Orders
group by CustomerID

--Çalýþanlarýn aldýðý sipariþ sayýsý
select EmployeeID, COUNT(OrderID) as OrderCount
from Orders
group by EmployeeID

--Çalýþanlarýn aldýðý þipariþ sayýsýný çoktan aza sýralayýnýz
select EmployeeID, COUNT(OrderID) as OrderCount
from Orders
group by EmployeeID
order by OrderCount desc

--Aylýk toplam sipariþ sayýsý
select MONTH(OrderDate) as Ay, COUNT(OrderID) as AylikSiparisSayisi
from Orders
group by MONTH(OrderDate)

--Yýllýk toplam sipariþ sayýsý
select YEAR(OrderDate) as Yil, COUNT(OrderID) as YillikSiparisSayisi
from Orders
group by YEAR(OrderDate)


select * from Products
--Ürünün kategorisine göre en yüksek fiyat
select CategoryID, MAX(UnitPrice) as MaxPrice
from Products
group by CategoryID

--HAVING: Group by ifadesi ile birlikte kullanýlýr. 
--Temel olarak where koþuluna benzer farký ise aggregate fonksiyonlarda HAVING kullanýlýr
--CategoryID ye ait ürünün stok miktarý toplamý 50den fazla olan ürünlerin ortalama fiyatý

select CategoryID, AVG(UnitPrice) as OrtFiyat
from Products
group by CategoryID
having SUM(UnitsInStock) > 50

--Ayný þehirden 3'den fazla müþteri olan þehirleri listeleyin
select * from Customers

select City, COUNT(CustomerID) as MusteriSayisi
from Customers
group by City
having COUNT(CustomerID) > 3