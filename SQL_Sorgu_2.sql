-- Stok miktar? 0 ile 250 aras?nda olan �r�nleri listeleyelim
-- (Products)(UnitsInStock)
SELECT
    ProductName AS '�r�n Ad?',
    UnitsInStock AS 'Stok Miktar?'
FROM Products
WHERE	
    UnitsInStock BETWEEN 0 AND 250
ORDER BY UnitsInStock ASC;

-- Kargo �creti 50$ ile 100$ aras?nda olan sipari?leri listeleyelim
-- (Orders)(Freight)
SELECT
    OrderID AS 'Sipari? ID',
    CustomerID AS 'M�?teri ID',
    Freight AS 'Kargo �creti'
FROM Orders
WHERE
    Freight BETWEEN 50 AND 100
ORDER BY Freight ASC;

-- Ka� adet m�?terim var
SELECT COUNT(CustomerID) as 'M�?teri Say?s?' FROM Customers;

-- Hangi �lkelere ihracat yap?yorum
SELECT DISTINCT(Country) AS '?hracat Yap?lan �lkeler' FROM Customers;

-- ?lk 5 m�?teriyi listeleyelim
SELECT TOP 5 CompanyName AS 'Firma Ad?', ContactName AS '?leti?im Ad?' FROM Customers;

-- M�?terilerin �dedi?i toplam kargo �creti
SELECT SUM(Freight) as 'Toplam Kargo �creti' FROM Orders;

-- �r�nlerimin ortalama fiyat? nedir
SELECT AVG(UnitPrice) as 'Ortalama �r�n Fiyat?' FROM Products;

-- En pahal? kargo �cretim ne kadard?r
SELECT MAX(Freight) as 'En Y�ksek Kargo �creti' FROM Orders;

-- En ucuz �r�n fiyat? ne kadard?r
SELECT MIN(UnitPrice) as 'En D�?�k �r�n Fiyat?' FROM Products;

-- ?u anki tarihi ve saati al
SELECT GETDATE() AS '?u Anki Tarih ve Saat';

-- 2010-03-25 tarihinin y?l bilgisini geri d�nd�relim
SELECT YEAR('2010-03-25') AS 'Y?l';
