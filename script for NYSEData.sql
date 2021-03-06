USE [master]
GO
/****** Object:  Database [NYSEData]    Script Date: 2/16/2019 3:29:24 PM ******/
CREATE DATABASE [NYSEData]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'NYSEData', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\NYSEData.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'NYSEData_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\NYSEData_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [NYSEData] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [NYSEData].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [NYSEData] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [NYSEData] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [NYSEData] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [NYSEData] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [NYSEData] SET ARITHABORT OFF 
GO
ALTER DATABASE [NYSEData] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [NYSEData] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [NYSEData] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [NYSEData] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [NYSEData] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [NYSEData] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [NYSEData] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [NYSEData] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [NYSEData] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [NYSEData] SET  DISABLE_BROKER 
GO
ALTER DATABASE [NYSEData] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [NYSEData] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [NYSEData] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [NYSEData] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [NYSEData] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [NYSEData] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [NYSEData] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [NYSEData] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [NYSEData] SET  MULTI_USER 
GO
ALTER DATABASE [NYSEData] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [NYSEData] SET DB_CHAINING OFF 
GO
ALTER DATABASE [NYSEData] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [NYSEData] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [NYSEData] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [NYSEData] SET QUERY_STORE = OFF
GO
USE [NYSEData]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [NYSEData]
GO
/****** Object:  Table [dbo].[NYSEDailyPriceA]    Script Date: 2/16/2019 3:29:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NYSEDailyPriceA](
	[exchange] [nvarchar](50) NOT NULL,
	[date] [date] NOT NULL,
	[stock_symbol] [nvarchar](50) NOT NULL,
	[stock_price_open] [float] NOT NULL,
	[stock_price_high] [float] NOT NULL,
	[stock_price_low] [float] NOT NULL,
	[stock_price_close] [float] NOT NULL,
	[stock_volume] [int] NOT NULL,
	[stock_price_adj_close] [float] NOT NULL,
	[id] [int] NOT NULL,
 CONSTRAINT [PK_NYSEDailyPriceA_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[NYSEData]    Script Date: 2/16/2019 3:29:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[NYSEData]
AS
SELECT        exchange, date, stock_symbol, stock_price_open, stock_price_high, stock_price_low, stock_price_close, stock_volume, stock_price_adj_close, id
FROM            dbo.NYSEDailyPriceA
GO
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-02' AS Date), N'ASP', 10.88, 10.88, 10.63, 10.69, 9800, 4.88, 1)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-02' AS Date), N'AIT', 15.94, 16.12, 15.94, 16, 134600, 5.63, 2)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-02' AS Date), N'AVA', 28.83, 31.39, 26.97, 30.76, 2680200, 22.34, 3)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-02' AS Date), N'AEG', 72.37, 72.37, 71.25, 72.06, 97100, 25.25, 4)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-02' AS Date), N'ASF', 26.12, 26.12, 25, 25.25, 39200, 11.66, 5)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-02' AS Date), N'AMG', 34.69, 34.94, 34.06, 34.94, 41600, 23.29, 6)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-02' AS Date), N'ASA', 17.12, 17.24, 17.12, 17.18, 19700, 13.36, 7)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-02' AS Date), N'AA', 70.31, 72.81, 70.31, 72.12, 4459400, 28.98, 8)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-02' AS Date), N'ARG', 7.75, 7.75, 7.44, 7.44, 329700, 6.96, 9)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-02' AS Date), N'ASG', 10.06, 10.12, 9.94, 10.06, 26900, 3.67, 10)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-02' AS Date), N'AEO', 36.5, 36.75, 34.12, 34.12, 3420000, 6.88, 11)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-02' AS Date), N'APL', 12.25, 12.38, 12, 12, 14300, 5.25, 12)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-02' AS Date), N'AXE', 19.69, 20.25, 19.69, 19.94, 74100, 18.91, 13)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-02' AS Date), N'AFG', 21.44, 21.44, 20.75, 21.13, 76500, 11.25, 14)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-02' AS Date), N'AVT', 53.87, 53.93, 50.25, 52.24, 330400, 25.62, 15)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-02' AS Date), N'AGM', 19.56, 19.63, 19.37, 19.37, 4500, 17.04, 16)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-02' AS Date), N'APD', 29.62, 30.87, 29.5, 30.62, 663600, 24.82, 17)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-02' AS Date), N'ADI', 93, 98.69, 90.12, 98, 2826200, 43.44, 18)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-02' AS Date), N'ASI', 7, 7.12, 7, 7.12, 26500, 6.73, 19)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-02' AS Date), N'ARK', 6.53, 6.59, 6.47, 6.47, 153200, 2.21, 20)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-02' AS Date), N'ALV', 26.56, 26.87, 26.38, 26.75, 115400, 21.26, 21)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-02' AS Date), N'ABK', 49.19, 49.69, 48.5, 48.94, 307200, 30.16, 22)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-02' AS Date), N'ABM', 20.62, 20.81, 20.25, 20.62, 477400, 8.16, 23)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-02' AS Date), N'APF', 11.06, 11.06, 10.81, 10.94, 242100, 8.56, 24)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-02' AS Date), N'AVB', 34.5, 34.63, 34.37, 34.5, 60300, 20.8, 25)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-03' AS Date), N'ASP', 10.88, 10.94, 10.88, 10.94, 5300, 5.03, 26)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-03' AS Date), N'AIT', 18.12, 18.12, 17.5, 17.56, 62600, 6.22, 27)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-03' AS Date), N'AVA', 29.56, 29.69, 28.75, 29.5, 248200, 21.5, 28)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-03' AS Date), N'AEG', 69.44, 72, 68.63, 71, 135000, 24.88, 29)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-03' AS Date), N'ASF', 41.12, 41.87, 38.12, 40.25, 263200, 18.59, 30)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-03' AS Date), N'AMG', 39.75, 40.69, 39.75, 40.25, 232000, 26.83, 31)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-03' AS Date), N'ASA', 18.31, 18.75, 18.31, 18.56, 36800, 14.54, 32)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-03' AS Date), N'AA', 68.5, 70.81, 66.12, 69.75, 4780600, 28.12, 33)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-03' AS Date), N'ARG', 7, 7, 6.5, 6.69, 451900, 6.26, 34)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-03' AS Date), N'ASG', 10.19, 10.5, 10.12, 10.25, 62800, 3.86, 35)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-03' AS Date), N'AEO', 28.12, 30.13, 25, 25.63, 12864200, 5.17, 36)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-03' AS Date), N'APL', 11.75, 11.75, 11.62, 11.75, 3600, 5.14, 37)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-03' AS Date), N'AXE', 18.31, 19.37, 18.13, 19.31, 278700, 18.31, 38)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-03' AS Date), N'AFG', 21, 21.25, 20, 20, 354900, 10.65, 39)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-03' AS Date), N'AVT', 66.96, 68.7, 63.53, 65.27, 454400, 32.01, 40)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-03' AS Date), N'AGM', 16.81, 16.88, 16.5, 16.75, 6400, 14.73, 41)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-03' AS Date), N'APD', 25.75, 26.12, 25.31, 25.94, 1885200, 21.03, 42)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-03' AS Date), N'ADI', 159, 165, 157.25, 161.5, 3680200, 71.58, 43)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-03' AS Date), N'ASI', 6.88, 6.94, 6.88, 6.94, 2000, 6.55, 44)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-03' AS Date), N'ARK', 6.49, 6.55, 6.42, 6.55, 162300, 2.26, 45)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-03' AS Date), N'ALV', 27, 27.19, 26.69, 27.19, 23100, 21.61, 46)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-03' AS Date), N'ABK', 43.94, 45, 43.75, 44.5, 507400, 27.49, 47)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-03' AS Date), N'ABM', 25.19, 25.44, 24.94, 25.19, 241000, 9.96, 48)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-03' AS Date), N'APF', 10.75, 10.88, 10.75, 10.81, 130600, 8.47, 49)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-03' AS Date), N'AVB', 33.44, 34.25, 33.44, 34.25, 280300, 20.65, 50)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-05' AS Date), N'ASP', 10.81, 10.88, 10.75, 10.81, 5600, 5.05, 51)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-05' AS Date), N'AIT', 17.37, 17.75, 17.37, 17.75, 44100, 6.29, 52)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-05' AS Date), N'AVA', 29.81, 31.37, 29.81, 30.69, 219100, 22.37, 53)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-05' AS Date), N'AEG', 71, 72.25, 70.75, 72.25, 127900, 25.54, 54)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-05' AS Date), N'ASF', 40.75, 46.75, 40.75, 46.5, 376800, 21.48, 55)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-05' AS Date), N'AMG', 39.88, 40.12, 39.75, 39.81, 148400, 26.54, 56)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-05' AS Date), N'ASA', 15.38, 15.88, 15.38, 15.62, 59100, 12.24, 57)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-05' AS Date), N'AA', 64.87, 64.87, 63, 63.44, 3623200, 25.58, 58)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-05' AS Date), N'ARG', 5.87, 6.19, 5.31, 5.75, 1196800, 5.38, 59)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-05' AS Date), N'ASG', 11, 11.19, 10.81, 11.06, 28700, 4.17, 60)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-05' AS Date), N'AEO', 17.63, 17.75, 16.38, 16.44, 8197200, 3.31, 61)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-05' AS Date), N'APL', 12.75, 12.75, 12.75, 12.75, 0, 5.73, 62)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-05' AS Date), N'AXE', 33.75, 34.31, 33.19, 33.62, 242100, 31.89, 63)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-05' AS Date), N'AFG', 25.31, 26.25, 25.31, 26.25, 96800, 14.11, 64)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-05' AS Date), N'AVT', 78.62, 80.38, 78.12, 78.44, 469600, 38.56, 65)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-05' AS Date), N'AGM', 15.06, 15.38, 15.06, 15.38, 6600, 13.52, 66)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-05' AS Date), N'APD', 30.81, 32.06, 30.31, 31.56, 608000, 25.75, 67)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-05' AS Date), N'ADI', 77.75, 79.75, 77.19, 77.69, 2942000, 68.87, 68)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-05' AS Date), N'ASI', 5, 5, 5, 5, 100, 4.72, 69)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-05' AS Date), N'ARK', 6.25, 6.44, 6.25, 6.44, 241000, 2.27, 70)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-05' AS Date), N'ALV', 28, 28.06, 27.75, 28.06, 16900, 22.31, 71)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-05' AS Date), N'ABK', 48.13, 49.44, 47.88, 48.25, 768300, 29.81, 72)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-05' AS Date), N'ABM', 25.19, 25.37, 25.12, 25.37, 25400, 10.1, 73)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-05' AS Date), N'APF', 10.69, 10.88, 10.69, 10.81, 198100, 8.47, 74)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-05' AS Date), N'AVB', 39.13, 39.44, 39.06, 39.44, 262200, 24.15, 75)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-06' AS Date), N'ASP', 10.63, 10.81, 10.63, 10.81, 6100, 5.09, 76)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-06' AS Date), N'AIT', 17.31, 17.44, 17.06, 17.19, 53400, 6.14, 77)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-06' AS Date), N'AVA', 23.38, 23.44, 22.06, 22.69, 319700, 16.62, 78)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-06' AS Date), N'AEG', 36.13, 36.5, 35.94, 36.5, 152900, 25.8, 79)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-06' AS Date), N'ASF', 52.19, 53.87, 52.19, 53, 134800, 24.48, 80)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-06' AS Date), N'AMG', 33.62, 35.12, 33.62, 35.12, 80600, 23.42, 81)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-06' AS Date), N'ASA', 15.25, 15.5, 15.25, 15.31, 10600, 12.11, 82)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-06' AS Date), N'AA', 58.25, 58.25, 57.31, 57.69, 4304800, 23.35, 83)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-06' AS Date), N'ARG', 5.31, 5.62, 5.31, 5.5, 168400, 5.15, 84)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-06' AS Date), N'ASG', 10.31, 10.44, 10.31, 10.44, 60900, 4.07, 85)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-06' AS Date), N'AEO', 16, 16.75, 15.25, 16.44, 5022400, 3.31, 86)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-06' AS Date), N'APL', 12.38, 12.38, 12.38, 12.38, 1500, 5.56, 87)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-06' AS Date), N'AXE', 28.37, 29.44, 28.12, 29.44, 182900, 27.92, 88)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-06' AS Date), N'AFG', 27.94, 28.5, 27.94, 28.44, 221200, 15.29, 89)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-06' AS Date), N'AVT', 69.94, 72.56, 69.81, 71.62, 226400, 35.21, 90)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-06' AS Date), N'AGM', 15.13, 15.31, 15.13, 15.13, 23600, 13.3, 91)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-06' AS Date), N'APD', 34.63, 36.44, 34.06, 36.31, 521000, 29.62, 92)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-06' AS Date), N'ADI', 79, 84.62, 78, 83, 2353900, 73.58, 93)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-06' AS Date), N'ASI', 4.5, 4.5, 4.44, 4.5, 72600, 4.25, 94)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-06' AS Date), N'ARK', 6.38, 6.5, 6.31, 6.5, 370600, 2.32, 95)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-06' AS Date), N'ALV', 27.31, 28.19, 27.31, 28.06, 19400, 22.4, 96)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-06' AS Date), N'ABK', 50.5, 52.94, 50.5, 52.69, 732000, 32.63, 97)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-06' AS Date), N'ABM', 23.19, 23.87, 22.69, 23.87, 90800, 9.51, 98)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-06' AS Date), N'APF', 9.56, 9.62, 9.56, 9.62, 237100, 7.54, 99)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-06' AS Date), N'AVB', 39.88, 39.88, 39.62, 39.69, 53900, 24.3, 100)
GO
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-08' AS Date), N'ASP', 10.94, 11, 10.94, 10.94, 3900, 5.19, 101)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-08' AS Date), N'AIT', 16.31, 16.75, 16, 16.75, 29400, 5.98, 102)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-08' AS Date), N'AVA', 18.5, 19.19, 18.5, 19.06, 180700, 13.97, 103)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-08' AS Date), N'AEG', 37.75, 37.81, 37.19, 37.37, 86600, 26.42, 104)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-08' AS Date), N'ASF', 54.75, 62.75, 54.75, 62.44, 377600, 28.84, 105)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-08' AS Date), N'AMG', 47.88, 47.88, 46.25, 47.81, 269800, 31.88, 106)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-08' AS Date), N'ASA', 15.31, 15.44, 15.31, 15.38, 6200, 12.16, 107)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-08' AS Date), N'AA', 30.56, 31.44, 30.56, 31.06, 2233200, 25.14, 108)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-08' AS Date), N'ARG', 5.31, 5.56, 5.31, 5.44, 438700, 5.09, 109)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-08' AS Date), N'ASG', 11.5, 11.88, 11.44, 11.62, 20900, 4.53, 110)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-08' AS Date), N'AEO', 15, 15, 14.19, 14.3, 1071900, 2.88, 111)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-08' AS Date), N'APL', 14.25, 14.25, 13.88, 14.06, 3000, 6.53, 112)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-08' AS Date), N'AXE', 29.25, 30.88, 29.25, 30.88, 189600, 29.28, 113)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-08' AS Date), N'AFG', 24.94, 25, 24.56, 24.63, 58500, 13.37, 114)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-08' AS Date), N'AVT', 56.94, 57.94, 56.19, 57.06, 291200, 28.11, 115)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-08' AS Date), N'AGM', 14.88, 15.25, 14.88, 15, 25500, 13.19, 116)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-08' AS Date), N'APD', 33.38, 33.63, 33.19, 33.38, 329800, 27.39, 117)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-08' AS Date), N'ADI', 65.75, 66.5, 64.38, 65.31, 2257400, 57.9, 118)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-08' AS Date), N'ASI', 4.5, 4.5, 4.5, 4.5, 500, 4.25, 119)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2000-01-08' AS Date), N'ARK', 6.94, 7, 6.88, 7, 128300, 2.55, 120)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2018-07-23' AS Date), N'MM', 33, 33, 33, 33, 33000, 33, 122)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2018-07-23' AS Date), N'qq', 11, 11, 11, 11, 11000, 11, 123)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2018-07-23' AS Date), N'aa', 10, 10, 10, 10, 10000, 10, 124)
INSERT [dbo].[NYSEDailyPriceA] ([exchange], [date], [stock_symbol], [stock_price_open], [stock_price_high], [stock_price_low], [stock_price_close], [stock_volume], [stock_price_adj_close], [id]) VALUES (N'NYSE', CAST(N'2018-07-25' AS Date), N'aa', 10, 10, 10, 10, 10000, 10, 125)
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "NYSEDailyPriceA"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 239
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'NYSEData'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'NYSEData'
GO
USE [master]
GO
ALTER DATABASE [NYSEData] SET  READ_WRITE 
GO
