USE [master]
GO
/****** Object:  Database [User23_493]    Script Date: 04.03.2023 16:10:08 ******/
CREATE DATABASE [User23_493]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'User23_493', FILENAME = N'/var/opt/mssql/data/User23_493.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'User23_493_log', FILENAME = N'/var/opt/mssql/data/User23_493_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [User23_493].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [User23_493] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [User23_493] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [User23_493] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [User23_493] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [User23_493] SET ARITHABORT OFF 
GO
ALTER DATABASE [User23_493] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [User23_493] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [User23_493] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [User23_493] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [User23_493] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [User23_493] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [User23_493] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [User23_493] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [User23_493] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [User23_493] SET  ENABLE_BROKER 
GO
ALTER DATABASE [User23_493] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [User23_493] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [User23_493] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [User23_493] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [User23_493] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [User23_493] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [User23_493] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [User23_493] SET RECOVERY FULL 
GO
ALTER DATABASE [User23_493] SET  MULTI_USER 
GO
ALTER DATABASE [User23_493] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [User23_493] SET DB_CHAINING OFF 
GO
ALTER DATABASE [User23_493] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [User23_493] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [User23_493] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'User23_493', N'ON'
GO
ALTER DATABASE [User23_493] SET QUERY_STORE = OFF
GO
USE [User23_493]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 04.03.2023 16:10:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 04.03.2023 16:10:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturer](
	[ManufacturerID] [int] IDENTITY(1,1) NOT NULL,
	[ManufacturerName] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ManufacturerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 04.03.2023 16:10:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductArticleNumber] [nvarchar](25) NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[ProductDescription] [nvarchar](max) NOT NULL,
	[ProductCategoryID] [int] NOT NULL,
	[ProductPhoto] [nvarchar](100) NULL,
	[ProductManufacturerID] [int] NOT NULL,
	[ProductCost] [decimal](19, 4) NOT NULL,
	[ProductDiscountAmount] [tinyint] NULL,
	[ProductQuantityInStock] [int] NOT NULL,
	[ProductUnitID] [int] NOT NULL,
	[ProductProvideID] [int] NOT NULL,
	[ProductCurrentDiscount] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductArticleNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provide]    Script Date: 04.03.2023 16:10:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provide](
	[ProvideID] [int] IDENTITY(1,1) NOT NULL,
	[ProvideName] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProvideID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 04.03.2023 16:10:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unit]    Script Date: 04.03.2023 16:10:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unit](
	[UnitID] [int] IDENTITY(1,1) NOT NULL,
	[UnitName] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UnitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 04.03.2023 16:10:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserSurname] [nvarchar](100) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[UserPatronymic] [nvarchar](100) NOT NULL,
	[UserLogin] [nvarchar](max) NOT NULL,
	[UserPassword] [nvarchar](max) NOT NULL,
	[UserRole] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (1, N'Спортивный инвентарь
')
INSERT [dbo].[Category] ([CategoryID], [CategoryName]) VALUES (2, N'Одежда
')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Manufacturer] ON 

INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (1, N'X-Match
')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (2, N'Perfetto Sport
')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (3, N'ROMANA Next
')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (4, N'Moby Kids
')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (5, N'playToday
')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (6, N'Совтехстром
')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (7, N'Abtoys
')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (8, N'DFC
')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (9, N'Nordway
')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (10, N'Ridex
')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (11, N'Salomon
')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (12, N'Mikasa
')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (13, N'Molten
')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (14, N'Colton
')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (15, N'Atemi
')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (16, N'Green Hill
')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (17, N'SKIF
')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (18, N'Starfit
')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (19, N'Bradex
')
INSERT [dbo].[Manufacturer] ([ManufacturerID], [ManufacturerName]) VALUES (20, N'Demix
')
SET IDENTITY_INSERT [dbo].[Manufacturer] OFF
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductUnitID], [ProductProvideID], [ProductCurrentDiscount]) VALUES (N'B538G6', N'Спортивный костюм', N'Спортивный костюм playToday (футболка + шорты)', 2, N'B538G6.jpg', 5, CAST(839.0000 AS Decimal(19, 4)), 5, 17, 1, 1, 3)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductUnitID], [ProductProvideID], [ProductCurrentDiscount]) VALUES (N'C324S5', N'Шлем', N'Шлем г.л./сноуб. Salomon Grom р.:KS черный (L40836800)', 1, N'', 11, CAST(4000.0000 AS Decimal(19, 4)), 10, 16, 1, 2, 5)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductUnitID], [ProductProvideID], [ProductCurrentDiscount]) VALUES (N'D038G6', N'Лыжный комплект', N'Лыжный комплект беговые NORDWAY XC Classic, 45-45-45мм, 160см', 1, N'', 9, CAST(3000.0000 AS Decimal(19, 4)), 30, 23, 1, 2, 4)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductUnitID], [ProductProvideID], [ProductCurrentDiscount]) VALUES (N'D648N7', N'Набор для хоккея', N'Набор для хоккея Совтехстром', 1, N'D648N7.jpg', 6, CAST(350.0000 AS Decimal(19, 4)), 10, 7, 1, 2, 4)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductUnitID], [ProductProvideID], [ProductCurrentDiscount]) VALUES (N'D830R5', N'Тренажер прыжков', N'Тренажер для прыжков Moby Kids Moby-Jumper со счетчиком', 1, N'D830R5.jpg', 4, CAST(1120.0000 AS Decimal(19, 4)), 15, 8, 1, 1, 4)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductUnitID], [ProductProvideID], [ProductCurrentDiscount]) VALUES (N'D893W4', N'Мяч', N'Мяч футбольный DEMIX 1STLS1JWWW, универсальный, 4-й размер, белый/зеленый', 1, N'', 20, CAST(900.0000 AS Decimal(19, 4)), 5, 5, 1, 1, 2)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductUnitID], [ProductProvideID], [ProductCurrentDiscount]) VALUES (N'D927K3', N'Перчатки ', N'Перчатки Starfit SU-125 атлетические S черный', 1, N'', 18, CAST(660.0000 AS Decimal(19, 4)), 15, 3, 1, 2, 4)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductUnitID], [ProductProvideID], [ProductCurrentDiscount]) VALUES (N'E324U7', N'Велотренажер', N'Велотренажер двойной DFC B804 dual bike', 1, N'E324U7.jpg', 8, CAST(6480.0000 AS Decimal(19, 4)), 25, 5, 1, 1, 5)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductUnitID], [ProductProvideID], [ProductCurrentDiscount]) VALUES (N'F047J7', N'Коврик', N'Коврик Bradex для мягкой йоги дл.:1730мм ш.:610мм т.:3мм серый', 1, N'', 19, CAST(720.0000 AS Decimal(19, 4)), 15, 11, 1, 1, 5)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductUnitID], [ProductProvideID], [ProductCurrentDiscount]) VALUES (N'F687G5', N'Защита голени', N'Защита голени GREEN HILL Panther, L, синий/черный', 1, N'', 16, CAST(1900.0000 AS Decimal(19, 4)), 15, 6, 1, 1, 4)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductUnitID], [ProductProvideID], [ProductCurrentDiscount]) VALUES (N'F735B6', N'Игровой набор', N'Игровой набор Совтехстром Кегли и шары', 1, N'F735B6.jpg', 6, CAST(320.0000 AS Decimal(19, 4)), 15, 9, 1, 2, 2)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductUnitID], [ProductProvideID], [ProductCurrentDiscount]) VALUES (N'F746E6', N'Шведская стенка', N'Шведская стенка ROMANA Next, pastel', 1, N'F746E6.jpg', 3, CAST(9900.0000 AS Decimal(19, 4)), 10, 5, 1, 2, 3)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductUnitID], [ProductProvideID], [ProductCurrentDiscount]) VALUES (N'F937G4', N'Игровой набор', N'Набор Abtoys Бадминтон и теннис ', 1, N'F937G4.jpg', 7, CAST(480.0000 AS Decimal(19, 4)), 10, 12, 1, 1, 4)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductUnitID], [ProductProvideID], [ProductCurrentDiscount]) VALUES (N'G403T5', N'Тюбинг', N'Тюбинг Nordway, 73 см', 1, N'G403T5.jpg', 9, CAST(1450.0000 AS Decimal(19, 4)), 15, 13, 1, 1, 4)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductUnitID], [ProductProvideID], [ProductCurrentDiscount]) VALUES (N'G480F5', N'Ролики', N'Коньки роликовые Ridex Cricket жен. ABEC 3 кол.:72мм р.:39-42 синий', 1, N'', 10, CAST(1600.0000 AS Decimal(19, 4)), 15, 7, 1, 1, 4)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductUnitID], [ProductProvideID], [ProductCurrentDiscount]) VALUES (N'G522B5', N'Ласты', N'Ласты Colton CF-02 для плавания р.:33-34 серый/голубой', 1, N'', 14, CAST(1980.0000 AS Decimal(19, 4)), 15, 6, 1, 2, 3)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductUnitID], [ProductProvideID], [ProductCurrentDiscount]) VALUES (N'G598Y6', N'Спортивный мат', N'Спортивный мат 100x100x10 см Perfetto Sport № 3 бежевый', 1, N'G598Y6.jpg', 2, CAST(2390.0000 AS Decimal(19, 4)), 15, 16, 1, 2, 2)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductUnitID], [ProductProvideID], [ProductCurrentDiscount]) VALUES (N'G873H4', N'Велосипед', N'Велосипед SKIF 29 Disc (2021), горный (взрослый), рама: 17", колеса: 29", темно-серый', 1, N'', 17, CAST(14930.0000 AS Decimal(19, 4)), 5, 6, 1, 1, 4)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductUnitID], [ProductProvideID], [ProductCurrentDiscount]) VALUES (N'J4DF5E', N'Насос', N'Насос Molten HP-18-B для мячей мультиколор', 1, N'', 13, CAST(300.0000 AS Decimal(19, 4)), 5, 12, 1, 1, 4)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductUnitID], [ProductProvideID], [ProductCurrentDiscount]) VALUES (N'J532D4', N'Перчатки для карате', N'Перчатки для каратэ Green Hill KMС-6083 L красный', 1, N'', 16, CAST(1050.0000 AS Decimal(19, 4)), 15, 5, 1, 1, 3)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductUnitID], [ProductProvideID], [ProductCurrentDiscount]) VALUES (N'K432G6', N'Шапочка для плавания', N'Шапочка для плавания Atemi PU 140 ткань с покрытием желтый', 1, N'', 15, CAST(440.0000 AS Decimal(19, 4)), 25, 17, 1, 2, 5)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductUnitID], [ProductProvideID], [ProductCurrentDiscount]) VALUES (N'K937A5', N'Гиря', N'Гиря Starfit ГМБ4 мягкое 4кг синий/оранжевый', 1, N'', 18, CAST(890.0000 AS Decimal(19, 4)), 5, 10, 1, 2, 4)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductUnitID], [ProductProvideID], [ProductCurrentDiscount]) VALUES (N'N483G5', N'Клюшка', N'Клюшка Nordway NDW300 (2019/2020) SR лев. 19 150см', 1, N'', 9, CAST(1299.0000 AS Decimal(19, 4)), 10, 4, 1, 2, 3)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductUnitID], [ProductProvideID], [ProductCurrentDiscount]) VALUES (N'N836R5', N'Коньки', N'Коньки ATEMI AKSK01DXS, раздвижные, прогулочные, унисекс, 27-30, черный/зеленый', 1, N'', 15, CAST(2000.0000 AS Decimal(19, 4)), 10, 16, 1, 2, 3)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductUnitID], [ProductProvideID], [ProductCurrentDiscount]) VALUES (N'N892G6', N'Очки для плавания', N'Очки для плавания Atemi N8401 синий', 1, N'', 15, CAST(500.0000 AS Decimal(19, 4)), 5, 14, 1, 2, 5)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductUnitID], [ProductProvideID], [ProductCurrentDiscount]) VALUES (N'S374B5', N'Ролик для йоги', N'Ролик для йоги Bradex Туба d=14см ш.:33см оранжевый', 1, N'', 19, CAST(700.0000 AS Decimal(19, 4)), 10, 12, 1, 1, 3)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductUnitID], [ProductProvideID], [ProductCurrentDiscount]) VALUES (N'V312R4', N'Мяч', N'Мяч волейбольный MIKASA VT370W, для зала, 5-й размер, желтый/синий', 1, N'', 12, CAST(4150.0000 AS Decimal(19, 4)), 20, 5, 1, 2, 2)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductUnitID], [ProductProvideID], [ProductCurrentDiscount]) VALUES (N'V392H7', N'Степ-платформа', N'Степ-платформа Starfit SP-204 серый/черный', 1, N'', 18, CAST(4790.0000 AS Decimal(19, 4)), 10, 15, 1, 1, 3)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductUnitID], [ProductProvideID], [ProductCurrentDiscount]) VALUES (N'V423D4', N'Штанга', N'Штанга Starfit BB-401 30кг пласт. черный ', 1, N'', 18, CAST(5600.0000 AS Decimal(19, 4)), 10, 8, 1, 2, 3)
INSERT [dbo].[Product] ([ProductArticleNumber], [ProductName], [ProductDescription], [ProductCategoryID], [ProductPhoto], [ProductManufacturerID], [ProductCost], [ProductDiscountAmount], [ProductQuantityInStock], [ProductUnitID], [ProductProvideID], [ProductCurrentDiscount]) VALUES (N'А112Т4', N'Боксерская груша', N'Боксерская груша X-Match черная', 1, N'А112Т4.jpg', 1, CAST(778.0000 AS Decimal(19, 4)), 30, 6, 1, 1, 5)
SET IDENTITY_INSERT [dbo].[Provide] ON 

