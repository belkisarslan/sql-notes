-- join: iki veya daha fazla tablonun birle�tirilmesi i�in kullan�l�r
-- Inner Join: iki tablo aras�nda e�le�en kay�tlar� d�nd�r�r.
-- Left Join: Sol tarafta bulunan tabloda e�le�en kay�tlar� d�nd�r�r.
-- Right Join: Sa� tarafta bulunan tabloda e�le�en kay�tlar� d�nd�r�r.
-- Full Join: sol ve sa� tablonun t�m kay�tlar�n� d�nd�r�r.
-- Cross Join: iki tablonun kartez �arp�m�n� olu�turur.
-- Self Join : bir tablonun kendisi ile join edilmesidir.

select * from Products
select * from Categories
-- Products ve Categories tablolar�ndan a�a��daki s�tunlar� CategoriesID ye g�re �ekerek fiyatlar� 25ten b�y�k �r�nleri getiriniz
-- ProductId, ProductName, CategoryName, UnitsInStock, UnitPrice
select 
Products.ProductID, 
Products.ProductName,
Categories.CategoryName,
Products.UnitsInStock,
Products.UnitPrice
from Products
inner join Categories on Products.CategoryID = Categories.CategoryID
where UnitPrice > 25


select * from Orders
select * from Customers
--Orders.OrderID, Customers.CompanyName, Orders.ShipName
select
Orders.OrderID,
Customers.CompanyName,
Orders.ShipName
from Orders
inner join Customers on Orders.CustomerID = Customers.CustomerID


select
Products.ProductID,
Suppliers.ContactName,
Categories.CategoryName,
Products.QuantityPerUnit,
Products.ReorderLevel
from Products
--Tabloda SupplierID yerine ContactName, CategoryID yerine CategoryName g�rece�iz
--Veri �ekti�imiz tablolar�n yaln�zca ayn� isimli sut�nlar�n� e�le�tirebiliriz
inner join Suppliers on Suppliers.SupplierID = Products.SupplierID
inner join Categories on Categories.CategoryID = Products.CategoryID