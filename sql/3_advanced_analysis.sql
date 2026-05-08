--Ranking sp theo doanh thu 
with ProductRevenue as (    
	select
	Product,
	Sum(Quantity*UnitPrice) as Revenue
	from Orders
	Group by Product
)
select
Product,
Revenue,
Rank() over(order by Revenue DESC) as ProductRank
from ProductRevenue;

--Revenue cong don theo thang 02
with MonthlyRevenue as(
	select
	MONTH(OrderDate) as	Month,
	Sum(Quantity*UnitPrice) as Revenue
	from Orders
	Group by MONTH(OrderDate)
)
select
Month,
Revenue,
Sum(Revenue) over(Order by Month) as RunningRevenue
from MonthlyRevenue;

--Nhan dien Khach hang mua nhieu hon 1 lan (Repeat Customers)
with CustomerOrders as (
	select
		CustomerID,
		Count (OrdersID) as OrdersCount
	from Orders
	group by CustomerID
)

select 
Count (*) as RepeatCustomers
from CustomerOrders
where OrdersCount>=2;

--% khach hang quay lai (RepeatRate)

with CustomerOrders as (
	select
		CustomerID,
		Count (OrdersID) as OrdersCount
	from Orders
	group by CustomerID
)
select 
	sum(Case when OrdersCount >=2 then 1 else 0 end) * 1.0 /
	count (*) as RepeatRate
from CustomerOrders;

-- Trung bình mỗi đơn hàng khách chi bao nhiêu tiền
with OrderValue as (
	select
	OrdersID,
	Sum(Quantity*UnitPrice) as OrderRevenue
	from Orders 
	group by OrdersID
)
select 
AVG(OrderRevenue) as AvgOrderRevenue
from OrderValue;

-- Profit margin 

with ProfitProduct as (
	select
	o.Product,
	Sum(o.Quantity*o.UnitPrice) as Revenue,
	Sum(o.Quantity*(o.UnitPrice-p.Cost)) as Profit
	from Orders o
	join Products p 
		on o.Product = p.Product
	group by o.Product
)
select
Product,
Revenue,
Profit,
Round(Profit*1.0/Revenue,2) as ProfitMargin
from ProfitProduct
Order by ProfitMargin DESC