INSERT [dbo].[Provide] ([ProvideID], [ProvideName]) VALUES (1, N'Спортмастер
')
INSERT [dbo].[Provide] ([ProvideID], [ProvideName]) VALUES (2, N'Декатлон
')
SET IDENTITY_INSERT [dbo].[Provide] OFF
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Клиент')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Менеджер')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'Администратор')
SET IDENTITY_INSERT [dbo].[Role] OFF
SET IDENTITY_INSERT [dbo].[Unit] ON 

INSERT [dbo].[Unit] ([UnitID], [UnitName]) VALUES (1, N'шт')
SET IDENTITY_INSERT [dbo].[Unit] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (1, N'Пахомова', N'Аиша', N'Анатольевна', N'm4ic8j5qgstw@gmail.com', N'2L6KZG', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (2, N'Жуков', N'Роман', N'Богданович', N'd43zfg9tlsyv@gmail.com', N'uzWC67', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (3, N'Киселева', N'Анастасия', N'Максимовна', N'8ohgisf6k45w@outlook.com', N'8ntwUp', 3)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (4, N'Григорьева', N'Арина', N'Арсентьевна', N'hi1brwj46czx@mail.com', N'YOyhfR', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (5, N'Иванов', N'Лев', N'Михайлович', N'fvkbcamhlj52@gmail.com', N'RSbvHv', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (6, N'Григорьев', N'Лев', N'Давидович', N'9qxnce8jwruv@gmail.com', N'rwVDh9', 2)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (7, N'Поляков', N'Степан', N'Егорович', N'dotiex942p1r@gmail.com', N'LdNyos', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (8, N'Леонова', N'Алиса', N'Кирилловна', N'n0bmi2h1xral@tutanota.com', N'gynQMT', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (9, N'Яковлев', N'Платон', N'Константинович', N'sfm3t278kdvz@yahoo.com', N'AtnDjr', 1)
INSERT [dbo].[User] ([UserID], [UserSurname], [UserName], [UserPatronymic], [UserLogin], [UserPassword], [UserRole]) VALUES (10, N'Ковалева', N'Ева', N'Яковлевна', N'ilb8rdut0v7e@mail.com', N'JlFRCZ', 1)
SET IDENTITY_INSERT [dbo].[User] OFF
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([ProductCategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([ProductManufacturerID])
REFERENCES [dbo].[Manufacturer] ([ManufacturerID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([ProductUnitID])
REFERENCES [dbo].[Unit] ([UnitID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([ProductProvideID])
REFERENCES [dbo].[Provide] ([ProvideID])
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD FOREIGN KEY([UserRole])
REFERENCES [dbo].[Role] ([RoleID])
GO
USE [master]
GO
ALTER DATABASE [User23_493] SET  READ_WRITE 
GO
