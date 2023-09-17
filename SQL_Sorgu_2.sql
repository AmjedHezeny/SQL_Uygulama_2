-- Stok miktar? 0 ile 250 aras?nda olan ürünleri listeleyelim
-- (Products)(UnitsInStock)
SELECT
    ProductName AS 'Ürün Ad?',
    UnitsInStock AS 'Stok Miktar?'
FROM Products
WHERE	
    UnitsInStock BETWEEN 0 AND 250
ORDER BY UnitsInStock ASC;

-- Kargo ücreti 50$ ile 100$ aras?nda olan sipari?leri listeleyelim
-- (Orders)(Freight)
SELECT
    OrderID AS 'Sipari? ID',
    CustomerID AS 'Mü?teri ID',
    Freight AS 'Kargo Ücreti'
FROM Orders
WHERE
    Freight BETWEEN 50 AND 100
ORDER BY Freight ASC;

-- Kaç adet mü?terim var
SELECT COUNT(CustomerID) as 'Mü?teri Say?s?' FROM Customers;

-- Hangi ülkelere ihracat yap?yorum
SELECT DISTINCT(Country) AS '?hracat Yap?lan Ülkeler' FROM Customers;

-- ?lk 5 mü?teriyi listeleyelim
SELECT TOP 5 CompanyName AS 'Firma Ad?', ContactName AS '?leti?im Ad?' FROM Customers;

-- Mü?terilerin ödedi?i toplam kargo ücreti
SELECT SUM(Freight) as 'Toplam Kargo Ücreti' FROM Orders;

-- Ürünlerimin ortalama fiyat? nedir
SELECT AVG(UnitPrice) as 'Ortalama Ürün Fiyat?' FROM Products;

-- En pahal? kargo ücretim ne kadard?r
SELECT MAX(Freight) as 'En Yüksek Kargo Ücreti' FROM Orders;

-- En ucuz ürün fiyat? ne kadard?r
SELECT MIN(UnitPrice) as 'En Dü?ük Ürün Fiyat?' FROM Products;

-- ?u anki tarihi ve saati al
SELECT GETDATE() AS '?u Anki Tarih ve Saat';

-- 2010-03-25 tarihinin y?l bilgisini geri döndürelim
SELECT YEAR('2010-03-25') AS 'Y?l';
