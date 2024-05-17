-- join: iki veya daha fazla tablonun birleþtirilmesi için kullanýlýr
-- Inner Join: iki tablo arasýnda eþleþen kayýtlarý döndürür.
-- Left Join: Sol tarafta bulunan tabloda eþleþen kayýtlarý döndürür.
-- Right Join: Sað tarafta bulunan tabloda eþleþen kayýtlarý döndürür.
-- Full Join: sol ve sað tablonun tüm kayýtlarýný döndürür.
-- Cross Join: iki tablonun kartez çarpýmýný oluþturur.
-- Self Join : bir tablonun kendisi ile join edilmesidir.

select * from Products
select * from Categories
-- Products ve Categories tablolarýndan aþaðýdaki sütunlarý CategoriesID ye göre çekerek fiyatlarý 25ten büyük ürünleri getiriniz
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
--Tabloda SupplierID yerine ContactName, CategoryID yerine CategoryName göreceðiz
--Veri çektiðimiz tablolarýn yalnýzca ayný isimli sutünlarýný eþleþtirebiliriz
inner join Suppliers on Suppliers.SupplierID = Products.SupplierID
inner join Categories on Categories.CategoryID = Products.CategoryID