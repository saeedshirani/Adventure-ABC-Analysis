use AdventureWorks2019
go



select SalesOrderDetailID,sod.ModifiedDate as SaleDate, pro.ProductID, 
		pro.Name, OrderQty, UnitPrice, OrderQty * sod.UnitPrice As TotalSale

from Sales.SalesOrderDetail sod
left join Production.Product pro on pro.ProductID = sod.ProductID

