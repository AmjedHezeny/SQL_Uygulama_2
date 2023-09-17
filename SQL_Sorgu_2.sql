-- Stok miktarı 0 ile 250 arasında olan ürünleri listeleyelim
-- (Products)(UnitsInStock)
SELECT
    ProductName AS 'Ürün Adı',
    UnitsInStock AS 'Stok Miktarı'
FROM Products
WHERE	
    UnitsInStock BETWEEN 0 AND 250
ORDER BY UnitsInStock ASC;

-- Kargo ücreti 50$ ile 100$ arasında olan siparişleri listeleyelim
-- (Orders)(Freight)
SELECT
    OrderID AS 'Sipariş ID',
    CustomerID AS 'Müşteri ID',
    Freight AS 'Kargo Ücreti'
FROM Orders
WHERE
    Freight BETWEEN 50 AND 100
ORDER BY Freight ASC;

-- Kaç adet müşterim var
SELECT COUNT(CustomerID) as 'Müşteri Sayısı' FROM Customers;

-- Hangi ülkelere ihracat yapıyorum
SELECT DISTINCT(Country) AS 'İhracat Yapılan Ülkeler' FROM Customers;

-- İlk 5 müşteriyi listeleyelim
SELECT TOP 5 CompanyName AS 'Firma Adı', ContactName AS 'İletişim Adı' FROM Customers;

-- Müşterilerin ödediği toplam kargo ücreti
SELECT SUM(Freight) as 'Toplam Kargo Ücreti' FROM Orders;

-- Ürünlerimin ortalama fiyatı nedir
SELECT AVG(UnitPrice) as 'Ortalama Ürün Fiyatı' FROM Products;

-- En pahalı kargo ücretim ne kadardır
SELECT MAX(Freight) as 'En Yüksek Kargo Ücreti' FROM Orders;

-- En ucuz ürün fiyatı ne kadardır
SELECT MIN(UnitPrice) as 'En Düşük Ürün Fiyatı' FROM Products;

-- Şu anki tarihi ve saati al
SELECT GETDATE() AS 'Şu Anki Tarih ve Saat';

-- 2010-03-25 tarihinin yıl bilgisini geri döndürelim
SELECT YEAR('2010-03-25') AS 'Yıl';
