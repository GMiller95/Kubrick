use AdventureWorks2014

select
	[BusinessEntityID]
	,[EmailAddressID]
	,substring([emailaddress],0,charindex('@',[EmailAddress]))
	,SUBSTRING([emailaddress], CHARINDEX('@',[EmailAddress])+1, LEN([emailaddress]))
	,datalength(SUBSTRING([emailaddress], CHARINDEX('@',[EmailAddress])+1, LEN([emailaddress])))
	,[EmailAddress]
	,REPLACE([emailaddress], '@', 'A')
	
from [person].[emailaddress]