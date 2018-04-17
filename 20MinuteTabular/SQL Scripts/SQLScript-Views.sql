/*
Name:   Chris Singleton
Course: BUSIT205 - Module07 
Professor: Randal Root
Date: 05/21/2017
*/

/************* 20 Minute Tabular Demo **************/
/*************** Tabular Modeling ******************/
/***************** Script Views ********************/

--Create views to speed up the data structure and not change anything.

USE [AdventureWorksDW2012];
GO
--If the view exists, then drop it first. 
IF EXISTS(SELECT 1 FROM sys.views WHERE NAME='vDimCustomer' and TYPE='v')
DROP VIEW vDimCustomer;
GO
CREATE VIEW vDimCustomer 
AS
/*
Created By: Chris Singleton
Date: 05/21/2017
Objective: View of the entire DimCustomer Table.
*/
SELECT [CustomerKey]
	  ,[GeographyKey]
	  ,[CustomerAlternateKey]
	  ,[Title]
	  ,[FirstName]
	  ,[MiddleName]
	  ,[LastName]
	  ,[NameStyle] 
	  ,[BirthDate]
	  ,[MaritalStatus]
	  ,[Suffix]
	  ,[Gender]
	  ,[EmailAddress]
	  ,[YearlyIncome]
	  ,[TotalChildren]
	  ,[NumberChildrenAtHome]
	  ,[EnglishEducation]
	  ,[SpanishEducation]
	  ,[FrenchEducation] 
	  ,[EnglishOccupation] 
	  ,[SpanishOccupation] 
	  ,[FrenchOccupation] 
	  ,[HouseOwnerFlag]
	  ,[NumberCarsOwned] 
	  ,[AddressLine1] 
	  ,[AddressLine2] 
	  ,[Phone] 
	  ,[DateFirstPurchase] 
	  ,[CommuteDistance] 
FROM [AdventureWorksDW2012].dbo.DimCustomer

GO
--If the view exists, then drop it first. 
IF EXISTS(SELECT 1 FROM sys.views WHERE NAME='vDimDate' and TYPE='v')
DROP VIEW vDimDate;
GO
CREATE VIEW vDimDate
AS
/*
Created By: Chris Singleton
Date: 05/21/2017
Objective: View of the entire DimDate Table.
*/
SELECT	[DateKey] 
	   ,[FullDateAlternateKey] 
	   ,[DayNumberOfWeek]
	   ,[EnglishDayNameOfWeek]
	   ,[SpanishDayNameOfWeek]
	   ,[FrenchDayNameOfWeek] 
	   ,[DayNumberOfMonth] 
	   ,[DayNumberOfYear] 
	   ,[WeekNumberOfYear] 
	   ,[EnglishMonthName] 
	   ,[SpanishMonthName] 
	   ,[FrenchMonthName]
	   ,[MonthNumberOfYear]
	   ,[CalendarQuarter] 
	   ,[CalendarYear] 
	   ,[CalendarSemester] 
	   ,[FiscalQuarter] 
	   ,[FiscalYear] 
	   ,[FiscalSemester] 
FROM [AdventureWorksDW2012].[dbo].[DimDate]

