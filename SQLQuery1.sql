CREATE DATABASE MARKET

USE MARKET

CREATE TABLE Products
( 

Id INT,
Name NVARCHAR,
Price INT

)

ALTER  TABLE Products 
ALTER COLUMN Name NVARCHAR(20)

ALTER TABLE Products
ADD BrandName NVARCHAR(20) 
	
ALTER TABLE Products
 DROP COLUMN Price 

 ALTER TABLE Products
 ADD  Price DECIMAL(3,1)

 INSERT INTO Products
 VALUES
 (1,'Corek','Nur',0.70)

 INSERT INTO Products(Id,Name,BrandName,Price)
 VALUES
 (1,'Corek','Nur',0.70),
 (2,'Sud','Milla',1.50),
 (3,'Ayran','Atena',1.20),
 (4,'Pendir','Sevimli Dad',2.30),
 (5,'Xama','Romashka',2.80),
 (6,'Kesmik','Milla',1.70),
 (7,'Su','Sirab',1.00),
 (8,'Turshu Xiyar','Bizim Tarla',3.60),
 (9,'Kolbasa','Ovqat',7.70),
 (10,'Un','Makfa',5.70),
 (11,'Qatiq','Milla',4.70),
 (12,'Yumurta','Chicky :)',3.70),
 (14,'Cay','Azercay',5.70),
 (15,'Sosiska','Sevimli Dad',8.70)

 UPDATE Products
 SET Price+=10

 SELECT AVG(Price) AS AveragePrice FROM Products;

 SELECT * FROM Products WHERE Price<(SELECT AVG(Price) FROM Products);

SELECT *FROM Products WHERE Price>10

SELECT *FROM Products WHERE (SELECT LEN(BrandName))>5;

SELECT *FROM Products 
WHERE BrandName LIKE '%a%'


ALTER TABLE Products
ALTER COLUMN BrandName nvarchar(20) NOT NULL 
	
ALTER TABLE Products
ADD CHECK(LEN(BrandName)>2)
INSERT INTO Products
	VALUES(16,'Xleb',NULL,50)

DELETE FROM Products WHERE Id=16

