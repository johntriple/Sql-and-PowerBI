SELECT 
  c.[CustomerKey] as CustomerKey --  ,[GeographyKey]
  --  ,[CustomerAlternateKey]
  --   ,[Title]
  , 
  c.firstname AS [FirstName] --   ,[MiddleName]
  , 
  c.lastname AS [LastName], 
  c.firstname + ' ' + c.lastname AS [Fullname], 
  CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END as Gender --  ,[NameStyle]
  --  ,[BirthDate]
  -- ,[MaritalStatus]
  -- ,[Suffix]
  --,[Gender]
  --  ,[EmailAddress]
  --  ,[YearlyIncome]
  --  ,[TotalChildren]
  -- ,[NumberChildrenAtHome]
  -- ,[EnglishEducation]
  -- ,[SpanishEducation]
  -- ,[FrenchEducation]
  -- ,[EnglishOccupation]
  -- ,[SpanishOccupation]
  -- ,[FrenchOccupation]
  --  ,[HouseOwnerFlag]
  --  ,[NumberCarsOwned]
  -- ,[AddressLine1]
  --  ,[AddressLine2]
  --  ,[Phone]
  , 
  c.datefirstpurchase AS [DateFirstPurchase], 
  --  ,[CommuteDistance]
  g.city AS [Customer City] 
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] AS c 
  LEFT JOIN dbo.DimGeography AS g ON g.GeographyKey = c.GeographyKey 
ORDER BY 
  CustomerKey ASC --Ordered list by customer key