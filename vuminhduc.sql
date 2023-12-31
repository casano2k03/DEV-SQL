USE [master]
GO
/****** Object:  Database [DEV2311LM_SQL24]    Script Date: 12/7/2023 10:32:39 PM ******/
CREATE DATABASE [DEV2311LM_SQL24]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DEV2311LM_SQL24', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DEV2311LM_SQL24.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DEV2311LM_SQL24_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DEV2311LM_SQL24_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DEV2311LM_SQL24].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DEV2311LM_SQL24] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DEV2311LM_SQL24] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DEV2311LM_SQL24] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DEV2311LM_SQL24] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DEV2311LM_SQL24] SET ARITHABORT OFF 
GO
ALTER DATABASE [DEV2311LM_SQL24] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DEV2311LM_SQL24] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DEV2311LM_SQL24] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DEV2311LM_SQL24] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DEV2311LM_SQL24] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DEV2311LM_SQL24] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DEV2311LM_SQL24] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DEV2311LM_SQL24] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DEV2311LM_SQL24] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DEV2311LM_SQL24] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DEV2311LM_SQL24] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DEV2311LM_SQL24] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DEV2311LM_SQL24] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DEV2311LM_SQL24] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DEV2311LM_SQL24] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DEV2311LM_SQL24] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DEV2311LM_SQL24] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DEV2311LM_SQL24] SET RECOVERY FULL 
GO
ALTER DATABASE [DEV2311LM_SQL24] SET  MULTI_USER 
GO
ALTER DATABASE [DEV2311LM_SQL24] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DEV2311LM_SQL24] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DEV2311LM_SQL24] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DEV2311LM_SQL24] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DEV2311LM_SQL24] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DEV2311LM_SQL24] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DEV2311LM_SQL24', N'ON'
GO
ALTER DATABASE [DEV2311LM_SQL24] SET QUERY_STORE = ON
GO
ALTER DATABASE [DEV2311LM_SQL24] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [DEV2311LM_SQL24]
GO
/****** Object:  Table [dbo].[CATEGORY1]    Script Date: 12/7/2023 10:32:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CATEGORY1](
	[ID] [bigint] NULL,
	[NAME] [nvarchar](500) NULL,
	[NOTES] [ntext] NULL,
	[ICON] [nvarchar](250) NULL,
	[IDPARENT] [bigint] NULL,
	[SLUG] [nvarchar](160) NULL,
	[META_TITLE] [nvarchar](100) NULL,
	[META_KEYWORD] [nvarchar](500) NULL,
	[META_DESCRIPTION] [nvarchar](500) NULL,
	[CREATED_DATE] [datetime] NULL,
	[UPDATED_DATE] [datetime] NULL,
	[CREATED_BY] [bigint] NULL,
	[UPDATED_BY] [bigint] NULL,
	[ISDELETE] [tinyint] NULL,
	[ISACTIVE] [tinyint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CONFIGURATIONS]    Script Date: 12/7/2023 10:32:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONFIGURATIONS](
	[ID] [bigint] NOT NULL,
	[NAME] [nvarchar](500) NULL,
	[NOTES] [ntext] NULL,
	[ISDELETE] [tinyint] NULL,
	[ISACTIVE] [tinyint] NULL,
 CONSTRAINT [PK_CONFIGURATIONS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CTHD]    Script Date: 12/7/2023 10:32:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHD](
	[SOHD] [nchar](10) NULL,
	[MAHH] [nchar](10) NULL,
	[SOLUONG] [smallint] NULL,
	[DONGIA] [money] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CUSTOMER]    Script Date: 12/7/2023 10:32:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CUSTOMER](
	[ID] [bigint] NULL,
	[NAME] [nvarchar](250) NULL,
	[USERNAME] [nvarchar](50) NULL,
	[PASSWORD] [nvarchar](32) NULL,
	[ADDRESS] [nvarchar](500) NULL,
	[EMAIL] [nvarchar](150) NULL,
	[PHONE] [nvarchar](50) NULL,
	[AVATAR] [nvarchar](250) NULL,
	[CREATED_DATE] [datetime] NULL,
	[UPDATED_DATE] [datetime] NULL,
	[CREATED_BY] [bigint] NULL,
	[UPDATED_BY] [bigint] NULL,
	[ISDELETE] [tinyint] NULL,
	[ISACTIVE] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HANGHOA]    Script Date: 12/7/2023 10:32:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HANGHOA](
	[MAHH] [nchar](10) NULL,
	[TENHH] [nvarchar](150) NULL,
	[DVT] [nvarchar](20) NULL,
	[SOLUONGTON] [smallint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 12/7/2023 10:32:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[SOHD] [nchar](10) NULL,
	[LOAIHD] [nchar](10) NULL,
	[NGATHD] [nchar](10) NULL,
	[MAKH] [nchar](10) NULL,
	[TRIGIA] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 12/7/2023 10:32:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MAKH] [nchar](10) NULL,
	[TENKH] [nvarchar](150) NULL,
	[DIACHI] [nvarchar](150) NULL,
	[DIENTHOAI] [varchar](10) NULL,
	[EMAIL] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NEWS]    Script Date: 12/7/2023 10:32:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NEWS](
	[ID] [bigint] NOT NULL,
	[NAME] [nvarchar](500) NULL,
	[DESCRIPTION] [ntext] NULL,
	[IMAGE] [nvarchar](500) NULL,
	[IDNEWSCATEGORY] [bigint] NULL,
	[CONTENTS] [ntext] NULL,
	[SLUG] [nvarchar](160) NULL,
	[META_TITLE] [nvarchar](100) NULL,
	[META_KEYWORD] [nvarchar](500) NULL,
	[META_DESCRIPTION] [nvarchar](500) NULL,
	[CREATED_DATE] [datetime] NULL,
	[UPDATED_DATE] [datetime] NULL,
	[CREATED_BY] [bigint] NULL,
	[UPDATED_BY] [bigint] NULL,
	[ISDELETE] [tinyint] NULL,
	[ISACTIVE] [tinyint] NULL,
 CONSTRAINT [PK_NEWS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NEWS_CATEGORY]    Script Date: 12/7/2023 10:32:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NEWS_CATEGORY](
	[ID] [bigint] NULL,
	[NAME] [nvarchar](250) NULL,
	[NOTES] [ntext] NULL,
	[ICON] [nvarchar](250) NULL,
	[IDPARENT] [bigint] NULL,
	[SLUG] [nvarchar](160) NULL,
	[META_TITLE] [nvarchar](100) NULL,
	[META_KEYWORD] [nvarchar](500) NULL,
	[META_DESCRIPTION] [nvarchar](500) NULL,
	[CREATED_DATE] [datetime] NULL,
	[UPDATED_DATE] [datetime] NULL,
	[CREATED_BY] [bigint] NULL,
	[UPDATED_BY] [bigint] NULL,
	[ISDELETE] [tinyint] NULL,
	[ISACTIVE] [tinyint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ORDERS]    Script Date: 12/7/2023 10:32:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDERS](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[IDORDERS] [char](10) NULL,
	[ORDERS_DATE] [datetime] NULL,
	[IDCUSROMER] [bigint] NULL,
	[IDPAYMENT] [bigint] NULL,
	[TOTAL_MONEY] [decimal](18, 0) NULL,
	[NOTES] [ntext] NULL,
	[NAME_RECIVER] [nvarchar](250) NULL,
	[ADDRESS] [nvarchar](150) NULL,
	[EMAIL] [nvarchar](500) NULL,
	[PHONE] [nvarchar](50) NULL,
	[ISDELETE] [tinyint] NULL,
	[ISACTIVE] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ORDERS_DETAILS]    Script Date: 12/7/2023 10:32:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDERS_DETAILS](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[IDQRD] [bigint] NULL,
	[IDPRODUCT] [bigint] NULL,
	[PRICE] [decimal](18, 0) NULL,
	[QTY] [int] NULL,
	[TOTAL] [decimal](18, 0) NULL,
	[RETURN_QTY] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ORDERS_PAYMENT]    Script Date: 12/7/2023 10:32:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDERS_PAYMENT](
	[ID] [bigint] NULL,
	[IDOERD] [bigint] NULL,
	[IDPAYMENT] [bigint] NULL,
	[TOTAL] [decimal](18, 0) NULL,
	[NOTES] [ntext] NULL,
	[ISACTIVE] [tinyint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ORDERS_TRANSPORT]    Script Date: 12/7/2023 10:32:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDERS_TRANSPORT](
	[ID] [bigint] NULL,
	[IDORD] [bigint] NULL,
	[IDTRANSPORT] [bigint] NULL,
	[TOTAL] [decimal](18, 0) NULL,
	[NOTES] [ntext] NULL,
	[ISACTIVE] [tinyint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PAYMENT_METHOD]    Script Date: 12/7/2023 10:32:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAYMENT_METHOD](
	[ID] [bigint] NULL,
	[NAME] [nvarchar](250) NULL,
	[NOTES] [ntext] NULL,
	[CREATED_DATE] [datetime] NULL,
	[UPDATED_DATE] [datetime] NULL,
	[ISDELETE] [tinyint] NULL,
	[ISACTIVE] [tinyint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCT]    Script Date: 12/7/2023 10:32:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCT](
	[ID] [bigint] NOT NULL,
	[NAME] [nvarchar](500) NULL,
	[DESCROPTION] [ntext] NULL,
	[NOTES] [ntext] NULL,
	[IMAGE] [nvarchar](550) NULL,
	[IDCATEGORY] [bigint] NULL,
	[CONTENTS] [ntext] NULL,
	[PRICE] [decimal](18, 0) NULL,
	[QUATITY] [int] NULL,
	[SLUG] [nvarchar](160) NULL,
	[META_TITLE] [nvarchar](100) NULL,
	[META_KEYWORD] [nvarchar](500) NULL,
	[META_DESCRIPTION] [nvarchar](500) NULL,
	[CREATED_DATE] [datetime] NULL,
	[UPDATED_DATE] [datetime] NULL,
	[CREATED_BY] [bigint] NULL,
	[UPDATED_BY] [bigint] NULL,
	[ISDELETE] [tinyint] NULL,
	[ISACTIVE] [tinyint] NULL,
 CONSTRAINT [PK_PRODUCT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCT_CONFIG]    Script Date: 12/7/2023 10:32:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCT_CONFIG](
	[ID] [bigint] NULL,
	[IDPRODUCT] [bigint] NULL,
	[IDCONFIG] [bigint] NULL,
	[VALUE] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCT_IMAGES]    Script Date: 12/7/2023 10:32:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCT_IMAGES](
	[ID] [bigint] NULL,
	[NAME] [nvarchar](250) NULL,
	[URLIMG] [nvarchar](250) NULL,
	[IDPRODUCT] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TRANSPORT_METHOD]    Script Date: 12/7/2023 10:32:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRANSPORT_METHOD](
	[ID] [bigint] NULL,
	[NAME] [nvarchar](250) NULL,
	[NOTES] [ntext] NULL,
	[CREATED_DATE] [datetime] NULL,
	[UPDATED_DATE] [datetime] NULL,
	[ISDELETE] [tinyint] NULL,
	[ISACTIVE] [tinyint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[CTHD] ([SOHD], [MAHH], [SOLUONG], [DONGIA]) VALUES (N'HD0001    ', N'HH0001    ', 50, 1200.0000)
INSERT [dbo].[CTHD] ([SOHD], [MAHH], [SOLUONG], [DONGIA]) VALUES (N'HD0002    ', N'HH0001    ', 50, 1400.0000)
GO
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [DVT], [SOLUONGTON]) VALUES (N'MH0001    ', N'MiNE', N'2', 3)
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [DVT], [SOLUONGTON]) VALUES (N'MH0002    ', N'Sami', N'3', 4)
GO
INSERT [dbo].[HOADON] ([SOHD], [LOAIHD], [NGATHD], [MAKH], [TRIGIA]) VALUES (N'HD0001    ', N'TienHang  ', NULL, N'KH00001   ', N'30        ')
GO
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [DIACHI], [DIENTHOAI], [EMAIL]) VALUES (N'KH0001    ', N'VUMINHDUC', N'BienHoa', N'0933846924', N'vuminhduc2k03@gmail.com')
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [DIACHI], [DIENTHOAI], [EMAIL]) VALUES (N'KH0002    ', N'NGUYENCONGGIANG', N'HANOI', N'0231029103', N'giangjag@gmail.com')
GO
USE [master]
GO
ALTER DATABASE [DEV2311LM_SQL24] SET  READ_WRITE 
GO
