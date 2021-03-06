USE [QuanLy]
GO
/****** Object:  Database [QuanLy]    Script Date: 15/12/2021 12:59:58 ******/
CREATE DATABASE [QuanLy]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLy', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QuanLy.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'QuanLy_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\QuanLy_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [QuanLy] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLy].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLy] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLy] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLy] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLy] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLy] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLy] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QuanLy] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLy] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLy] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLy] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLy] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLy] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLy] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLy] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLy] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QuanLy] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLy] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLy] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLy] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLy] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLy] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLy] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLy] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLy] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLy] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLy] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLy] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLy] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QuanLy] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QuanLy] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QuanLy] SET QUERY_STORE = OFF
GO
USE [QuanLy]
GO
/****** Object:  Table [dbo].[BillMoneyOut]    Script Date: 15/12/2021 12:59:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillMoneyOut](
	[billId] [varchar](32) NOT NULL,
	[dateCreate] [date] NULL,
	[description] [nvarchar](150) NULL,
	[moneyOut] [float] NULL,
	[menuId] [int] NULL,
	[mid] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[billId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manager]    Script Date: 15/12/2021 12:59:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manager](
	[mid] [varchar](30) NOT NULL,
	[mfullname] [nvarchar](30) NULL,
	[mphone] [nvarchar](30) NULL,
	[username] [varchar](30) NULL,
	[password] [varchar](32) NULL,
PRIMARY KEY CLUSTERED 
(
	[mid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 15/12/2021 12:59:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[menuId] [int] NOT NULL,
	[menuName] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[menuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BillMoneyOut] ([billId], [dateCreate], [description], [moneyOut], [menuId], [mid]) VALUES (N'ATQ', CAST(N'2020-06-19' AS Date), N'Null', 1000, 4, N'AT1')
INSERT [dbo].[BillMoneyOut] ([billId], [dateCreate], [description], [moneyOut], [menuId], [mid]) VALUES (N'BCW', CAST(N'2019-05-19' AS Date), N'Note', 3123, 7, N'AT1')
INSERT [dbo].[BillMoneyOut] ([billId], [dateCreate], [description], [moneyOut], [menuId], [mid]) VALUES (N'ENU', CAST(N'2021-12-16' AS Date), N'Good', 3000, 10, N'YZE')
INSERT [dbo].[BillMoneyOut] ([billId], [dateCreate], [description], [moneyOut], [menuId], [mid]) VALUES (N'FBJ', CAST(N'2020-04-27' AS Date), N'Null', 3123, 3, N'AT1')
INSERT [dbo].[BillMoneyOut] ([billId], [dateCreate], [description], [moneyOut], [menuId], [mid]) VALUES (N'FS2', CAST(N'2021-12-01' AS Date), N'Null', 10000, 2, N'BS1')
INSERT [dbo].[BillMoneyOut] ([billId], [dateCreate], [description], [moneyOut], [menuId], [mid]) VALUES (N'GCY', CAST(N'2021-05-25' AS Date), N'Note', 3123, 8, N'AT1')
INSERT [dbo].[BillMoneyOut] ([billId], [dateCreate], [description], [moneyOut], [menuId], [mid]) VALUES (N'GFJ', CAST(N'2021-12-10' AS Date), N'Save', 2056, 7, N'AT1')
INSERT [dbo].[BillMoneyOut] ([billId], [dateCreate], [description], [moneyOut], [menuId], [mid]) VALUES (N'IOS', CAST(N'2019-05-19' AS Date), N'Note', 13123, 6, N'AT1')
INSERT [dbo].[BillMoneyOut] ([billId], [dateCreate], [description], [moneyOut], [menuId], [mid]) VALUES (N'JMI', CAST(N'2020-06-11' AS Date), N'Good', 2313, 6, N'AT1')
INSERT [dbo].[BillMoneyOut] ([billId], [dateCreate], [description], [moneyOut], [menuId], [mid]) VALUES (N'JMS', CAST(N'2019-07-13' AS Date), N'Good', 1321, 1, N'AT1')
INSERT [dbo].[BillMoneyOut] ([billId], [dateCreate], [description], [moneyOut], [menuId], [mid]) VALUES (N'KAE', CAST(N'2020-08-25' AS Date), N'Good', 2056, 10, N'AT1')
INSERT [dbo].[BillMoneyOut] ([billId], [dateCreate], [description], [moneyOut], [menuId], [mid]) VALUES (N'OBF', CAST(N'2019-05-11' AS Date), N'Save', 1413, 4, N'AT1')
INSERT [dbo].[BillMoneyOut] ([billId], [dateCreate], [description], [moneyOut], [menuId], [mid]) VALUES (N'OPG', CAST(N'2020-02-18' AS Date), N'Good', 312, 2, N'AT1')
INSERT [dbo].[BillMoneyOut] ([billId], [dateCreate], [description], [moneyOut], [menuId], [mid]) VALUES (N'RXY', CAST(N'2020-06-11' AS Date), N'Good', 213123, 6, N'AT1')
INSERT [dbo].[BillMoneyOut] ([billId], [dateCreate], [description], [moneyOut], [menuId], [mid]) VALUES (N'TLV', CAST(N'2021-12-21' AS Date), N'Null', 2000, 9, N'EHD')
INSERT [dbo].[BillMoneyOut] ([billId], [dateCreate], [description], [moneyOut], [menuId], [mid]) VALUES (N'TUG', CAST(N'2021-12-17' AS Date), N'Save', 3123, 6, N'AT1')
INSERT [dbo].[BillMoneyOut] ([billId], [dateCreate], [description], [moneyOut], [menuId], [mid]) VALUES (N'WBN', CAST(N'2021-12-23' AS Date), N'Save', 2000, 6, N'EHD')
INSERT [dbo].[BillMoneyOut] ([billId], [dateCreate], [description], [moneyOut], [menuId], [mid]) VALUES (N'XQM', CAST(N'2019-04-12' AS Date), N'Note', 1231, 4, N'AT1')
INSERT [dbo].[BillMoneyOut] ([billId], [dateCreate], [description], [moneyOut], [menuId], [mid]) VALUES (N'YJN', CAST(N'2019-06-18' AS Date), N'Good', 1000, 5, N'AT1')
INSERT [dbo].[BillMoneyOut] ([billId], [dateCreate], [description], [moneyOut], [menuId], [mid]) VALUES (N'YLB', CAST(N'2021-05-06' AS Date), N'Null', 213123, 5, N'AT1')
INSERT [dbo].[BillMoneyOut] ([billId], [dateCreate], [description], [moneyOut], [menuId], [mid]) VALUES (N'ZMT', CAST(N'2021-12-05' AS Date), N'Null', 213123, 2, N'AT1')
INSERT [dbo].[BillMoneyOut] ([billId], [dateCreate], [description], [moneyOut], [menuId], [mid]) VALUES (N'ZZT', CAST(N'2021-06-11' AS Date), N'Null', 2056, 6, N'AT1')
GO
INSERT [dbo].[Manager] ([mid], [mfullname], [mphone], [username], [password]) VALUES (N'AT1', N'Doan Van Tuan', N'19001988', N'tuanhz', N'12345678')
INSERT [dbo].[Manager] ([mid], [mfullname], [mphone], [username], [password]) VALUES (N'BS1', N'Doan Van Hoa', N'19001989', N'Hoa123', N'102938')
INSERT [dbo].[Manager] ([mid], [mfullname], [mphone], [username], [password]) VALUES (N'EHD', N'Le Thi Nga', N'18008198', N'ngagv', N'123456789')
INSERT [dbo].[Manager] ([mid], [mfullname], [mphone], [username], [password]) VALUES (N'YZE', N'Le Cong Thuan', N'19003232', N'thuanlc', N'123456789A')
GO
INSERT [dbo].[Menu] ([menuId], [menuName]) VALUES (1, N'Eat')
INSERT [dbo].[Menu] ([menuId], [menuName]) VALUES (2, N'commodity spending')
INSERT [dbo].[Menu] ([menuId], [menuName]) VALUES (3, N'clothes')
INSERT [dbo].[Menu] ([menuId], [menuName]) VALUES (4, N'cosmetics')
INSERT [dbo].[Menu] ([menuId], [menuName]) VALUES (5, N'entertainment fee')
INSERT [dbo].[Menu] ([menuId], [menuName]) VALUES (6, N'medican')
INSERT [dbo].[Menu] ([menuId], [menuName]) VALUES (7, N'education')
INSERT [dbo].[Menu] ([menuId], [menuName]) VALUES (8, N'Electricity bill')
INSERT [dbo].[Menu] ([menuId], [menuName]) VALUES (9, N'water money')
INSERT [dbo].[Menu] ([menuId], [menuName]) VALUES (10, N'repair fee')
GO
ALTER TABLE [dbo].[BillMoneyOut]  WITH CHECK ADD FOREIGN KEY([menuId])
REFERENCES [dbo].[Menu] ([menuId])
GO
ALTER TABLE [dbo].[BillMoneyOut]  WITH CHECK ADD FOREIGN KEY([mid])
REFERENCES [dbo].[Manager] ([mid])
GO
USE [master]
GO
ALTER DATABASE [QuanLy] SET  READ_WRITE 
GO
