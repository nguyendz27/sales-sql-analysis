--Analysis sheet
select 
o.OrdersID,
o.OrderDate,
c.CustomerName,
c.Segment,
c.City,
p.Product,
p.Category,
o.Quantity,
o.UnitPrice,
o.DiscountPrice,
o.SalePerson,
p.StandardPrice,
p.Cost
from Orders o
join Customers c on o.CustomerID = c.CustomerID
join Products p on o.Product = p.Product




--Business Question: 

--Total Revenue

select
sum(o.Quantity*o.UnitPrice) as Revenue,
sum(o.Quantity *(o.UnitPrice-p.Cost)) as Profit
from Orders o
join Products p on o.Product = p.Product

--Month Revenue

select
MONTH (OrderDate) as Month,
Sum (Quantity * UnitPrice) as RenvenueMonth
from Orders
Group by MONTH(OrderDate)
Order by Month ASC

--Top Product's revenue

select
Product,
sum(Quantity * UnitPrice) as Revenue
from Orders
Group by Product
Order by Revenue DESC

--Top 5 Product's revenue

select
top 5 Product,
sum(Quantity * UnitPrice) as Revenue
from Orders
Group by Product
Order by Revenue DESC

--San pham ban duoc nhieu don nhat

select Product,
COUNT(OrdersID) as NumberofOrders
from Orders
group by Product
order by NumberofOrders DESC

--Loi nhuan cua danh muc san pham nao cao nhat

select
p.Category,
sum(o.Quantity*(o.UnitPrice-p.Cost)) as Profit
from Orders o
join Products p on o.Product = p.Product
Group by Category
Order by Profit DESC

--Profit margin of Category most trend

select
p.Category,
ROUND(
sum(o.Quantity*(o.UnitPrice-p.Cost))/
sum(o.Quantity*o.UnitPrice),2) as Profitmargin
from Orders o
join Products p on o.Product = p.Product
Group by Category
Order by Profitmargin DESC

--Segment khach hang nao mang nhieu doanh thu nhat

select
c.Segment,
sum(o.Quantity * o.UnitPrice) as Revenue
from Orders o
join Customers c on c.CustomerID = o.CustomerID
group by c.Segment
Order by Revenue DESC

--Top 5 khach hang chi tieu nhieu nhat

select top 5
c.CustomerName,
sum(o.Quantity * o.UnitPrice) as Revenue
from Orders o
join Customers c on c.CustomerID = o.CustomerID
group by c.CustomerName
order by Revenue DESC

--Khach hang nao mua nhieu don nhat

select
c.CustomerName,
count(OrdersID) as NumberofOrders
from Orders o
join Customers c on c.CustomerID = o.CustomerID
group by c.CustomerName
order by NumberofOrders DESC

--Saleperson nao ban nhieu don nhat

select 
SalePerson, 
sum(Quantity * UnitPrice) as Revenue
from Orders 
group by SalePerson
order by Revenue DESC