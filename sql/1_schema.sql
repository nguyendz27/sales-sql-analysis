drop table if exists Orders;
drop table if exists Customers;
drop table if exists Products;

create table Customers (
CustomerID int,
CustomerName varchar(100),
Segment varchar(50),
City varchar(50)
);

create table Products (
ProductID int,
Product varchar(100),
StandardPrice float,
Cost float,
Category varchar(50)
);

create table Orders (
OrdersID int,
OrderDate date,
CustomerID int,
Product varchar(100),
Quantity int,
UnitPrice float,
DiscountPrice float,
SalePerson varchar(100),
OrderSize varchar(50)
);


insert into Customers (CustomerID,CustomerName,Segment,City)
values
(100,'Minh Anh Co','SME','Hanoi'),
(101,'Binh Trading','Enterprise','HCMC'),
(102,'Le Chi Store','Retail','Da Nang'),
(103,'Pham Bao Group','Enterprise','Hanoi'),
(104,'Duy Anh Retail','Retail','Can Tho'),
(105,'Cao Minh Tuan Office','SME','HCMC'),
(106,'Hoang Anh Technology','SME','Hai Phong'),
(107,'An Nguyen Solutions ','SME','Da Nang'),
(108,'Garden Mart','Retail','Hue'),
(109,'Tu Anh Logistics','Enterprise','Da Nang'),
(110,'Huy Pham','Retail','Thanh Hoa'),
(111,'An Phat Computer','Retail','HCMC'),
(112,'Trang Nguyen Store','Retail','Long An'),
(113,'Memory zone','Enterprise','Nghe An'),
(114,'The Vu Store','Retail','Hanoi')


insert into Products (ProductID, Product, StandardPrice, Cost, Category)
values
(1,'Laptop Pro 14',32000,25000,'Laptop'),
(2,'Wireless Mouse',1500,1000,'Electronics'),
(3,'27inch Monitor',5800,4000,'Electronics'),
(4,'Chair Gaming',1455,1200,'Furniture'),
(5,'iPhone 13',18000,13000,'Phone'),
(6,'iPhone 14',22000,15500,'Phone'),
(7,'Samsung S22',17000,12000,'Phone'),
(8,'Xiaomi 13',13000,9500,'Phone'),
(9,'iPad Gen 9',9000,5000,'Tablet'),
(10,'iPad Air',16000,12550,'Tablet'),
(11,'Galaxy Tab S8',14000,11500,'Tablet'),
(12,'MacBook Air M1',25000,17000,'Laptop'),
(13,'MacBook Pro M2',35000,30000,'Laptop'),
(14,'Dell XPS 13',28000,23500,'Laptop')

INSERT INTO Orders (OrdersID, OrderDate, CustomerID, Product, Quantity, UnitPrice, DiscountPrice, SalePerson, OrderSize)
VALUES
(1, '2025-07-03', 101, 'Laptop Pro 14', 1, 32000, 0.0000, 'An', 'Normal'),
(2, '2025-07-08', 102, 'Samsung S22', 12, 15300, 0.1000, 'Binh', 'Bulk'),
(3, '2025-07-15', 111, 'iPad Gen 9', 5, 8550, 0.0500, 'Chi', 'Normal'),
(4, '2025-07-21', 106, '27in Monitor', 3, 5104, 0.1200, 'Thinh', 'Normal'),
(5, '2025-07-28', 105, 'Wireless Mouse', 1, 1500, 0.0000, 'Duy', 'Normal'),
(6, '2025-08-02', 111, 'iPhone 13', 2, 15300, 0.1500, 'Thinh', 'Normal'),
(7, '2025-08-06', 107, 'MacBook Pro M2', 9, 33950, 0.0300, 'Lan', 'Normal'),
(8, '2025-08-13', 113, 'Chair Gaming', 10, 1455, 0.0000, 'Nguyen', 'Bulk'),
(9, '2025-08-19', 109, 'Galaxy Tab S8', 1, 11200, 0.2000, 'Ngoc', 'Normal'),
(10, '2025-08-26', 110, 'Laptop Pro 14', 4, 29760, 0.0700, 'Nguyen', 'Normal'),
(11, '2025-09-01', 101, '27in Monitor', 11, 5220, 0.1000, 'Tram', 'Bulk'),
(12, '2025-09-07', 114, 'iPhone 13', 6, 17280, 0.0400, 'Lan', 'Normal'),
(13, '2025-09-14', 112, 'Dell XPS 13', 20, 24640, 0.1200, 'Binh', 'Bulk'),
(14, '2025-09-20', 103, 'iPad Air', 7, 16000, 0.0000, 'An', 'Normal'),
(15, '2025-09-27', 109, 'Laptop Pro 14', 1, 30400, 0.0500, 'Duy', 'Normal'),
(16, '2025-10-03', 113, 'iPhone 13', 3, 16560, 0.0800, 'Nguyen', 'Normal'),
(17, '2025-10-09', 107, 'MacBook Pro M2', 15, 31500, 0.1000, 'Nguyen', 'Bulk'),
(18, '2025-10-16', 104, 'Chair Gaming', 8, 1367.7, 0.0600, 'Chi', 'Normal'),
(19, '2025-10-22', 110, '27in Monitor', 2, 5104, 0.1200, 'Nguyen', 'Normal'),
(20, '2025-10-29', 106, 'iPad Gen 9', 5, 9000, 0.0000, 'Binh', 'Normal'),
(21, '2025-11-04', 101, 'Dell XPS 13', 12, 25480, 0.0900, 'An', 'Bulk'),
(22, '2025-11-10', 111, 'Dell XPS 13', 1, 22960, 0.1800, 'Duy', 'Normal'),
(23, '2025-11-17', 109, 'MacBook Air M1', 2, 25000, 0.0000, 'Chi', 'Normal'),
(24, '2025-11-23', 108, 'iPad Air', 9, 14240, 0.1100, 'Hai', 'Normal'),
(25, '2025-11-30', 110, 'Galaxy Tab S8', 6, 13020, 0.0700, 'Lan', 'Normal'),
(26, '2025-12-05', 114, 'Galaxy Tab S8', 4, 12180, 0.1300, 'Ngoc', 'Normal'),
(27, '2025-12-11', 106, 'Dell XPS 13', 10, 26600, 0.0500, 'An', 'Bulk'),
(28, '2025-12-18', 103, 'MacBook Air M1', 7, 22750, 0.0900, 'Tram', 'Normal'),
(29, '2025-12-24', 105, 'Chair Gaming', 1, 1455, 0.0000, 'Duy', 'Normal'),
(30, '2025-12-29', 112, 'MacBook Air M1', 6, 22500, 0.1000, 'Ngoc', 'Normal');
