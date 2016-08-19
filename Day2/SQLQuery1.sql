select 
	
	 Name ProductName
	 ,ListPrice
	 ,StandardCost
	 ,Color
	 ,CarrierTrackingNumber
	 ,OrderQty
	 ,LineTotal
	 ,UnitPrice
	 
from [Sales].[SalesOrderDetail] SoD with (nolock)	
inner join [Production].[Product] p with (nolock)
	 on SoD.ProductID = p.ProductID