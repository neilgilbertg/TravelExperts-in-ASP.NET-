IF DB_ID('TravelExperts') IS NOT NULL
	DROP DATABASE TravelExperts

CREATE DATABASE TravelExperts
GO


USE [TravelExperts]
GO
/****** Object:  Table [dbo].[Agencies]    Script Date: 01/09/2015 09:37:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agencies](
	[AgencyId] [int] IDENTITY(1,1) NOT NULL,
	[AgncyAddress] [nvarchar](50) NULL,
	[AgncyCity] [nvarchar](50) NULL,
	[AgncyProv] [nvarchar](50) NULL,
	[AgncyPostal] [nvarchar](50) NULL,
	[AgncyCountry] [nvarchar](50) NULL,
	[AgncyPhone] [nvarchar](50) NULL,
	[AgncyFax] [nvarchar](50) NULL,
 CONSTRAINT [PK_Agencies] PRIMARY KEY CLUSTERED 
(
	[AgencyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT agencies ON ;
INSERT INTO agencies (AgencyId, AgncyAddress, AgncyCity, AgncyProv, AgncyPostal, AgncyCountry, AgncyPhone, AgncyFax) VALUES
(1, '1155 8th Ave SW', 'Calgary', 'AB', 'T2P1N3', 'Canada', '4032719873', '4032719872'),
(2, '110 Main Street', 'Okotoks', 'AB', 'T7R3J5', 'Canada', '4035632381', '4035632382')
SET IDENTITY_INSERT agencies OFF;
/****** Object:  Table [dbo].[Affiliations]    Script Date: 01/09/2015 09:37:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Affiliations](
	[AffilitationId] [nvarchar](10) NOT NULL,
	[AffName] [nvarchar](50) NULL,
	[AffDesc] [nvarchar](50) NULL,
 CONSTRAINT [aaaaaAffiliations_PK] PRIMARY KEY NONCLUSTERED 
(
	[AffilitationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT INTO affiliations (AffilitationId, AffName, AffDesc) VALUES
('ACTA', 'Association of Canadian Travel Agents', NULL),
('ACTANEW', NULL, NULL),
('ACTANEWP', NULL, NULL),
('ACTAPGY', NULL, NULL),
('NEW', NULL, NULL),
('NEWPGY', NULL, NULL),
('PGY', NULL, NULL)
/****** Object:  Table [dbo].[Classes]    Script Date: 01/09/2015 09:37:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Classes](
	[ClassId] [nvarchar](5) NOT NULL,
	[ClassName] [nvarchar](20) NOT NULL,
	[ClassDesc] [nvarchar](50) NULL,
 CONSTRAINT [aaaaaClasses_PK] PRIMARY KEY NONCLUSTERED 
(
	[ClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT INTO classes (ClassId, ClassName, ClassDesc) VALUES
('BSN', 'Business Class', NULL),
('DBL', 'Double', NULL),
('DLX', 'Delux', NULL),
('ECN', 'Economy', NULL),
('FST', 'First Class', NULL),
('INT', 'Interior', NULL),
('NA', 'Not Applicable', NULL),
('OCNV', 'Ocean View', NULL),
('SNG', 'Single', NULL)
/****** Object:  Table [dbo].[Fees]    Script Date: 01/09/2015 09:37:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fees](
	[FeeId] [nvarchar](10) NOT NULL,
	[FeeName] [nvarchar](50) NOT NULL,
	[FeeAmt] [money] NOT NULL,
	[FeeDesc] [nvarchar](50) NULL,
 CONSTRAINT [aaaaaFees_PK] PRIMARY KEY NONCLUSTERED 
(
	[FeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT INTO fees (FeeId, FeeName, FeeAmt, FeeDesc) VALUES
('BK', 'Booking Charge', '25.0000', NULL),
('CH', 'Change', '15.0000', NULL),
('GR', 'Group Booking', '100.0000', NULL),
('NC', 'No Charge', '0.0000', NULL),
('NSF', 'Insufficient Funds', '25.0000', NULL),
('RF', 'Refund', '25.0000', NULL),
('RS', 'Research', '50.0000', NULL)
/****** Object:  Table [dbo].[Employees]    Script Date: 01/09/2015 09:37:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmpFirstName] [nvarchar](20) NOT NULL,
	[EmpMiddleInitial] [nvarchar](5) NULL,
	[EmpLastName] [nvarchar](20) NOT NULL,
	[EmpBusPhone] [nvarchar](20) NOT NULL,
	[EmpEmail] [nvarchar](50) NOT NULL,
	[EmpPosition] [nvarchar](20) NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Employees] ([EmpFirstName], [EmpMiddleInitial], [EmpLastName], [EmpBusPhone], [EmpEmail], [EmpPosition]) VALUES (N'Janet', NULL, N'Delton', N'(403) 210-7801', N'janet.delton@travelexperts.com', N'Senior Agent')
INSERT [dbo].[Employees] ([EmpFirstName], [EmpMiddleInitial], [EmpLastName], [EmpBusPhone], [EmpEmail], [EmpPosition]) VALUES (N'Judy', NULL, N'Lisle', N'(403) 210-7802', N'judy.lisle@travelexperts.com', N'Intermediate Agent')
INSERT [dbo].[Employees] ([EmpFirstName], [EmpMiddleInitial], [EmpLastName], [EmpBusPhone], [EmpEmail], [EmpPosition]) VALUES (N'Dennis', N'C.', N'Reynolds', N'(403) 210-7843', N'dennis.reynolds@travelexperts.com', N'Junior Agent')
INSERT [dbo].[Employees] ([EmpFirstName], [EmpMiddleInitial], [EmpLastName], [EmpBusPhone], [EmpEmail], [EmpPosition]) VALUES (N'John', NULL, N'Coville', N'(403) 210-7823', N'john.coville@travelexperts.com', N'Intermediate Agent')
INSERT [dbo].[Employees] ([EmpFirstName], [EmpMiddleInitial], [EmpLastName], [EmpBusPhone], [EmpEmail], [EmpPosition]) VALUES (N'Janice', N'W.', N'Dahl', N'(403) 210-7865', N'janice.dahl@travelexperts.com', N'Manager')
INSERT [dbo].[Employees] ([EmpFirstName], [EmpMiddleInitial], [EmpLastName], [EmpBusPhone], [EmpEmail], [EmpPosition]) VALUES (N'Bruce', N'J.', N'Dixon', N'(403) 210-7867', N'bruce.dixon@travelexperts.com', N'Intermediate Agent')
INSERT [dbo].[Employees] ([EmpFirstName], [EmpMiddleInitial], [EmpLastName], [EmpBusPhone], [EmpEmail], [EmpPosition]) VALUES (N'Beverly', N'S.', N'Jones', N'(403) 210-7812', N'beverly.jones@travelexperts.com', N'Intermediate Agent')
INSERT [dbo].[Employees] ([EmpFirstName], [EmpMiddleInitial], [EmpLastName], [EmpBusPhone], [EmpEmail], [EmpPosition]) VALUES (N'Jane', NULL, N'Merrill', N'(403) 210-7868', N'jane.merrill@travelexperts.com', N'Senior Agent')
INSERT [dbo].[Employees] ([EmpFirstName], [EmpMiddleInitial], [EmpLastName], [EmpBusPhone], [EmpEmail], [EmpPosition]) VALUES (N'Brian', N'S.', N'Peterson', N'(403) 210-7833', N'brian.peterson@travelexperts.com', N'Junior Agent')
/****** Object:  Table [dbo].[Packages]    Script Date: 01/09/2015 09:37:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Packages](
	[PackageId] [int] IDENTITY(1,1) NOT NULL,
	[PkgName] [nvarchar](50) NOT NULL,
	[PkgStartDate] [datetime] NULL,
	[PkgEndDate] [datetime] NULL,
	[PkgDesc] [nvarchar](50) NULL,
	[PkgBasePrice] [money] NOT NULL,
	[PkgAgencyCommission] [money] NULL,
	[DeparturePlnId] [int] NULL,
	[ReturnPlnId] [int] NULL,
 CONSTRAINT [aaaaaPackages_PK] PRIMARY KEY NONCLUSTERED 
(
	[PackageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Packages] ON
INSERT INTO packages (PackageId, PkgName, PkgStartDate, PkgEndDate, PkgDesc, PkgBasePrice, PkgAgencyCommission, DeparturePlnId, ReturnPlnId) VALUES
(1, 'Caribbean Tour', '2018-06-11 00:00:00', '2018-06-20 00:00:00', 'Cruise the Caribbean & Celebrate the New Year.', '4800.0000', '400.0000', 40331, 40332),
(2, 'Polynesian Paradise', '2018-06-17 00:00:00', '2018-06-26 00:00:00', '9 Day All Inclusive Hawaiian Vacation.', '3000.0000', '310.0000', 40333, 40334),
(3, 'Asian Expedition', '2018-06-14 00:00:00', '2018-06-29 00:00:00', 'Airfaire, Hotel and Eco Tour.', '2800.0000', '300.0000', 40335, 40336),
(4, 'European Vacation', '2018-06-02 00:00:00', '2018-06-17 00:00:00', 'Euro Tour with Rail Pass and Travel Insurance.', '3000.0000', '280.0000', 40337, 40338)
SET IDENTITY_INSERT [dbo].[Packages] OFF
/****** Object:  Table [dbo].[Products]    Script Date: 01/09/2015 09:37:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProdName] [nvarchar](50) NOT NULL,
 CONSTRAINT [aaaaaProducts_PK] PRIMARY KEY NONCLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ProductId] ON [dbo].[Products] 
(
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Products] ON
INSERT INTO products (ProductId, ProdName) VALUES
(1, 'Air'),
(2, 'Attractions'),
(3, 'Car rental'),
(4, 'Cruise'),
(5, 'Hotel'),
(6, 'Motor Coach'),
(7, 'Railroad'),
(8, 'Tours'),
(9, 'stuff'),
(10, 'Yacht/Boat Charters'),
(14, 'widget'),
(15, 'zzz'),
(16, 'test')
SET IDENTITY_INSERT [dbo].[Products] OFF
/****** Object:  Table [dbo].[Rewards]    Script Date: 01/09/2015 09:37:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rewards](
	[RewardId] [int] NOT NULL,
	[RwdName] [nvarchar](50) NULL,
	[RwdDesc] [nvarchar](50) NULL,
 CONSTRAINT [aaaaaRewards_PK] PRIMARY KEY NONCLUSTERED 
(
	[RewardId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT INTO rewards (RewardId, RwdName, RwdDesc) VALUES
(1, 'Air Miles', NULL),
(2, 'AeroPlan', NULL),
(3, 'AeroPlan Gold', NULL),
(4, 'Coast Rewards', NULL),
(5, 'Mariott Rewards', NULL)
/****** Object:  Table [dbo].[Regions]    Script Date: 01/09/2015 09:37:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Regions](
	[RegionId] [nvarchar](5) NOT NULL,
	[RegionName] [nvarchar](25) NULL,
 CONSTRAINT [aaaaaRegions_PK] PRIMARY KEY NONCLUSTERED 
(
	[RegionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT INTO regions (RegionId, RegionName) VALUES
('AFR', 'Africa                   '),
('ANZ', 'Australia & New Zealand  '),
('ASIA', 'Asia                     '),
('CAR', 'Carribean'),
('EU', 'Europe & United Kingdom  '),
('MEAST', 'Middle East              '),
('MED', 'Mediterranean            '),
('NA', 'North America            '),
('OTHR', 'Other                    '),
('SA', 'South America            '),
('SP', 'South Pacific            ')
/****** Object:  Table [dbo].[TripTypes]    Script Date: 01/09/2015 09:37:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TripTypes](
	[TripTypeId] [nvarchar](1) NOT NULL,
	[TTName] [nvarchar](25) NULL,
 CONSTRAINT [aaaaaTripTypes_PK] PRIMARY KEY NONCLUSTERED 
(
	[TripTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT INTO triptypes (TripTypeId, TTName) VALUES
('B', 'Business                 '),
('G', 'Group                    '),
('L', 'Leisure                  ')
/****** Object:  Table [dbo].[Suppliers]    Script Date: 01/09/2015 09:37:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suppliers](
	[SupplierId] [int] NOT NULL,
	[SupName] [nvarchar](255) NULL,
 CONSTRAINT [aaaaaSuppliers_PK] PRIMARY KEY NONCLUSTERED 
(
	[SupplierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [SupplierId] ON [dbo].[Suppliers] 
(
	[SupplierId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT INTO suppliers (SupplierId, SupName) VALUES
(69, 'NEW CONCEPTS - CANADA'),
(80, 'CHAT / TRAVELINE'),
(100, 'AVILA TOURS INC.'),
(317, 'BLYTH & COMPANY TRAVEL'),
(323, 'COMPAGNIA ITALIANA TURISM'),
(796, 'CYPRUS AIRWAYS LTD'),
(828, 'DER TRAVEL SERVICE LTD'),
(845, 'DISCOVER THE WORLD MARKET'),
(908, 'ELITE ORIENT TOURS INC.'),
(1005, 'ENCORE CRUISES'),
(1028, 'EUROP-AUTO-VACANCES/HOLIDAYS'),
(1040, 'EXECUTIVE SUITES'),
(1205, 'GOLDMAN MARKETING'),
(1406, 'EUROCRUISES INC.'),
(1416, 'THE HOLIDAY NETWORK'),
(1425, 'HOLLAND AMERICA LINE WEST'),
(1542, 'INSIGHT VACATIONS CANADA'),
(1620, 'INTAIR VACATIONS'),
(1634, 'ISLANDS IN THE SUN CRUISE'),
(1685, 'GOWAY TRAVEL LTD.'),
(1713, 'JETPACIFIC HOLIDAYS INC'),
(1766, 'KLM ROYAL DUTCH AIRLINES'),
(1859, 'LOTUS HOLIDAYS'),
(1918, 'MARKET SQUARE TOURS'),
(2140, 'NAGEL TOURS LTD'),
(2386, 'PAVLIK TRAVEL GROUP'),
(2466, 'PLANET FRANCE/PLANET EURO'),
(2588, 'UNIQUE VACATIONS (CANADA)'),
(2592, 'ESPRIT/SERVICENTRE HOLIDAYS'),
(2827, 'SOUTH WIND TOURS LTD.'),
(2938, 'SUN & LEISURE TRAVEL CORP.'),
(2987, 'TOURCAN VACATIONS INC'),
(2998, 'ALIOTOURS'),
(3119, 'MEDIAN AVIATION RESOURCES'),
(3212, 'TREK HOLIDAYS'),
(3273, 'MARKETING AHEAD'),
(3376, 'MARTINAIR SERVICES'),
(3549, 'BONANZA HOLIDAYS'),
(3576, 'BLUE DANUBE HOLIDAYS'),
(3589, 'G.A.P ADVENTURES INC.'),
(3600, 'GOLDEN ESCAPES'),
(3622, 'CHINA TRAVEL SERVICE (CAN)'),
(3633, 'VIP INTERNATIONAL'),
(3650, 'CUNARD LINES'),
(4196, 'TRAVEL STUDIO'),
(5081, 'ANHEUSER-BUSCH ADVENTURE'),
(5228, 'THE RMR GROUP INC'),
(5492, 'SKYWAYS INTERNATIONAL'),
(5777, 'TRAVEL BY RAIL'),
(5796, 'REPWORLD INC.'),
(5827, 'RESORT MARKETING INC'),
(5857, 'TOURS OF EXPLORATION'),
(6346, 'PASSAGES EXPEDITIONS'),
(6505, 'TRADE WINDS ASSOCIATES'),
(6550, 'LTI TOURS'),
(6873, 'BIMAN BANGLADESH AIRLINES'),
(7244, 'WORLD ACCESS MARKETING'),
(7377, 'MAJESTIC TOURS'),
(8089, 'EXCLUSIVE TOURS'),
(8837, 'SCANDITOURS'),
(9285, 'JTB INTERNATIONAL (CANADA)'),
(9323, 'BONAVE'),
(9396, 'SKYLINK TICKET CENTRE'),
(9766, 'KINTETSU INTERNATIONAL'),
(9785, 'MANDITOURS INTL INC.'),
(11156, 'ALITOURS INTERNATIONAL INC.'),
(11160, 'TOTAL ADVANTAGE TRAVEL'),
(11163, 'D-TOUR MARKETING'),
(11172, 'MERIT TRAVEL GROUP INC.'),
(11174, 'GRUPO TACA'),
(11237, 'DKM COACH LINES LTD'),
(11549, 'GO ACTIVE VACATIONS'),
(12657, 'SAAAI TRAVEL INC.'),
(13596, 'A & TIC SUPPORT INC.')
/****** Object:  Table [dbo].[SupplierContacts]    Script Date: 01/09/2015 09:37:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupplierContacts](
	[SupplierContactId] [int] NOT NULL,
	[SupConFirstName] [nvarchar](50) NULL,
	[SupConLastName] [nvarchar](50) NULL,
	[SupConCompany] [nvarchar](255) NULL,
	[SupConAddress] [nvarchar](255) NULL,
	[SupConCity] [nvarchar](255) NULL,
	[SupConProv] [nvarchar](255) NULL,
	[SupConPostal] [nvarchar](255) NULL,
	[SupConCountry] [nvarchar](255) NULL,
	[SupConBusPhone] [nvarchar](50) NULL,
	[SupConFax] [nvarchar](50) NULL,
	[SupConEmail] [nvarchar](255) NULL,
	[SupConURL] [nvarchar](255) NULL,
	[AffiliationId] [nvarchar](10) NULL,
	[SupplierId] [int] NULL,
 CONSTRAINT [aaaaaSupplierContacts_PK] PRIMARY KEY NONCLUSTERED 
(
	[SupplierContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [AffiliationsSupCon] ON [dbo].[SupplierContacts] 
(
	[AffiliationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [SuppliersSupCon] ON [dbo].[SupplierContacts] 
(
	[SupplierId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (16, NULL, NULL, N'PACIFIC WINGS: Oahu-Molokai-Maui-Hawaii', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.newconcepts.ca', NULL, 69)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (17, NULL, NULL, N'WINAIR / WINDWARD ISLANDS AIRWAYS INTERNATIONAL', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.newconcepts.ca', NULL, 69)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (18, N'A.', N'Haziza', N'NEW CONCEPTS - CANADA', N'1595 Calverton Court', N'Mississauga', N'ON', N'L5G 2W4', N' ', N'9052748508', N'9052714603', N'alhaziza@newconcepts.ca', N'http://www.newconcepts.ca', N'ACTAPGY', 69)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (19, N'A.', N'Haziza', N'DIVI RESORTS', N'1595 Calverton Court', N'Mississauga', N'ON', N'L5G 2W4', N' ', N'9052748508', N'9052714603', N'alhaziza@newconcepts.ca', N'http://www.newconcepts.ca', NULL, 69)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (20, N'A.', N'Haziza', N'TIMBERWOODS VACATION VILLAS', N'7964 Timberwood Circle', N'Sarasota', N'FL', N'34238', N'USA', N'9419234966', N'9419243109', N'reserve@timberwoods.com', N'www.timberwoods.com', NULL, 69)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (26, N'Nick', N'Kissanis', N'AMALIA HOTELS (GREECE)', N'214 Bedford Rd', N'Toronto', N'ON', N'M5R 2K9', N' ', N'4169674333', N'4169676147', N' ', N' ', N'ACTAPGY', 80)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (27, N'Nick', N'Kissanis', N'CHAT/TRAVELINE', N'214 Bedford Rd', N'Toronto', N'ON', N'M5R 2K9', N' ', N'4169674333', N'4169676147', N' ', N' ', N'ACTAPGY', 80)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (28, N'Nick', N'Kissanis', N'CHAT TOURS', N'214 Bedford Rd', N'Toronto', N'ON', N'M5R 2K9', N' ', N'4169674333', N'4169676147', N' ', N' ', N'ACTAPGY', 80)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (47, N'Dr. Carlos', N'Pechtel de A', N'GLOBAL QUEST', N'10316-124 St', N'Edmonton', N'AB', N'T5N 1R2', N' ', N'7804823427', N'7804826900', N'sales@avilatours.ca', N' ', NULL, 100)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (48, N'Dr. Carlos', N'Pechtel de A', N'MARINE EXPEDITIONS', N'10316-124 St', N'Edmonton', N'AB', N'T5N 1R2', N' ', N'7804823427', N'7804826900', N'sales@avilatours.ca', N' ', NULL, 100)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (49, N'Dr. Carlos', N'Pechtel de A', N'AMAZON RIVER CRUISES', N'10316-124 St', N'Edmonton', N'AB', N'T5N 1R2', N' ', N'7804823427', N'7804826900', N'sales@avilatours.ca', N' ', NULL, 100)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (51, NULL, NULL, N'EUROPE RIVER CRUISES/CROISI EUROPE', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 100)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (52, NULL, NULL, N'QUARK EXPEDITIONS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 100)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (53, N'Dr. Carlos', N'Pechtel de A', N'AVILA TOURS INC.', N'10316-124 St', N'Edmonton', N'AB', N'T5N 1R2', N' ', N'7804823427', N'7804826900', N'sales@avilatours.ca', N' ', N'ACTAPGY', 100)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (56, NULL, NULL, N'TUMBACO GALAPAGOS YACHT CRUISES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 100)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (65, NULL, NULL, N'CUBA CRUISE CORPORATION', N'13 Hazelton Ave', N'Toronto', N'ON', N'M5R 2E1', N' ', N'4169642569', N'4169645644', N'cuba@blythtravel.com', N'http://www.cubacruising.com', N'PGY', 317)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (66, N'Sam', N'Blyth', N'BLYTH & COMPANY TRAVEL LTD.', N'13 Hazelton Ave', N'Toronto', N'ON', N'M5R 2E1', N' ', N'4169642569', N'4169643416', N'blythco@blythtravel.com', N'http://www.blythtravel.com', N'PGY', 317)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (67, NULL, NULL, N'THE ROYAL SCOTSMAN', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.blythtravel.com', NULL, 317)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (68, NULL, NULL, N'THE EASTERN & ORIENTAL EXPRESS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.blythtravel.com', NULL, 317)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (70, NULL, NULL, N'THE BRITISH PULLMAN', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.blythtravel.com', NULL, 317)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (71, NULL, NULL, N'THE VENICE SIMPLON ORIENT EXPRESS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.blythtravel.com', NULL, 317)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (73, NULL, NULL, N'MOUNTAIN TRAVEL *SOBEK', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.blythtravel.com', NULL, 317)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (74, NULL, NULL, N'BACKROADS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.blythtravel.com', NULL, 317)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (75, NULL, NULL, N'EXOTIC SUN', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.blythtravel.com', NULL, 317)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (113, N'M.', N'Pangallo', N'COMPAGNIA ITALIANA TURISMO INC', N'666 Sherbrooke W', N'Montreal', N'PQ', N'H3A 1E7', N' ', N'5148454310', N'5148459137', N'citmontreal@cittours.com', N' ', N'ACTAPGY', 323)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (114, NULL, NULL, N'ITALY/EURAILPASS/EUROPASS/GERMAN PASS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 323)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (121, N'Mary', N'Papamichael', N'CYPRUS AIRWAYS LTD', N'34-09 Broadway', N'Astoria', N'NY', N'11106', N'USA', N'7182676882', N'7182676885', N'kinisisusa@aol.com', N' ', NULL, 796)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (123, N'Mary', N'Papamichael', N'KINISIS TRAVEL & TOURS', N'34-09 Broadway', N'Astoria', N'NY', N'11106', N'USA', N'7182676880', N'7182676885', N'kinisisusa@aol.com', N' ', NULL, 796)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (127, NULL, NULL, N'BRITISH HERITAGE PASS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.dercanada.com', NULL, 828)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (128, N'Charlotte', N' Mikolaiczyk', N'DER TRAVEL SERVICE LTD', N'904 The East Mall', N'Toronto (Etobicoke)', N'ON', N'M9B 6K2', N' ', N'4166951209', N'4166951210', N'der@dercanada.com', N'http://www.dercanada.com', N'ACTAPGY', 828)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (129, NULL, NULL, N'EUROLINE BUS PASS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.dercanada.com', NULL, 828)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (131, N'Charlotte', N' Mikolaiczyk', N'DERRAIL - EUROPEAN RAIL SERVICES', N'904 The East Mall', N'Toronto (Etobicoke)', N'ON', N'M9B 6K2', N' ', N'4166951209', N'4166951210', N'der@dercanada.com', N'http://www.dercanada.com', NULL, 828)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (132, NULL, NULL, N'BENELUX PASS (BELGIUM LUXEMBOURG THE NETHERLANDS)', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.dercanada.com', NULL, 828)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (133, NULL, NULL, N'BRITRAIL PASS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.dercanada.com', NULL, 828)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (134, NULL, NULL, N'GREEK RAIL PASS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.dercanada.com', NULL, 828)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (135, NULL, NULL, N'EURAIL/EURO PASS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.dercanada.com', NULL, 828)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (136, NULL, NULL, N'BALKAN RAIL PASS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.dercanada.com', NULL, 828)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (137, NULL, NULL, N'GERMAN RAIL', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.dercanada.com', NULL, 828)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (138, NULL, NULL, N'EUROPEAN EAST PASS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.dercanada.com', NULL, 828)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (139, NULL, NULL, N'SCANRAIL NORWAY SWEDEN RAILPASS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.dercanada.com', NULL, 828)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (140, NULL, NULL, N'PARIS METRO PASS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.dercanada.com', NULL, 828)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (141, NULL, NULL, N'IBERIC FLEXIPASS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.dercanada.com', NULL, 828)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (142, NULL, NULL, N'SPAIN RAIL PASS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.dercanada.com', NULL, 828)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (143, NULL, NULL, N'HOLLAND RAIL PASS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.dercanada.com', NULL, 828)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (144, NULL, NULL, N'ITALIAN RAIL PASS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.dercanada.com', NULL, 828)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (145, NULL, NULL, N'AUSTRIAN RAILPASS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.dercanada.com', NULL, 828)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (146, NULL, NULL, N'LONDON VISITOR CARD', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.dercanada.com', NULL, 828)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (147, NULL, NULL, N'EUROSTAR SERVICES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.dercanada.com', NULL, 828)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (150, N'Joanne', N'Lundy', N'DISCOVER THE WORLD MARKETING', N'1599 Hurontario St', N'Mississauga', N'ON', N'L5G 4S1', N' ', N'9058910093', N'9058918026', N'toronto@discovertheworld.ca', N' ', N'PGY', 845)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (151, NULL, NULL, N'BRITISH MIDLAND', N'1599 Hurontario St', N'Mississauga', N'ON', N'L5G 4S1', N' ', N'9058910093', N'9058918026', N'toronto@discovertheworld.ca', N' ', N'PGY', 845)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (152, N'Joanne', N'Lundy', N'AEROMEXICO', N'1599 Hurontario St', N'Mississauga', N'ON', N'L5G 4S1', N' ', N'9058910093', N'9058918026', N'toronto@discovertheworld.ca', N' ', N'PGY', 845)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (153, N'Joanne', N'Lundy', N'AOM FRENCH AIRLINES', N'1599 Hurontario St', N'Mississauga', N'ON', N'L5G 4S1', N' ', N'9058910093', N'9058918026', N'toronto@discovertheworld.ca', N' ', N'PGY', 845)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (154, NULL, NULL, N'AMERICA WEST AIRLINES', N'4000 E Sky Harbor Blvd', N'Phoenix', N'AZ', N'85034', N' ', N'8002929378', NULL, N'toronto@discovertheworld.ca', N'http://www.americawest.com', NULL, 845)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (156, N'Joanne', N'Lundy', N'HYATT NORTH AMERICA/CARIBBEAN', N'1599 Hurontario St', N'Mississauga', N'ON', N'L5G 4S1', N' ', N'9052331234', N'9058918026', N'toronto@discovertheworld.ca', N'www.hyatt.com', N'PGY', 845)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (161, N'Angie', N'Lo', N'ELITE ORIENT TOURS INC.', N'170 University Ave', N'Toronto', N'ON', N'M5H 3B3', N' ', N'4169773026', N'4169773104', N' ', N' ', N'ACTAPGY', 908)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (165, N'Angie', N'Lo', N'JAPAN RAIL PASS', N'170 University Ave', N'Toronto', N'ON', N'M5H 3B3', N' ', N'4169773026', N'4169773104', N' ', N' ', NULL, 908)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (167, N'Aideen', N'Hennessy', N'ENCORE CRUISES', N'160 Bloor St E', N'Toronto', N'ON', N'M4W 1B9', N' ', N'4169602516', N'4169670303', N' ', N' ', N'ACTAPGY', 1005)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (168, NULL, NULL, N'CUNARD LINE', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 1005)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (169, NULL, NULL, N'WINDSTAR CRUISES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 1005)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (170, NULL, NULL, N'CELEBRITY CRUISES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 1005)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (171, NULL, NULL, N'SEABOURN CRUISE LINE', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 1005)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (172, NULL, NULL, N'ORIENT LINES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 1005)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (173, NULL, NULL, N'SILVERSEA CRUISES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 1005)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (174, NULL, NULL, N'STAR CLIPPERS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 1005)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (175, NULL, NULL, N'ROYAL CARIBBEAN INTERNATIONAL', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 1005)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (176, NULL, NULL, N'ROYAL OLYMPIC CRUISES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 1005)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (177, NULL, NULL, N'HOLLAND AMERICA LINE', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 1005)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (178, NULL, NULL, N'RADISSON SEVEN SEAS CRUISES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 1005)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (181, N'Maria', N'Conte', N'EUROCRUISES INC.', N'33 Little W 12th St', N'New York', N'NY', N'10014', N'USA', N'2126912099', N'2123664747', N'info@eurocruises.com', N'http://www.eurocruises.com', N'PGY', 1406)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (182, NULL, NULL, N'DELPHIN CRUISES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.eurocruises.com', NULL, 1406)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (184, NULL, NULL, N'KRISTINA CRUISES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.eurocruises.com', NULL, 1406)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (185, NULL, NULL, N'FRED. OLSEN CRUISE LINES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.eurocruises.com', NULL, 1406)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (186, N'Marcel', N'Paoli', N'EUROP-AUTO-VACANCES/HOLIDAYS', N'5174 Cote des Neiges', N'Montreal', N'PQ', N'H3T 1X8', N' ', N'5147353083', N'5143428802', N'europauto@netrover.com', N'http://www.europauto.qc.ca', N'ACTANEWP', 1028)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (187, NULL, NULL, N'EUROPCAR', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.europauto.qc.ca', NULL, 1028)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (188, N'M.', N'Schon', N'EXECUTIVE SUITES', N'Emerald Business Centre', N'Mississauga', N'ON', N'L5R 3K6', N' ', N'9055029550', N'9055020355', N'execsuit@idirect.com', N'http://www.execsuit.com', N'PGY', 1040)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (189, NULL, NULL, N'PARK SUITES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 1040)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (210, N'Rochelle', N'Goldman', N'GOLDMAN MARKETING STRATEGY INC', N'80 St Clair Ave E', N'Toronto', N'ON', N'M4T 1N6', N' ', N'4169235705', N'4169235628', N'gms@on.aibn.com', N' ', N'PGY', 1205)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (211, N'Rochelle', N'Goldman', N'HEBRIDEAN ISLAND CRUISES: THE HEBRIDEAN PRINCESS', N'80 St Clair Ave E', N'Toronto', N'ON', N'M4T 1N6', N' ', N'4169235705', N'4169235628', N'gms@on.aibn.com', N' ', N'PGY', 1205)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (214, N'Bruce', N'Hodge', N'GOWAY TRAVEL LTD.', N'3284 Yonge St', N'Toronto', N'ON', N'M4N 3M7', N' ', N'4163221034', N'4163221109', N'res@goway.com', N'http://www.goway.com', N'ACTAPGY', 1685)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (215, NULL, NULL, N'GREAT BARRIER REEF CRUISES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.goway.com', NULL, 1685)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (216, NULL, NULL, N'FIJI (BLUE LAGOON) CRUISES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.goway.com', NULL, 1685)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (217, NULL, NULL, N'YANTZE RIVER CRUISES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.goway.com', NULL, 1685)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (219, N'Bruce', N'Hodge', N'AUSTRALIAN RAIL', N'3284 Yonge St', N'Toronto', N'ON', N'M4N 3M7', N' ', N'4163221034', N'4163221109', N'res@goway.com', N'http://www.goway.com', NULL, 1685)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (221, NULL, NULL, N'AAT KINGS AUSTRALIAN TOURS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.goway.com', NULL, 1685)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (245, N'Marc', N'Vezina', N'TOURS MAISON - THE HOLIDAY NETWORK', N'2155 Guy St', N'Montreal', N'PQ', N'H3H 2R9', N' ', N'5149357103', N'5149854492', N' ', N'http://www.holidaynetwork.ca', N'ACTAPGY', 1416)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (249, NULL, NULL, N'WOODS CAR RENTAL - BRITAIN', N' ', N' ', N' ', N' ', N' ', N'8002688354', N'4163671749', N' ', N'http://www.holidaynetwork.ca', N'PGY', 1416)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (250, NULL, NULL, N'ALAMO RENT A CAR', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.holidaynetwork.ca', NULL, 1416)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (251, NULL, NULL, N'DOLLAR HAWAII', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.holidaynetwork.ca', NULL, 1416)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (252, NULL, NULL, N'AVIS RENT A CAR', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.holidaynetwork.ca', NULL, 1416)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (257, NULL, NULL, N'KD RIVER CRUISES OF EUROPE', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.holidaynetwork.ca', NULL, 1416)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (258, NULL, NULL, N'DISNEY CRUISE LINE', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.holidaynetwork.ca', NULL, 1416)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (259, NULL, NULL, N'CRYSTAL CRUISES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.holidaynetwork.ca', NULL, 1416)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (260, NULL, NULL, N'PRINCESS CRUISES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.holidaynetwork.ca', NULL, 1416)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (261, NULL, NULL, N'SILVERSEA', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.holidaynetwork.ca', NULL, 1416)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (262, NULL, NULL, N'NORWEGIAN CRUISE LINES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.holidaynetwork.ca', NULL, 1416)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (263, NULL, NULL, N'COSTA CRUISES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.holidaynetwork.ca', NULL, 1416)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (264, NULL, NULL, N'SUN CRUISES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.holidaynetwork.ca', NULL, 1416)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (266, N'Astrinos', N' Kozoronis', N'CARRIERS TRAVEL INTERNATIONAL INC. - THE HOLIDAY NETWORK', N'75 The Donway W', N'Toronto', N'ON', N'M3C 2E9', N' ', N'4164299000', N'4164297159', N' ', N'http://www.holidaynetwork.ca', N'PGY', 1416)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (267, N'Leanda', N'Townsend', N'HOLIDAY HOUSE', N'26 Wellington St E 5th Fl', N'Toronto', N'ON', N'M5E 1S2', N' ', N'4163645100', N'4163671836', N' ', N'http://www.holidaynetwork.ca', N'PGY', 1416)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (268, N'Leanda', N'Townsend', N'SIVER FERN - THE HOLIDAY NETWORK', N'26 Wellington St E 5th Fl', N'Toronto', N'ON', N'M5E 1S2', N' ', N'4163645100', N'4163671836', N' ', N'http://www.holidaynetwork.ca', N'PGY', 1416)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (272, N'Erik', N'Elvejord', N'HOLLAND AMERICA LINE WESTOURS INC', N'300 Elliott Ave W', N'Seattle', N'WA', N'98119', N'USA', N'8004260327', N'2062863229', N' ', N' ', N'ACTAPGY', 1425)
GO
print 'Processed 100 total records'
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (274, NULL, NULL, N'WESTOURS INC.', N'300 Elliott Ave W', N'Seattle', N'WA', N'98119', N'USA', N'8004260327', N'2064260329', N' ', N' ', N'ACTAPGY', 1425)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (282, NULL, NULL, N'EVAN EVANS TOURS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 1542)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (283, N'Helen', N'Panagides', N'INSIGHT VACATIONS CANADA LTD.', N'2300 Yonge St', N'Toronto', N'ON', N'M4P 1E4', N' ', N'4164822116', N'4164824307', N' ', N' ', N'ACTAPGY', 1542)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (288, N'Jacques', N'Darcy', N'INTAIR TRANSIT', N'1221 rue St-Hubert', N'Montreal', N'PQ', N'H2L 3Y8', N' ', N'5142869747', N'5148437678', N' ', N' ', N'ACTANEWP', 1620)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (289, N'Jacques', N'Darcy', N'INTAIR VACATIONS', N'1221 rue St-Hubert', N'Montreal', N'PQ', N'H2L 3Y8', N' ', N'5142862800', N'5142861655', N' ', N' ', NULL, 1620)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (290, N'Jacques', N'Darcy', N'BOOMERANG TOURS', N'1221 rue St-Hubert', N'Montreal', N'PQ', N'H2L 3Y8', N' ', N'5142866035', N'5142861655', N' ', N' ', NULL, 1620)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (291, N'Jacques', N'Darcy', N'INTAIR VACATIONS / INTAIR USA / INTAIR CRUISES', N'1221 rue St-Hubert', N'Montreal', N'PQ', N'H2L 3Y8', N' ', N'5142862800', N'5142861655', N' ', N' ', NULL, 1620)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (294, NULL, NULL, N'TALL SHIP CRUISES (MAINE THE CARIBBEAN SOUTH PACIFIC)', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (295, NULL, NULL, N'IVARAN CRUISE LINE (FREIGHTER CRUISES)-SOUTH AMERICA/CARIBBEAN', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (296, NULL, NULL, N'ZEUS TALL SHIP CRUISES-GREECE', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (297, NULL, NULL, N'TEMPTRESS CRUISES-COSTA RICA', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (298, NULL, NULL, N'ARANUI CRUISES (FREIGHTER CRUISES) - TAHITI', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (299, NULL, NULL, N'CROWN BLUE LINE/FRANCE CANAL & RIVER POWER BOATS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (300, NULL, NULL, N'AMAZING GRACE (FREIGHTER CRUISES)-CARIBBEAN', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (301, N'Michael', N'Tomlinson', N'WINDJAMMER BAREFOOT CRUISES', N'200 10441-124th St', N'Edmonton', N'AB', N'T5N 1R7', N' ', N'7804825022', N'7804825328', N'islands@cruising.nu', N'http://www.cruising.nu', N'ACTAPGY', 1634)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (302, N'Michael', N'Tomlinson', N'ISLANDS IN THE SUN CRUISES', N'200 10441-124th St', N'Edmonton', N'AB', N'T5N 1R7', N' ', N'7804825022', N'7804825328', N'islands@cruising.nu', N'http://www.cruising.nu', N'ACTAPGY', 1634)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (303, NULL, NULL, N'NEILSON CYCLING HOLIDAYS-GREECE/TURKEY', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (304, NULL, NULL, N'ISLANDS IN THE SUN CRUISES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (305, NULL, NULL, N'SUNSAIL SAIL & STAY', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (306, NULL, NULL, N'MOORINGS THE', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (307, NULL, NULL, N'VIRGIN ISLANDS CHARTER YACHT LEAGUE CREWED YACHT HOLIDAYS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (308, NULL, NULL, N'CLUB MARINER SAIL & STAY HOLIDAYS-ST. LUCIA/GRENADA/BVI', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (309, NULL, NULL, N'NEILSON FLOTILLA SAILING-GREECE/TURKEY', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (310, NULL, NULL, N'TRAWLERS IN PARADISE - CARIBBEAN USVI''S', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (311, NULL, NULL, N'VIKING TOURS AND TALL SHIP CRUISES OF GREECE', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (312, NULL, NULL, N'WINDJAMMER BAREFOOT CRUISES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (313, NULL, NULL, N'DIVE BELIZE-AGGRESSOR DIVE FLEET', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (314, NULL, NULL, N'SUNSAIL YACHT CHARTERS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (315, NULL, NULL, N'SOUTH FLORIDA SAILING SCHOOL & YACHT CHARTERS - FLORIDA KEYS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (316, NULL, NULL, N'BAREBOAT YACHT CHARTERS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (317, NULL, NULL, N'NEILSON CYCLING HOLIDAYS-DOMINICAN REPUBLIC/GRENADA', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (318, NULL, NULL, N'SUNSAIL CLUB ANTIGUA', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (319, NULL, NULL, N'HORIZON POWER/SAIL BVI''S', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (320, NULL, NULL, N'AGGRESSOR DIVE HOLIDAYS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (321, NULL, NULL, N'HOSEASONS - UK CANALBOATS (U-DRIVE) FRANCE/EUROPE', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (322, NULL, NULL, N'QUEENSLAND YACHT CHARTERS - AUSTRALIAN BARRIER REEF', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (323, NULL, NULL, N'COPPER SKY-NW PACIFIC', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.cruising.nu', NULL, 1634)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (330, N'Kenny', N'Lee', N'JETPACIFIC HOLIDAYS INC.', N'120-8877 Odlin Cres', N'Richmond', N'BC', N'V6X 3Z7', N' ', N'6042148932', N'6042148933', N'jetpac@infoserve.net', N' ', N'ACTAPGY', 1713)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (331, NULL, NULL, N'BANGKOK AIRWAYS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 1713)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (333, NULL, NULL, N'BALI HAI CRUISES - BALI', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 1713)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (334, NULL, NULL, N'STAR CRUISES - SINGAPORE', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 1713)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (342, N'Chris', N'Rivers', N'KLM ROYAL DUTCH AIRLINES', N'777 Bay St', N'Toronto', N'ON', N'M5G 2C8', N' ', N'4162045151', N'4162049708', N' ', N' ', N'ACTAPGY', 1766)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (343, NULL, NULL, N'NORTHWEST AIRLINES & KLM ROYAL DUTCH AIRLINES (NW/KL)', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 1766)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (357, N'Emile', N'Habib', N'LOTUS HOLIDAYS', N'792 Kennedy Rd', N'Toronto (Scarborough)', N'ON', N'M1K 2C8', N' ', N'4167517025', N'4167510608', N' ', N' ', N'PGY', 1859)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (359, NULL, NULL, N'NILE CRUISES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 1859)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (369, N'Corinne', N'Martin', N'MARKET SQUARE TOURS', N'273 Donald St', N'Winnipeg', N'MB', N'R3C 1M9', N' ', N'2049564279', N'2049490188', N'sales@gctc-mst.com', N'http://www.greatcanadiantravel.com', N'ACTAPGY', 1918)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (370, N'Corinne', N'Martin', N'THE GREAT CANADIAN TRAVEL COMPANY LTD', N'273 Donald St', N'Winnipeg', N'MB', N'R3C 1M9', N' ', N'2049490199', N'2049490188', N'sales@gctc-mst.com', N'http://www.greatcanadiantravel.com', NULL, 1918)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (371, N'Antonio', N'Alonso', N'MARKETING AHEAD', N'433 Fifth Ave.', N'New York', N'NY', N'10016', N'USA', N'2126869213', N'2126860271', N' ', N' ', N'PGY', 3273)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (372, NULL, NULL, N'PARADORES OF SPAIN', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 3273)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (373, NULL, NULL, N'POUSADAS OF PORTUGAL', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 3273)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (375, N'S.R.', N'Vale', N'MARTINAIR SERVICES', N'111 Richmond St W', N'Toronto', N'ON', N'M5H 2G4', N' ', N'4163643672', N'4163643886', N' ', N' ', N'ACTAPGY', 3376)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (376, N'S.R.', N'Vale', N'MARTINAIR HOLLAND', N'111 Richmond St W', N'Toronto', N'ON', N'M5H 2G4', N' ', N'4163643672', N'4163643886', N' ', N' ', N'PGY', 3376)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (396, N'Pat', N'Nagel', N'NAGEL TOURS LTD', N'Edmonton Inn', N'Edmonton', N'AB', N'T5G 0X5', N' ', N'7804527345', N'7804786666', N' ', N'http://www.nageltours.com', N'PGY', 2140)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (397, N'Pat', N'Nagel', N'OKANAGAN VALLEY WINE TRAIN', N'Edmonton Inn', N'Edmonton', N'AB', N'T5G 0X5', N' ', N'7804888725', N'7804827666', N' ', N'http://www.okanaganwinetrain.com', N'PGY', 2140)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (419, NULL, NULL, N'HOTEL NARROW BOATS/UK', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.infomatch.com/~pavlik', NULL, 2386)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (420, NULL, NULL, N'CROWN BLUE LINE FRANCE', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.infomatch.com/~pavlik', NULL, 2386)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (421, NULL, NULL, N'LOCABOAT - SELF-SKIPPERED PENICHETTES - EUROPE', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.infomatch.com/~pavlik', NULL, 2386)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (422, NULL, NULL, N'EUROPE RIVER CRUISES/CROISI EUROPE (ALSACE CROISIERES)', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.infomatch.com/~pavlik', NULL, 2386)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (423, NULL, NULL, N'CONTINENTAL WATERWAYS - HOTEL-BARGE CRUISES FRANCE', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.infomatch.com/~pavlik', NULL, 2386)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (424, NULL, NULL, N'BARGE CRUISES EUROPE', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.infomatch.com/~pavlik', NULL, 2386)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (425, NULL, NULL, N'CANAL & RIVER CRUISES EUROPE', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.infomatch.com/~pavlik', NULL, 2386)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (426, N'Janet', N'Pavlik', N'PAVLIK TRAVEL GROUP', N'2221 Panorama Dr', N'N Vancouver', N'BC', N'V7G 1V4', N' ', N'6049297911', N'6049240634', N'pavlik@infomatch.com', N'http://www.infomatch.com/~pavlik', N'PGY', 2386)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (428, NULL, NULL, N'ANGLO WELSH SELF SKIPPERED BOATS(BRITAIN)', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.infomatch.com/~pavlik', NULL, 2386)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (429, NULL, NULL, N'IRELAND - SELF SKIPPERED CANAL BOATS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.infomatch.com/~pavlik', NULL, 2386)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (430, NULL, NULL, N'HOLLAND - CANAL BOATING', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.infomatch.com/~pavlik', NULL, 2386)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (431, NULL, NULL, N'CROWN BLUE LINE (FRANCE)', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.infomatch.com/~pavlik', NULL, 2386)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (434, N'Patricia', N'Fargeon', N'PLANET FRANCE INC.', N'7351 Victoria Park Ave', N'Markham', N'ON', N'L3R 3A5', N' ', N'9054796121', N'9054795411', N'planet.pat@sympatico.ca', N' ', N'PGY', 2466)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (435, N'Patricia', N'Fargeon', N'PLANET EUROPE GROUP', N'7351 Victoria Park Ave', N'Markham', N'ON', N'L3R 3A5', N' ', N'9054797069', N'9054795411', N'planet.pat@sympatico.ca', N' ', N'PGY', 2466)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (466, N'Gary C.', N'Sadler', N'UNIQUE VACATIONS (CANADA) INC.', N'4211 Yonge St', N'Toronto (North York)', N'ON', N'M2P 2A9', N' ', N'4162230028', N'4162233306', N' ', N' ', N'ACTA', 2588)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (467, NULL, NULL, N'SANDALS AND BEACHES RESORTS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', N'ACTA', 2588)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (476, N'Ash', N'Mukherjee', N'ESPRIT/SERVICENTRE HOLIDAYS', N'5945 Airport Rd', N'Mississauga', N'ON', N'L4V 1R9', N' ', N'9056733333', N'9056733327', N'tscash@aol.com', N'http://www.espritvacations.com', N'PGY', 2592)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (477, NULL, NULL, N'CLUBAVANTAGE GROUP TRAVE', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.espritvacations.com', NULL, 2592)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (496, N'Julio', N'Erhart', N'HOTEL NETS', N'1235 Bay St', N'Toronto', N'ON', N'M5R 3K4', N' ', N'4169214012', N'4169698916', N'southwin@ican.net', N' ', NULL, 2827)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (497, N'Julio', N'Erhart', N'SOUTH WIND TOURS LTD.', N'1235 Bay St', N'Toronto', N'ON', N'M5R 3K4', N' ', N'4169214012', N'4169698916', N'southwin@ican.net', N' ', NULL, 2827)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (500, N'Mela', N'Pascoe', N'SUN & LEISURE TRAVEL CORP', N'401 The West Mall', N'Toronto (Etobicoke)', N'ON', N'M9C 5J5', N' ', N'4166265199', N'4166200009', N' ', N' ', N'PGY', 2938)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (501, NULL, NULL, N'CANADIAN TOURS INTERNATIONAL', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 2938)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (517, NULL, NULL, N'YANGTZE RIVER CRUISES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.tourcanvacations.com', NULL, 2987)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (518, NULL, NULL, N'EASTERN & ORIENTAL EXPRESS/ROAD TO MANDALAY CRUISE BURMA', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.tourcanvacations.com', NULL, 2987)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (519, NULL, NULL, N'STAR CRUISE LINES-SINGAPORE', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.tourcanvacations.com', NULL, 2987)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (520, NULL, NULL, N'STAR CLIPPER-ASIA-CARIBBEAN-MEDITERRANEAN', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.tourcanvacations.com', NULL, 2987)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (521, N'Miki', N'Friendly', N'TOURCAN VACATIONS INC', N'255 Duncan Mill Rd', N'Toronto', N'ON', N'M3B 3H9', N' ', N'4163910334', N'4163910986', N'tourcanvacations@tourcanvacations.com', N'http://www.tourcanvacations.com', N'ACTAPGY', 2987)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (522, N'Miki', N'Friendly', N'ROVOS RAIL - SOUTH AFRICA', N'255 Duncan Mill Rd', N'Toronto', N'ON', N'M3B 3H9', N' ', N'4163910334', N'4163910986', N'tourcanvacations@tourcanvacations.com', N'http://www.tourcanvacations.com', NULL, 2987)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (523, NULL, NULL, N'ROYAL SCOTSMAN', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.tourcanvacations.com', NULL, 2987)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (524, NULL, NULL, N'VENICE SIMPLON - ORIENT - EXPRESS - LONDON/VENICE OR V.V. EASTERN & ORI', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.tourcanvacations.com', NULL, 2987)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (525, N'Miki', N'Friendly', N'VENICE SIMPLON -- ORIENT EXPRESS - EUROPE EASTERN & ORIENTAL ORIENT EXP', N'255 Duncan Mill Rd', N'Toronto', N'ON', N'M3B 3H9', N' ', N'4163910334', N'4163910986', N'tourcanvac', N' ', NULL, 2987)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (526, N'Miki', N'Friendly', N'PALACE ON WHEELS - INDIA', N'255 Duncan Mill Rd', N'Toronto', N'ON', N'M3B 3H9', N' ', N'4163910334', N'4163910986', N'tourcanvacations@tourcanvacations.com', N'http://www.tourcanvacations.com', NULL, 2987)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (532, N'Elisabeth', N'Dupuis', N'ALIOTOURS', N'1410 Stanley St', N'Montreal', N'PQ', N'H3A 1P8', N' ', N'5142871066', N'5148435680', N' ', N' ', N'ACTA', 2998)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (533, N'Elisabeth', N'Dupuis', N'ALIO TOURS DIV. TOURS NEW YORK', N'1410 Stanley St', N'Montreal', N'PQ', N'H3A 1P8', N' ', N'5142871066', N'5148435680', N' ', N' ', N'ACTA', 2998)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (538, N'Joaquin', N'Murillo', N'TRANS WORLD AIRLINES INC. (TWA)', N'1751 Richardson St', N'Montreal', N'PQ', N'H3K 1G6', N' ', N'5148448242', N'5148440921', N'aviaction@median-aviation.com', N'http://www.median-aviation.com', N'PGY', 3119)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (540, N'Joaquin', N'Murillo', N'AVIACTION', N'Airway Centre 1 5955 Airport', N'Mississauga', N'ON', N'L4V 1R9', N' ', N'9056778242', N'9056779394', N'aviaction@median-aviation.com', N'http://www.median-aviation.com', N'PGY', 3119)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (550, N'Terri', N'Ronneseth', N'TREK AIR', N'8412 - 109 St', N'Edmonton', N'AB', N'T6G 1E2', N' ', N'7804399118', N'7804335494', N'airfares@trekholidays.com', N'http://www.trekholidays.com', N'ACTAPGY', 3212)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (551, N'Terri', N'Ronneseth', N'TREK HOLIDAYS', N'8412 - 109 St', N'Edmonton', N'AB', N'T6G 1E2', N' ', N'7804399118', N'7804335494', N'adventures@trekholidays.com', N'http://www.trekholidays.com', N'ACTAPGY', 3212)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (552, NULL, NULL, N'KARIBU SAFARIS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.trekholidays.com', NULL, 3212)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (553, NULL, NULL, N'PEREGRINE ADVENTURES/GECKO ADVENTURES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.trekholidays.com', NULL, 3212)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (554, NULL, NULL, N'EXPLORE WORLDWIDE', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.trekholidays.com', NULL, 3212)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (555, NULL, NULL, N'DRAGOMAN HOLIDAYS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.trekholidays.com', NULL, 3212)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (556, NULL, NULL, N'KIRRA TOURS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.trekholidays.com', NULL, 3212)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (557, NULL, NULL, N'IMAGINATIVE TRAVELLER', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.trekholidays.com', NULL, 3212)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (558, NULL, NULL, N'ENCOUNTER OVERLAND', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.trekholidays.com', NULL, 3212)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (568, N'Vicky', N'Alberto', N'VIP INTERNATIONAL', N'727-7th Ave SW', N'Calgary', N'AB', N'T2P 0Z5', N' ', N'4032693566', N'4032612046', N'info@vipintcorp.com', N' ', N'PGY', 3633)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (569, N'Kelly', N'Blake', N'ALL SUITES INTERNATIONAL', N'727-7th Ave SW', N'Calgary', N'AB', N'T2P 0Z5', N' ', N'4032664776', N'4032665228', N'info@vipintcorp.com', N' ', N'PGY', 3633)
GO
print 'Processed 200 total records'
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (586, N'Jeronimo', N'Rius', N'BONANZA HOLIDAYS', N'1224 Stanley St', N'Montreal', N'PQ', N'H3B 2S7', N' ', N'5143939501', N'5143939504', N'bonanza@globalserve.net', N' ', N'ACTAPGY', 3549)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (598, NULL, NULL, N'AUSTRIA HOTELS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.bluedanubeholidays.com', NULL, 3576)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (599, NULL, NULL, N'CEDOK CZECH TOURIST/TRAVEL AGENCY', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.bluedanubeholidays.com', NULL, 3576)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (600, NULL, NULL, N'VIENNA INTERNATIONAL HOTELS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.bluedanubeholidays.com', NULL, 3576)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (601, NULL, NULL, N'DANUBIUS SPA HOTELS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.bluedanubeholidays.com', NULL, 3576)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (602, NULL, NULL, N'HUNGARIAN HOTELS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.bluedanubeholidays.com', NULL, 3576)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (604, NULL, NULL, N'GRAYLINE FRANCE', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.bluedanubeholidays.com', NULL, 3576)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (605, NULL, NULL, N'GRAYLINE AUSTRIA', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.bluedanubeholidays.com', NULL, 3576)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (606, NULL, NULL, N'GRAYLINE ITALY', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.bluedanubeholidays.com', NULL, 3576)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (607, NULL, NULL, N'GRAYLINE SPAIN', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.bluedanubeholidays.com', NULL, 3576)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (609, N'Madeline', N'Ferenzy', N'BLUE DANUBE HOLIDAYS', N'80 Richmond St W', N'Toronto', N'ON', N'M5H 2A4', N' ', N'4163625000', N'4163628024', N'bluedanube@bluedanubeholidays.com', N'http://www.bluedanubeholidays.com', N'PGY', 3576)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (610, NULL, NULL, N'MAHART-HYDROFOIL', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.bluedanubeholidays.com', NULL, 3576)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (620, N'Susan', N'Savoie', N'GOLDEN ESCAPES', N'75 The Donway W', N'Toronto', N'ON', N'M3C 2E9', N' ', N'4164477683', N'4164474824', N'admin@goldenescapes.com', N'http://www.goldenescapes.com', N'PGY', 3600)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (621, NULL, NULL, N'BACK ROADS TOURING COMPANY of Great Britain', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.goldenescapes.com', NULL, 3600)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (622, N'Sandra', N'Mirkovic', N'G.A.P ADVENTURES INC', N'The Great Adventure People', N'Toronto', N'ON', N'M5H 3H1', N' ', N'4162600999', N'4162601888', N'adventure@gap.ca', N'http://www.gap.ca', N'ACTAPGY', 3589)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (623, NULL, NULL, N'TREK AMERICA', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.gap.ca', NULL, 3589)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (624, NULL, NULL, N'EXODUS WORLDWIDE ADVENTURE HOLIDAYS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.gap.ca', NULL, 3589)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (625, NULL, NULL, N'TREK AUSTRALIA', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.gap.ca', NULL, 3589)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (626, NULL, NULL, N'INTREPID SOUTH EAST ASIA', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.gap.ca', NULL, 3589)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (627, NULL, NULL, N'GUERBA EXPEDITIONS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.gap.ca', NULL, 3589)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (628, NULL, NULL, N'AMADABLAM ADVENTURES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.gap.ca', NULL, 3589)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (639, N'Paul', N'Chu', N'CHINA TRAVEL SERVICE (CANADA) INC', N'556 W Broadway', N'Vancouver', N'BC', N'V5Z 1E9', N' ', N'6048728787', N'6048732823', N' ', N' ', N'ACTAPGY', 3622)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (641, N'Paul', N'Chu', N'CHINA TRAVEL AIR SERVICE HONG KONG LTD.', N'556 W Broadway', N'Vancouver', N'BC', N'V5Z 1E9', N' ', N'6048728787', N'6048732823', N' ', N' ', NULL, 3622)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (642, N'Paul', N'Chu', N'SHENZHEN AIRLINE CHINA', N'556 W Broadway', N'Vancouver', N'BC', N'V5Z 1E9', N' ', N'6048728787', N'6048732823', N' ', N' ', NULL, 3622)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (644, N'Paul', N'Chu', N'YANGTZE RIVER SPLENDID CHINA CRUISE LTD.', N'556 W Broadway', N'Vancouver', N'BC', N'V5Z 1E9', N' ', N'6048728787', N'6048732823', N' ', N' ', NULL, 3622)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (646, N'Paul', N'Chu', N'CHINA TRAVEL HOTEL MANAGEMENT SERVICES HONG KONG LTD.', N'556 W Broadway', N'Vancouver', N'BC', N'V5Z 1E9', N' ', N'6048728787', N'6048732823', N' ', N' ', NULL, 3622)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (648, N'Paul', N'Chu', N'CHINA NATIONAL RAILWAY', N'556 W Broadway', N'Vancouver', N'BC', N'V5Z 1E9', N' ', N'6048728787', N'6048732823', N' ', N' ', NULL, 3622)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (662, NULL, NULL, N'CUNARD LINES', N'6100 Blue Lagoon Drive', N'Miami', N'FL', N'33126', N' ', N'8007286273', NULL, N' ', N'http://www.cunard.com', N'ACTAPGY', 3650)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (681, N'Nigel', N'Wood', N'TRAVEL STUDIO', N'Suite 890', N'Vancouver', N'BC', N'V6C 1N5', N' ', N'8005656670', N'8006652998', N'tsyvr@baxter.net', N'http://www.travelstudio.com', NULL, 4196)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (683, NULL, NULL, N'ROVOS RAIL - SOUTH AFRICA', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.travelstudio.com', NULL, 4196)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (684, NULL, NULL, N'BLUE TRAIN - SOUTH AFRICA', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.travelstudio.com', NULL, 4196)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (706, N'Randy', N'Anger', N'ANHEUSER-BUSCH ADVENTURE PARKS', N'358 Broadway Ave', N'Toronto', N'ON', N'M4P 1X2', N' ', N'4164839410', N'4164835982', N' ', N' ', N'PGY', 5081)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (707, NULL, NULL, N'BUSCH GARDENS TAMPA BAY, FLORIDA', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 5081)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (708, NULL, NULL, N'ADVENTURE ISLAND TAMPA BAY, FLORIDA', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 5081)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (709, NULL, NULL, N'SESAME PLACE, LANGHORNE PENNSYLVANIA', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 5081)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (710, NULL, NULL, N'SEAWORLD ADVENTURE PARK, ORLANDO FLORIDA', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 5081)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (711, NULL, NULL, N'SEAWORLD ADVENTURE PARK, CLEVELAND OHIO', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 5081)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (712, NULL, NULL, N'SEAWORLD ADVENTURE PARK, SAN DIEGO CALIFORNIA', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 5081)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (713, NULL, NULL, N'BUSCH GARDENS, WILLIAMSBURG VIRGINIA', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 5081)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (714, NULL, NULL, N'WATER COUNTRY USA, WILLIAMSBURG VIRGINIA', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 5081)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (715, NULL, NULL, N'SEAWORLD ADVENTURE PARK, SAN ANTONIO TEXAS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 5081)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (716, NULL, NULL, N'DISCOVERY COVE, ORLANDO FLORIDA', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 5081)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (726, N'Maybelle', N'Ravin', N'THE RMR GROUP INC', N'Taurus House', N'Toronto', N'ON', N'M4R 2E3', N' ', N'4164858724', N'4164858256', N'assoc@thermrgroup.ca', N'http://www.thermrgroup.ca', N'PGY', 5228)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (727, N'Maybelle', N'Ravin', N'KLM uk/buzz', N'Taurus House', N'Toronto', N'ON', N'M4R 2E3', N' ', N'4164858724', N'4164858256', N'assoc@thermrgroup.ca', N'http://www.thermrgroup.ca', N'PGY', 5228)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (728, N'Jackie', N'Lutz', N'THE RMR GROUP INC', N'Taurus House', N'Toronto', N'ON', N'M4R 2E3', N' ', N'4164844864', N'4164858256', N'assoc@thermrgroup.ca', N'http://www.thermrgroup.ca', N'PGY', 5228)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (733, N'Lourdes', N'Freire', N'SKYWAYS INTERNATIONAL', N'486 College St', N'Toronto', N'ON', N'M6G 1A4', N' ', N'4169238949', N'4169601339', N'skyways@netcom.ca', N'http://www.addictravel.com', N'PGY', 5492)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (734, N'Lourdes', N'Freire', N'AEROCONTINENTE (CODE N6) PERUVIAN AIRLINES', N'486 College St', N'Toronto', N'ON', N'M6G 1A4', N' ', N'4169238949', N'4169601339', N'skyways@netcom.ca', N'http://www.addictravel.com', N'PGY', 5492)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (739, N'Hope', N'Burridge', N'TRAVEL BY RAIL', N'34 Flintridge Rd', N'Toronto (Scarborough)', N'ON', N'M1P 1G3', N' ', N'4167010756', N'4167010751', N'travelbyrail@hotmail.com', N'http://www.travelbyrail.com', N'PGY', 5777)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (740, NULL, NULL, N'BAUDHHA PARIKRAMA EXPRESS - INDIA', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.travelbyrail.com', NULL, 5777)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (741, NULL, NULL, N'PALACE ON WHEELS - INDIA', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.travelbyrail.com', NULL, 5777)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (742, NULL, NULL, N'ROYAL ORIENT - INDIA', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.travelbyrail.com', NULL, 5777)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (743, NULL, NULL, N'RAZDAN HOLIDAYS (INDIA)', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.travelbyrail.com', NULL, 5777)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (744, N'Paulo', N'Karbach', N'REPWORLD INC', N'409-1200 W Pender St', N'Vancouver', N'BC', N'V6E 2S9', N' ', N'6046837824', N'6046837819', N' ', N' ', N'ACTAPGY', 5796)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (745, N'Paulo', N'Karbach', N'LTU INTERNATIONAL AIRWAYS', N'409-1200 W Pender St', N'Vancouver', N'BC', N'V6E 2S9', N' ', N'6046837824', N'6046837819', N' ', N' ', NULL, 5796)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (746, N'Paulo', N'Karbach', N'LLOYD AEREO BOLIVIANO', N'409-1200 W Pender St', N'Vancouver', N'BC', N'V6E 2S9', N' ', N'6046837824', N'6046837819', N' ', N' ', NULL, 5796)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (747, N'Paulo', N'Karbach', N'ACES (Aerolineas Centrales De Colombia S.A.)', N'409-1200 W Pender St', N'Vancouver', N'BC', N'V6E 2S9', N' ', N'6046837824', N'6046837819', N' ', N' ', NULL, 5796)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (748, N'Paulo', N'Karbach', N'HARBOUR AIR SEAPLANES', N'4760 Inglis Dr', N'Richmond', N'BC', N'V7B 1W4', N' ', N'6042783478', N'6042789897', N' ', N' ', NULL, 5796)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (749, N'Paulo', N'Karbach', N'HELIUSA', N'409-1200 W Pender St', N'Vancouver', N'BC', N'V6E 2S9', N' ', N'6046837824', N'6046837819', N' ', N' ', NULL, 5796)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (750, N'Paulo', N'Karbach', N'ECUATORIANA', N'409-1200 W Pender St', N'Vancouver', N'BC', N'V6E 2S9', N' ', N'6046837824', N'6046837819', N' ', N' ', NULL, 5796)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (751, N'Paulo', N'Karbach', N'SRI LANKAN AIRLINES', N'409-1200 W Pender St', N'Vancouver', N'BC', N'V6E 2S9', N' ', N'6046837824', N'6046837819', N' ', N' ', NULL, 5796)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (752, N'Paulo', N'Karbach', N'AERO CALIFORNIA', N'409-1200 W Pender St', N'Vancouver', N'BC', N'V6E 2S9', N' ', N'6046837824', N'6046837819', N' ', N' ', NULL, 5796)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (753, N'Paulo', N'Karbach', N'LAUDA AIR', N'409-1200 W Pender St', N'Vancouver', N'BC', N'V6E 2S9', N' ', N'6046837824', N'6046837819', N' ', N' ', NULL, 5796)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (754, N'Paulo', N'Karbach', N'SURINAM AIRWAYS', N'409-1200 W Pender St', N'Vancouver', N'BC', N'V6E 2S9', N' ', N'6046837824', N'6046837819', N' ', N' ', NULL, 5796)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (755, N'Paulo', N'Karbach', N'ETHIOPIAN AIRLINES', N'409-1200 W Pender St', N'Vancouver', N'BC', N'V6E 2S9', N' ', N'6046837824', N'6046837819', N' ', N' ', NULL, 5796)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (756, N'Paulo', N'Karbach', N'ICELANDAIR', N'409-1200 W Pender St', N'Vancouver', N'BC', N'V6E 2S9', N' ', N'6046837824', N'6046837819', N' ', N' ', NULL, 5796)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (757, N'Paulo', N'Karbach', N'MERIDIANA', N'409-1200 W Pender St', N'Vancouver', N'BC', N'V6E 2S9', N' ', N'6046837824', N'6046837819', N' ', N' ', NULL, 5796)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (758, N'Paulo', N'Karbach', N'ASIANA AIRLINES', N'409-1200 W Pender St', N'Vancouver', N'BC', N'V6E 2S9', N' ', N'6046837824', N'6046837819', N' ', N' ', NULL, 5796)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (759, N'Paulo', N'Karbach', N'TURKISH AIRLINES', N'409-1200 W Pender St', N'Vancouver', N'BC', N'V6E 2S9', N' ', N'6046837824', N'6046837819', N' ', N' ', NULL, 5796)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (760, N'Paulo', N'Karbach', N'TAM BRAZILIAN AIRLINES', N'409-1200 W Pender St', N'Vancouver', N'BC', N'V6E 2S9', N' ', N'6046837824', N'6046837819', N' ', N' ', NULL, 5796)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (761, N'Paulo', N'Karbach', N'GHANA AIRWAYS', N'409-1200 W Pender St', N'Vancouver', N'BC', N'V6E 2S9', N' ', N'6046837824', N'6046837819', N' ', N' ', NULL, 5796)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (764, N'Tina', N'Myers', N'RESORT MARKETING INC', N'19495 Biscayne Blvd', N'Aventura', N'FL', N'33180-2', N'USA', N'8004320221', N'3059320023', N'radcblebch@aol.com', N'http://www.radisson.com/nassaubs', N'ACTAPGY', 5827)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (765, N'Tina', N'Myers', N'RESORT MARKETING', N'19495 Biscayne Blvd', N'Aventura', N'FL', N'33180-2', N'USA', N'8004320221', N'3059320023', N'radcblebch@aol.com', N'http://www.radisson.com/nassaubs', N'ACTAPGY', 5827)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (766, NULL, NULL, N'RADISSON CABLE BEACH RESORT', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 5827)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (767, N'Catherine', N'Evans', N'TOURS OF EXPLORATION', N'PO Box 48225', N'Vancouver', N'BC', N'V7X 1N8', N' ', N'6048867300', N'6048867304', N'info@toursexplore.com', N'http://www.toursexplore.com', N'PGY', 5857)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (768, NULL, NULL, N'DIRECTIONS IN TRVL SPECIALTY TRS INC', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.toursexplore.com', NULL, 5857)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (769, N'Gary', N'Murtagh', N'PASSAGES EXPEDITIONS', N'597 Markham St', N'Toronto', N'ON', N'M6G 2L7', N' ', N'4165885000', N'4165889839', N'eldertreks@eldertreks.com', N'http://www.eldertreks.com', N'PGY', 6346)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (770, N'Gary', N'Murtagh', N'ELDERTREKS', N'597 Markham St', N'Toronto', N'ON', N'M6G 2L7', N' ', N'4165885000', N'4165889839', N'eldertreks@eldertreks.com', N'http://www.eldertreks.com', N'PGY', 6346)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (776, N'Nilufer', N'Mama', N'GULF AIR', N'77 Bloor St W', N'Toronto', N'ON', N'M5S 1M2', N' ', N'4169664853', N'4169668924', N'info@twai-canada.com', N'http://www.twai-canada.com', NULL, 6505)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (777, N'Nilufer', N'Mama', N'AEROMAR', N'77 Bloor St W', N'Toronto', N'ON', N'M5S 1M2', N' ', N'4169664853', N'4169668924', N'info@twai-canada.com', N'http://www.twai-canada.com', NULL, 6505)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (778, N'Nilufer', N'Mama', N'AERO ASIA', N'77 Bloor St W', N'Toronto', N'ON', N'M5S 1M2', N' ', N'4169664853', N'4169668924', N'info@twai-canada.com', N'http://www.twai-canada.com', NULL, 6505)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (779, N'Nilufer', N'Mama', N'JET AIRWAYS', N'77 Bloor St W', N'Toronto', N'ON', N'M5S 1M2', N' ', N'4169664853', N'4169668924', N'info@twai-canada.com', N'http://www.twai-canada.com', NULL, 6505)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (780, N'Nilufer', N'Mama', N'TRADE WINDS ASSOCIATES CANADA INC', N'77 Bloor St W', N'Toronto', N'ON', N'M5S 1M2', N' ', N'4169664853', N'4169668924', N'info@twai-canada.com', N'http://www.twai-canada.com', N'ACTAPGY', 6505)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (781, N'D.', N'Soota', N'LTI TOURS', N'719 Yonge St', N'Toronto', N'ON', N'M4Y 2B5', N' ', N'4169629661', N'4169625910', N'info@ltitours.com', N'http://www.ltitours.com', N'PGY', 6550)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (783, NULL, NULL, N'EASTERN & ORIENTAL EXPRESS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.ltitours.com', NULL, 6550)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (784, NULL, NULL, N'PALACE ON WHEELS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.ltitours.com', NULL, 6550)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (786, N'Ashraf', N'Khan', N'BIMAN BANGLADESH AIRLINES', N'206 Bloor St W', N'Toronto', N'ON', N'M5S IT8', N' ', N'4169200110', N'4169209598', N' ', N' ', N'PGY', 6873)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (788, N'Ashraf', N'Khan', N'AIR EXPRESS TRAVEL INC', N'206 Bloor St W', N'Toronto', N'ON', N'M5S IT8', N' ', N'4169200110', N'4169209598', N' ', N' ', N'PGY', 6873)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (822, N'Rosie', N'Melkonian', N'WORLD ACCESS MARKETING', N'33 Blue Ridge Rd', N'Toronto (North York)', N'ON', N'M2K 1R8', N' ', N'4162235506', N'4162220319', N'reservations@outrigger.com', N' ', N'PGY', 7244)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (823, N'Rosie', N'Melkonian', N'OUTRIGGER HOTELS & RESORTS', N'33 Blue Ridge Rd', N'Toronto (North York)', N'ON', N'M2K 1R8', N' ', N'4162235506', N'4162220319', N'reservations@outrigger.com', N' ', N'PGY', 7244)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (825, NULL, NULL, N'BALKAN AIRLINES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 7377)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (826, N'Subash', N'Chauhan', N'MAJESTIC TOURS', N'545 N Rivermede Rd', N'Concord', N'ON', N'L4K 4H1', N' ', N'9056604704', N'9056603055', N' ', N' ', N'PGY', 7377)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (834, N'Robert', N'Townshend', N'MUSTIQUE AIRWAYS', N'2011 Lawrence Ave W', N'Toronto', N'ON', N'M9N 3V3', N' ', N'4162407700', N'4162407701', N'travel@totaladvantage.com', N' ', N'PGY', 11160)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (835, N'Robert', N'Townshend', N'TOTAL ADVANTAGE TRAVEL & TOURS INC', N'2011 Lawrence Ave W', N'Toronto', N'ON', N'M9N 3V3', N' ', N'4162407700', N'4162407701', N'travel@totaladvantage.com', N' ', N'PGY', 11160)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (839, N'Mary', N'Warner', N'EXCLUSIVE TOURS', N'145 King St W', N'Toronto', N'ON', N'M5H 1J8', N' ', N'4163688558', N'4169559869', N'et@merit.ca', N' ', N'PGY', 8089)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (840, NULL, NULL, N'DANUBE CRUISES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 8089)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (841, NULL, NULL, N'CONTINENTAL WATERWAYS - HOTEL BARGE CRUISES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 8089)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (842, NULL, NULL, N'VIKING RIVER CRUISES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 8089)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (843, NULL, NULL, N'BARGE CANAL & RIVER CRUISES EUROPE', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 8089)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (845, NULL, NULL, N'EUROPEAN WATERWAYS/LUXURY EUROPEAN BARGE CRUISES', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 8089)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (846, NULL, NULL, N'PETER DEILMANN EUROPAMERICA CRUISES:', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 8089)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (849, NULL, NULL, N'UNIWORLD EUROPE RIVER CRUISES & WATERWAYS OF RUSSIA', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 8089)
GO
print 'Processed 300 total records'
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (862, N'Ross', N'de Gregorio', N'MANDITOURS - ITALY', N'9625 Yonge St', N'Richmond Hill', N'ON', N'L4C 5T2', N' ', N'9055088190', N'9057372978', N'mandi@italia-magica.com', N' ', N'PGY', 9785)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (867, N'Stephen', N'Yo', N'KINTETSU INTERNATIONAL EXPRESS', N'1550 Enterprises Rd', N'Mississauga', N'ON', N'L4W 4P4', N' ', N'9056708710', N'9056702238', N'outbound@kiecan.com', N'http://www.kiecan.com/outbound', N'PGY', 9766)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (868, N'Stephen', N'Yo', N'JAPAN RAIL PASS', N'1550 Enterprises Rd', N'Mississauga', N'ON', N'L4W 4P4', N' ', N'9056708710', N'9056702238', N'outbound@kiecan.com', N'http://www.kiecan.com/outbound', N'PGY', 9766)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (872, N'Timo', N'Jokinen', N'SCANDITOURS', N'191 Eglinton Ave E', N'Toronto', N'ON', N'M4P 1K1', N' ', N'4164823006', N'4164829447', N'toronto@scanditours.com', N'http://www.scanditours.com', N'PGY', 8837)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (873, NULL, NULL, N'STENA LINE (GSA CANADA)', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.scanditours.com', NULL, 8837)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (874, NULL, NULL, N'GOTA CANAL (GSA CANADA)', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.scanditours.com', NULL, 8837)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (875, NULL, NULL, N'DFDS SEAWAYS', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.scanditours.com', NULL, 8837)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (876, NULL, NULL, N'VIKING LINE (GSA CANADA)', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.scanditours.com', NULL, 8837)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (877, NULL, NULL, N'ESTLINE', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.scanditours.com', NULL, 8837)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (878, NULL, NULL, N'FRED OLSEN LINE (GSA CANADA)', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N'http://www.scanditours.com', NULL, 8837)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (886, N'Vonna', N'McDonald', N'BONAVENTURE TOURS', N'205-221 W Esplanade', N'N Vancouver', N'BC', N'V7M 3J3', N' ', N'6049907390', N'6049907394', N'info@bonaventuretours.com', N'http://www.bonaventuretours.com', N'PGY', 9323)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (887, N'Vonna', N'McDonald', N'BONAVENTURE TOURS - UK & IRELAND - CANAL BOAT CHARTERS', N'205-221 W Esplanade', N'N Vancouver', N'BC', N'V7M 3J3', N' ', N'6049907390', N'6049907394', N'info@bonaventuretours.com', N'http://www.bonaventuretours.com', N'PGY', 9323)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (888, N'Jim', N'Cohen', N'HOTELINK', N'1027 Yonge St', N'Toronto', N'ON', N'M4W 2K9', N' ', N'4169232003', N'4169442245', N'info@skylinkholidays.com', N' ', N'PGY', 9396)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (895, N'Mari', N'Abe', N'JTB INTERNATIONAL (CANADA) LTD', N'77 King St W', N'Toronto', N'ON', N'M5K 1E7', N' ', N'4163675824', N'4163674859', N'sales@jtbcnd.com', N' ', N'PGY', 9285)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (897, N'Mari', N'Abe', N'JAPAN RAIL PASS', N'77 King St W', N'Toronto', N'ON', N'M5K 1E7', N' ', N'4163675824', N'4163674859', N'sales@jtbcnd.com', N' ', N'PGY', 9285)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (899, N'Mari', N'Abe', N'SUNRISE TOURS', N'77 King St W', N'Toronto', N'ON', N'M5K 1E7', N' ', N'4163675824', N'4163674859', N'sales@jtbcnd.com', N' ', N'PGY', 9285)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (908, N'Eric', N'Douay', N'D-TOUR MARKETING', N'625 W Rene Levesque Blvd', N'Montreal', N'PQ', N'H3B 1R2', N' ', N'5143939585', N'5143939029', N'dtour.marketing@planetepc.qc.ca', N'http://www.dtourmarketing.com', N'PGY', 11163)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (909, N'Eric', N'Douay', N'RIVAGES CROISIERES THE CARIBBEAN INTIMATE YACHT CRUISES', N'625 W Rene Levesque Blvd', N'Montreal', N'PQ', N'H3B 1R2', N' ', N'5143939585', N'5143939029', N'dtour.marketing@planetepc.qc.ca', N'http://www.dtourmarketin', NULL, 11163)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (910, N'Eric', N'Douay', N'CONCORDE HOTELS (WORLDWIDE)', N'625 W Rene Levesque Blvd', N'Montreal', N'PQ', N'H3B 1R2', N' ', N'5143939585', N'5143939029', N'dtour.marketing@planetepc.qc.ca', N'http://www.dtourmarketing.com', N'PGY', 11163)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (911, N'Eric', N'Douay', N'PRIMEREVE ''ALL-SUITE'' HOTEL (Martinique)', N'625 W Rene Levesque Blvd', N'Montreal', N'PQ', N'H3B 1R2', N' ', N'5143939585', N'5143939029', N'dtour.marketing@planetepc.qc.ca', N'http://www.dtourmarketing.com', N'PGY', 11163)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (912, N'Eric', N'Douay', N'CHATEAUX & HOTELS DE FRANCE', N'625 W Rene Levesque Blvd', N'Montreal', N'PQ', N'H3B 1R2', N' ', N'5143939585', N'5143939029', N'dtour.marketing@planetepc.qc.ca', N'http://www.dtourmarketing.com', N'PGY', 11163)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (913, N'Michael', N'Merrithew', N'MERIT TRAVEL GROUP INC', N'145 King St W', N'Toronto', N'ON', N'M5H 1J8', N' ', N'4163688558', N'4169559869', N'golf@merit.ca', N' ', N'PGY', 11172)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (914, N'Michael', N'Merrithew', N'GOLF HOLIDAYS', N'145 King St W', N'Toronto', N'ON', N'M5H 1J8', N' ', N'4163688558', N'4169559869', N'golf@merit.ca', N' ', N'PGY', 11172)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (938, N'Hugo', N'Maggi', N'GRUPO TACA', N'1235 Bay St', N'Toronto', N'ON', N'M5R 3K4', N' ', N'4169682222', N'4169680363', N' ', N'http://www.grupotaca.com', N'PGY', 11174)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (939, NULL, NULL, N'LACSA AIRLINES OF COSTA RICA', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 11174)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (942, N'Loreen', N'Walter', N'DKM COACH LINES LTD', N'1908 Spruce Hill Rd', N'Pickering', N'ON', N'L1V 1S7', N' ', N'4164104680', N'4168313384', N'dkmcl@home.com', N'http://www.dkmtravel.com', N'PGY', 11237)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (943, NULL, NULL, N'CASINO DIRECT', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 11237)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (957, NULL, NULL, N'ALITOURS CAR RENTAL BY HERTZ', N' ', N' ', N' ', N' ', N' ', NULL, NULL, N' ', N' ', NULL, 11156)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (958, N'Tony', N'Veca', N'ALITOURS INTERNATIONAL INC.', N'792 St. Clair Ave W', N'Toronto', N'ON', N'M6C 1B6', N' ', N'4166537751', N'4166539010', N'alitours@baxter.net', N'http://www.alitours.com', N'PGY', 11156)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (1113, N'Cindy', N' Harris', N'TRANS SIBERIAN RAILWAY', N'1847 W 4th Ave', N'Vancouver', N'BC', N'V6J 1M4', N' ', N'6046061830', N'6047378854', N'adventure@freshtracks.com', N'http://www.goactivevacations.com', N'PGY', 11549)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (1114, N'Cindy', N' Harris', N'GO ACTIVE VACATIONS', N'1847 W 4th Ave', N'Vancouver', N'BC', N'V6J 1M4', N' ', N'6046061830', N'6047378854', N'team@goactivevacations.com', N'http://www.goactivevacations.com', N'PGY', 11549)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (1115, N'Cindy', N' Harris', N'FRESH TRACKS CANADA', N'1847 W 4th Ave', N'Vancouver', N'BC', N'V6J 1M4', N' ', N'6047378743', N'6047185110', N'adventure@freshtracks.com', N'http://www.goactivevacations.com', N'PGY', 11549)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (1126, N'Bashiruddin', N'Ahmed', N'SAAAI TRAVEL INC.', N'1410 Guy St', N'Montreal', N'PQ', N'H3H 2L7', N' ', N'5149311100', N'5149311200', N'saaaitravel@sympatico.ca', N' ', N'PGY', 12657)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (1127, N'Bashiruddin', N'Ahmed', N'BIMAN BANGLADESH AIRLINES', N'1410 Guy St', N'Montreal', N'PQ', N'H3H 2L7', N' ', N'5149311100', N'5149311200', N'saaaitravel@sympatico.ca', N' ', N'PGY', 12657)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (1128, N'Bashiruddin', N'Ahmed', N'SAAAI TRAVEL', N'1410 Guy St', N'Montreal', N'PQ', N'H3H 2L7', N' ', N'5149314070', N'5149339992', N'saaaitravel@sympatico.ca', N' ', N'PGY', 12657)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (1129, N'Bashiruddin', N'Ahmed', N'S.I. TRAVELS', N'1410 Guy St', N'Montreal', N'PQ', N'H3H 2L7', N' ', N'5149314070', N'5149339992', N'saaaitravel@sympatico.ca', N' ', N'PGY', 12657)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (1158, N'Kristin', N'Karbach', N'A & TIC SUPPORT INC.', N'80 John Stiver Cres', N'Markham', N'ON', N'L3R 9B3', N' ', N'9059439763', N'9059439764', N'elcotour-na@netcom.ca', N' ', N'PGY', 13596)
INSERT [dbo].[SupplierContacts] ([SupplierContactId], [SupConFirstName], [SupConLastName], [SupConCompany], [SupConAddress], [SupConCity], [SupConProv], [SupConPostal], [SupConCountry], [SupConBusPhone], [SupConFax], [SupConEmail], [SupConURL], [AffiliationId], [SupplierId]) VALUES (1159, N'Kristin', N'Karbach', N'ELCOTOUR - BRAZIL TOUR SPECIALISTS', N'80 John Stiver Cres', N'Markham', N'ON', N'L3R 9B3', N' ', N'9059439763', N'9059439764', N'elcotour-na@netcom.ca', N' ', N'PGY', 13596)
/****** Object:  Table [dbo].[Products_Suppliers]    Script Date: 01/09/2015 09:37:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products_Suppliers](
	[ProductSupplierId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[SupplierId] [int] NULL,
 CONSTRAINT [aaaaaProducts_Suppliers_PK] PRIMARY KEY NONCLUSTERED 
(
	[ProductSupplierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Product Supplier ID] ON [dbo].[Products_Suppliers] 
(
	[SupplierId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ProductId] ON [dbo].[Products_Suppliers] 
(
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ProductsProducts_Suppliers1] ON [dbo].[Products_Suppliers] 
(
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ProductSupplierId] ON [dbo].[Products_Suppliers] 
(
	[ProductSupplierId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [SuppliersProducts_Suppliers1] ON [dbo].[Products_Suppliers] 
(
	[SupplierId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Products_Suppliers] ON
INSERT INTO products_suppliers (ProductSupplierId, ProductId, SupplierId) VALUES
(1, 1, 5492),
(2, 1, 6505),
(3, 8, 796),
(4, 1, 4196),
(6, 8, 1040),
(7, 1, 3576),
(8, 3, 845),
(9, 7, 828),
(10, 8, 5777),
(11, 8, 5827),
(12, 5, 3273),
(13, 1, 80),
(14, 8, 9396),
(15, 8, 3589),
(16, 1, 69),
(19, 1, 3376),
(20, 3, 323),
(23, 1, 3549),
(24, 5, 1918),
(25, 3, 11156),
(26, 8, 8837),
(28, 8, 8089),
(29, 1, 1028),
(30, 1, 2466),
(31, 5, 1406),
(32, 3, 1416),
(33, 5, 13596),
(34, 1, 9323),
(35, 5, 11237),
(36, 8, 9785),
(37, 5, 11163),
(39, 9, 11172),
(40, 8, 9285),
(41, 5, 3622),
(42, 5, 9323),
(43, 1, 1766),
(44, 1, 3212),
(45, 9, 11174),
(46, 8, 3600),
(47, 9, 11160),
(48, 8, 11549),
(49, 4, 2827),
(50, 9, 12657),
(51, 8, 7377),
(52, 5, 6550),
(53, 4, 1634),
(54, 8, 2140),
(55, 3, 317),
(56, 1, 1205),
(57, 8, 3633),
(58, 2, 6873),
(59, 1, 7377),
(60, 5, 7244),
(61, 3, 2938),
(63, 2, 5081),
(64, 1, 3119),
(65, 9, 2998),
(66, 8, 3576),
(67, 8, 2592),
(68, 4, 100),
(69, 9, 2987),
(70, 4, 1005),
(71, 4, 908),
(72, 1, 5796),
(73, 10, 2386),
(74, 1, 3650),
(75, 4, 1425),
(76, 8, 6346),
(78, 1, 1685),
(79, 2, 2588),
(80, 6, 1620),
(81, 4, 1542),
(82, 5, 9766),
(83, 5, 5228),
(84, 6, 9396),
(87, 1, 1859),
(90, 1, 1713),
(93, 4, 3650)
SET IDENTITY_INSERT [dbo].[Products_Suppliers] OFF
/****** Object:  Table [dbo].[Agents]    Script Date: 01/09/2015 09:37:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agents](
	[AgentId] [int] IDENTITY(1,1) NOT NULL,
	[AgtFirstName] [nvarchar](20) NULL,
	[AgtMiddleInitial] [nvarchar](5) NULL,
	[AgtLastName] [nvarchar](20) NULL,
	[AgtBusPhone] [nvarchar](20) NULL,
	[AgtEmail] [nvarchar](50) NULL,
	[AgtPosition] [nvarchar](20) NULL,
	[AgencyId] [int] NULL,
	[AgtUsername] [nvarchar](20) NULL,
	[AgtPassword] [nvarchar](25) NULL,
 CONSTRAINT [PK_Agents] PRIMARY KEY CLUSTERED 
(
	[AgentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Agents] ON
INSERT INTO agents (AgentId, AgtFirstName, AgtMiddleInitial, AgtLastName, AgtBusPhone, AgtEmail, AgtPosition, AgencyId, AgtUsername, AgtPassword) VALUES
(1, 'Janet', NULL, 'Delton', '(403) 210-7801', 'janet.delton@travelexperts.com', 'Senior Agent', 1, '11janet', 'gah21'),
(2, 'Judy', NULL, 'Lisle', '(403) 210-7802', 'judy.lisle@travelexperts.com', 'Intermediate Agent', 1, '21judy', 'tea19'),
(3, 'Dennis', 'C.', 'Reynolds', '(403) 210-7843', 'dennis.reynolds@travelexperts.com', 'Junior Agent', 1, '31dennis', 'jle89'),
(4, 'John', NULL, 'Coville', '(403) 210-7823', 'john.coville@travelexperts.com', 'Intermediate Agent', 1, '41coville', 'twa27'),
(5, 'Fred', 'J', 'Smith', '(403) 210-5555', 'fred@travelexperts.com', 'Junior Agent', 2, '52fred', 'qmk01'),
(6, 'Bruce', 'J.', 'Dixon', '(403) 210-7867', 'bruce.dixon@travelexperts.com', 'Intermediate Agent', 2, '62bruce', 'fcs42'),
(7, 'Beverly', 'S.', 'Jones', '(403) 210-7812', 'beverly.jones@travelexperts.com', 'Intermediate Agent', 1, '71beverly', 'kju49'),
(8, 'Jane', NULL, 'Merrill', '(403) 210-7868', 'jane.merrill@travelexperts.com', 'Senior Agent', 2, '82merrill', 'gyi79'),
(9, 'Brian', 'S.', 'Peterson', '(403) 210-7833', 'brian.peterson@travelexperts.com', 'Junior Agent', 2, '92brian', 'bvc15')
SET IDENTITY_INSERT [dbo].[Agents] OFF
/****** Object:  Table [dbo].[Packages_Products_Suppliers]    Script Date: 01/09/2015 09:37:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Packages_Products_Suppliers](
	[PackageId] [int] NOT NULL,
	[ProductSupplierId] [int] NOT NULL,
 CONSTRAINT [aaaaaPackages_Products_Suppliers_PK] PRIMARY KEY NONCLUSTERED 
(
	[PackageId] ASC,
	[ProductSupplierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [PackagesPackages_Products_Suppliers] ON [dbo].[Packages_Products_Suppliers] 
(
	[PackageId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Products_SuppliersPackages_Products_Suppliers] ON [dbo].[Packages_Products_Suppliers] 
(
	[ProductSupplierId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ProductSupplierId] ON [dbo].[Packages_Products_Suppliers] 
(
	[ProductSupplierId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT INTO packages_products_suppliers (PackageId, ProductSupplierId) VALUES
(1, 65),
(1, 93),
(2, 32),
(2, 33),
(2, 90),
(3, 28),
(3, 82),
(3, 87),
(4, 9),
(4, 65),
(4, 84)
/****** Object:  UserDefinedFunction [dbo].[Find duplicates for Products_Suppliers]    Script Date: 01/09/2015 09:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Find duplicates for Products_Suppliers] () 
RETURNS TABLE 
AS RETURN (SELECT TOP 100 PERCENT Products_Suppliers.ProductId, Products_Suppliers.SupplierId, Products_Suppliers.ProductSupplierId
FROM Products_Suppliers
WHERE (((Products_Suppliers.ProductId) In (SELECT ProductId FROM Products_Suppliers As Tmp GROUP BY ProductId,SupplierId HAVING count(*)>1  And SupplierId = Products_Suppliers.SupplierId)))
ORDER BY Products_Suppliers.ProductId, Products_Suppliers.SupplierId)
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 01/09/2015 09:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[CustFirstName] [nvarchar](25) NOT NULL,
	[CustLastName] [nvarchar](25) NOT NULL,
	[CustAddress] [nvarchar](75) NOT NULL,
	[CustCity] [nvarchar](50) NOT NULL,
	[CustProv] [nvarchar](2) NOT NULL,
	[CustPostal] [nvarchar](7) NOT NULL,
	[CustCountry] [nvarchar](25) NULL,
	[CustHomePhone] [nvarchar](20) NULL,
	[CustBusPhone] [nvarchar](20) NOT NULL,
	[CustEmail] [nvarchar](50) NOT NULL,
	[AgentId] [int] NULL,
	[CustUsername] [nvarchar](30) NULL,
	[CustPassword] [nvarchar](25) NULL,
 CONSTRAINT [aaaaaCustomers_PK] PRIMARY KEY NONCLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [EmployeesCustomers] ON [dbo].[Customers] 
(
	[AgentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customers] ON
INSERT INTO customers (CustomerId, CustFirstName, CustLastName, CustAddress, CustCity, CustProv, CustPostal, CustCountry, CustHomePhone, CustBusPhone, CustEmail, AgentId, CustUsername, CustPassword) VALUES
(104, 'Laetia', 'Enison', '144-61 87th Ave, NE', 'Edmonton', 'AB', 'T2J 6B6', 'Canada', '4032791223', '4032557865', '                                                  ', 4, 'laet104', 'odse206'),
(105, 'Angel', 'Moskowitz', '320 John St., NE', 'Calgary', 'AB', 'T2J 7E3', 'Canada', '4032794228', '4036409874', 'amoskowitz@home.com                               ', 3, 'ange105', 'csdg845'),
(106, 'Judith', 'Olvsade', '29 Elmwood Ave.,', 'Calgary', 'AB', 'T2Z 3M9', 'Canada', '4032795652', '4036861598', 'jolvsade@aol.com                                  ', 1, 'judi106', 'sdhb613'),
(107, 'Catherine', 'Mierzwa', '22-70 41st St.,NW', 'Calgary', 'AB', 'T2Z 2Z9', 'Canada', '4032796878', '4036404563', 'cmierzwa@msn.com                                  ', 4, 'cath107', 'mftw792'),
(108, 'Judy', 'Sethi', '63 Stratton Hall, SW', 'Calgary', 'AB', 'T1Y 6N4', 'Canada', '4032795111', '4036204789', 'judysehti@home.com                                ', 7, 'judy108', 'khss791'),
(109, 'Larry', 'Walter', '38 Bay 26th ST. #2A, NE', 'Calgary', 'AB', 'T2J 6B6', 'Canada', '4032793254', '4032845588', 'lwalter@aol.com                                   ', 4, 'larr109', 'knbd144'),
(114, 'Winsome', 'Laporte', '268 E.3rd St, SW', 'Calgary', 'AB', 'T1Y 6N4', 'Canada', '4032691125', '4032844565', '                                                  ', 8, 'wins', 'lkjb487'),
(117, 'Nancy', 'Kuehn', '44-255 9th St., SW', 'Calgary', 'AB', 'T1Y 6N5', 'Canada', '4032693965', '4032843211', '                                                  ', 6, 'nanc117', 'lgdr794'),
(118, 'Hiedi', 'Lopez', '168 Rowayton Ave, NW', 'Calgary', 'AB', 'T3A 4ZG', 'Canada', '4032699856', '4035901587', 'hlopez@aol.com                                    ', 4, 'hied118', 'ifsy765'),
(119, 'Mardig', 'Abdou', '160-04 32nd Ave., SW', 'Calgary', 'AB', 'T2P 2G7', 'Canada', '4032691429', '4032251952', '                                                  ', 9, 'mard119', 'bdew976'),
(120, 'Ralph', 'Alexander', '2054 73rd St, SW', 'Calgary', 'AB', 'T2P 2G7', 'Canada', '4032691634', '4032256547', '                                                  ', 1, 'ralp120', 'ygbc561'),
(121, 'Sean', 'Pineda', '3 Salem Rd., NW', 'Calgary', 'AB', 'T2K 3E3', 'Canada', '4032691954', '4036864444', 'spineda@hotmail.com                               ', 3, 'sean121', 'hfgs791'),
(122, 'Julita', 'Lippen', '51-76 VanKleeck St., NW', 'Calgary', 'AB', 'T2K 6C5', 'Canada', '4032551956', '4035901478', 'jlippen@cadvision.co                              ', 4, 'juli122', 'udsa654'),
(123, 'Pierre', 'Radicola', '322 Atkins Ave., SE', 'Calgary', 'AB', 'T3G 2C6', 'Canada', '', '4036867536', 'pradicola@home.com                                ', 8, 'pier123', 'jhfs557'),
(127, 'Gary', 'Aung', '135-32 Louis Blvd, NE', 'Calgary', 'AB', '', 'Canada', '4032807858', '4037501587', '                                                  ', 9, 'gary127', 'bxdw915'),
(128, 'Jeff', 'Runyan', '109-15 Queens Blvd., NE', 'Calgary', 'AB', 'T2V 2K6', 'Canada', '4032809635', '4036201122', 'jrunyan@aol.com                                   ', 4, 'jeff128', 'hjex538'),
(130, 'Lula', 'Oates', '11A Emory St., NE', 'Calgary', 'AB', 'T3E 3Z4', 'Canada', '4032439653', '4036861587', 'loates@aol.com                                    ', 9, 'lula130', 'uyva421'),
(133, 'James', 'Reed', '109-621 96th St, NE', 'Calgary', 'AB', 'T3E 4A1', 'Canada', '4032432358', '4037201155', 'jreed@aol.com                                     ', 2, 'jame133', 'nqwe762'),
(135, 'Michellexxxxxxxxxxxxxx', 'Masser', '379 Ovington Ave, NE', 'Calgary', 'AB', 'T2J 2S9', 'Canada', '4032441586', '4035908522', 'mmasser@aol.com                                   ', 6, 'mich135', 'pnda168'),
(138, 'John', 'Smith', '45 Plaza St. West #2D, NE', 'Calgary', 'AB', 'T3E 5C7', 'Canada', '4032449653', '4032837896', 'johnSmith@hotmail.co                              ', 7, 'john138', 'shfv167'),
(139, 'Angelo', 'Garshman', '82 Western Ave., NE', 'Calgary', 'AB', 'T3E 5C8', 'Canada', '4032259966', '4032696541', '                                                  ', 3, 'ange139', 'syxf416'),
(140, 'Derrick', 'Baltazar', '9111 Church Ave. #3N, NE', 'Calgary', 'AB', 'T3E 5C9', 'Canada', '4032255231', '4037502547', '                                                  ', 6, 'derr140', 'onfx389'),
(141, 'Robert', 'Boyd', '96-04 57th Ave #12A, NE', 'Calgary', 'AB', 'T3E 5C5', 'Canada', '4032255647', '4037509512', '                                                  ', 3, 'robe141', 'owex476'),
(142, 'Monica', 'Waldman', '257 Depot Rd., NE', 'Calgary', 'AB', 'T2J 6P3', 'Canada', '4032255629', '4032844566', 'mwaldman@aol.com                                  ', 2, 'moni142', 'wkip556'),
(143, 'Gerard', 'Biers', '205 19th St., NE', 'Calgary', 'AB', 'T2J 6B6', 'Canada', '4032251952', '4037506578', '                                                  ', 8, 'gera143', 'aeqt178'),
(144, 'z', 'z', 'z', 'z', 'Z', 'Z1Z1Z1', 'z', '5555555555', '2222222222', 'z@z.zz', 1, 'zzzz144', 'wsdw476')
SET IDENTITY_INSERT [dbo].[Customers] OFF
/****** Object:  Table [dbo].[Customers_Rewards]    Script Date: 01/09/2015 09:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers_Rewards](
	[CustomerId] [int] NOT NULL,
	[RewardId] [int] NOT NULL,
	[RwdNumber] [nvarchar](25) NOT NULL,
 CONSTRAINT [aaaaaCustomers_Rewards_PK] PRIMARY KEY NONCLUSTERED 
(
	[CustomerId] ASC,
	[RewardId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [CustomersCustomers_Rewards] ON [dbo].[Customers_Rewards] 
(
	[CustomerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [RewardsCustomers_Rewards] ON [dbo].[Customers_Rewards] 
(
	[RewardId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
INSERT INTO customers_rewards (CustomerId, RewardId, RwdNumber) VALUES
(104, 1, '123456 4322'),
(104, 2, '5435 678 CF'),
(105, 2, '1435 678 CA'),
(106, 1, '123456 4322'),
(106, 4, '4643 23 5435'),
(107, 2, '5735 638 CF'),
(107, 5, '2354 4583 63A'),
(108, 1, '129456 4322'),
(109, 4, '4343 23 5435'),
(109, 5, '2784 4553 63F'),
(114, 2, '5875 678 CG'),
(117, 1, '123456 4322'),
(118, 3, 'FG2343 785'),
(123, 2, '5435 678 CF'),
(127, 1, '113526 4322'),
(138, 1, '124256 4322'),
(140, 4, '4343 23 5435'),
(142, 1, '123456 4322'),
(142, 3, 'FG2343 785'),
(142, 5, '2254 4553 63Z')
/****** Object:  Table [dbo].[CreditCards]    Script Date: 01/09/2015 09:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CreditCards](
	[CreditCardId] [int] IDENTITY(1,1) NOT NULL,
	[CCName] [nvarchar](10) NOT NULL,
	[CCNumber] [nvarchar](50) NOT NULL,
	[CCExpiry] [datetime] NOT NULL,
	[CustomerId] [int] NOT NULL,
 CONSTRAINT [aaaaaCreditCards_PK] PRIMARY KEY NONCLUSTERED 
(
	[CreditCardId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [CustomersCreditCards] ON [dbo].[CreditCards] 
(
	[CustomerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CreditCards] ON
INSERT [dbo].[CreditCards] ([CreditCardId], [CCName], [CCNumber], [CCExpiry], [CustomerId]) VALUES (2, N'AMEX', N'12342324248393', CAST(0x0000935000000000 AS DateTime), 123)
INSERT [dbo].[CreditCards] ([CreditCardId], [CCName], [CCNumber], [CCExpiry], [CustomerId]) VALUES (26, N'AMEX', N'33454212345651', CAST(0x0000940300000000 AS DateTime), 127)
INSERT [dbo].[CreditCards] ([CreditCardId], [CCName], [CCNumber], [CCExpiry], [CustomerId]) VALUES (28, N'AMEX', N'3422343212433430', CAST(0x000093BB00000000 AS DateTime), 107)
INSERT [dbo].[CreditCards] ([CreditCardId], [CCName], [CCNumber], [CCExpiry], [CustomerId]) VALUES (30, N'AMEX', N'34458998784345', CAST(0x0000927000000000 AS DateTime), 140)
INSERT [dbo].[CreditCards] ([CreditCardId], [CCName], [CCNumber], [CCExpiry], [CustomerId]) VALUES (31, N'AMEX', N'345433789979389', CAST(0x00008E7300000000 AS DateTime), 130)
INSERT [dbo].[CreditCards] ([CreditCardId], [CCName], [CCNumber], [CCExpiry], [CustomerId]) VALUES (41, N'AMEX', N'3522354387984530', CAST(0x0000922600000000 AS DateTime), 106)
INSERT [dbo].[CreditCards] ([CreditCardId], [CCName], [CCNumber], [CCExpiry], [CustomerId]) VALUES (63, N'AMEX', N'632456487984533', CAST(0x000092F500000000 AS DateTime), 142)
INSERT [dbo].[CreditCards] ([CreditCardId], [CCName], [CCNumber], [CCExpiry], [CustomerId]) VALUES (69, N'AMEX', N'78789007977999', CAST(0x0000927000000000 AS DateTime), 104)
INSERT [dbo].[CreditCards] ([CreditCardId], [CCName], [CCNumber], [CCExpiry], [CustomerId]) VALUES (91, N'AMEX', N'904883289756439', CAST(0x0000919900000000 AS DateTime), 133)
INSERT [dbo].[CreditCards] ([CreditCardId], [CCName], [CCNumber], [CCExpiry], [CustomerId]) VALUES (99, N'Diners', N'12093458976902', CAST(0x000092B800000000 AS DateTime), 143)
INSERT [dbo].[CreditCards] ([CreditCardId], [CCName], [CCNumber], [CCExpiry], [CustomerId]) VALUES (123, N'Diners', N'24348343482482', CAST(0x0000943C00000000 AS DateTime), 109)
INSERT [dbo].[CreditCards] ([CreditCardId], [CCName], [CCNumber], [CCExpiry], [CustomerId]) VALUES (141, N'Diners', N'3749234924723790', CAST(0x0000936C00000000 AS DateTime), 128)
INSERT [dbo].[CreditCards] ([CreditCardId], [CCName], [CCNumber], [CCExpiry], [CustomerId]) VALUES (163, N'Diners', N'6788922940392940', CAST(0x000092A300000000 AS DateTime), 139)
INSERT [dbo].[CreditCards] ([CreditCardId], [CCName], [CCNumber], [CCExpiry], [CustomerId]) VALUES (167, N'Diners', N'699834387984533', CAST(0x000092F700000000 AS DateTime), 118)
INSERT [dbo].[CreditCards] ([CreditCardId], [CCName], [CCNumber], [CCExpiry], [CustomerId]) VALUES (169, N'Diners', N'7482794729742320', CAST(0x000091EC00000000 AS DateTime), 117)
INSERT [dbo].[CreditCards] ([CreditCardId], [CCName], [CCNumber], [CCExpiry], [CustomerId]) VALUES (185, N'Diners', N'8901128935238970', CAST(0x00008E6300000000 AS DateTime), 141)
INSERT [dbo].[CreditCards] ([CreditCardId], [CCName], [CCNumber], [CCExpiry], [CustomerId]) VALUES (201, N'MC', N'3424345432894320', CAST(0x0000919C00000000 AS DateTime), 120)
INSERT [dbo].[CreditCards] ([CreditCardId], [CCName], [CCNumber], [CCExpiry], [CustomerId]) VALUES (230, N'VISA', N'12122387984533', CAST(0x0000944E00000000 AS DateTime), 121)
INSERT [dbo].[CreditCards] ([CreditCardId], [CCName], [CCNumber], [CCExpiry], [CustomerId]) VALUES (239, N'VISA', N'2311240543980120', CAST(0x000092B900000000 AS DateTime), 114)
INSERT [dbo].[CreditCards] ([CreditCardId], [CCName], [CCNumber], [CCExpiry], [CustomerId]) VALUES (243, N'VISA', N'23958389028923', CAST(0x0000927000000000 AS DateTime), 119)
INSERT [dbo].[CreditCards] ([CreditCardId], [CCName], [CCNumber], [CCExpiry], [CustomerId]) VALUES (252, N'VISA', N'3456683343353430', CAST(0x000092B400000000 AS DateTime), 135)
INSERT [dbo].[CreditCards] ([CreditCardId], [CCName], [CCNumber], [CCExpiry], [CustomerId]) VALUES (272, N'VISA', N'6543254233444530', CAST(0x0000919C00000000 AS DateTime), 122)
INSERT [dbo].[CreditCards] ([CreditCardId], [CCName], [CCNumber], [CCExpiry], [CustomerId]) VALUES (279, N'VISA', N'78789007977999', CAST(0x0000927000000000 AS DateTime), 105)
SET IDENTITY_INSERT [dbo].[CreditCards] OFF
/****** Object:  Table [dbo].[Bookings]    Script Date: 01/09/2015 09:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bookings](
	[BookingId] [int] IDENTITY(1,1) NOT NULL,
	[BookingDate] [datetime] NULL,
	[BookingNo] [nvarchar](50) NULL,
	[TravelerCount] [float] NULL,
	[CustomerId] [int] NULL,
	[TripTypeId] [nvarchar](1) NULL,
	[PackageId] [int] NULL,
 CONSTRAINT [aaaaaBookings_PK] PRIMARY KEY NONCLUSTERED 
(
	[BookingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [BookingsCustomerId] ON [dbo].[Bookings] 
(
	[CustomerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [CustomersBookings] ON [dbo].[Bookings] 
(
	[CustomerId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [PackageId] ON [dbo].[Bookings] 
(
	[PackageId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [PackagesBookings] ON [dbo].[Bookings] 
(
	[PackageId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [TripTypesBookings] ON [dbo].[Bookings] 
(
	[TripTypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Bookings] ON
INSERT INTO bookings (BookingId, BookingDate, BookingNo, TravelerCount, CustomerId, TripTypeId, PackageId) VALUES
(11, '2016-01-31 00:00:00', 'DFS3', 1, 143, 'B', NULL),
(15, '2016-03-05 00:00:00', 'WDR898', 1, 135, 'L', NULL),
(17, '2016-03-06 00:00:00', 'FES3', 1, 143, 'B', NULL),
(34, '2016-03-24 00:00:00', 'S935', 2, 138, 'G', NULL),
(46, '2016-03-30 00:00:00', 'SKJ329', 2, 133, 'L', NULL),
(49, '2016-03-31 00:00:00', 'S943', 2, 114, 'G', NULL),
(52, '2016-04-01 00:00:00', 'S934', 2, 133, 'B', NULL),
(55, '2016-04-03 00:00:00', 'SDFJ3982', 2, 133, 'G', NULL),
(57, '2016-08-08 00:00:00', 'FJKD344', 2, 130, 'L', NULL),
(62, '2016-11-25 00:00:00', 'SCR39', 2, 130, 'G', NULL),
(65, '2016-12-17 00:00:00', 'HK777', 1, 143, 'L', NULL),
(73, '2016-01-27 00:00:00', 'SW34', 1, 143, 'L', NULL),
(79, '2016-02-12 00:00:00', 'MKI333', 2, 120, 'G', NULL),
(80, '2016-02-13 00:00:00', 'MKI334', 2, 122, 'L', NULL),
(84, '2016-02-15 00:00:00', 'KK890', 2, 120, 'B', NULL),
(89, '2016-03-03 00:00:00', 'DF344', 1, 109, 'L', NULL),
(98, '2016-03-22 00:00:00', 'JI8787', 1, 143, 'B', NULL),
(108, '2016-04-04 00:00:00', 'MKI338', 2, 138, 'L', NULL),
(124, '2016-04-29 00:00:00', 'SJKDK89', 2, 114, 'G', NULL),
(138, '2016-05-28 00:00:00', 'HJK78', 1, 109, 'L', NULL),
(141, '2016-06-01 00:00:00', 'KL888', 1, 143, 'B', NULL),
(148, '2016-06-28 00:00:00', 'LJ888', 2, 133, 'B', NULL),
(152, '2016-08-15 00:00:00', 'WS343', 2, 130, 'G', NULL),
(156, '2016-09-23 00:00:00', 'JKKO9', 1, 143, 'B', NULL),
(161, '2016-09-27 00:00:00', 'SG4SD', 1, 105, 'B', NULL),
(162, '2016-09-28 00:00:00', 'GFRER4', 1, 109, 'B', NULL),
(172, '2016-10-03 00:00:00', 'FGFD64', 1, 104, 'L', NULL),
(187, '2015-01-01 00:00:00', 'ZAQ344', 1, 109, 'B', NULL),
(199, '2015-01-15 00:00:00', 'JSD39', 1, 143, 'L', NULL),
(204, '2015-01-18 00:00:00', 'XVV67', 1, 141, 'L', NULL),
(220, '1999-01-29 00:00:00', 'BCV5', 1, 127, 'L', NULL),
(226, '1999-02-19 00:00:00', 'DS3DF', 1, 143, 'B', NULL),
(228, '1999-02-20 00:00:00', 'KF83', 1, 119, 'B', NULL),
(263, '1999-03-17 00:00:00', 'CBB34', 2, 120, 'B', NULL),
(264, '1999-03-18 00:00:00', 'SDF890', 1, 135, 'L', NULL),
(266, '1999-03-18 00:00:00', 'AZX24', 2, 135, 'B', NULL),
(273, '1999-03-21 00:00:00', 'DGG33', 2, 122, 'B', NULL),
(287, '1999-04-15 00:00:00', '7898797', 1, 141, 'L', NULL),
(305, '1999-04-21 00:00:00', 'XC2', 1, 127, 'B', NULL),
(312, '1999-04-28 00:00:00', 'SDSD33', 1, 130, 'L', NULL),
(313, '1999-04-29 00:00:00', 'SD46', 1, 120, 'B', NULL),
(322, '1999-05-27 00:00:00', 'FJSDKL833', 1, 143, 'B', NULL),
(325, '1999-06-02 00:00:00', 'HJJK77', 1, 121, 'B', NULL),
(369, '1999-08-18 00:00:00', 'KJ392', 1, 104, 'L', NULL),
(375, '1999-08-21 00:00:00', 'SDJF382', 1, 104, 'L', NULL),
(381, '1999-08-23 00:00:00', 'JDKJF8343', 1, 104, 'L', NULL),
(382, '1999-08-23 00:00:00', 'FDJ93', 1, 119, 'B', NULL),
(384, '1999-08-24 00:00:00', 'JHJH7', 1, 119, 'L', NULL),
(409, '1999-09-07 00:00:00', 'FD53767', 2, 139, 'B', NULL),
(410, '1999-09-07 00:00:00', 'JHK7', 2, 140, 'B', NULL),
(425, '1999-09-12 00:00:00', 'FG879', 4, 140, 'G', NULL),
(442, '1999-09-21 00:00:00', 'S53423', 1, 104, 'L', NULL),
(443, '1999-09-21 00:00:00', 'T345', 1, 119, 'L', NULL),
(449, '1999-09-23 00:00:00', 'RD4EW5', 1, 140, 'B', NULL),
(482, '1999-10-03 00:00:00', 'SKFJ32', 1, 127, 'L', NULL),
(484, '1999-10-04 00:00:00', 'GDEWR3', 1, 106, 'L', NULL),
(488, '1999-10-05 00:00:00', 'JDFS39', 1, 106, 'B', NULL),
(489, '1999-10-05 00:00:00', 'SDR54', 1, 127, 'L', NULL),
(510, '1999-10-19 00:00:00', 'HKK7', 1, 140, 'L', NULL),
(511, '1999-10-20 00:00:00', 'FJK3892', 1, 141, 'L', NULL),
(512, '1999-10-20 00:00:00', 'SG444', 1, 141, 'L', NULL),
(517, '1999-10-21 00:00:00', 'FSDW2', 1, 140, 'L', NULL),
(529, '1999-10-28 00:00:00', 'FKJD32', 1, 119, 'L', NULL),
(546, '1999-11-27 00:00:00', 'NKU7', 1, 140, 'B', NULL),
(553, '1999-11-29 00:00:00', 'KKU7', 1, 109, 'B', NULL),
(594, '1999-12-06 00:00:00', 'HNN77', 1, 119, 'L', NULL),
(596, '1999-12-12 00:00:00', 'FDKJ898', 1, 106, 'L', NULL),
(598, '1999-12-13 00:00:00', 'FDSK3', 1, 121, 'L', NULL),
(600, '1999-12-14 00:00:00', 'ILJ878', 2, 106, 'B', NULL),
(604, '1999-12-15 00:00:00', 'KFKESJK5', 1, 104, 'B', NULL),
(605, '1999-12-15 00:00:00', 'SDJ89342', 1, 140, 'B', NULL),
(609, '1999-12-16 00:00:00', 'KJLK89', 1, 104, 'L', NULL),
(613, '1999-12-17 00:00:00', 'FD2323', 1, 104, 'L', NULL),
(614, '1999-12-17 00:00:00', 'FGG66', 2, 104, 'L', NULL),
(618, '1999-12-18 00:00:00', 'CMFJ39', 1, 119, 'L', NULL),
(622, '1999-12-19 00:00:00', 'JJJ77', 1, 106, 'L', NULL),
(631, '1999-12-22 00:00:00', 'MM78I879', 1, 130, 'L', NULL),
(665, '2000-01-16 00:00:00', 'FDSK83', 1, 140, 'B', NULL),
(676, '2000-01-18 00:00:00', 'SJK5', 1, 104, 'L', NULL),
(677, '2000-01-18 00:00:00', 'KJKJ88', 1, 140, 'B', NULL),
(682, '2000-01-19 00:00:00', 'GF887', 3, 140, 'G', NULL),
(709, '2000-01-25 00:00:00', 'MNHY15', 1, 104, 'L', NULL),
(714, '2000-01-26 00:00:00', 'KKJ91', 1, 140, 'L', NULL),
(722, '2000-01-27 00:00:00', 'FDJS32', 1, 119, 'L', NULL),
(740, '2000-01-29 00:00:00', 'MNHY19', 1, 119, 'B', NULL),
(776, '2000-02-02 00:00:00', '345435F', 2, 109, 'L', NULL),
(777, '2000-02-02 00:00:00', 'AS54676', 2, 143, 'B', NULL),
(798, '2000-02-04 00:00:00', 'A7667900', 1, 143, 'L', NULL),
(805, '2000-02-05 00:00:00', '456546DFD', 1, 143, 'L', NULL),
(826, '2000-02-20 00:00:00', '62323', 4, 128, 'G', NULL),
(827, '2000-02-20 00:00:00', 'D869990', 2, 128, 'G', NULL),
(838, '2000-02-25 00:00:00', 'GFF84', 1, 141, 'B', NULL),
(852, '2000-02-29 00:00:00', 'GFF79', 1, 127, 'B', NULL),
(857, '2000-03-01 00:00:00', 'SFDFSD54', 2, 127, 'B', NULL),
(866, '2000-03-02 00:00:00', 'SFDFSD53', 1, 127, 'L', NULL),
(876, '2000-03-03 00:00:00', 'SFDFSD55', 1, 127, 'B', NULL),
(880, '2000-03-04 00:00:00', 'GFF85', 1, 141, 'B', NULL),
(884, '2000-03-05 00:00:00', 'GFF86', 2, 141, 'B', NULL),
(899, '2000-03-15 00:00:00', 'QERQ1322', 2, 121, 'B', NULL),
(902, '2000-03-17 00:00:00', 'D569767', 2, 121, 'B', NULL),
(910, '2000-03-19 00:00:00', 'GFF102', 1, 114, 'B', NULL),
(939, '2000-03-25 00:00:00', '86431RT', 2, 120, 'B', NULL),
(943, '2000-03-26 00:00:00', '34265Q67L', 2, 140, 'L', NULL),
(960, '2000-03-30 00:00:00', 'GFF105', 1, 122, 'B', NULL),
(973, '2000-04-01 00:00:00', 'GFF104', 2, 133, 'B', NULL),
(988, '2000-04-04 00:00:00', '76584847', 1, 139, 'L', NULL),
(989, '2000-04-04 00:00:00', '4656757Q', 1, 139, 'B', NULL),
(1001, '2000-04-07 00:00:00', '53165616', 2, 133, 'B', NULL),
(1034, '2000-04-19 00:00:00', 'F789900', 2, 105, 'G', NULL),
(1047, '2000-04-20 00:00:00', '234244S', 2, 105, 'B', NULL),
(1067, '2000-04-22 00:00:00', '4325434RE', 2, 117, 'B', NULL),
(1073, '2000-04-23 00:00:00', '68798890', 2, 117, 'L', NULL),
(1075, '2000-04-23 00:00:00', '78755U', 2, 123, 'L', NULL),
(1089, '2000-04-24 00:00:00', 'T6657D', 2, 142, 'B', NULL),
(1105, '2000-04-26 00:00:00', '53165765R', 1, 119, 'B', NULL),
(1141, '2000-05-04 00:00:00', '35653B', 1, 120, 'L', NULL),
(1165, '2000-05-25 00:00:00', 'LJJ113', 1, 127, 'L', NULL),
(1178, '2000-05-30 00:00:00', 'LJJ108', 1, 118, 'B', NULL),
(1187, '2000-06-14 00:00:00', 'R4777FG', 1, 143, 'L', NULL),
(1192, '2000-06-28 00:00:00', 'LJJ115', 1, 109, 'B', NULL),
(1194, '2000-06-29 00:00:00', 'LJJ114', 1, 141, 'B', NULL),
(1202, '2000-07-14 00:00:00', 'LJJ126', 1, 135, 'B', NULL),
(1206, '2000-07-15 00:00:00', 'LJJ131', 1, 121, 'B', NULL),
(1207, '2000-07-15 00:00:00', 'FJS3492', 2, 135, 'L', NULL),
(1228, '2000-08-01 00:00:00', 'LJJ120', 1, 106, 'B', NULL),
(1230, '2000-08-03 00:00:00', 'LJJ121', 1, 107, 'B', NULL),
(1240, '2000-08-14 00:00:00', 'FSDFJ357', 1, 127, 'B', NULL),
(1248, '2000-08-17 00:00:00', 'FSDFJ358', 1, 141, 'L', NULL),
(1251, '2000-09-09 00:00:00', 'FSDFJ349', 1, 130, 'B', NULL),
(1254, '2000-09-12 00:00:00', 'KJFKD89', 1, 130, 'L', NULL),
(1270, '2000-10-17 00:00:00', 'FSD82937', 1, 130, 'B', NULL),
(1293, '2000-10-22 00:00:00', 'KJLK89234', 1, 130, 'L', NULL),
(1301, '2000-11-21 00:00:00', 'FSD82940', 1, 127, 'B', NULL),
(1302, '2000-11-22 00:00:00', 'FSD82941', 1, 141, 'B', NULL),
(1303, '2000-11-23 00:00:00', 'KJk934', 1, 127, 'B', NULL)
SET IDENTITY_INSERT [dbo].[Bookings] OFF
/****** Object:  UserDefinedFunction [dbo].[Find duplicates for Bookings]    Script Date: 01/09/2015 09:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Find duplicates for Bookings] () 
RETURNS TABLE 
AS RETURN (SELECT TOP 100 PERCENT Bookings.BookingNo, Bookings.BookingId, Bookings.BookingDate
FROM Bookings
WHERE (((Bookings.BookingNo) In (SELECT BookingNo FROM Bookings As Tmp GROUP BY BookingNo HAVING count(*)>1 )))
ORDER BY Bookings.BookingNo)
GO
/****** Object:  Table [dbo].[BookingDetails]    Script Date: 01/09/2015 09:37:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookingDetails](
	[BookingDetailId] [int] IDENTITY(1,1) NOT NULL,
	[ItineraryNo] [float] NULL,
	[TripStart] [datetime] NULL,
	[TripEnd] [datetime] NULL,
	[Description] [nvarchar](255) NULL,
	[Destination] [nvarchar](255) NULL,
	[BasePrice] [money] NULL,
	[AgencyCommission] [money] NULL,
	[BookingId] [int] NULL,
	[RegionId] [nvarchar](5) NULL,
	[ClassId] [nvarchar](5) NULL,
	[FeeId] [nvarchar](10) NULL,
	[ProductSupplierId] [int] NULL,
	[DeparturePlnId] [int] NULL,
	[ReturnPlnId] [int] NULL,
 CONSTRAINT [aaaaaBookingDetails_PK] PRIMARY KEY NONCLUSTERED 
(
	[BookingDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Agency Fee Code] ON [dbo].[BookingDetails] 
(
	[FeeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [BookingId] ON [dbo].[BookingDetails] 
(
	[BookingId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [BookingsBookingDetails] ON [dbo].[BookingDetails] 
(
	[BookingId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ClassesBookingDetails] ON [dbo].[BookingDetails] 
(
	[ClassId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Dest ID] ON [dbo].[BookingDetails] 
(
	[RegionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [DestinationsBookingDetails] ON [dbo].[BookingDetails] 
(
	[RegionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [FeesBookingDetails] ON [dbo].[BookingDetails] 
(
	[FeeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [Products_SuppliersBookingDetails] ON [dbo].[BookingDetails] 
(
	[ProductSupplierId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ProductSupplierId] ON [dbo].[BookingDetails] 
(
	[ProductSupplierId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BookingDetails] ON
INSERT INTO bookingdetails (BookingDetailId, ItineraryNo, TripStart, TripEnd, Description, Destination, BasePrice, AgencyCommission, BookingId, RegionId, ClassId, FeeId, ProductSupplierId, DeparturePlnId, ReturnPlnId) VALUES
(11, 168, '2016-03-17 00:00:00', '2016-04-01 00:00:00', 'Calgary/Vancouver/Calgary', 'Vancouver', '450.0000', '22.5000', 11, 'NA', 'FST', 'BK', 23, 0, 0),
(15, 306, '2016-05-09 00:00:00', '2016-06-03 00:00:00', 'all-inclusive European tour', 'London, England', '3000.0000', '112.5000', 15, 'EU', 'ECN', 'GR', 14, 0, 0),
(16, 306, '2016-05-09 00:00:00', '2016-06-03 00:00:00', 'all-inclusive European tour', 'London, England', '3000.0000', '112.5000', 15, 'EU', 'ECN', 'GR', 14, 0, 0),
(17, 178, '2016-07-18 00:00:00', '2016-08-01 00:00:00', 'Calgary/Calcutta/Calgary', 'Calcutta, India', '799.0000', '39.9500', 17, 'MEAST', 'FST', 'BK', 23, 0, 0),
(34, 142, '2016-05-08 00:00:00', '2016-06-02 00:00:00', 'Calgary/Athens/Calgary', 'Athens, Greece', '1000.0000', '32.5000', 34, 'MED', 'ECN', 'BK', 12, 0, 0),
(46, 141, '2016-05-14 00:00:00', '2016-06-07 00:00:00', 'midsize car', 'Toronto', '900.0000', '29.2500', 46, 'NA', 'NA', 'NC', 20, 0, 0),
(49, 201, '2016-05-12 00:00:00', '2016-05-31 00:00:00', 'Calgary/Victoria/Calgary', 'Victoria', '199.0000', '2.2885', 49, 'NA', 'ECN', 'BK', 12, 0, 0),
(52, 225, '2016-05-14 00:00:00', '2016-06-07 00:00:00', ' ', 'Toronto', '1700.0000', '55.2500', 52, 'NA', 'DLX', 'BK', 12, 0, 0),
(55, 771, '2016-05-14 00:00:00', '2016-06-07 00:00:00', 'Calgary/Toronto/Calgary', 'Toronto', '1200.0000', '60.0000', 55, 'NA', 'FST', 'BK', 23, 0, 0),
(57, 893, '2016-09-24 00:00:00', '2016-10-15 00:00:00', 'Calgary/London/Calgary', 'London, England', '750.0000', '75.0000', 57, 'EU', 'ECN', 'BK', 13, 0, 0),
(62, 964, '2017-01-09 00:00:00', '2017-01-19 00:00:00', 'Calgary/Victoria/Calgary', 'Victoria', '205.0000', '10.2500', 62, 'NA', 'ECN', 'BK', 23, 0, 0),
(65, 204, '2017-01-31 00:00:00', '2017-02-13 00:00:00', 'Calgary/Cairo/Calgary', 'Cairo, Egypt', '350.0000', '17.5000', 65, 'MEAST', 'FST', 'BK', 23, 0, 0),
(73, 220, '2017-03-13 00:00:00', '2017-03-18 00:00:00', 'Calgary/Grande Prairie/Calgary', 'Grande Prairie', '150.0000', '7.5000', 73, 'NA', 'FST', 'BK', 23, 0, 0),
(79, 185, '2017-03-29 00:00:00', '2017-04-28 00:00:00', 'Calgary/Sydney/Calgary', 'Sydney, Australia', '2200.0000', '264.0000', 79, 'ANZ', 'ECN', 'BK', 30, 0, 0),
(80, 256, '2017-03-29 00:00:00', '2017-04-11 00:00:00', 'Calgary/Victoria/Calgary', 'Victoria', '190.0000', '9.5000', 80, 'NA', 'ECN', 'BK', 23, 0, 0),
(84, 185, '2017-04-01 00:00:00', '2017-04-25 00:00:00', 'Australian trek', ' ', '6250.0000', '234.3750', 84, 'ANZ', 'NA', 'BK', 15, 0, 0),
(85, 185, '2017-04-01 00:00:00', '2017-04-25 00:00:00', 'Australian trek', ' ', '6250.0000', '234.3750', 84, 'ANZ', 'NA', 'BK', 15, 0, 0),
(89, 279, '2017-04-17 00:00:00', '2017-04-22 00:00:00', 'Calgary/Toronto/Calgary', 'Toronto', '628.0000', '31.4000', 89, 'NA', 'FST', 'BK', 23, 0, 0),
(98, 230, '2017-05-05 00:00:00', '2017-05-10 00:00:00', 'Calgary/Vancouver/Calgary', 'Vancouver', '1048.0000', '52.4000', 98, 'NA', 'FST', 'BK', 23, 0, 0),
(108, 193, '2017-05-19 00:00:00', '2017-06-01 00:00:00', 'Calgary/Athens/Calgary', 'Athens, Greece', '1200.0000', '60.0000', 108, 'MED', 'ECN', 'BK', 23, 0, 0),
(122, 300, '2017-05-23 00:00:00', '2017-06-07 00:00:00', 'Calgary/Victoria/Calgary', 'Victoria', '175.0000', '8.7500', 124, 'NA', 'ECN', 'BK', 16, 0, 0),
(138, 397, '2017-07-12 00:00:00', '2017-07-16 00:00:00', 'Calgary/Montreal/Calgary', 'Montreal', '645.0000', '32.2500', 138, 'NA', 'FST', 'BK', 23, 0, 0),
(141, 244, '2017-07-15 00:00:00', '2017-07-19 00:00:00', 'Calgary/Toronto/Calgary', 'Toronto', '499.0000', '24.9500', 141, 'NA', 'FST', 'BK', 23, 0, 0),
(148, 805, '2017-07-25 00:00:00', '2017-08-11 00:00:00', 'Calgary/Athens/Calgary', 'Athens, Greece', '2300.0000', '70.0000', 148, 'MED', 'FST', 'BK', 23, 0, 0),
(152, 1134, '2017-09-29 00:00:00', '2017-10-12 00:00:00', 'Calgary/Montreal/Calgary', 'Montreal', '780.0000', '39.0000', 152, 'NA', 'FST', 'BK', 23, 0, 0),
(156, 139, '2017-11-07 00:00:00', '2017-11-12 00:00:00', 'Calgary/Toronto/Calgary', 'Toronto', '620.0000', '31.0000', 156, 'NA', 'BSN', 'BK', 23, 0, 0),
(161, 518, '2015-11-07 00:00:00', '2015-11-12 00:00:00', 'Calgary/London/Calgary', 'London, England', '620.0000', '31.0000', 161, 'EU', 'BSN', 'BK', 44, 0, 0),
(162, 218, '2017-11-12 00:00:00', '2017-11-18 00:00:00', 'Calgary/Toronto/Calgary', 'Toronto', '620.0000', '31.0000', 162, 'NA', 'BSN', 'BK', 23, 0, 0),
(172, 686, '2015-11-07 00:00:00', '2015-11-12 00:00:00', 'Calgary/London/Calgary', 'London, England', '629.0000', '31.4500', 172, 'EU', 'FST', 'BK', 23, 0, 0),
(187, 449, '2015-02-15 00:00:00', '2015-02-20 00:00:00', 'Calgary/Houston/Calgary', 'Houston', '2875.0000', '60.0000', 187, 'NA', 'FST', 'BK', 23, 0, 0),
(199, 286, '1999-03-01 00:00:00', '1999-03-16 00:00:00', 'Calgary/Hong Kong/Calgary', 'Hong Kong, China', '3625.0000', '70.0000', 199, 'ASIA', 'FST', 'BK', 23, 0, 0),
(204, 933, '1999-03-04 00:00:00', '1999-03-09 00:00:00', 'Calgary/Toronto/Calgary', 'Toronto', '620.0000', '31.0000', 204, 'NA', 'FST', 'BK', 23, 0, 0),
(220, 932, '1999-02-21 00:00:00', '1999-02-26 00:00:00', 'Calgary/Houston/Calgary', 'Houston', '620.0000', '31.0000', 220, 'NA', 'FST', 'BK', 23, 0, 0),
(226, 460, '1999-10-03 00:00:00', '1999-10-08 00:00:00', 'Calgary/Montreal/Calgary', 'Montreal', '2585.0000', '60.0000', 226, 'NA', 'FST', 'BK', 23, 0, 0),
(228, 573, '1999-12-03 00:00:00', '1999-12-07 00:00:00', 'Ramada', 'Vancouver', '700.0000', '8.0500', 228, 'NA', 'SNG', 'BK', 35, 0, 0),
(263, 255, '1999-05-01 00:00:00', '1999-06-01 00:00:00', 'Calgary/Sydney/Calgary', 'Sydney, Australia', '2500.0000', '70.0000', 263, 'ANZ', 'FST', 'BK', 23, 0, 0),
(265, 306, '1999-05-02 00:00:00', '1999-05-31 00:00:00', 'European golf package', 'Paris, France', '3000.0000', '112.5000', 264, 'EU', 'NA', 'GR', 36, 0, 0),
(266, 1076, '1999-05-02 00:00:00', '1999-05-31 00:00:00', 'Calgary/Paris/Calgary', 'Paris, France', '3000.0000', '70.0000', 266, 'EU', 'ECN', 'BK', 23, 0, 0),
(270, 331, '1999-05-01 00:00:00', '1999-05-29 00:00:00', 'Calgary/London/Calgary', 'London, England', '800.0000', '40.0000', 273, 'EU', 'ECN', 'BK', 23, 0, 0),
(273, 776, '1999-05-01 00:00:00', '1999-05-29 00:00:00', 'Calgary/London/Calgary', 'London, England', '800.0000', '40.0000', 273, 'EU', 'ECN', 'BK', 23, 0, 0),
(275, 255, '1999-05-06 00:00:00', '1999-05-29 00:00:00', 'Australian trek', ' ', '7900.0000', '296.2500', 263, 'ANZ', 'NA', 'BK', 15, 0, 0),
(276, 1132, '1999-05-01 00:00:00', '1999-05-29 00:00:00', 'Calgary/London/Calgary', 'London, England', '800.0000', '40.0000', 273, 'EU', 'ECN', 'BK', 23, 0, 0),
(287, 980, '1999-05-29 00:00:00', '1999-06-03 00:00:00', 'Calgary/Rio de Janeiro/Calgary', 'Rio de Janeiro, Brazil', '3590.0000', '70.0000', 287, 'SA', 'FST', 'BK', 23, 0, 0),
(305, 979, '1999-06-05 00:00:00', '1999-06-10 00:00:00', 'Calgary/Toronto/Calgary', 'Toronto', '2580.0000', '60.0000', 305, 'NA', 'FST', 'BK', 23, 0, 0),
(312, 398, '1999-06-12 00:00:00', '1999-06-17 00:00:00', 'Calgary/Montreal/Calgary', 'Montreal', '615.0000', '30.7500', 312, 'NA', 'FST', 'BK', 23, 0, 0),
(313, 775, '1999-06-12 00:00:00', '1999-06-17 00:00:00', 'Calgary/Montreal/Calgary', 'Montreal', '2258.0000', '60.0000', 313, 'NA', 'FST', 'BK', 23, 0, 0),
(322, 404, '1999-07-11 00:00:00', '1999-07-18 00:00:00', 'Calgary/Toronto/Calgary', 'Toronto', '630.0000', '31.5000', 322, 'NA', 'FST', 'BK', 23, 0, 0),
(325, 874, '1999-07-17 00:00:00', '1999-08-02 00:00:00', 'Calgary/Montreal/Calgary', 'Montreal', '630.0000', '31.5000', 325, 'NA', 'FST', 'BK', 23, 0, 0),
(327, 228, '1999-07-25 00:00:00', '1999-08-10 00:00:00', 'Calgary/London/Calgary', 'London, England', '900.0000', '45.0000', 98, 'EU', 'ECN', 'BK', 23, 0, 0),
(369, 481, '1999-10-01 00:00:00', '1999-10-06 00:00:00', 'intermediate car', 'Paris, France', '500.0000', '15.5000', 369, 'EU', 'NA', 'BK', 32, 0, 0),
(375, 492, '1999-10-01 00:00:00', '1999-10-06 00:00:00', 'Hilton', 'Paris, France', '650.0000', '7.4750', 375, 'EU', 'DLX', 'BK', 31, 0, 0),
(381, 610, '1999-10-01 00:00:00', '1999-10-06 00:00:00', 'Calgary/Paris/Calgary', 'Paris, France', '3560.0000', '70.0000', 381, 'EU', 'FST', 'BK', 23, 0, 0),
(382, 619, '1999-10-07 00:00:00', '1999-10-12 00:00:00', 'Hilton', 'London, England', '620.0000', '7.1300', 382, 'EU', 'DLX', 'BK', 31, 0, 0),
(384, 644, '1999-10-07 00:00:00', '1999-10-12 00:00:00', 'Calgary/London/Calgary', 'London, England', '600.0000', '30.0000', 384, 'EU', 'ECN', 'BK', 44, 0, 0),
(409, 492, '1999-10-22 00:00:00', '1999-11-03 00:00:00', 'Medium size car', 'Greece', '500.0000', '15.5000', 409, 'MED', 'NA', 'NC', 55, 0, 0),
(410, 624, '1999-10-21 00:00:00', '1999-11-04 00:00:00', 'Calgary-Athens-Calgary', 'Greece', '1300.0000', '65.0000', 410, 'MED', 'ECN', 'BK', 7, 0, 0),
(424, 492, '1999-10-27 00:00:00', '1999-10-30 00:00:00', 'cruise on the Greeks islands', 'Greece', '650.0000', '19.5000', 425, 'MED', 'INT', 'NC', 49, 0, 0),
(425, 492, '1999-10-27 00:00:00', '1999-10-30 00:00:00', 'cruise on the Greeks islands', 'Greece', '650.0000', '19.5000', 425, 'MED', 'INT', 'NC', 49, 0, 0),
(442, 654, '1999-11-04 00:00:00', '1999-11-09 00:00:00', 'Calgary/London/Calgary', 'London, England', '629.0000', '31.4500', 442, 'EU', 'ECN', 'BK', 23, 0, 0),
(443, 691, '1999-11-05 00:00:00', '1999-11-10 00:00:00', 'Calgary/Paris/Calgary', 'Paris, France', '4599.0000', '70.0000', 443, 'EU', 'FST', 'BK', 23, 0, 0),
(449, 645, '1999-11-06 00:00:00', '1999-11-11 00:00:00', 'Calgary/Toronto/Calgary', 'Toronto', '599.0000', '29.9500', 449, 'NA', 'ECN', 'BK', 44, 0, 0),
(458, 323, '1999-12-08 00:00:00', '1999-12-12 00:00:00', 'Calgary/Edmonton/Calgary', 'Edmonton', '300.0000', '15.0000', 517, 'NA', 'BSN', 'BK', 44, 0, 0),
(482, 740, '1999-11-17 00:00:00', '1999-11-23 00:00:00', 'Hilton', 'Sydney, Australia', '590.0000', '6.7850', 482, 'ANZ', 'DLX', 'BK', 31, 0, 0),
(484, 549, '1999-11-14 00:00:00', '1999-11-19 00:00:00', 'Calgary/Toronto/Calgary', 'Toronto', '600.0000', '30.0000', 484, 'NA', 'ECN', 'BK', 23, 0, 0),
(488, 601, '1999-11-14 00:00:00', '1999-11-19 00:00:00', 'Niagara on the Lake', 'Niagara', '675.0000', '7.7625', 488, 'NA', 'DLX', 'BK', 33, 0, 0),
(489, 1040, '1999-11-17 00:00:00', '1999-11-23 00:00:00', 'Calgary/Sydney/Calgary', 'Sydney, Australia', '625.0000', '31.2500', 489, 'ANZ', 'FST', 'BK', 23, 0, 0),
(510, 587, '1999-12-02 00:00:00', '1999-12-06 00:00:00', 'Ramada', 'Toronto', '650.0000', '7.4750', 510, 'NA', 'SNG', 'BK', 35, 0, 0),
(511, 745, '1999-11-16 00:00:00', '1999-11-22 00:00:00', 'Niagara on the Lake', 'Niagara', '620.0000', '7.1300', 511, 'NA', 'DLX', 'BK', 33, 0, 0),
(512, 903, '1999-11-16 00:00:00', '1999-11-22 00:00:00', 'Calgary/Toronto/Calgary', 'Toronto', '499.0000', '24.9500', 512, 'NA', 'ECN', 'BK', 23, 0, 0),
(517, 695, '1999-12-02 00:00:00', '1999-12-06 00:00:00', 'Calgary/Toronto/Calgary', 'Toronto', '700.0000', '35.0000', 517, 'NA', 'FST', 'BK', 44, 0, 0),
(529, 479, '1999-12-12 00:00:00', '1999-12-19 00:00:00', 'Calgary/Vancouver/Calgary', 'Vancouver', '350.0000', '17.5000', 529, 'NA', 'BSN', 'BK', 44, 0, 0),
(546, 482, '2000-01-10 00:00:00', '2000-01-15 00:00:00', 'Calgary/Montreal/Calgary', 'Montreal', '800.0000', '40.0000', 546, 'NA', 'BSN', 'BK', 44, 0, 0),
(553, 233, '2000-01-13 00:00:00', '2000-01-18 00:00:00', 'Calgary/Montreal/Calgary', 'Montreal', '750.0000', '37.5000', 553, 'NA', 'BSN', 'BK', 44, 0, 0),
(594, 497, '2000-01-20 00:00:00', '2000-01-25 00:00:00', 'Calgary/Toronto/Calgary', 'Toronto', '650.0000', '32.5000', 594, 'NA', 'BSN', 'BK', 44, 0, 0),
(596, 343, '2000-02-06 00:00:00', '2000-02-10 00:00:00', 'Calgary/London/Calgary', 'London, England', '850.0000', '42.5000', 596, 'EU', 'BSN', 'BK', 44, 0, 0),
(598, 401, '2000-02-06 00:00:00', '2000-02-10 00:00:00', 'Calgary/London/Calgary', 'London, England', '850.0000', '42.5000', 598, 'EU', 'BSN', 'BK', 44, 0, 0),
(600, 642, '2000-02-06 00:00:00', '2000-02-10 00:00:00', 'cancellation/medical policy # 97543', ' ', '200.0000', '4.0000', 600, 'EU', 'NA', 'NC', 39, 0, 0),
(604, 651, '2000-02-06 00:00:00', '2000-02-11 00:00:00', 'Calgary/Toronto/Calgary', 'Toronto', '700.0000', '35.0000', 604, 'NA', 'FST', 'BK', 44, 0, 0),
(605, 780, '2000-02-08 00:00:00', '2000-02-12 00:00:00', 'Calgary/Toronto/Calgary', 'Toronto', '700.0000', '35.0000', 605, 'NA', 'FST', 'BK', 44, 0, 0),
(609, 588, '2000-01-30 00:00:00', '2000-02-10 00:00:00', ' ', 'Hong Kong, China', '900.0000', '10.3500', 609, 'ASIA', 'DLX', 'BK', 41, 0, 0),
(613, 629, '2000-01-30 00:00:00', '2000-02-10 00:00:00', 'Calgary/Hong Kong/Calgary', 'Hong Kong, China', '5200.0000', '260.0000', 613, 'ASIA', 'FST', 'BK', 44, 0, 0),
(614, 629, '2000-01-30 00:00:00', '2000-02-10 00:00:00', 'cancellation/medical policy # 98123', ' ', '250.0000', '5.0000', 614, 'ASIA', 'NA', 'NC', 39, 0, 0),
(618, 790, '2000-02-06 00:00:00', '2000-02-10 00:00:00', 'Calgary/Toronto/Calgary', 'Toronto', '700.0000', '35.0000', 618, 'NA', 'FST', 'BK', 44, 0, 0),
(622, 863, '2000-02-06 00:00:00', '2000-02-10 00:00:00', 'Radisson', 'London, England', '990.0000', '11.3850', 622, 'EU', 'DLX', 'BK', 37, 0, 0),
(631, 172, '2000-02-05 00:00:00', '2000-02-09 00:00:00', 'Calgary/Toronto/Calgary', 'Toronto', '750.0000', '37.5000', 631, 'NA', 'BSN', 'BK', 44, 0, 0),
(665, 502, '2000-02-29 00:00:00', '2000-03-03 00:00:00', 'Calgary/Rio de Janeiro/Calgary', 'Rio de Janeiro, Brazil', '1130.0000', '56.5000', 665, 'SA', 'BSN', 'BK', 44, 0, 0),
(676, 695, '2000-03-03 00:00:00', '2000-03-06 00:00:00', 'Calgary/Toronto/Calgary', 'Toronto', '800.0000', '40.0000', 676, 'NA', 'FST', 'BK', 44, 0, 0),
(677, 574, '2000-02-29 00:00:00', '2000-03-03 00:00:00', 'Radisson', 'Rio de Janeiro, Brazil', '1000.0000', '32.5000', 677, 'SA', 'DLX', 'BK', 37, 0, 0),
(682, 686, '2000-02-29 00:00:00', '2000-03-03 00:00:00', 'cancellation/medical policy # 92165', ' ', '230.0000', '4.6000', 682, 'SA', 'NA', 'NC', 45, 0, 0),
(689, 570, '2000-03-14 00:00:00', '2000-04-05 00:00:00', 'Calgary, Toronto,Montreal, Ottawa t', 'Canada', '3550.0000', '133.1250', 776, 'NA', 'NA', 'BK', 46, 0, 0),
(709, 471, '2000-03-08 00:00:00', '2000-03-12 00:00:00', 'Calgary/Houston/Calgary', 'Houston', '720.0000', '36.0000', 709, 'NA', 'BSN', 'BK', 44, 0, 0),
(714, 555, '2000-03-07 00:00:00', '2000-03-11 00:00:00', 'Calgary/Toronto/Calgary', 'Toronto', '725.0000', '36.2500', 714, 'NA', 'BSN', 'BK', 44, 0, 0),
(722, 548, '2000-02-25 00:00:00', '2000-03-01 00:00:00', 'Calgary/London/Calgary', 'London, England', '800.0000', '40.0000', 722, 'EU', 'BSN', 'BK', 44, 0, 0),
(739, 1020, '2000-03-15 00:00:00', '2000-04-05 00:00:00', 'Calgary, Toronto,Montreal, Ottawa t', 'Canada', '3550.0000', '133.1250', 776, 'NA', 'NA', 'BK', 46, 0, 0),
(740, 589, '2000-03-13 00:00:00', '2000-03-18 00:00:00', 'Calgary/Houston/Calgary', 'Houston', '720.0000', '36.0000', 740, 'NA', 'BSN', 'BK', 44, 0, 0),
(777, 672, '2000-03-16 00:00:00', '2000-04-06 00:00:00', 'cancellation policy # 11191817', 'USA, Mexic', '180.0000', '3.6000', 777, 'NA', 'NA', 'NC', 69, 0, 0),
(805, 833, '2000-03-16 00:00:00', '2000-04-06 00:00:00', 'CALGARY-LOS ANGELES-MexicoCity-CALG', 'USA, Mexic', '5175.0000', '194.0625', 805, 'NA', 'NA', 'BK', 67, 0, 0),
(826, 675, '2000-03-23 00:00:00', '2000-04-17 00:00:00', 'Calgary, Toronto,montreal, Ottawa t', 'Canada', '4780.0000', '179.2500', 826, 'NA', 'NA', 'BK', 57, 0, 0),
(827, 716, '2000-03-27 00:00:00', '2000-03-27 00:00:00', 'Ride Niagara', 'Canada', '150.0000', '0.0000', 827, 'NA', 'NA', 'BK', 58, 0, 0),
(838, 259, '2000-04-10 00:00:00', '2000-04-15 00:00:00', 'Calgary/Sydney/Calgary', 'Sydney, Australia', '2100.0000', '105.0000', 838, 'ANZ', 'BSN', 'BK', 44, 0, 0),
(852, 271, '2000-04-14 00:00:00', '2000-04-19 00:00:00', 'Calgary/Sydney/Calgary', 'Sydney, Australia', '2100.0000', '105.0000', 852, 'ANZ', 'BSN', 'BK', 44, 0, 0),
(857, 781, '2000-04-14 00:00:00', '2000-04-19 00:00:00', 'full-size car', 'Sydney, Australia', '800.0000', '24.8000', 857, 'ANZ', 'NA', 'NC', 61, 0, 0),
(866, 851, '2000-04-14 00:00:00', '2000-04-19 00:00:00', 'World Access', 'Sydney, Australia', '1900.0000', '61.7500', 866, 'ANZ', 'DLX', 'BK', 60, 0, 0),
(876, 1116, '2000-04-14 00:00:00', '2000-04-19 00:00:00', 'cancellation/medical policy # 95678', ' ', '230.0000', '4.6000', 876, 'ANZ', 'NA', 'NC', 47, 0, 0),
(880, 857, '2000-04-10 00:00:00', '2000-04-15 00:00:00', 'World Access', 'Sydney, Australia', '1900.0000', '61.7500', 880, 'ANZ', 'DLX', 'BK', 60, 0, 0),
(886, 1117, '2000-04-10 00:00:00', '2000-04-15 00:00:00', 'midsize car', 'Sydney, Australia', '900.0000', '27.9000', 884, 'ANZ', 'NA', 'NC', 61, 0, 0),
(902, 751, '2000-04-25 00:00:00', '2000-05-16 00:00:00', 'Calgary-Auckland flight', 'NZ', '3000.0000', '150.0000', 902, 'ANZ', 'BSN', 'BK', 19, 0, 0),
(910, 150, '2000-05-16 00:00:00', '2000-05-25 00:00:00', 'Calgary/London/Calgary', 'London, England', '900.0000', '45.0000', 910, 'EU', 'BSN', 'BK', 44, 0, 0),
(940, 1131, '2000-05-05 00:00:00', '2000-06-02 00:00:00', 'Calgary/Toronto/Montreal tour', 'Canada', '2600.0000', '97.5000', 939, 'NA', 'FST', 'BK', 67, 0, 0),
(943, 821, '2000-05-06 00:00:00', '2000-06-03 00:00:00', 'Tahiti - South Seas', ' ', '8562.0000', '256.8600', 943, 'SP', 'INT', 'NC', 70, 0, 0),
(955, 141, '2000-05-13 00:00:00', '2000-05-22 00:00:00', 'Calgary/Paris/Calgary', 'Paris, France', '950.0000', '47.5000', 973, 'EU', 'BSN', 'BK', 44, 0, 0),
(960, 186, '2000-05-14 00:00:00', '2000-05-23 00:00:00', 'Calgary/Toronto/Calgary', 'Toronto', '650.0000', '32.5000', 960, 'NA', 'BSN', 'BK', 44, 0, 0),
(967, 392, '2000-05-13 00:00:00', '2000-05-22 00:00:00', 'World Access', 'Paris, France', '1200.0000', '39.0000', 973, 'EU', 'DLX', 'BK', 60, 0, 0),
(972, 812, '2000-05-13 00:00:00', '2000-05-22 00:00:00', 'midsize car', 'Paris, France', '850.0000', '26.3500', 973, 'EU', 'NA', 'NC', 61, 0, 0),
(973, 812, '2000-05-13 00:00:00', '2000-05-22 00:00:00', 'cancellation policy # 4987140', ' ', '300.0000', '6.0000', 973, 'EU', 'NA', 'NC', 47, 0, 0),
(988, 301, '2000-05-19 00:00:00', '2000-06-19 00:00:00', 'cancellation/medical policy #923665', 'Peru, argentina, Bollivi', '345.0000', '6.9000', 988, 'SA', 'NA', 'NC', 50, 0, 0),
(990, 757, '2000-05-19 00:00:00', '2000-06-19 00:00:00', 'Peru, Argentina, Bolivia tour', ' ', '3980.0000', '149.2500', 989, 'SA', 'NA', 'BK', 28, 0, 0),
(1002, 846, '2000-05-22 00:00:00', '2000-05-29 00:00:00', 'Alaska', ' ', '2531.0000', '75.9300', 1001, 'NA', 'INT', 'NC', 68, 0, 0),
(1024, 346, '2000-06-01 00:00:00', '2000-06-16 00:00:00', 'Asia-Africa-Mediteranean', ' ', '12630.0000', '378.9000', 1075, 'MED', 'ECN', 'NC', 70, 0, 0),
(1034, 716, '2000-06-03 00:00:00', '2000-06-28 00:00:00', 'Calgary-Vancouver flight', 'canada', '139.0000', '6.9500', 1034, 'NA', 'FST', 'BK', 19, 0, 0),
(1067, 720, '2000-06-06 00:00:00', '2000-07-01 00:00:00', 'Calgary-toronto-montreal flight', 'Canada', '1000.0000', '50.0000', 1067, 'NA', 'FST', 'BK', 64, 0, 0),
(1073, 761, '2000-06-06 00:00:00', '2000-07-01 00:00:00', 'Toronto-Montreal-ottawa tour', 'Canada', '3080.0000', '115.5000', 1073, 'NA', 'NA', 'BK', 48, 0, 0),
(1089, 827, '2000-05-30 00:00:00', '2000-06-07 00:00:00', 'Alaska plus air', ' ', '3652.0000', '109.5600', 1089, 'NA', 'INT', 'NC', 75, 0, 0),
(1105, 831, '2000-05-30 00:00:00', '2000-06-14 00:00:00', 'Ryndam - Time Travel', ' ', '5506.0000', '165.1800', 1105, 'SA', 'OCNV', 'NC', 70, 0, 0),
(1141, 816, '2000-05-20 00:00:00', '2000-05-20 00:00:00', 'Royal Ontario Museum', 'Canada', '25.0000', '0.0000', 1141, 'NA', 'NA', 'NC', 79, 0, 0),
(1165, 355, '2000-07-08 00:00:00', '2000-07-16 00:00:00', 'Calgary/London/Calgary', 'London, England', '850.0000', '42.5000', 1165, 'EU', 'BSN', 'BK', 44, 0, 0),
(1178, 846, '2000-07-08 00:00:00', '2000-07-13 00:00:00', 'Calgary/London/Calgary', 'London, England', '850.0000', '42.5000', 1178, 'EU', 'BSN', 'BK', 44, 0, 0),
(1188, 631, '2000-07-29 00:00:00', '2000-08-16 00:00:00', 'Explorer cruise plus air', ' ', '7593.0000', '227.7900', 1187, 'SA', 'OCNV', 'NC', 75, 0, 0),
(1192, 250, '2000-08-12 00:00:00', '2000-08-16 00:00:00', 'Calgary/Cape Town/Calgary', 'Cape Town, South Africa', '2500.0000', '125.0000', 1192, 'AFR', 'BSN', 'BK', 44, 0, 0),
(1194, 375, '2000-08-12 00:00:00', '2000-08-15 00:00:00', 'Calgary/Montreal/Calgary', 'Montreal', '870.0000', '43.5000', 1194, 'NA', 'BSN', 'BK', 44, 0, 0),
(1202, 154, '2000-08-27 00:00:00', '2000-09-01 00:00:00', 'Calgary/Hong Kong/Calgary', 'Hong Kong, China', '1700.0000', '85.0000', 1202, 'ASIA', 'BSN', 'BK', 44, 0, 0),
(1206, 605, '2000-08-25 00:00:00', '2000-08-30 00:00:00', 'Calgary/Toronto/Calgary', 'Toronto', '750.0000', '37.5000', 1206, 'NA', 'BSN', 'BK', 44, 0, 0),
(1207, 188, '2000-08-27 00:00:00', '2000-09-01 00:00:00', ' ', 'Hong Kong, China', '2000.0000', '65.0000', 1207, 'ASIA', 'BSN', 'NC', 41, 0, 0),
(1228, 527, '2000-08-24 00:00:00', '2000-08-29 00:00:00', 'Calgary/London/Calgary', 'London, England', '900.0000', '45.0000', 1228, 'EU', 'BSN', 'BK', 44, 0, 0),
(1230, 864, '2000-08-24 00:00:00', '2000-08-29 00:00:00', 'Calgary/Athens/Calgary', 'Athens, Greece', '1100.0000', '55.0000', 1230, 'MED', 'BSN', 'BK', 44, 0, 0),
(1240, 435, '2000-09-26 00:00:00', '2000-10-01 00:00:00', 'Calgary/Montreal/Calgary', 'Montreal', '950.0000', '47.5000', 1240, 'NA', 'BSN', 'BK', 44, 0, 0),
(1248, 421, '2000-09-25 00:00:00', '2000-09-30 00:00:00', 'Calgary/Montreal/Calgary', 'Montreal', '950.0000', '47.5000', 1248, 'NA', 'BSN', 'BK', 44, 0, 0),
(1251, 177, '2000-09-23 00:00:00', '2000-09-28 00:00:00', 'Calgary/London/Calgary', 'London, England', '900.0000', '45.0000', 1251, 'EU', 'BSN', 'BK', 44, 0, 0),
(1254, 420, '2000-09-23 00:00:00', '2000-09-28 00:00:00', ' ', 'London, England', '1500.0000', '48.7500', 1254, 'EU', 'DLX', 'BK', 82, 0, 0),
(1270, 239, '2000-12-01 00:00:00', '2000-12-10 00:00:00', 'Calgary/Cape Town/Calgary', 'Cape Town, South Africa', '2700.0000', '135.0000', 1270, 'AFR', 'BSN', 'BK', 44, 0, 0),
(1293, 596, '2000-12-01 00:00:00', '2000-12-10 00:00:00', ' ', 'Cape Town, South Africa', '2500.0000', '81.2500', 1293, 'AFR', 'DLX', 'BK', 42, 0, 0),
(1301, 534, '2001-01-05 00:00:00', '2001-01-09 00:00:00', 'Calgary/Cape Town/Calgary', 'Cape Town, South Africa', '2700.0000', '135.0000', 1301, 'AFR', 'BSN', 'BK', 44, 0, 0),
(1302, 535, '2001-01-05 00:00:00', '2001-01-09 00:00:00', 'Calgary/Winnipeg/Calgary', 'Winnipeg', '450.0000', '22.5000', 1302, 'NA', 'BSN', 'BK', 44, 0, 0),
(1303, 902, '2001-01-05 00:00:00', '2001-01-09 00:00:00', ' ', 'Cape Town, South Africa', '2500.0000', '81.2500', 1303, 'AFR', 'DLX', 'BK', 42, 0, 0)
SET IDENTITY_INSERT [dbo].[BookingDetails] OFF
/****** Object:  Table [dbo].[FlightsTable]    Script Date: 7/22/2018 1:18:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlightsTable](
	[FlightId] [int] NOT NULL,
	[FltPlaneNo] [int] NULL,
	[FltDepart] [datetime] NULL,
	[FltReturn] [datetime] NULL,
	[FltLocation] [nvarchar](30) NULL,
	[FltDestination] [nvarchar](50) NULL,
	[RegionId] [nvarchar](10) NULL,
	[FltTicketPrice] [money] NULL,
 CONSTRAINT [PK_FlightsTable] PRIMARY KEY CLUSTERED 
(
	[FlightId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Inserting data for flights******/