GO
--If the view exists, then drop it first. 
IF EXISTS(SELECT 1 FROM sys.views WHERE NAME='vDimProduct' and TYPE='v')
DROP VIEW vDimProduct;
GO
CREATE VIEW vDimProduct
AS
/*
Created By: Chris Singleton
Date: 05/21/2017
Objective: View of the entire DimProduct Table.
*/
SELECT [ProductKey] 
	  ,[ProductAlternateKey]
	  ,[ProductSubcategoryKey]
	  ,[WeightUnitMeasureCode] 
	  ,[SizeUnitMeasureCode] 
	  ,[EnglishProductName] 
	  ,[SpanishProductName] 
	  ,[FrenchProductName] 
	  ,[StandardCost] 
	  ,[FinishedGoodsFlag] 
	  ,[Color] 
	  ,[SafetyStockLevel] 
	  ,[ReorderPoint]
	  ,[ListPrice] 
	  ,[Size] 
	  ,[SizeRange] 
	  ,[Weight] 
	  ,[DaysToManufacture] 
	  ,[ProductLine] 
	  ,[DealerPrice] 
	  ,[Class]
	  ,[Style] 
	  ,[ModelName] 
	  ,[LargePhoto] 
	  ,[EnglishDescription] 
	  ,[FrenchDescription] 
	  ,[ChineseDescription] 
	  ,[ArabicDescription] 
	  ,[HebrewDescription]
	  ,[ThaiDescription] 
	  ,[GermanDescription] 
	  ,[JapaneseDescription] 
	  ,[TurkishDescription] 
	  ,[StartDate] 
	  ,[EndDate] 
	  ,[Status] 
FROM [AdventureWorksDW2012].[dbo].[DimProduct]

GO
--If the view exists, then drop it first. 
IF EXISTS(SELECT 1 FROM sys.views WHERE NAME='vDimProductCategory' and TYPE='v')
DROP VIEW vDimProductCategory;
GO
CREATE VIEW vDimProductCategory
AS
/*
Created By: Chris Singleton
Date: 05/21/2017
Objective: View of the entire DimProductCategory Table.
*/
SELECT	[ProductCategoryKey] 
	   ,[ProductCategoryAlternateKey] 
	   ,[EnglishProductCategoryName] 
	   ,[SpanishProductCategoryName] 
	   ,[FrenchProductCategoryName] 
FROM [AdventureWorksDW2012].[dbo].[DimProductCategory]

GO
--If the view exists, then drop it first. 
IF EXISTS(SELECT 1 FROM sys.views WHERE NAME='vDimProductSubcategory' and TYPE='v')
DROP VIEW vDimProductSubcategory;
GO
CREATE VIEW vDimProductSubcategory
AS
/*
Created By: Chris Singleton
Date: 05/21/2017
Objective: View of the entire DimProductSubCategory Table.
*/
SELECT	[ProductSubcategoryKey] 
	   ,[ProductSubcategoryAlternateKey]
	   ,[EnglishProductSubcategoryName] 
	   ,[SpanishProductSubcategoryName]
	   ,[FrenchProductSubcategoryName] 
	   ,[ProductCategoryKey] 
FROM [AdventureWorksDW2012].[dbo].[DimProductSubcategory]

GO
--If the view exists, then drop it first. 
IF EXISTS(SELECT 1 FROM sys.views WHERE NAME='vFactInternetSales' and TYPE='v')
DROP VIEW vFactInternetSales;
GO
CREATE VIEW vFactInternetSales
AS
/*
Created By: Chris Singleton
Date: 05/21/2017
Objective: View of the entire FactInternetSales Table.
*/
SELECT	[ProductKey] 
	   ,[OrderDateKey] 
	   ,[DueDateKey] 
	   ,[ShipDateKey] 
	   ,[CustomerKey] 
	   ,[PromotionKey] 
	   ,[CurrencyKey] 
	   ,[SalesTerritoryKey]
	   ,[SalesOrderNumber] 
	   ,[SalesOrderLineNumber] 
	   ,[RevisionNumber] 
	   ,[OrderQuantity] 
	   ,[UnitPrice] 
	   ,[ExtendedAmount] 
	   ,[UnitPriceDiscountPct] 
	   ,[DiscountAmount] 
	   ,[ProductStandardCost] 
	   ,[TotalProductCost] 
       ,[SalesAmount] 
	   ,[TaxAmt] 
	   ,[Freight] 
	   ,[CarrierTrackingNumber] 
	   ,[CustomerPONumber] 
	   ,[OrderDate]
	   ,[DueDate] 
	   ,[ShipDate] 
FROM [AdventureWorksDW2012].[dbo].[FactInternetSales]