INSERT INTO flightstable (FlightId, FltPlaneNo, FltDepart, FltReturn, FltLocation, FltDestination, RegionId, FltTicketPrice) VALUES
(0, 0, '2018-06-02 00:00:00', '2018-06-02 00:00:00', 'Testing', 'Testing', 'TEST', '0.0000'),
(40001, 1001, '2018-06-02 00:00:00', '2018-06-05 00:00:00', 'Calgary', 'Vancouver, Canada', 'NA', '310.0000'),
(40002, 1002, '2018-06-05 00:00:00', '2018-06-08 00:00:00', 'Calgary', 'Vancouver, Canada', 'NA', '310.0000'),
(40003, 1003, '2018-06-08 00:00:00', '2018-06-11 00:00:00', 'Calgary', 'Vancouver, Canada', 'NA', '310.0000'),
(40004, 1004, '2018-06-11 00:00:00', '2018-06-14 00:00:00', 'Calgary', 'Vancouver, Canada', 'NA', '310.0000'),
(40005, 1005, '2018-06-14 00:00:00', '2018-06-17 00:00:00', 'Calgary', 'Vancouver, Canada', 'NA', '310.0000'),
(40006, 1006, '2018-06-17 00:00:00', '2018-06-20 00:00:00', 'Calgary', 'Vancouver, Canada', 'NA', '310.0000'),
(40007, 1007, '2018-06-20 00:00:00', '2018-06-23 00:00:00', 'Calgary', 'Vancouver, Canada', 'NA', '310.0000'),
(40008, 1008, '2018-06-23 00:00:00', '2018-06-26 00:00:00', 'Calgary', 'Vancouver, Canada', 'NA', '310.0000'),
(40009, 1009, '2018-06-26 00:00:00', '2018-06-29 00:00:00', 'Calgary', 'Vancouver, Canada', 'NA', '310.0000'),
(40010, 1010, '2018-06-29 00:00:00', '2018-07-02 00:00:00', 'Calgary', 'Vancouver, Canada', 'NA', '310.0000'),
(40011, 1011, '2018-07-02 00:00:00', '2018-07-05 00:00:00', 'Calgary', 'Vancouver, Canada', 'NA', '310.0000'),
(40012, 1012, '2018-07-05 00:00:00', '2018-07-08 00:00:00', 'Calgary', 'Vancouver, Canada', 'NA', '310.0000'),
(40013, 1013, '2018-07-08 00:00:00', '2018-07-11 00:00:00', 'Calgary', 'Vancouver, Canada', 'NA', '310.0000'),
(40014, 1014, '2018-07-11 00:00:00', '2018-07-14 00:00:00', 'Calgary', 'Vancouver, Canada', 'NA', '310.0000'),
(40015, 1015, '2018-07-14 00:00:00', '2018-07-17 00:00:00', 'Calgary', 'Vancouver, Canada', 'NA', '310.0000'),
(40016, 1016, '2018-06-02 00:00:00', '2018-06-05 00:00:00', 'Calgary', 'Athens, Greece', 'MED', '550.0000'),
(40017, 1017, '2018-06-05 00:00:00', '2018-06-08 00:00:00', 'Calgary', 'Athens, Greece', 'MED', '550.0000'),
(40018, 1018, '2018-06-08 00:00:00', '2018-06-11 00:00:00', 'Calgary', 'Athens, Greece', 'MED', '550.0000'),
(40019, 1019, '2018-06-11 00:00:00', '2018-06-14 00:00:00', 'Calgary', 'Athens, Greece', 'MED', '550.0000'),
(40020, 1020, '2018-06-14 00:00:00', '2018-06-17 00:00:00', 'Calgary', 'Athens, Greece', 'MED', '550.0000'),
(40021, 1021, '2018-06-17 00:00:00', '2018-06-20 00:00:00', 'Calgary', 'Athens, Greece', 'MED', '550.0000'),
(40022, 1022, '2018-06-20 00:00:00', '2018-06-23 00:00:00', 'Calgary', 'Athens, Greece', 'MED', '550.0000'),
(40023, 1023, '2018-06-23 00:00:00', '2018-06-26 00:00:00', 'Calgary', 'Athens, Greece', 'MED', '550.0000'),
(40024, 1024, '2018-06-26 00:00:00', '2018-06-29 00:00:00', 'Calgary', 'Athens, Greece', 'MED', '550.0000'),
(40025, 1025, '2018-06-29 00:00:00', '2018-07-02 00:00:00', 'Calgary', 'Athens, Greece', 'MED', '550.0000'),
(40026, 1026, '2018-07-02 00:00:00', '2018-07-05 00:00:00', 'Calgary', 'Athens, Greece', 'MED', '550.0000'),
(40027, 1027, '2018-07-05 00:00:00', '2018-07-08 00:00:00', 'Calgary', 'Athens, Greece', 'MED', '550.0000'),
(40028, 1028, '2018-07-08 00:00:00', '2018-07-11 00:00:00', 'Calgary', 'Athens, Greece', 'MED', '550.0000'),
(40029, 1029, '2018-07-11 00:00:00', '2018-07-14 00:00:00', 'Calgary', 'Athens, Greece', 'MED', '550.0000'),
(40030, 1030, '2018-07-14 00:00:00', '2018-07-17 00:00:00', 'Calgary', 'Athens, Greece', 'MED', '550.0000'),
(40031, 1031, '2018-06-02 00:00:00', '2018-06-05 00:00:00', 'Calgary', 'Cairo, Egypt', 'MEAST', '550.0000'),
(40032, 1032, '2018-06-05 00:00:00', '2018-06-08 00:00:00', 'Calgary', 'Cairo, Egypt', 'MEAST', '550.0000'),
(40033, 1033, '2018-06-08 00:00:00', '2018-06-11 00:00:00', 'Calgary', 'Cairo, Egypt', 'MEAST', '550.0000'),
(40034, 1034, '2018-06-11 00:00:00', '2018-06-14 00:00:00', 'Calgary', 'Cairo, Egypt', 'MEAST', '550.0000'),
(40035, 1035, '2018-06-14 00:00:00', '2018-06-17 00:00:00', 'Calgary', 'Cairo, Egypt', 'MEAST', '550.0000'),
(40036, 1036, '2018-06-17 00:00:00', '2018-06-20 00:00:00', 'Calgary', 'Cairo, Egypt', 'MEAST', '550.0000'),
(40037, 1037, '2018-06-20 00:00:00', '2018-06-23 00:00:00', 'Calgary', 'Cairo, Egypt', 'MEAST', '550.0000'),
(40038, 1038, '2018-06-23 00:00:00', '2018-06-26 00:00:00', 'Calgary', 'Cairo, Egypt', 'MEAST', '550.0000'),
(40039, 1039, '2018-06-26 00:00:00', '2018-06-29 00:00:00', 'Calgary', 'Cairo, Egypt', 'MEAST', '550.0000'),
(40040, 1040, '2018-06-29 00:00:00', '2018-07-02 00:00:00', 'Calgary', 'Cairo, Egypt', 'MEAST', '550.0000'),
(40041, 1041, '2018-07-02 00:00:00', '2018-07-05 00:00:00', 'Calgary', 'Cairo, Egypt', 'MEAST', '550.0000'),
(40042, 1042, '2018-07-05 00:00:00', '2018-07-08 00:00:00', 'Calgary', 'Cairo, Egypt', 'MEAST', '550.0000'),
(40043, 1043, '2018-07-08 00:00:00', '2018-07-11 00:00:00', 'Calgary', 'Cairo, Egypt', 'MEAST', '550.0000'),
(40044, 1044, '2018-07-11 00:00:00', '2018-07-14 00:00:00', 'Calgary', 'Cairo, Egypt', 'MEAST', '550.0000'),
(40045, 1045, '2018-07-14 00:00:00', '2018-07-17 00:00:00', 'Calgary', 'Cairo, Egypt', 'MEAST', '550.0000'),
(40046, 1046, '2018-06-02 00:00:00', '2018-06-05 00:00:00', 'Calgary', 'Calcutta, India', 'MEAST', '560.0000'),
(40047, 1047, '2018-06-05 00:00:00', '2018-06-08 00:00:00', 'Calgary', 'Calcutta, India', 'MEAST', '560.0000'),
(40048, 1048, '2018-06-08 00:00:00', '2018-06-11 00:00:00', 'Calgary', 'Calcutta, India', 'MEAST', '560.0000'),
(40049, 1049, '2018-06-11 00:00:00', '2018-06-14 00:00:00', 'Calgary', 'Calcutta, India', 'MEAST', '560.0000'),
(40050, 1050, '2018-06-14 00:00:00', '2018-06-17 00:00:00', 'Calgary', 'Calcutta, India', 'MEAST', '560.0000'),
(40051, 1051, '2018-06-17 00:00:00', '2018-06-20 00:00:00', 'Calgary', 'Calcutta, India', 'MEAST', '560.0000'),
(40052, 1052, '2018-06-20 00:00:00', '2018-06-23 00:00:00', 'Calgary', 'Calcutta, India', 'MEAST', '560.0000'),
(40053, 1053, '2018-06-23 00:00:00', '2018-06-26 00:00:00', 'Calgary', 'Calcutta, India', 'MEAST', '560.0000'),
(40054, 1054, '2018-06-26 00:00:00', '2018-06-29 00:00:00', 'Calgary', 'Calcutta, India', 'MEAST', '560.0000'),
(40055, 1055, '2018-06-29 00:00:00', '2018-07-02 00:00:00', 'Calgary', 'Calcutta, India', 'MEAST', '560.0000'),
(40056, 1056, '2018-07-02 00:00:00', '2018-07-05 00:00:00', 'Calgary', 'Calcutta, India', 'MEAST', '560.0000'),
(40057, 1057, '2018-07-05 00:00:00', '2018-07-08 00:00:00', 'Calgary', 'Calcutta, India', 'MEAST', '560.0000'),
(40058, 1058, '2018-07-08 00:00:00', '2018-07-11 00:00:00', 'Calgary', 'Calcutta, India', 'MEAST', '560.0000'),
(40059, 1059, '2018-07-11 00:00:00', '2018-07-14 00:00:00', 'Calgary', 'Calcutta, India', 'MEAST', '560.0000'),
(40060, 1060, '2018-07-14 00:00:00', '2018-07-17 00:00:00', 'Calgary', 'Calcutta, India', 'MEAST', '560.0000'),
(40061, 1061, '2018-06-02 00:00:00', '2018-06-05 00:00:00', 'Calgary', 'Cape Town, South Africa', 'AFR', '470.0000'),
(40062, 1062, '2018-06-05 00:00:00', '2018-06-08 00:00:00', 'Calgary', 'Cape Town, South Africa', 'AFR', '470.0000'),
(40063, 1063, '2018-06-08 00:00:00', '2018-06-11 00:00:00', 'Calgary', 'Cape Town, South Africa', 'AFR', '470.0000'),
(40064, 1064, '2018-06-11 00:00:00', '2018-06-14 00:00:00', 'Calgary', 'Cape Town, South Africa', 'AFR', '470.0000'),
(40065, 1065, '2018-06-14 00:00:00', '2018-06-17 00:00:00', 'Calgary', 'Cape Town, South Africa', 'AFR', '470.0000'),
(40066, 1066, '2018-06-17 00:00:00', '2018-06-20 00:00:00', 'Calgary', 'Cape Town, South Africa', 'AFR', '470.0000'),
(40067, 1067, '2018-06-20 00:00:00', '2018-06-23 00:00:00', 'Calgary', 'Cape Town, South Africa', 'AFR', '470.0000'),
(40068, 1068, '2018-06-23 00:00:00', '2018-06-26 00:00:00', 'Calgary', 'Cape Town, South Africa', 'AFR', '470.0000'),
(40069, 1069, '2018-06-26 00:00:00', '2018-06-29 00:00:00', 'Calgary', 'Cape Town, South Africa', 'AFR', '470.0000'),
(40070, 1070, '2018-06-29 00:00:00', '2018-07-02 00:00:00', 'Calgary', 'Cape Town, South Africa', 'AFR', '470.0000'),
(40071, 1071, '2018-07-02 00:00:00', '2018-07-05 00:00:00', 'Calgary', 'Cape Town, South Africa', 'AFR', '470.0000'),
(40072, 1072, '2018-07-05 00:00:00', '2018-07-08 00:00:00', 'Calgary', 'Cape Town, South Africa', 'AFR', '470.0000'),
(40073, 1073, '2018-07-08 00:00:00', '2018-07-11 00:00:00', 'Calgary', 'Cape Town, South Africa', 'AFR', '470.0000'),
(40074, 1074, '2018-07-11 00:00:00', '2018-07-14 00:00:00', 'Calgary', 'Cape Town, South Africa', 'AFR', '470.0000'),
(40075, 1075, '2018-07-14 00:00:00', '2018-07-17 00:00:00', 'Calgary', 'Cape Town, South Africa', 'AFR', '470.0000'),
(40076, 1076, '2018-06-02 00:00:00', '2018-06-05 00:00:00', 'Calgary', 'Edmonton, Canada', 'NA', '600.0000'),
(40077, 1077, '2018-06-05 00:00:00', '2018-06-08 00:00:00', 'Calgary', 'Edmonton, Canada', 'NA', '600.0000'),
(40078, 1078, '2018-06-08 00:00:00', '2018-06-11 00:00:00', 'Calgary', 'Edmonton, Canada', 'NA', '600.0000'),
(40079, 1079, '2018-06-11 00:00:00', '2018-06-14 00:00:00', 'Calgary', 'Edmonton, Canada', 'NA', '600.0000'),
(40080, 1080, '2018-06-14 00:00:00', '2018-06-17 00:00:00', 'Calgary', 'Edmonton, Canada', 'NA', '600.0000'),
(40081, 1081, '2018-06-17 00:00:00', '2018-06-20 00:00:00', 'Calgary', 'Edmonton, Canada', 'NA', '600.0000'),
(40082, 1082, '2018-06-20 00:00:00', '2018-06-23 00:00:00', 'Calgary', 'Edmonton, Canada', 'NA', '600.0000'),
(40083, 1083, '2018-06-23 00:00:00', '2018-06-26 00:00:00', 'Calgary', 'Edmonton, Canada', 'NA', '600.0000'),
(40084, 1084, '2018-06-26 00:00:00', '2018-06-29 00:00:00', 'Calgary', 'Edmonton, Canada', 'NA', '600.0000'),
(40085, 1085, '2018-06-29 00:00:00', '2018-07-02 00:00:00', 'Calgary', 'Edmonton, Canada', 'NA', '600.0000'),
(40086, 1086, '2018-07-02 00:00:00', '2018-07-05 00:00:00', 'Calgary', 'Edmonton, Canada', 'NA', '600.0000'),
(40087, 1087, '2018-07-05 00:00:00', '2018-07-08 00:00:00', 'Calgary', 'Edmonton, Canada', 'NA', '600.0000'),
(40088, 1088, '2018-07-08 00:00:00', '2018-07-11 00:00:00', 'Calgary', 'Edmonton, Canada', 'NA', '600.0000'),
(40089, 1089, '2018-07-11 00:00:00', '2018-07-14 00:00:00', 'Calgary', 'Edmonton, Canada', 'NA', '600.0000'),
(40090, 1090, '2018-07-14 00:00:00', '2018-07-17 00:00:00', 'Calgary', 'Edmonton, Canada', 'NA', '600.0000'),
(40091, 1091, '2018-06-02 00:00:00', '2018-06-05 00:00:00', 'Calgary', 'Grande Prairie, Canada', 'NA', '310.0000'),
(40092, 1092, '2018-06-05 00:00:00', '2018-06-08 00:00:00', 'Calgary', 'Grande Prairie, Canada', 'NA', '310.0000'),
(40093, 1093, '2018-06-08 00:00:00', '2018-06-11 00:00:00', 'Calgary', 'Grande Prairie, Canada', 'NA', '310.0000'),
(40094, 1094, '2018-06-11 00:00:00', '2018-06-14 00:00:00', 'Calgary', 'Grande Prairie, Canada', 'NA', '310.0000'),
(40095, 1095, '2018-06-14 00:00:00', '2018-06-17 00:00:00', 'Calgary', 'Grande Prairie, Canada', 'NA', '310.0000'),
(40096, 1096, '2018-06-17 00:00:00', '2018-06-20 00:00:00', 'Calgary', 'Grande Prairie, Canada', 'NA', '310.0000'),
(40097, 1097, '2018-06-20 00:00:00', '2018-06-23 00:00:00', 'Calgary', 'Grande Prairie, Canada', 'NA', '310.0000'),
(40098, 1098, '2018-06-23 00:00:00', '2018-06-26 00:00:00', 'Calgary', 'Grande Prairie, Canada', 'NA', '310.0000'),
(40099, 1099, '2018-06-26 00:00:00', '2018-06-29 00:00:00', 'Calgary', 'Grande Prairie, Canada', 'NA', '310.0000'),
(40100, 1100, '2018-06-29 00:00:00', '2018-07-02 00:00:00', 'Calgary', 'Grande Prairie, Canada', 'NA', '310.0000'),
(40101, 1101, '2018-07-02 00:00:00', '2018-07-05 00:00:00', 'Calgary', 'Grande Prairie, Canada', 'NA', '310.0000'),
(40102, 1102, '2018-07-05 00:00:00', '2018-07-08 00:00:00', 'Calgary', 'Grande Prairie, Canada', 'NA', '310.0000'),
(40103, 1103, '2018-07-08 00:00:00', '2018-07-11 00:00:00', 'Calgary', 'Grande Prairie, Canada', 'NA', '310.0000'),
(40104, 1104, '2018-07-11 00:00:00', '2018-07-14 00:00:00', 'Calgary', 'Grande Prairie, Canada', 'NA', '310.0000'),
(40105, 1105, '2018-07-14 00:00:00', '2018-07-17 00:00:00', 'Calgary', 'Grande Prairie, Canada', 'NA', '310.0000'),
(40106, 1106, '2018-06-02 00:00:00', '2018-06-05 00:00:00', 'Calgary', 'Hong Kong, China', 'ASIA', '310.0000'),
(40107, 1107, '2018-06-05 00:00:00', '2018-06-08 00:00:00', 'Calgary', 'Hong Kong, China', 'ASIA', '310.0000'),
(40108, 1108, '2018-06-08 00:00:00', '2018-06-11 00:00:00', 'Calgary', 'Hong Kong, China', 'ASIA', '310.0000'),
(40109, 1109, '2018-06-11 00:00:00', '2018-06-14 00:00:00', 'Calgary', 'Hong Kong, China', 'ASIA', '310.0000'),
(40110, 1110, '2018-06-14 00:00:00', '2018-06-17 00:00:00', 'Calgary', 'Hong Kong, China', 'ASIA', '310.0000'),
(40111, 1111, '2018-06-17 00:00:00', '2018-06-20 00:00:00', 'Calgary', 'Hong Kong, China', 'ASIA', '310.0000'),
(40112, 1112, '2018-06-20 00:00:00', '2018-06-23 00:00:00', 'Calgary', 'Hong Kong, China', 'ASIA', '310.0000'),
(40113, 1113, '2018-06-23 00:00:00', '2018-06-26 00:00:00', 'Calgary', 'Hong Kong, China', 'ASIA', '310.0000'),
(40114, 1114, '2018-06-26 00:00:00', '2018-06-29 00:00:00', 'Calgary', 'Hong Kong, China', 'ASIA', '310.0000'),
(40115, 1115, '2018-06-29 00:00:00', '2018-07-02 00:00:00', 'Calgary', 'Hong Kong, China', 'ASIA', '310.0000'),
(40116, 1116, '2018-07-02 00:00:00', '2018-07-05 00:00:00', 'Calgary', 'Hong Kong, China', 'ASIA', '310.0000'),
(40117, 1117, '2018-07-05 00:00:00', '2018-07-08 00:00:00', 'Calgary', 'Hong Kong, China', 'ASIA', '310.0000'),
(40118, 1118, '2018-07-08 00:00:00', '2018-07-11 00:00:00', 'Calgary', 'Hong Kong, China', 'ASIA', '310.0000'),
(40119, 1119, '2018-07-11 00:00:00', '2018-07-14 00:00:00', 'Calgary', 'Hong Kong, China', 'ASIA', '310.0000'),
(40120, 1120, '2018-07-14 00:00:00', '2018-07-17 00:00:00', 'Calgary', 'Hong Kong, China', 'ASIA', '310.0000'),
(40121, 1121, '2018-06-02 00:00:00', '2018-06-05 00:00:00', 'Calgary', 'Houston, Canada', 'NA', '550.0000'),
(40122, 1122, '2018-06-05 00:00:00', '2018-06-08 00:00:00', 'Calgary', 'Houston, Canada', 'NA', '550.0000'),
(40123, 1123, '2018-06-08 00:00:00', '2018-06-11 00:00:00', 'Calgary', 'Houston, Canada', 'NA', '550.0000'),
(40124, 1124, '2018-06-11 00:00:00', '2018-06-14 00:00:00', 'Calgary', 'Houston, Canada', 'NA', '550.0000'),
(40125, 1125, '2018-06-14 00:00:00', '2018-06-17 00:00:00', 'Calgary', 'Houston, Canada', 'NA', '550.0000'),
(40126, 1126, '2018-06-17 00:00:00', '2018-06-20 00:00:00', 'Calgary', 'Houston, Canada', 'NA', '550.0000'),
(40127, 1127, '2018-06-20 00:00:00', '2018-06-23 00:00:00', 'Calgary', 'Houston, Canada', 'NA', '550.0000'),
(40128, 1128, '2018-06-23 00:00:00', '2018-06-26 00:00:00', 'Calgary', 'Houston, Canada', 'NA', '550.0000'),
(40129, 1129, '2018-06-26 00:00:00', '2018-06-29 00:00:00', 'Calgary', 'Houston, Canada', 'NA', '550.0000'),
(40130, 1130, '2018-06-29 00:00:00', '2018-07-02 00:00:00', 'Calgary', 'Houston, Canada', 'NA', '550.0000'),
(40131, 1131, '2018-07-02 00:00:00', '2018-07-05 00:00:00', 'Calgary', 'Houston, Canada', 'NA', '550.0000'),
(40132, 1132, '2018-07-05 00:00:00', '2018-07-08 00:00:00', 'Calgary', 'Houston, Canada', 'NA', '550.0000'),
(40133, 1133, '2018-07-08 00:00:00', '2018-07-11 00:00:00', 'Calgary', 'Houston, Canada', 'NA', '550.0000'),
(40134, 1134, '2018-07-11 00:00:00', '2018-07-14 00:00:00', 'Calgary', 'Houston, Canada', 'NA', '550.0000'),
(40135, 1135, '2018-07-14 00:00:00', '2018-07-17 00:00:00', 'Calgary', 'Houston, Canada', 'NA', '550.0000'),
(40136, 1136, '2018-06-02 00:00:00', '2018-06-05 00:00:00', 'Calgary', 'London, England', 'EU', '310.0000'),
(40137, 1137, '2018-06-05 00:00:00', '2018-06-08 00:00:00', 'Calgary', 'London, England', 'EU', '310.0000'),
(40138, 1138, '2018-06-08 00:00:00', '2018-06-11 00:00:00', 'Calgary', 'London, England', 'EU', '310.0000'),
(40139, 1139, '2018-06-11 00:00:00', '2018-06-14 00:00:00', 'Calgary', 'London, England', 'EU', '310.0000'),
(40140, 1140, '2018-06-14 00:00:00', '2018-06-17 00:00:00', 'Calgary', 'London, England', 'EU', '310.0000'),
(40141, 1141, '2018-06-17 00:00:00', '2018-06-20 00:00:00', 'Calgary', 'London, England', 'EU', '310.0000'),
(40142, 1142, '2018-06-20 00:00:00', '2018-06-23 00:00:00', 'Calgary', 'London, England', 'EU', '310.0000'),
(40143, 1143, '2018-06-23 00:00:00', '2018-06-26 00:00:00', 'Calgary', 'London, England', 'EU', '310.0000'),
(40144, 1144, '2018-06-26 00:00:00', '2018-06-29 00:00:00', 'Calgary', 'London, England', 'EU', '310.0000'),
(40145, 1145, '2018-06-29 00:00:00', '2018-07-02 00:00:00', 'Calgary', 'London, England', 'EU', '310.0000'),
(40146, 1146, '2018-07-02 00:00:00', '2018-07-05 00:00:00', 'Calgary', 'London, England', 'EU', '310.0000'),
(40147, 1147, '2018-07-05 00:00:00', '2018-07-08 00:00:00', 'Calgary', 'London, England', 'EU', '310.0000'),
(40148, 1148, '2018-07-08 00:00:00', '2018-07-11 00:00:00', 'Calgary', 'London, England', 'EU', '310.0000'),
(40149, 1149, '2018-07-11 00:00:00', '2018-07-14 00:00:00', 'Calgary', 'London, England', 'EU', '310.0000'),
(40150, 1150, '2018-07-14 00:00:00', '2018-07-17 00:00:00', 'Calgary', 'London, England', 'EU', '310.0000'),
(40151, 1151, '2018-06-02 00:00:00', '2018-06-05 00:00:00', 'Calgary', 'Montreal, Canada', 'NA', '490.0000'),
(40152, 1152, '2018-06-05 00:00:00', '2018-06-08 00:00:00', 'Calgary', 'Montreal, Canada', 'NA', '490.0000'),
(40153, 1153, '2018-06-08 00:00:00', '2018-06-11 00:00:00', 'Calgary', 'Montreal, Canada', 'NA', '490.0000'),
(40154, 1154, '2018-06-11 00:00:00', '2018-06-14 00:00:00', 'Calgary', 'Montreal, Canada', 'NA', '490.0000'),
(40155, 1155, '2018-06-14 00:00:00', '2018-06-17 00:00:00', 'Calgary', 'Montreal, Canada', 'NA', '490.0000'),
(40156, 1156, '2018-06-17 00:00:00', '2018-06-20 00:00:00', 'Calgary', 'Montreal, Canada', 'NA', '490.0000'),
(40157, 1157, '2018-06-20 00:00:00', '2018-06-23 00:00:00', 'Calgary', 'Montreal, Canada', 'NA', '490.0000'),
(40158, 1158, '2018-06-23 00:00:00', '2018-06-26 00:00:00', 'Calgary', 'Montreal, Canada', 'NA', '490.0000'),
(40159, 1159, '2018-06-26 00:00:00', '2018-06-29 00:00:00', 'Calgary', 'Montreal, Canada', 'NA', '490.0000'),
(40160, 1160, '2018-06-29 00:00:00', '2018-07-02 00:00:00', 'Calgary', 'Montreal, Canada', 'NA', '490.0000'),
(40161, 1161, '2018-07-02 00:00:00', '2018-07-05 00:00:00', 'Calgary', 'Montreal, Canada', 'NA', '490.0000'),
(40162, 1162, '2018-07-05 00:00:00', '2018-07-08 00:00:00', 'Calgary', 'Montreal, Canada', 'NA', '490.0000'),
(40163, 1163, '2018-07-08 00:00:00', '2018-07-11 00:00:00', 'Calgary', 'Montreal, Canada', 'NA', '490.0000'),
(40164, 1164, '2018-07-11 00:00:00', '2018-07-14 00:00:00', 'Calgary', 'Montreal, Canada', 'NA', '490.0000'),
(40165, 1165, '2018-07-14 00:00:00', '2018-07-17 00:00:00', 'Calgary', 'Montreal, Canada', 'NA', '490.0000'),
(40166, 1166, '2018-06-02 00:00:00', '2018-06-05 00:00:00', 'Calgary', 'Paris, France', 'EU', '310.0000'),
(40167, 1167, '2018-06-05 00:00:00', '2018-06-08 00:00:00', 'Calgary', 'Paris, France', 'EU', '310.0000'),
(40168, 1168, '2018-06-08 00:00:00', '2018-06-11 00:00:00', 'Calgary', 'Paris, France', 'EU', '310.0000'),
(40169, 1169, '2018-06-11 00:00:00', '2018-06-14 00:00:00', 'Calgary', 'Paris, France', 'EU', '310.0000'),
(40170, 1170, '2018-06-14 00:00:00', '2018-06-17 00:00:00', 'Calgary', 'Paris, France', 'EU', '310.0000'),
(40171, 1171, '2018-06-17 00:00:00', '2018-06-20 00:00:00', 'Calgary', 'Paris, France', 'EU', '310.0000'),
(40172, 1172, '2018-06-20 00:00:00', '2018-06-23 00:00:00', 'Calgary', 'Paris, France', 'EU', '310.0000'),
(40173, 1173, '2018-06-23 00:00:00', '2018-06-26 00:00:00', 'Calgary', 'Paris, France', 'EU', '310.0000'),
(40174, 1174, '2018-06-26 00:00:00', '2018-06-29 00:00:00', 'Calgary', 'Paris, France', 'EU', '310.0000'),
(40175, 1175, '2018-06-29 00:00:00', '2018-07-02 00:00:00', 'Calgary', 'Paris, France', 'EU', '310.0000'),
(40176, 1176, '2018-07-02 00:00:00', '2018-07-05 00:00:00', 'Calgary', 'Paris, France', 'EU', '310.0000'),
(40177, 1177, '2018-07-05 00:00:00', '2018-07-08 00:00:00', 'Calgary', 'Paris, France', 'EU', '310.0000'),
(40178, 1178, '2018-07-08 00:00:00', '2018-07-11 00:00:00', 'Calgary', 'Paris, France', 'EU', '310.0000'),
(40179, 1179, '2018-07-11 00:00:00', '2018-07-14 00:00:00', 'Calgary', 'Paris, France', 'EU', '310.0000'),
(40180, 1180, '2018-07-14 00:00:00', '2018-07-17 00:00:00', 'Calgary', 'Paris, France', 'EU', '310.0000'),
(40181, 1181, '2018-06-02 00:00:00', '2018-06-05 00:00:00', 'Calgary', 'Rio de Janeiro, Brazil', 'SA', '470.0000'),
(40182, 1182, '2018-06-05 00:00:00', '2018-06-08 00:00:00', 'Calgary', 'Rio de Janeiro, Brazil', 'SA', '470.0000'),
(40183, 1183, '2018-06-08 00:00:00', '2018-06-11 00:00:00', 'Calgary', 'Rio de Janeiro, Brazil', 'SA', '470.0000'),
(40184, 1184, '2018-06-11 00:00:00', '2018-06-14 00:00:00', 'Calgary', 'Rio de Janeiro, Brazil', 'SA', '470.0000'),
(40185, 1185, '2018-06-14 00:00:00', '2018-06-17 00:00:00', 'Calgary', 'Rio de Janeiro, Brazil', 'SA', '470.0000'),
(40186, 1186, '2018-06-17 00:00:00', '2018-06-20 00:00:00', 'Calgary', 'Rio de Janeiro, Brazil', 'SA', '470.0000'),
(40187, 1187, '2018-06-20 00:00:00', '2018-06-23 00:00:00', 'Calgary', 'Rio de Janeiro, Brazil', 'SA', '470.0000'),
(40188, 1188, '2018-06-23 00:00:00', '2018-06-26 00:00:00', 'Calgary', 'Rio de Janeiro, Brazil', 'SA', '470.0000'),
(40189, 1189, '2018-06-26 00:00:00', '2018-06-29 00:00:00', 'Calgary', 'Rio de Janeiro, Brazil', 'SA', '470.0000'),
(40190, 1190, '2018-06-29 00:00:00', '2018-07-02 00:00:00', 'Calgary', 'Rio de Janeiro, Brazil', 'SA', '470.0000'),
(40191, 1191, '2018-07-02 00:00:00', '2018-07-05 00:00:00', 'Calgary', 'Rio de Janeiro, Brazil', 'SA', '470.0000'),
(40192, 1192, '2018-07-05 00:00:00', '2018-07-08 00:00:00', 'Calgary', 'Rio de Janeiro, Brazil', 'SA', '470.0000'),
(40193, 1193, '2018-07-08 00:00:00', '2018-07-11 00:00:00', 'Calgary', 'Rio de Janeiro, Brazil', 'SA', '470.0000'),
(40194, 1194, '2018-07-11 00:00:00', '2018-07-14 00:00:00', 'Calgary', 'Rio de Janeiro, Brazil', 'SA', '470.0000'),
(40195, 1195, '2018-07-14 00:00:00', '2018-07-17 00:00:00', 'Calgary', 'Rio de Janeiro, Brazil', 'SA', '470.0000'),
(40196, 1196, '2018-06-02 00:00:00', '2018-06-05 00:00:00', 'Calgary', 'Sydney, Australia', 'ANZ', '470.0000'),
(40197, 1197, '2018-06-05 00:00:00', '2018-06-08 00:00:00', 'Calgary', 'Sydney, Australia', 'ANZ', '470.0000'),
(40198, 1198, '2018-06-08 00:00:00', '2018-06-11 00:00:00', 'Calgary', 'Sydney, Australia', 'ANZ', '470.0000'),
(40199, 1199, '2018-06-11 00:00:00', '2018-06-14 00:00:00', 'Calgary', 'Sydney, Australia', 'ANZ', '470.0000'),
(40200, 1200, '2018-06-14 00:00:00', '2018-06-17 00:00:00', 'Calgary', 'Sydney, Australia', 'ANZ', '470.0000'),
(40201, 1201, '2018-06-17 00:00:00', '2018-06-20 00:00:00', 'Calgary', 'Sydney, Australia', 'ANZ', '470.0000'),
(40202, 1202, '2018-06-20 00:00:00', '2018-06-23 00:00:00', 'Calgary', 'Sydney, Australia', 'ANZ', '470.0000'),
(40203, 1203, '2018-06-23 00:00:00', '2018-06-26 00:00:00', 'Calgary', 'Sydney, Australia', 'ANZ', '470.0000'),
(40204, 1204, '2018-06-26 00:00:00', '2018-06-29 00:00:00', 'Calgary', 'Sydney, Australia', 'ANZ', '470.0000'),
(40205, 1205, '2018-06-29 00:00:00', '2018-07-02 00:00:00', 'Calgary', 'Sydney, Australia', 'ANZ', '470.0000'),
(40206, 1206, '2018-07-02 00:00:00', '2018-07-05 00:00:00', 'Calgary', 'Sydney, Australia', 'ANZ', '470.0000'),
(40207, 1207, '2018-07-05 00:00:00', '2018-07-08 00:00:00', 'Calgary', 'Sydney, Australia', 'ANZ', '470.0000'),
(40208, 1208, '2018-07-08 00:00:00', '2018-07-11 00:00:00', 'Calgary', 'Sydney, Australia', 'ANZ', '470.0000'),
(40209, 1209, '2018-07-11 00:00:00', '2018-07-14 00:00:00', 'Calgary', 'Sydney, Australia', 'ANZ', '470.0000'),
(40210, 1210, '2018-07-14 00:00:00', '2018-07-17 00:00:00', 'Calgary', 'Sydney, Australia', 'ANZ', '470.0000'),
(40211, 1211, '2018-06-02 00:00:00', '2018-06-05 00:00:00', 'Calgary', 'Toronto, Canada', 'NA', '600.0000'),
(40212, 1212, '2018-06-05 00:00:00', '2018-06-08 00:00:00', 'Calgary', 'Toronto, Canada', 'NA', '600.0000'),
(40213, 1213, '2018-06-08 00:00:00', '2018-06-11 00:00:00', 'Calgary', 'Toronto, Canada', 'NA', '600.0000'),
(40214, 1214, '2018-06-11 00:00:00', '2018-06-14 00:00:00', 'Calgary', 'Toronto, Canada', 'NA', '600.0000'),
(40215, 1215, '2018-06-14 00:00:00', '2018-06-17 00:00:00', 'Calgary', 'Toronto, Canada', 'NA', '600.0000'),
(40216, 1216, '2018-06-17 00:00:00', '2018-06-20 00:00:00', 'Calgary', 'Toronto, Canada', 'NA', '600.0000'),
(40217, 1217, '2018-06-20 00:00:00', '2018-06-23 00:00:00', 'Calgary', 'Toronto, Canada', 'NA', '600.0000'),
(40218, 1218, '2018-06-23 00:00:00', '2018-06-26 00:00:00', 'Calgary', 'Toronto, Canada', 'NA', '600.0000'),
(40219, 1219, '2018-06-26 00:00:00', '2018-06-29 00:00:00', 'Calgary', 'Toronto, Canada', 'NA', '600.0000'),
(40220, 1220, '2018-06-29 00:00:00', '2018-07-02 00:00:00', 'Calgary', 'Toronto, Canada', 'NA', '600.0000'),
(40221, 1221, '2018-07-02 00:00:00', '2018-07-05 00:00:00', 'Calgary', 'Toronto, Canada', 'NA', '600.0000'),
(40222, 1222, '2018-07-05 00:00:00', '2018-07-08 00:00:00', 'Calgary', 'Toronto, Canada', 'NA', '600.0000'),
(40223, 1223, '2018-07-08 00:00:00', '2018-07-11 00:00:00', 'Calgary', 'Toronto, Canada', 'NA', '600.0000'),
(40224, 1224, '2018-07-11 00:00:00', '2018-07-14 00:00:00', 'Calgary', 'Toronto, Canada', 'NA', '600.0000'),
(40225, 1225, '2018-07-14 00:00:00', '2018-07-17 00:00:00', 'Calgary', 'Toronto, Canada', 'NA', '600.0000'),
(40226, 1226, '2018-06-02 00:00:00', '2018-06-05 00:00:00', 'Calgary', 'Victoria, Canada', 'NA', '310.0000'),
(40227, 1227, '2018-06-05 00:00:00', '2018-06-08 00:00:00', 'Calgary', 'Victoria, Canada', 'NA', '310.0000'),
(40228, 1228, '2018-06-08 00:00:00', '2018-06-11 00:00:00', 'Calgary', 'Victoria, Canada', 'NA', '310.0000'),
(40229, 1229, '2018-06-11 00:00:00', '2018-06-14 00:00:00', 'Calgary', 'Victoria, Canada', 'NA', '310.0000'),
(40230, 1230, '2018-06-14 00:00:00', '2018-06-17 00:00:00', 'Calgary', 'Victoria, Canada', 'NA', '310.0000'),
(40231, 1231, '2018-06-17 00:00:00', '2018-06-20 00:00:00', 'Calgary', 'Victoria, Canada', 'NA', '310.0000'),
(40232, 1232, '2018-06-20 00:00:00', '2018-06-23 00:00:00', 'Calgary', 'Victoria, Canada', 'NA', '310.0000'),
(40233, 1233, '2018-06-23 00:00:00', '2018-06-26 00:00:00', 'Calgary', 'Victoria, Canada', 'NA', '310.0000'),
(40234, 1234, '2018-06-26 00:00:00', '2018-06-29 00:00:00', 'Calgary', 'Victoria, Canada', 'NA', '310.0000'),
(40235, 1235, '2018-06-29 00:00:00', '2018-07-02 00:00:00', 'Calgary', 'Victoria, Canada', 'NA', '310.0000'),
(40236, 1236, '2018-07-02 00:00:00', '2018-07-05 00:00:00', 'Calgary', 'Victoria, Canada', 'NA', '310.0000'),
(40237, 1237, '2018-07-05 00:00:00', '2018-07-08 00:00:00', 'Calgary', 'Victoria, Canada', 'NA', '310.0000'),
(40238, 1238, '2018-07-08 00:00:00', '2018-07-11 00:00:00', 'Calgary', 'Victoria, Canada', 'NA', '310.0000'),
(40239, 1239, '2018-07-11 00:00:00', '2018-07-14 00:00:00', 'Calgary', 'Victoria, Canada', 'NA', '310.0000'),
(40240, 1240, '2018-07-14 00:00:00', '2018-07-17 00:00:00', 'Calgary', 'Victoria, Canada', 'NA', '310.0000'),
(40241, 1241, '2018-06-02 00:00:00', '2018-06-05 00:00:00', 'Calgary', 'Winnipeg, Canada', 'NA', '310.0000'),
(40242, 1242, '2018-06-05 00:00:00', '2018-06-08 00:00:00', 'Calgary', 'Winnipeg, Canada', 'NA', '310.0000'),
(40243, 1243, '2018-06-08 00:00:00', '2018-06-11 00:00:00', 'Calgary', 'Winnipeg, Canada', 'NA', '310.0000'),
(40244, 1244, '2018-06-11 00:00:00', '2018-06-14 00:00:00', 'Calgary', 'Winnipeg, Canada', 'NA', '310.0000'),
(40245, 1245, '2018-06-14 00:00:00', '2018-06-17 00:00:00', 'Calgary', 'Winnipeg, Canada', 'NA', '310.0000'),
(40246, 1246, '2018-06-17 00:00:00', '2018-06-20 00:00:00', 'Calgary', 'Winnipeg, Canada', 'NA', '310.0000'),
(40247, 1247, '2018-06-20 00:00:00', '2018-06-23 00:00:00', 'Calgary', 'Winnipeg, Canada', 'NA', '310.0000'),
(40248, 1248, '2018-06-23 00:00:00', '2018-06-26 00:00:00', 'Calgary', 'Winnipeg, Canada', 'NA', '310.0000'),
(40249, 1249, '2018-06-26 00:00:00', '2018-06-29 00:00:00', 'Calgary', 'Winnipeg, Canada', 'NA', '310.0000'),
(40250, 1250, '2018-06-29 00:00:00', '2018-07-02 00:00:00', 'Calgary', 'Winnipeg, Canada', 'NA', '310.0000'),
(40251, 1251, '2018-07-02 00:00:00', '2018-07-05 00:00:00', 'Calgary', 'Winnipeg, Canada', 'NA', '310.0000'),
(40252, 1252, '2018-07-05 00:00:00', '2018-07-08 00:00:00', 'Calgary', 'Winnipeg, Canada', 'NA', '310.0000'),
(40253, 1253, '2018-07-08 00:00:00', '2018-07-11 00:00:00', 'Calgary', 'Winnipeg, Canada', 'NA', '310.0000'),
(40254, 1254, '2018-07-11 00:00:00', '2018-07-14 00:00:00', 'Calgary', 'Winnipeg, Canada', 'NA', '310.0000'),
(40255, 1255, '2018-07-14 00:00:00', '2018-07-17 00:00:00', 'Calgary', 'Winnipeg, Canada', 'NA', '310.0000'),
(40256, 1256, '2018-06-02 00:00:00', '2018-06-05 00:00:00', 'Calgary', 'Tokyo, Japan', 'ASIA', '310.0000'),
(40257, 1257, '2018-06-05 00:00:00', '2018-06-08 00:00:00', 'Calgary', 'Tokyo, Japan', 'ASIA', '310.0000'),
(40258, 1258, '2018-06-08 00:00:00', '2018-06-11 00:00:00', 'Calgary', 'Tokyo, Japan', 'ASIA', '310.0000'),
(40259, 1259, '2018-06-11 00:00:00', '2018-06-14 00:00:00', 'Calgary', 'Tokyo, Japan', 'ASIA', '310.0000'),
(40260, 1260, '2018-06-14 00:00:00', '2018-06-17 00:00:00', 'Calgary', 'Tokyo, Japan', 'ASIA', '310.0000'),
(40261, 1261, '2018-06-17 00:00:00', '2018-06-20 00:00:00', 'Calgary', 'Tokyo, Japan', 'ASIA', '310.0000'),
(40262, 1262, '2018-06-20 00:00:00', '2018-06-23 00:00:00', 'Calgary', 'Tokyo, Japan', 'ASIA', '310.0000'),
(40263, 1263, '2018-06-23 00:00:00', '2018-06-26 00:00:00', 'Calgary', 'Tokyo, Japan', 'ASIA', '310.0000'),
(40264, 1264, '2018-06-26 00:00:00', '2018-06-29 00:00:00', 'Calgary', 'Tokyo, Japan', 'ASIA', '310.0000'),
(40265, 1265, '2018-06-29 00:00:00', '2018-07-02 00:00:00', 'Calgary', 'Tokyo, Japan', 'ASIA', '310.0000'),
(40266, 1266, '2018-07-02 00:00:00', '2018-07-05 00:00:00', 'Calgary', 'Tokyo, Japan', 'ASIA', '310.0000'),
(40267, 1267, '2018-07-05 00:00:00', '2018-07-08 00:00:00', 'Calgary', 'Tokyo, Japan', 'ASIA', '310.0000'),
(40268, 1268, '2018-07-08 00:00:00', '2018-07-11 00:00:00', 'Calgary', 'Tokyo, Japan', 'ASIA', '310.0000'),
(40269, 1269, '2018-07-11 00:00:00', '2018-07-14 00:00:00', 'Calgary', 'Tokyo, Japan', 'ASIA', '310.0000'),
(40270, 1270, '2018-07-14 00:00:00', '2018-07-17 00:00:00', 'Calgary', 'Tokyo, Japan', 'ASIA', '310.0000'),
(40271, 1271, '2018-06-02 00:00:00', '2018-06-05 00:00:00', 'Calgary', 'Bangkok, China', 'ASIA', '540.0000'),
(40272, 1272, '2018-06-05 00:00:00', '2018-06-08 00:00:00', 'Calgary', 'Bangkok, China', 'ASIA', '540.0000'),
(40273, 1273, '2018-06-08 00:00:00', '2018-06-11 00:00:00', 'Calgary', 'Bangkok, China', 'ASIA', '540.0000'),
(40274, 1274, '2018-06-11 00:00:00', '2018-06-14 00:00:00', 'Calgary', 'Bangkok, China', 'ASIA', '540.0000'),
(40275, 1275, '2018-06-14 00:00:00', '2018-06-17 00:00:00', 'Calgary', 'Bangkok, China', 'ASIA', '540.0000'),
(40276, 1276, '2018-06-17 00:00:00', '2018-06-20 00:00:00', 'Calgary', 'Bangkok, China', 'ASIA', '540.0000'),
(40277, 1277, '2018-06-20 00:00:00', '2018-06-23 00:00:00', 'Calgary', 'Bangkok, China', 'ASIA', '540.0000'),
(40278, 1278, '2018-06-23 00:00:00', '2018-06-26 00:00:00', 'Calgary', 'Bangkok, China', 'ASIA', '540.0000'),
(40279, 1279, '2018-06-26 00:00:00', '2018-06-29 00:00:00', 'Calgary', 'Bangkok, China', 'ASIA', '540.0000'),
(40280, 1280, '2018-06-29 00:00:00', '2018-07-02 00:00:00', 'Calgary', 'Bangkok, China', 'ASIA', '540.0000'),
(40281, 1281, '2018-07-02 00:00:00', '2018-07-05 00:00:00', 'Calgary', 'Bangkok, China', 'ASIA', '540.0000'),
(40282, 1282, '2018-07-05 00:00:00', '2018-07-08 00:00:00', 'Calgary', 'Bangkok, China', 'ASIA', '540.0000'),
(40283, 1283, '2018-07-08 00:00:00', '2018-07-11 00:00:00', 'Calgary', 'Bangkok, China', 'ASIA', '540.0000'),
(40284, 1284, '2018-07-11 00:00:00', '2018-07-14 00:00:00', 'Calgary', 'Bangkok, China', 'ASIA', '540.0000'),
(40285, 1285, '2018-07-14 00:00:00', '2018-07-17 00:00:00', 'Calgary', 'Bangkok, China', 'ASIA', '540.0000'),
(40286, 1286, '2018-06-02 00:00:00', '2018-06-05 00:00:00', 'Calgary', 'Manila, Philippines', 'ASIA', '560.0000'),
(40287, 1287, '2018-06-05 00:00:00', '2018-06-08 00:00:00', 'Calgary', 'Manila, Philippines', 'ASIA', '560.0000'),
(40288, 1288, '2018-06-08 00:00:00', '2018-06-11 00:00:00', 'Calgary', 'Manila, Philippines', 'ASIA', '560.0000'),
(40289, 1289, '2018-06-11 00:00:00', '2018-06-14 00:00:00', 'Calgary', 'Manila, Philippines', 'ASIA', '560.0000'),
(40290, 1290, '2018-06-14 00:00:00', '2018-06-17 00:00:00', 'Calgary', 'Manila, Philippines', 'ASIA', '560.0000'),
(40291, 1291, '2018-06-17 00:00:00', '2018-06-20 00:00:00', 'Calgary', 'Manila, Philippines', 'ASIA', '560.0000'),
(40292, 1292, '2018-06-20 00:00:00', '2018-06-23 00:00:00', 'Calgary', 'Manila, Philippines', 'ASIA', '560.0000'),
(40293, 1293, '2018-06-23 00:00:00', '2018-06-26 00:00:00', 'Calgary', 'Manila, Philippines', 'ASIA', '560.0000'),
(40294, 1294, '2018-06-26 00:00:00', '2018-06-29 00:00:00', 'Calgary', 'Manila, Philippines', 'ASIA', '560.0000'),
(40295, 1295, '2018-06-29 00:00:00', '2018-07-02 00:00:00', 'Calgary', 'Manila, Philippines', 'ASIA', '560.0000'),
(40296, 1296, '2018-07-02 00:00:00', '2018-07-05 00:00:00', 'Calgary', 'Manila, Philippines', 'ASIA', '560.0000'),
(40297, 1297, '2018-07-05 00:00:00', '2018-07-08 00:00:00', 'Calgary', 'Manila, Philippines', 'ASIA', '560.0000'),
(40298, 1298, '2018-07-08 00:00:00', '2018-07-11 00:00:00', 'Calgary', 'Manila, Philippines', 'ASIA', '560.0000'),
(40299, 1299, '2018-07-11 00:00:00', '2018-07-14 00:00:00', 'Calgary', 'Manila, Philippines', 'ASIA', '560.0000'),
(40300, 1300, '2018-07-14 00:00:00', '2018-07-17 00:00:00', 'Calgary', 'Manila, Philippines', 'ASIA', '560.0000'),
(40301, 1301, '2018-06-02 00:00:00', '2018-06-05 00:00:00', 'Calgary', 'Pyongyang, North Korea', 'ASIA', '570.0000'),
(40302, 1302, '2018-06-05 00:00:00', '2018-06-08 00:00:00', 'Calgary', 'Pyongyang, North Korea', 'ASIA', '570.0000'),
(40303, 1303, '2018-06-08 00:00:00', '2018-06-11 00:00:00', 'Calgary', 'Pyongyang, North Korea', 'ASIA', '570.0000'),
(40304, 1304, '2018-06-11 00:00:00', '2018-06-14 00:00:00', 'Calgary', 'Pyongyang, North Korea', 'ASIA', '570.0000'),
(40305, 1305, '2018-06-14 00:00:00', '2018-06-17 00:00:00', 'Calgary', 'Pyongyang, North Korea', 'ASIA', '570.0000'),
(40306, 1306, '2018-06-17 00:00:00', '2018-06-20 00:00:00', 'Calgary', 'Pyongyang, North Korea', 'ASIA', '570.0000'),
(40307, 1307, '2018-06-20 00:00:00', '2018-06-23 00:00:00', 'Calgary', 'Pyongyang, North Korea', 'ASIA', '570.0000'),
(40308, 1308, '2018-06-23 00:00:00', '2018-06-26 00:00:00', 'Calgary', 'Pyongyang, North Korea', 'ASIA', '570.0000'),
(40309, 1309, '2018-06-26 00:00:00', '2018-06-29 00:00:00', 'Calgary', 'Pyongyang, North Korea', 'ASIA', '570.0000'),
(40310, 1310, '2018-06-29 00:00:00', '2018-07-02 00:00:00', 'Calgary', 'Pyongyang, North Korea', 'ASIA', '570.0000'),
(40311, 1311, '2018-07-02 00:00:00', '2018-07-05 00:00:00', 'Calgary', 'Pyongyang, North Korea', 'ASIA', '570.0000'),
(40312, 1312, '2018-07-05 00:00:00', '2018-07-08 00:00:00', 'Calgary', 'Pyongyang, North Korea', 'ASIA', '570.0000'),
(40313, 1313, '2018-07-08 00:00:00', '2018-07-11 00:00:00', 'Calgary', 'Pyongyang, North Korea', 'ASIA', '570.0000'),
(40314, 1314, '2018-07-11 00:00:00', '2018-07-14 00:00:00', 'Calgary', 'Pyongyang, North Korea', 'ASIA', '570.0000'),
(40315, 1315, '2018-07-14 00:00:00', '2018-07-17 00:00:00', 'Calgary', 'Pyongyang, North Korea', 'ASIA', '570.0000'),
(40316, 1316, '2018-06-02 00:00:00', '2018-06-05 00:00:00', 'Calgary', 'Moscow, Russia', 'ASIA', '1000.0000'),
(40317, 1317, '2018-06-05 00:00:00', '2018-06-08 00:00:00', 'Calgary', 'Moscow, Russia', 'ASIA', '1000.0000'),
(40318, 1318, '2018-06-08 00:00:00', '2018-06-11 00:00:00', 'Calgary', 'Moscow, Russia', 'ASIA', '1000.0000'),
(40319, 1319, '2018-06-11 00:00:00', '2018-06-14 00:00:00', 'Calgary', 'Moscow, Russia', 'ASIA', '1000.0000'),
(40320, 1320, '2018-06-14 00:00:00', '2018-06-17 00:00:00', 'Calgary', 'Moscow, Russia', 'ASIA', '1000.0000'),
(40321, 1321, '2018-06-17 00:00:00', '2018-06-20 00:00:00', 'Calgary', 'Moscow, Russia', 'ASIA', '1000.0000'),
(40322, 1322, '2018-06-20 00:00:00', '2018-06-23 00:00:00', 'Calgary', 'Moscow, Russia', 'ASIA', '1000.0000'),
(40323, 1323, '2018-06-23 00:00:00', '2018-06-26 00:00:00', 'Calgary', 'Moscow, Russia', 'ASIA', '1000.0000'),
(40324, 1324, '2018-06-26 00:00:00', '2018-06-29 00:00:00', 'Calgary', 'Moscow, Russia', 'ASIA', '1000.0000'),
(40325, 1325, '2018-06-29 00:00:00', '2018-07-02 00:00:00', 'Calgary', 'Moscow, Russia', 'ASIA', '1000.0000'),
(40326, 1326, '2018-07-02 00:00:00', '2018-07-05 00:00:00', 'Calgary', 'Moscow, Russia', 'ASIA', '1000.0000'),
(40327, 1327, '2018-07-05 00:00:00', '2018-07-08 00:00:00', 'Calgary', 'Moscow, Russia', 'ASIA', '1000.0000'),
(40328, 1328, '2018-07-08 00:00:00', '2018-07-11 00:00:00', 'Calgary', 'Moscow, Russia', 'ASIA', '1000.0000'),
(40329, 1329, '2018-07-11 00:00:00', '2018-07-14 00:00:00', 'Calgary', 'Moscow, Russia', 'ASIA', '1000.0000'),
(40330, 1330, '2018-07-14 00:00:00', '2018-07-17 00:00:00', 'Calgary', 'Moscow, Russia', 'ASIA', '1000.0000'),
(40331, 1331, '2018-06-11 00:00:00', '2018-06-14 00:00:00', 'Calgary', 'Nassau, Bahamas', 'CAR', '761.0000'),
(40332, 1332, '2018-06-17 00:00:00', '2018-06-20 00:00:00', 'Calgary', 'Nassau, Bahamas', 'CAR', '761.0000'),
(40333, 1333, '2018-06-17 00:00:00', '2018-06-20 00:00:00', 'Calgary', 'Honolulu, Hawaii', 'POL', '513.0000'),
(40334, 1334, '2018-06-23 00:00:00', '2018-06-26 00:00:00', 'Calgary', 'Honolulu, Hawaii', 'POL', '513.0000'),
(40335, 1335, '2018-06-14 00:00:00', '2018-06-17 00:00:00', 'Calgary', 'Bangkok, China', 'ASIA', '731.0000'),
(40336, 1336, '2018-06-26 00:00:00', '2018-06-29 00:00:00', 'Calgary', 'Bangkok, China', 'ASIA', '731.0000'),
(40337, 1337, '2018-06-02 00:00:00', '2018-06-05 00:00:00', 'Calgary', 'London, England', 'EU', '717.0000'),
(40338, 1338, '2018-06-14 00:00:00', '2018-06-17 00:00:00', 'Calgary', 'London, England', 'EU', '717.0000')
/****** Object:  Default [DF__Fees__FeeAmt__1B0907CE]    Script Date: 01/09/2015 09:37:39 ******/
ALTER TABLE [dbo].[Fees] ADD  CONSTRAINT [DF__Fees__FeeAmt__1B0907CE]  DEFAULT (0) FOR [FeeAmt]
GO
/****** Object:  Default [DF__Packages__PkgBas__76CBA758]    Script Date: 01/09/2015 09:37:39 ******/
ALTER TABLE [dbo].[Packages] ADD  CONSTRAINT [DF__Packages__PkgBas__76CBA758]  DEFAULT (0) FOR [PkgBasePrice]
GO
/****** Object:  Default [DF__Packages__PkgAge__77BFCB91]    Script Date: 01/09/2015 09:37:39 ******/
ALTER TABLE [dbo].[Packages] ADD  CONSTRAINT [DF__Packages__PkgAge__77BFCB91]  DEFAULT (0) FOR [PkgAgencyCommission]
GO
/****** Object:  Default [DF__Rewards__RewardI__35BCFE0A]    Script Date: 01/09/2015 09:37:39 ******/
ALTER TABLE [dbo].[Rewards] ADD  CONSTRAINT [DF__Rewards__RewardI__35BCFE0A]  DEFAULT (0) FOR [RewardId]
GO
/****** Object:  Default [DF__Suppliers__Suppl__3F466844]    Script Date: 01/09/2015 09:37:39 ******/
ALTER TABLE [dbo].[Suppliers] ADD  CONSTRAINT [DF__Suppliers__Suppl__3F466844]  DEFAULT (0) FOR [SupplierId]
GO
/****** Object:  Default [DF__SupplierC__Suppl__3A81B327]    Script Date: 01/09/2015 09:37:39 ******/
ALTER TABLE [dbo].[SupplierContacts] ADD  CONSTRAINT [DF__SupplierC__Suppl__3A81B327]  DEFAULT (0) FOR [SupplierId]
GO
/****** Object:  Default [DF__Products___Produ__2D27B809]    Script Date: 01/09/2015 09:37:39 ******/
ALTER TABLE [dbo].[Products_Suppliers] ADD  CONSTRAINT [DF__Products___Produ__2D27B809]  DEFAULT (0) FOR [ProductId]
GO
/****** Object:  Default [DF__Packages___Packa__239E4DCF]    Script Date: 01/09/2015 09:37:39 ******/
ALTER TABLE [dbo].[Packages_Products_Suppliers] ADD  CONSTRAINT [DF__Packages___Packa__239E4DCF]  DEFAULT (0) FOR [PackageId]
GO
/****** Object:  Default [DF__Packages___Produ__24927208]    Script Date: 01/09/2015 09:37:39 ******/
ALTER TABLE [dbo].[Packages_Products_Suppliers] ADD  CONSTRAINT [DF__Packages___Produ__24927208]  DEFAULT (0) FOR [ProductSupplierId]
GO
/****** Object:  Default [DF__Customers__Rewar__1273C1CD]    Script Date: 01/09/2015 09:37:41 ******/
ALTER TABLE [dbo].[Customers_Rewards] ADD  CONSTRAINT [DF__Customers__Rewar__1273C1CD]  DEFAULT (0) FOR [RewardId]
GO
/****** Object:  Default [DF__Bookings__Packag__023D5A04]    Script Date: 01/09/2015 09:37:41 ******/
ALTER TABLE [dbo].[Bookings] ADD  CONSTRAINT [DF__Bookings__Packag__023D5A04]  DEFAULT (0) FOR [PackageId]
GO
/****** Object:  Default [DF__BookingDe__Booki__7C8480AE]    Script Date: 01/09/2015 09:37:41 ******/
ALTER TABLE [dbo].[BookingDetails] ADD  CONSTRAINT [DF__BookingDe__Booki__7C8480AE]  DEFAULT (0) FOR [BookingId]
GO
/****** Object:  Default [DF__BookingDe__Produ__7D78A4E7]    Script Date: 01/09/2015 09:37:41 ******/
ALTER TABLE [dbo].[BookingDetails] ADD  CONSTRAINT [DF__BookingDe__Produ__7D78A4E7]  DEFAULT (0) FOR [ProductSupplierId]
GO
/****** Object:  ForeignKey [SupplierContacts_FK00]    Script Date: 01/09/2015 09:37:39 ******/
ALTER TABLE [dbo].[SupplierContacts]  WITH CHECK ADD  CONSTRAINT [SupplierContacts_FK00] FOREIGN KEY([AffiliationId])
REFERENCES [dbo].[Affiliations] ([AffilitationId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[SupplierContacts] CHECK CONSTRAINT [SupplierContacts_FK00]
GO
/****** Object:  ForeignKey [SupplierContacts_FK01]    Script Date: 01/09/2015 09:37:39 ******/
ALTER TABLE [dbo].[SupplierContacts]  WITH CHECK ADD  CONSTRAINT [SupplierContacts_FK01] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Suppliers] ([SupplierId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[SupplierContacts] CHECK CONSTRAINT [SupplierContacts_FK01]
GO
/****** Object:  ForeignKey [Products_Suppliers_FK00]    Script Date: 01/09/2015 09:37:39 ******/
ALTER TABLE [dbo].[Products_Suppliers]  WITH CHECK ADD  CONSTRAINT [Products_Suppliers_FK00] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Products_Suppliers] CHECK CONSTRAINT [Products_Suppliers_FK00]
GO
/****** Object:  ForeignKey [Products_Suppliers_FK01]    Script Date: 01/09/2015 09:37:39 ******/
ALTER TABLE [dbo].[Products_Suppliers]  WITH CHECK ADD  CONSTRAINT [Products_Suppliers_FK01] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Suppliers] ([SupplierId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Products_Suppliers] CHECK CONSTRAINT [Products_Suppliers_FK01]
GO
/****** Object:  ForeignKey [FK_Agents_Agencies]    Script Date: 01/09/2015 09:37:39 ******/
ALTER TABLE [dbo].[Agents]  WITH CHECK ADD  CONSTRAINT [FK_Agents_Agencies] FOREIGN KEY([AgencyId])
REFERENCES [dbo].[Agencies] ([AgencyId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Agents] CHECK CONSTRAINT [FK_Agents_Agencies]
GO
/****** Object:  ForeignKey [Packages_Products_Supplie_FK00]    Script Date: 01/09/2015 09:37:39 ******/
ALTER TABLE [dbo].[Packages_Products_Suppliers]  WITH CHECK ADD  CONSTRAINT [Packages_Products_Supplie_FK00] FOREIGN KEY([PackageId])
REFERENCES [dbo].[Packages] ([PackageId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Packages_Products_Suppliers] CHECK CONSTRAINT [Packages_Products_Supplie_FK00]
GO
/****** Object:  ForeignKey [Packages_Products_Supplie_FK01]    Script Date: 01/09/2015 09:37:39 ******/
ALTER TABLE [dbo].[Packages_Products_Suppliers]  WITH CHECK ADD  CONSTRAINT [Packages_Products_Supplie_FK01] FOREIGN KEY([ProductSupplierId])
REFERENCES [dbo].[Products_Suppliers] ([ProductSupplierId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Packages_Products_Suppliers] CHECK CONSTRAINT [Packages_Products_Supplie_FK01]
GO
/****** Object:  ForeignKey [FK_Customers_Agents]    Script Date: 01/09/2015 09:37:41 ******/
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Customers_Agents] FOREIGN KEY([AgentId])
REFERENCES [dbo].[Agents] ([AgentId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Customers_Agents]
GO
/****** Object:  ForeignKey [Customers_Rewards_FK00]    Script Date: 01/09/2015 09:37:41 ******/
ALTER TABLE [dbo].[Customers_Rewards]  WITH CHECK ADD  CONSTRAINT [Customers_Rewards_FK00] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([CustomerId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Customers_Rewards] CHECK CONSTRAINT [Customers_Rewards_FK00]
GO
/****** Object:  ForeignKey [Customers_Rewards_FK01]    Script Date: 01/09/2015 09:37:41 ******/
ALTER TABLE [dbo].[Customers_Rewards]  WITH CHECK ADD  CONSTRAINT [Customers_Rewards_FK01] FOREIGN KEY([RewardId])
REFERENCES [dbo].[Rewards] ([RewardId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Customers_Rewards] CHECK CONSTRAINT [Customers_Rewards_FK01]
GO
/****** Object:  ForeignKey [CreditCards_FK00]    Script Date: 01/09/2015 09:37:41 ******/
ALTER TABLE [dbo].[CreditCards]  WITH CHECK ADD  CONSTRAINT [CreditCards_FK00] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([CustomerId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[CreditCards] CHECK CONSTRAINT [CreditCards_FK00]
GO
/****** Object:  ForeignKey [Bookings_FK00]    Script Date: 01/09/2015 09:37:41 ******/
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD  CONSTRAINT [Bookings_FK00] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([CustomerId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Bookings] CHECK CONSTRAINT [Bookings_FK00]
GO
/****** Object:  ForeignKey [Bookings_FK01]    Script Date: 01/09/2015 09:37:41 ******/
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD  CONSTRAINT [Bookings_FK01] FOREIGN KEY([PackageId])
REFERENCES [dbo].[Packages] ([PackageId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Bookings] CHECK CONSTRAINT [Bookings_FK01]
GO
/****** Object:  ForeignKey [Bookings_FK02]    Script Date: 01/09/2015 09:37:41 ******/
ALTER TABLE [dbo].[Bookings]  WITH CHECK ADD  CONSTRAINT [Bookings_FK02] FOREIGN KEY([TripTypeId])
REFERENCES [dbo].[TripTypes] ([TripTypeId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Bookings] CHECK CONSTRAINT [Bookings_FK02]
GO
/****** Object:  ForeignKey [FK_BookingDetails_Bookings]    Script Date: 01/09/2015 09:37:41 ******/
ALTER TABLE [dbo].[BookingDetails]  WITH CHECK ADD  CONSTRAINT [FK_BookingDetails_Bookings] FOREIGN KEY([BookingId])
REFERENCES [dbo].[Bookings] ([BookingId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[BookingDetails] CHECK CONSTRAINT [FK_BookingDetails_Bookings]
GO
/****** Object:  ForeignKey [FK_BookingDetails_Classes]    Script Date: 01/09/2015 09:37:41 ******/
ALTER TABLE [dbo].[BookingDetails]  WITH CHECK ADD  CONSTRAINT [FK_BookingDetails_Classes] FOREIGN KEY([ClassId])
REFERENCES [dbo].[Classes] ([ClassId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[BookingDetails] CHECK CONSTRAINT [FK_BookingDetails_Classes]
GO
/****** Object:  ForeignKey [FK_BookingDetails_Fees]    Script Date: 01/09/2015 09:37:41 ******/
ALTER TABLE [dbo].[BookingDetails]  WITH CHECK ADD  CONSTRAINT [FK_BookingDetails_Fees] FOREIGN KEY([FeeId])
REFERENCES [dbo].[Fees] ([FeeId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[BookingDetails] CHECK CONSTRAINT [FK_BookingDetails_Fees]
GO
/****** Object:  ForeignKey [FK_BookingDetails_Products_Suppliers]    Script Date: 01/09/2015 09:37:41 ******/
ALTER TABLE [dbo].[BookingDetails]  WITH CHECK ADD  CONSTRAINT [FK_BookingDetails_Products_Suppliers] FOREIGN KEY([ProductSupplierId])
REFERENCES [dbo].[Products_Suppliers] ([ProductSupplierId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[BookingDetails] CHECK CONSTRAINT [FK_BookingDetails_Products_Suppliers]
GO
/****** Object:  ForeignKey [FK_BookingDetails_Regions]    Script Date: 01/09/2015 09:37:41 ******/
ALTER TABLE [dbo].[BookingDetails]  WITH CHECK ADD  CONSTRAINT [FK_BookingDetails_Regions] FOREIGN KEY([RegionId])
REFERENCES [dbo].[Regions] ([RegionId])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[BookingDetails] CHECK CONSTRAINT [FK_BookingDetails_Regions]
GO
ALTER TABLE [dbo].[BookingDetails]  WITH NOCHECK ADD  CONSTRAINT [FK_BookingDetails_DeparturePlnId] FOREIGN KEY([DeparturePlnId])
REFERENCES [dbo].[FlightsTable] ([FlightId])
GO
ALTER TABLE [dbo].[BookingDetails]  WITH NOCHECK ADD  CONSTRAINT [FK_BookingDetails_ReturnPlnId] FOREIGN KEY([ReturnPlnId])
REFERENCES [dbo].[FlightsTable] ([FlightId])
GO
ALTER TABLE [dbo].[Packages]  WITH NOCHECK ADD  CONSTRAINT [FK_Packages_DeparturePlnId] FOREIGN KEY([DeparturePlnId])
REFERENCES [dbo].[FlightsTable] ([FlightId])
GO
ALTER TABLE [dbo].[Packages] CHECK CONSTRAINT [FK_Packages_DeparturePlnId]
GO
ALTER TABLE [dbo].[Packages]  WITH NOCHECK ADD  CONSTRAINT [FK_Packages_ReturnPlnId] FOREIGN KEY([ReturnPlnId])
REFERENCES [dbo].[FlightsTable] ([FlightId])
GO