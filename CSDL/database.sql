USE [master]
GO
/****** Object:  Database [ShopBanHang]    Script Date: 6/20/2021 1:49:02 PM ******/
CREATE DATABASE [ShopBanHang]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShopBanHang', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.DQ\MSSQL\DATA\ShopBanHang.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ShopBanHang_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.DQ\MSSQL\DATA\ShopBanHang_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ShopBanHang] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShopBanHang].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShopBanHang] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShopBanHang] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShopBanHang] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShopBanHang] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShopBanHang] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShopBanHang] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShopBanHang] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShopBanHang] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShopBanHang] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShopBanHang] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShopBanHang] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShopBanHang] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShopBanHang] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShopBanHang] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShopBanHang] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ShopBanHang] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShopBanHang] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShopBanHang] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShopBanHang] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShopBanHang] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShopBanHang] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShopBanHang] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShopBanHang] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ShopBanHang] SET  MULTI_USER 
GO
ALTER DATABASE [ShopBanHang] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShopBanHang] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShopBanHang] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShopBanHang] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ShopBanHang] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ShopBanHang] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ShopBanHang', N'ON'
GO
ALTER DATABASE [ShopBanHang] SET QUERY_STORE = OFF
GO
USE [ShopBanHang]
GO
/****** Object:  User [newlux_sa]    Script Date: 6/20/2021 1:49:02 PM ******/
CREATE USER [newlux_sa] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[newlux_sa]
GO
ALTER ROLE [db_owner] ADD MEMBER [newlux_sa]
GO
/****** Object:  Schema [newlux_sa]    Script Date: 6/20/2021 1:49:02 PM ******/
CREATE SCHEMA [newlux_sa]
GO
/****** Object:  Table [dbo].[Abouts]    Script Date: 6/20/2021 1:49:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abouts](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[MetaTitle] [varchar](250) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[ContentHtml] [ntext] NULL,
	[Images] [nvarchar](250) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescription] [nvarchar](250) NULL,
	[Status] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](10) NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](10) NULL,
 CONSTRAINT [PK_Abouts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Albums]    Script Date: 6/20/2021 1:49:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Albums](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[MetaTitle] [varchar](250) NOT NULL,
	[Images] [nvarchar](250) NULL,
	[Description] [nvarchar](250) NULL,
	[Order] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](20) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescription] [nvarchar](250) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Albums] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 6/20/2021 1:49:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Logo] [nvarchar](250) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[Order] [int] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](20) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 6/20/2021 1:49:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[MetaTitle] [varchar](250) NULL,
	[Images] [nvarchar](250) NULL,
	[Description] [nvarchar](250) NULL,
	[Order] [int] NULL,
	[ParentID] [bigint] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](20) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescription] [nvarchar](250) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 6/20/2021 1:49:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](20) NOT NULL,
	[Email] [varchar](250) NOT NULL,
	[FullName] [nvarchar](250) NOT NULL,
	[Review] [nvarchar](max) NOT NULL,
	[SentDate] [datetime] NOT NULL,
	[ProductID] [bigint] NOT NULL,
	[Approved] [bit] NOT NULL,
	[Stars] [int] NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 6/20/2021 1:49:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](250) NOT NULL,
	[FullName] [nvarchar](250) NOT NULL,
	[Enquiry] [nvarchar](max) NOT NULL,
	[SentDate] [datetime] NOT NULL,
	[IsReaded] [bit] NOT NULL,
	[UserID] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedbacks]    Script Date: 6/20/2021 1:49:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedbacks](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NULL,
	[Name] [nvarchar](50) NULL,
	[Company] [nvarchar](100) NULL,
	[Address] [nvarchar](150) NULL,
	[Phone] [varchar](50) NULL,
	[Image] [nvarchar](250) NULL,
	[Email] [varchar](50) NULL,
	[Message] [nvarchar](500) NULL,
	[CreatedDate] [datetime] NULL,
	[IsReaded] [bit] NOT NULL,
 CONSTRAINT [PK_Feedbacks] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Footers]    Script Date: 6/20/2021 1:49:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Footers](
	[ID] [varchar](50) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[ContentHtml] [ntext] NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Footers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupSlides]    Script Date: 6/20/2021 1:49:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupSlides](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](20) NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](20) NULL,
	[IsActived] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_GroupSlides] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menus]    Script Date: 6/20/2021 1:49:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menus](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NULL,
	[Text] [nvarchar](250) NOT NULL,
	[Link] [nvarchar](250) NOT NULL,
	[Target] [varchar](10) NOT NULL,
	[Order] [int] NOT NULL,
	[CssClass] [varchar](50) NULL,
	[IsLocked] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[GroupID] [varchar](50) NOT NULL,
	[ParentID] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](20) NULL,
	[UpdatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuTypes]    Script Date: 6/20/2021 1:49:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuTypes](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](20) NULL,
	[IsActived] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_MenuTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Newses]    Script Date: 6/20/2021 1:49:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Newses](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[ShortTitle] [nvarchar](250) NULL,
	[MetaTitle] [varchar](250) NULL,
	[Description] [nvarchar](max) NULL,
	[ContentHtml] [ntext] NULL,
	[Images] [nvarchar](250) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescription] [nvarchar](250) NULL,
	[Status] [bit] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](50) NULL,
	[PublishedDate] [datetime] NULL,
	[RelatedNewes] [varchar](50) NULL,
	[CategoryID] [bigint] NOT NULL,
	[ViewCount] [int] NULL,
	[Source] [nvarchar](50) NULL,
	[UpTopNew] [datetime] NULL,
	[UpTopHot] [datetime] NULL,
	[RelatedProduct] [nvarchar](250) NULL,
 CONSTRAINT [PK_Newses] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NewsTags]    Script Date: 6/20/2021 1:49:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NewsTags](
	[NewsID] [bigint] NOT NULL,
	[TagID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_NewsTags] PRIMARY KEY CLUSTERED 
(
	[NewsID] ASC,
	[TagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 6/20/2021 1:49:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CustomerID] [varchar](20) NULL,
	[ShipName] [nvarchar](50) NULL,
	[ShipEmail] [varchar](250) NOT NULL,
	[ShipMobile] [nvarchar](50) NULL,
	[ShipAddress] [nvarchar](250) NULL,
	[Status] [nchar](20) NULL,
	[Note] [nvarchar](max) NULL,
	[TotalPrice] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 6/20/2021 1:49:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ProductID] [bigint] NOT NULL,
	[OrderID] [bigint] NOT NULL,
	[Quantity] [int] NULL,
	[Price] [decimal](18, 0) NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permissions]    Script Date: 6/20/2021 1:49:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permissions](
	[GroupID] [varchar](20) NOT NULL,
	[RoleID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Permissions_1] PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC,
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategories]    Script Date: 6/20/2021 1:49:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategories](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[MetaTitle] [varchar](250) NULL,
	[Images] [nvarchar](250) NULL,
	[NavImages] [nvarchar](250) NULL,
	[BannerImages] [nvarchar](250) NULL,
	[ShortDesc] [nvarchar](250) NULL,
	[Description] [ntext] NULL,
	[Order] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](20) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescription] [nvarchar](250) NULL,
	[Status] [bit] NOT NULL,
	[ParentID] [bigint] NULL,
	[Style] [varchar](60) NULL,
 CONSTRAINT [PK_ProductCategories] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 6/20/2021 1:49:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[Code] [varchar](50) NULL,
	[MetaTitle] [varchar](250) NULL,
	[Description] [nvarchar](max) NULL,
	[Thumb] [nvarchar](250) NULL,
	[Images] [xml] NULL,
	[Price] [decimal](18, 0) NULL,
	[OldPrice] [decimal](18, 0) NULL,
	[MetaKeywords] [nvarchar](250) NULL,
	[MetaDescription] [nvarchar](250) NULL,
	[Quantity] [int] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](20) NULL,
	[CategoryID] [bigint] NOT NULL,
	[ViewCount] [bigint] NULL,
	[BrandID] [int] NOT NULL,
	[UpTopHot] [bit] NOT NULL,
	[Detail] [ntext] NULL,
	[Guarantee] [int] NULL,
	[Video] [nvarchar](250) NULL,
	[Specification] [ntext] NULL,
	[PercentSale] [bigint] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Photos]    Script Date: 6/20/2021 1:49:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photos](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[Images] [nvarchar](250) NULL,
	[AlbumID] [bigint] NOT NULL,
	[Description] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Photos] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 6/20/2021 1:49:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[ID] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](20) NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](20) NULL,
	[IsActived] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slides]    Script Date: 6/20/2021 1:49:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slides](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NULL,
	[Link] [nvarchar](250) NOT NULL,
	[Images] [nvarchar](250) NOT NULL,
	[Order] [int] NOT NULL,
	[GroupID] [varchar](50) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Slides] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Socials]    Script Date: 6/20/2021 1:49:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Socials](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Icon] [ntext] NULL,
	[Link] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](20) NULL,
	[Order] [int] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Socials] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemConfigs]    Script Date: 6/20/2021 1:49:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemConfigs](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[UniqueKey] [varchar](50) NOT NULL,
	[Value] [nvarchar](250) NOT NULL,
	[Unit] [varchar](50) NOT NULL,
	[Description] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](20) NOT NULL,
	[UpdatedDate] [datetime] NOT NULL,
	[UpdatedBy] [varchar](20) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_SystemConfigs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tags]    Script Date: 6/20/2021 1:49:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tags](
	[ID] [varchar](50) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [varchar](20) NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](20) NULL,
	[IsActived] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsDefault] [bit] NOT NULL,
 CONSTRAINT [PK_Tags] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserActivityLogs]    Script Date: 6/20/2021 1:49:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserActivityLogs](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ActionName] [nvarchar](50) NOT NULL,
	[ActionDate] [datetime] NOT NULL,
	[IPAddress] [varchar](50) NOT NULL,
	[SessionID] [varchar](50) NOT NULL,
	[UserName] [varchar](20) NOT NULL,
 CONSTRAINT [PK_UserActivityLogs] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserGroups]    Script Date: 6/20/2021 1:49:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserGroups](
	[ID] [varchar](20) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](20) NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](20) NULL,
	[IsActived] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_UserGroups] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 6/20/2021 1:49:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserName] [varchar](20) NOT NULL,
	[Avatar] [nvarchar](250) NULL,
	[Password] [varchar](100) NOT NULL,
	[PasswordLevel2] [varchar](32) NULL,
	[Email] [varchar](50) NOT NULL,
	[Mobile] [varchar](20) NULL,
	[Name] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Sex] [bit] NOT NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](20) NULL,
	[LastLoginDate] [datetime] NULL,
	[LastChangePassword] [datetime] NULL,
	[GroupID] [varchar](20) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](20) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Brands] ON 

INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1002, N'ACER', N'/Data/images/brand/lrg_acer-228x228.png', NULL, 1, NULL, NULL, CAST(N'2020-12-22T20:29:05.297' AS DateTime), N'quang', 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1003, N'ADATA', N'/Data/images/brand/ada-228x228.png', NULL, 2, CAST(N'2020-12-01T04:39:34.240' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1004, N'AeroCool', N'/Data/images/brand/lrg_aerocool-228x228.png', NULL, 3, CAST(N'2020-12-01T04:40:09.657' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1005, N'AKKO', N'/Data/images/brand/akko-logo-228x228.jpg', NULL, 4, CAST(N'2020-12-01T04:40:43.483' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1006, N'AMD', N'/Data/images/brand/amd_logo-228x228.png', NULL, 5, CAST(N'2020-12-01T04:41:22.883' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1007, N'Antec', N'/Data/images/brand/Untitled-5-228x228.jpg', NULL, 6, CAST(N'2020-12-01T04:42:04.850' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1008, N'AOC ', N'/Data/images/brand/-ykhHR7y_400x400-228x228.png', NULL, 7, CAST(N'2020-12-01T04:42:30.553' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1009, N'Apacer', N'/Data/images/brand/lazada-thuong-hieu-apacer-228x228.jpg', NULL, 8, CAST(N'2020-12-01T04:43:10.117' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1010, N'ASROCK', N'/Data/images/brand/ASRock_PANTONE_White_Green_368C-228x228.jpg', NULL, 9, CAST(N'2020-12-01T04:43:38.603' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1011, N'ASUS', N'/Data/images/brand/lrg_asus-228x228.png', NULL, 10, NULL, NULL, CAST(N'2020-12-22T20:56:38.287' AS DateTime), N'quang', 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1012, N'Canon', N'/Data/images/brand/logo_01-228x228.png', NULL, 11, CAST(N'2020-12-01T04:45:20.550' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1013, N'Cooler Master', N'/Data/images/brand/lrg_coolermaster-228x228.png', NULL, 12, CAST(N'2020-12-01T04:46:04.487' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1014, N'Corsair', N'/Data/images/brand/New-Corsair-Logo-Blog-image-228x228.png', NULL, 13, CAST(N'2020-12-01T04:46:46.513' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1015, N'Cougar', N'/Data/images/brand/cougar-logo-21-228x228.png', NULL, 14, CAST(N'2020-12-01T04:47:13.277' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1016, N'Creative', N'/Data/images/brand/kisspng-loudspeaker-creative-technology-wireless-speaker-a-tech-logo-5ae1205976b765_9754952115247033214863-228x228.jpg', NULL, 15, CAST(N'2020-12-01T04:47:37.443' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1017, N'DAREU ', N'/Data/images/brand/123-228x228.png', NULL, 16, CAST(N'2020-12-01T04:48:17.150' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1018, N'DeepCool', N'/Data/images/brand/deepcool-228x228.jpg', NULL, 17, CAST(N'2020-12-01T04:48:46.147' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1019, N'DELL', N'/Data/images/brand/dell_2016_logo-228x228.png', NULL, 18, NULL, NULL, CAST(N'2020-12-01T04:49:22.427' AS DateTime), N'quang', 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1020, N'DURGOD', N'/Data/images/brand/chuot-durgod-m39-a-228x228.jpg', NULL, 19, CAST(N'2020-12-01T04:49:58.630' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1021, N'E-Dra', N'/Data/images/brand/watermarked-bo-phim-chuot-khong-day-e-dra-ec888bk-3-228x228.jpg', NULL, 20, CAST(N'2020-12-01T04:50:29.423' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1022, N'Edifier', N'/Data/images/brand/loa-edifier-228x228.jpg', NULL, 21, CAST(N'2020-12-01T04:51:05.993' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1023, N'Elgato', N'/Data/images/brand/4972048824196399112_1-228x228.png', NULL, 22, CAST(N'2020-12-01T04:51:28.673' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1024, N'G.SKILL', N'/Data/images/brand/0130391F45548668B64B9F1750F7FBBD1FD1CB-3374-FCDD-1D26-1E48C99EC73A-228x228.jpg', NULL, 23, CAST(N'2020-12-01T04:52:32.313' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1025, N'GALAX', N'/Data/images/brand/5UVYvwYY-228x228.png', NULL, 24, CAST(N'2020-12-01T04:53:04.100' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1026, N'GameMax', N'/Data/images/brand/gamemax-228x228.png', NULL, 25, CAST(N'2020-12-01T04:53:36.243' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1027, N'GEIL', N'/Data/images/brand/geil_logo-228x228.jpg', NULL, 26, CAST(N'2020-12-01T04:54:18.243' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1028, N'GIGABYTE', N'/Data/images/brand/lrg_gigabyte-228x228.png', NULL, 27, CAST(N'2020-12-01T04:54:56.437' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1029, N'HP', N'/Data/images/brand/HP_logo_2012_svg-228x228.png', NULL, 28, NULL, NULL, CAST(N'2020-12-01T04:55:30.003' AS DateTime), N'quang', 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1030, N'ID Cooling', N'/Data/images/brand/id-cooling-logo-228x228.png', NULL, 29, CAST(N'2020-12-01T04:55:58.690' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1031, N'Inno3D', N'/Data/images/brand/inno-3d-bat-ngo-quay-tro-lai-thi-truong-viet-nam-sau-thoi-gian-dai-vang-bong-228x228.png', NULL, 30, CAST(N'2020-12-01T04:56:31.480' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1032, N'Intel', N'/Data/images/brand/d44ffa47daf1a032e24bba541c17b6e8-228x228.jpg', NULL, 30, CAST(N'2020-12-01T04:56:57.033' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1033, N'Keychron', N'/Data/images/brand/keychron-228x228.png', NULL, 31, CAST(N'2020-12-01T04:57:37.070' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1034, N'Kingston', N'/Data/images/brand/Kingston-logo-wordmark-228x228.png', NULL, 32, CAST(N'2020-12-01T04:58:16.587' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1035, N'KROM', N'/Data/images/brand/krom-228x228.jpg', NULL, 33, CAST(N'2020-12-01T04:58:47.800' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1036, N'Leadtek', N'/Data/images/brand/a-228x228.jpg', NULL, 34, CAST(N'2020-12-01T04:59:13.590' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1037, N'Lenovo', N'/Data/images/brand/t%E1%BA%A3i%20xu%E1%BB%91ng-228x228.png', NULL, 36, NULL, NULL, CAST(N'2020-12-01T04:59:56.027' AS DateTime), N'quang', 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1038, N'LG', N'/Data/images/brand/Lg_logo-3-228x228.png', NULL, 37, CAST(N'2020-12-01T05:00:31.700' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1039, N'Lian Li ', N'/Data/images/brand/Lian-Li-Company-Logo1-1-228x228.png', NULL, 38, CAST(N'2020-12-01T05:01:15.923' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1040, N'Logitech', N'/Data/images/brand/New-Logitech-Logo-2015-seeklogo_net_-228x228.png', NULL, 39, NULL, NULL, CAST(N'2020-12-01T05:02:07.147' AS DateTime), N'quang', 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1041, N'Microsoft ', N'/Data/images/brand/Microsoft-Logo-3-832x1024-228x228.jpg', NULL, 40, CAST(N'2020-12-01T05:02:48.090' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1042, N'MSI ', N'/Data/images/brand/msi-corporate_identity-logo-black-rgb-png-228x228.png', NULL, 41, CAST(N'2020-12-01T05:03:21.480' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1043, N'Noctua', N'/Data/images/brand/logo%20noctua-228x228.png', NULL, 43, CAST(N'2020-12-01T05:03:51.253' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1044, N'NZXT', N'/Data/images/brand/NZXT-Logo-228x228.png', NULL, 44, CAST(N'2020-12-01T05:04:15.143' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1045, N'OCPC', N'/Data/images/brand/OCPC-228x228.png', NULL, 45, CAST(N'2020-12-01T05:04:41.430' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1046, N'Orico', N'/Data/images/brand/fb-orico_1_1-228x228.jpg', NULL, 46, CAST(N'2020-12-01T05:05:13.067' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1047, N'Phanteks', N'/Data/images/brand/vo-case-phanteks-228x228.jpg', NULL, 47, CAST(N'2020-12-01T05:05:37.090' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1048, N'Quadro', N'/Data/images/brand/pic0G26-228x228.jpg', NULL, 48, CAST(N'2020-12-01T05:06:09.523' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1049, N'Rapoo', N'/Data/images/brand/logo-rapoo-228x228.png', NULL, 49, CAST(N'2020-12-01T05:06:37.340' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1050, N'RAZER', N'/Data/images/brand/Razer_wordmark-228x228.png', NULL, 50, CAST(N'2020-12-01T05:07:07.950' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1051, N'Samsung', N'/Data/images/brand/Samsung_Logo_svg-228x228.png', NULL, 51, CAST(N'2020-12-01T05:07:42.400' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1052, N'SEAGATE', N'/Data/images/brand/seagate-stacked-pos-2015-228x228.jpg', NULL, 52, CAST(N'2020-12-01T05:08:15.060' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1053, N'Sennheiser ', N'/Data/images/brand/logo%20sen-228x228.png', NULL, 53, CAST(N'2020-12-01T05:09:05.200' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1054, N'Silicon Power', N'/Data/images/brand/silicon-power-logo%20copy-228x228.png', NULL, 54, CAST(N'2020-12-01T05:09:34.447' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1055, N'Steelseries', N'/Data/images/brand/new_sslogo_black-1-228x228.png', NULL, 55, CAST(N'2020-12-01T05:10:17.703' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1056, N'Thermalright', N'/Data/images/brand/thermalright-logo-pan-228x228.jpg', NULL, 56, CAST(N'2020-12-01T05:10:50.453' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1057, N'Thermaltake', N'/Data/images/brand/thermaltake-228x228.jpg', NULL, 57, CAST(N'2020-12-01T05:11:21.143' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1058, N'TNC Gaming', N'/Data/images/brand/118088337_303279487617824_557801281556711641_n-228x228.png', NULL, 58, CAST(N'2020-12-01T05:11:45.933' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1059, N'TP-LINK ', N'/Data/images/brand/TP-Link-TL-WR841N-228x228.jpg', NULL, 59, CAST(N'2020-12-01T05:12:22.540' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1060, N'ViewSonic', N'/Data/images/brand/ViewSonic-logo-wordmark-228x228.png', NULL, 60, CAST(N'2020-12-01T05:12:57.817' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1061, N'Vive', N'/Data/images/brand/vive%20logo-228x228.png', NULL, 61, CAST(N'2020-12-01T05:13:31.750' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1062, N'Western Digital ', N'/Data/images/brand/YtJ0BZ87-228x228.png', NULL, 62, CAST(N'2020-12-01T05:14:04.117' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Brands] ([ID], [Title], [Logo], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Status]) VALUES (1063, N'Xigmatek', N'/Data/images/brand/xigmatek-228x228.jpg', NULL, 64, CAST(N'2020-12-01T05:14:52.167' AS DateTime), N'quang', NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Brands] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([ID], [Title], [MetaTitle], [Images], [Description], [Order], [ParentID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status]) VALUES (4, N'Bài viết mới nhất', N'bai-viet-moi-nhat', NULL, NULL, 1, NULL, NULL, NULL, CAST(N'2020-12-11T04:53:38.717' AS DateTime), N'quang', NULL, NULL, 1)
INSERT [dbo].[Categories] ([ID], [Title], [MetaTitle], [Images], [Description], [Order], [ParentID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status]) VALUES (6, N'Review sản phẩm', N'review-san-pham', NULL, NULL, 2, NULL, CAST(N'2020-12-06T02:45:48.587' AS DateTime), N'quang', NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Categories] ([ID], [Title], [MetaTitle], [Images], [Description], [Order], [ParentID], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status]) VALUES (7, N'Tin tức video', N'tin-tuc-video', NULL, NULL, 3, NULL, CAST(N'2020-12-06T02:46:33.883' AS DateTime), N'quang', NULL, NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Feedbacks] ON 

INSERT [dbo].[Feedbacks] ([ID], [Title], [Name], [Company], [Address], [Phone], [Image], [Email], [Message], [CreatedDate], [IsReaded]) VALUES (1, N'Mixigaming feedback', N'Phùng Thanh Độ', N'MixiGaming', N'Hà Nội ', N'0123456789', N'/Data/images/feedback/1.jpg', NULL, N'Phùng Thanh Độ Feedback', CAST(N'2020-12-23T01:40:26.263' AS DateTime), 1)
INSERT [dbo].[Feedbacks] ([ID], [Title], [Name], [Company], [Address], [Phone], [Image], [Email], [Message], [CreatedDate], [IsReaded]) VALUES (2, N'Pewpew-Khánh Vy feedback', N'Pewpew-Khánh Vy', NULL, NULL, NULL, N'/Data/images/feedback/2.jpg', NULL, NULL, CAST(N'2020-12-23T01:41:18.893' AS DateTime), 1)
INSERT [dbo].[Feedbacks] ([ID], [Title], [Name], [Company], [Address], [Phone], [Image], [Email], [Message], [CreatedDate], [IsReaded]) VALUES (3, N'Minh Nghi - Nhật Anh Trắng Feedback', N'Minh Nghi - Nhật Anh Trắng', NULL, NULL, NULL, N'/Data/images/feedback/3.jpg', NULL, NULL, CAST(N'2020-12-23T01:42:02.267' AS DateTime), 1)
INSERT [dbo].[Feedbacks] ([ID], [Title], [Name], [Company], [Address], [Phone], [Image], [Email], [Message], [CreatedDate], [IsReaded]) VALUES (4, N'Hiển Râu feedback', N'Hiển Râu', NULL, NULL, NULL, N'/Data/images/feedback/4.jpg', NULL, NULL, CAST(N'2020-12-23T01:42:43.770' AS DateTime), 1)
INSERT [dbo].[Feedbacks] ([ID], [Title], [Name], [Company], [Address], [Phone], [Image], [Email], [Message], [CreatedDate], [IsReaded]) VALUES (5, N'Tuấn Tiền Tỉ feedback', N'Tuấn Tiền Tỉ', NULL, NULL, NULL, N'/Data/images/feedback/5.jpg', NULL, NULL, CAST(N'2020-12-23T01:43:20.047' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Feedbacks] OFF
GO
INSERT [dbo].[Footers] ([ID], [Title], [ContentHtml], [Status]) VALUES (N'footer', N'footer', N'<div class="footer__top">
   <div class="container">
      <div class="f__links">
         <div class="f__links__group">
            <span class="f__title">Thông tin chung</span> 
            <p><a href="">Giới thiệu TNC Store</a></p>
            <p><a href="">Tuyển dụng</a></p>
            <p><a href="/tin-tuc">Tin tức</a></p>
            <p><a href="">Ý kiến khách hàng</a></p>
            <p><a href="/index.php?route=information/contact">Liện hệ hợp tác</a></p>
         </div>
         <div class="f__links__group">
            <span class="f__title">Chính sách chung</span> 
            <p><a href="">Quy định chung</a></p>
            <p><a href="/chinh-sach-van-chuyen-tnc-store.html">Chính sách vận chuyển</a></p>
            <p><a href="/chinh-sach-va-quy-dinh-bao-hanh-tai-tnc-store.html">Chính sách bảo hành</a></p>
            <p><a href="/chinh-sach-va-quy-dinh-bao-hanh-tai-tnc-store.html">Chính sách đổi, trả lại hàng</a></p>
            <p><a href="">Chính sách cho doanh nghiệp</a></p>
         </div>
         <div class="f__links__group">
            <span class="f__title">Thông tin khuyến mãi</span> 
            <p><a href="/san-pham-ban-chay.html">Sản phẩm bán chạy</a></p>
            <p><a href="/san-pham-giam-gia.html">Sản phẩm khuyến mãi</a></p>
            <p><a href="">Hàng thanh lý</a></p>
         </div>
         <div class="f__links__group">
            <span class="f__title">Follow us!</span> 
            <div class="f__links__social"><a href="https://www.facebook.com/tncstore/" target="_blank"><img src="/Assets/Client/img/facebook.png"></a> <a href="https://www.youtube.com/channel/UCvLGkK-wBBaoXwV71Tgx08Q" target="_blank"><img src="/Assets/Client/img/youtube.png"></a> <a href=""><img src="/Assets/Client/img/twitter.png" alt=""></a> <a href="https://www.instagram.com/tncstore_vn/" target="_blank"><img src="/Assets/Client/img/instagram.png"></a></div>
         </div>
      </div>
      <div class="f__store__info">
         <div class="f__title">Công ty TNHH Thương mại &amp; Tin học Tú Nguyệt</div>
         <p>Showroom : 172 Lê Thanh Nghị, Phường Đồng Tâm, Quận Hai Trưng, Hà Nội / Tel: (024) 36288790 Fax : (024) 36288790</p>
         <p>Trung tâm bảo hành : 172 Lê Thanh Nghị, Phường Đồng Tâm, Quận Hai Trưng, Hà Nội / Tel: (04) 36288790 Fax : (024) 36288790</p>
         <p>Trụ sở (Không bán hàng): 11 Vũ Thạnh - Cát Linh - Đống Đa - Hà Nội / Tel: (024) 35120778; Fax : (024) 36288790</p>
      </div>
   </div>
</div>
<div class="footer__bottom">
   <div class="container">
      <div class="f__bottom__copyright">© 2020 - Bản quyền của Công ty TNHH Thương mại &amp; Tin học Tú Nguyệt</div>
      <div class="f__bottom__icon"><a href=""><img src="/Assets/Client/img/tien-mat.png" alt=""></a> <a href=""><img src="/Assets/Client/img/internet-bank.png" alt=""></a> <a href=""><img src="/Assets/Client/img/mastercard.png" alt=""></a> <a href=""><img src="/Assets/Client/img/visa.png" alt=""></a> <a href="http://online.gov.vn/Home/WebDetails/63325" target="_blank"><img src="/Assets/Client/img/bo-cong-thuong.png" alt=""></a></div>
   </div>
</div>', 1)
GO
INSERT [dbo].[Menus] ([ID], [Name], [Description], [Text], [Link], [Target], [Order], [CssClass], [IsLocked], [IsDeleted], [GroupID], [ParentID], [CreatedDate], [CreatedBy], [UpdatedBy], [UpdatedDate]) VALUES (N'1', N'Trang chủ', N'Trở về trang chủ', N'Trang chủ', N'/', N'_blank', 1, NULL, 1, 0, N'top', NULL, NULL, NULL, N'quang', CAST(N'2020-11-27T01:32:47.930' AS DateTime))
INSERT [dbo].[Menus] ([ID], [Name], [Description], [Text], [Link], [Target], [Order], [CssClass], [IsLocked], [IsDeleted], [GroupID], [ParentID], [CreatedDate], [CreatedBy], [UpdatedBy], [UpdatedDate]) VALUES (N'13', N'Bài viết', N'Bài viết', N'Bài viết', N'/tin-tuc', N'_self', 4, NULL, 1, 0, N'top', NULL, NULL, NULL, N'quang', CAST(N'2020-11-23T01:44:23.440' AS DateTime))
INSERT [dbo].[Menus] ([ID], [Name], [Description], [Text], [Link], [Target], [Order], [CssClass], [IsLocked], [IsDeleted], [GroupID], [ParentID], [CreatedDate], [CreatedBy], [UpdatedBy], [UpdatedDate]) VALUES (N'3', N'Liên hệ', N'Liên hệ', N'Liên hệ', N'/contact', N'_self', 3, NULL, 1, 0, N'top', NULL, NULL, NULL, N'quang', CAST(N'2021-01-07T05:43:51.847' AS DateTime))
GO
INSERT [dbo].[MenuTypes] ([ID], [Name], [Description], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActived], [IsDeleted]) VALUES (N'bottom', N'Menu dưới', NULL, CAST(N'2014-04-12T09:51:38.960' AS DateTime), N'toanbn', NULL, NULL, 1, 0)
INSERT [dbo].[MenuTypes] ([ID], [Name], [Description], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActived], [IsDeleted]) VALUES (N'top', N'Menu trên', N'Menu trên', CAST(N'2014-04-12T09:51:29.463' AS DateTime), N'toanbn', NULL, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Newses] ON 

INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (1, N'Giải mã ý nghĩa đằng sau các cấu hình Gaming PC tại TNC Store', N'Giải mã ý nghĩa đằng sau các cấu hình Gaming PC tại TNC Store', N'giai-ma-y-nghia-dang-sau-cac-cau-hinh-gaming-pc-tai-tnc-store', N'Chắc hẳn các bạn đến với TNC Store đều ấn tượng và có một chút thắc mắc về hệ thống tên mã các cấu hình Gaming PC tại TNC Store phải không? Nào là Alpha, Glacier, rồi Lumen, Omega… Nghe vừa ngầu vừa lạ. Vậy ý nghĩa đằng sau những tên mã cấu hình Gaming PC này là gì? Hãy để TNC Store giải đáp giúp bạn trong bài viết này nhé.', N'<blockquote>
<p><span style="font-size:12px">Chắc hẳn c&aacute;c bạn đến với <strong>TNC Store</strong> đều ấn tượng v&agrave; c&oacute; một ch&uacute;t thắc mắc về hệ thống t&ecirc;n m&atilde; c&aacute;c cấu h&igrave;nh Gaming PC tại <strong>TNC Store</strong> phải kh&ocirc;ng? N&agrave;o l&agrave; Alpha, Glacier, rồi Lumen, Omega&hellip; Nghe vừa ngầu vừa lạ. Vậy &yacute; nghĩa đằng sau những t&ecirc;n m&atilde; cấu h&igrave;nh Gaming PC n&agrave;y l&agrave; g&igrave;? H&atilde;y để TNC Store giải đ&aacute;p gi&uacute;p bạn trong b&agrave;i viết n&agrave;y nh&eacute;.</span></p>
</blockquote>

<p><span style="font-size:12px">Hiểu đơn giản th&igrave; những t&ecirc;n m&atilde;<strong> cấu h&igrave;nh m&aacute;y t&iacute;nh</strong> chơi game cơ bản tại TNC Store bao gồm: Alpha, Glacier, Sniper, Lumen v&agrave; Nova l&agrave; c&aacute;c <strong><a href="https://www.tncstore.vn/gaming-pc.html" target="_blank">cấu h&igrave;nh m&aacute;y t&iacute;nh chơi game</a></strong> phổ th&ocirc;ng, dễ tiếp cận nhất. Với mức gi&aacute; từ dưới 10 triệu cho đến khoảng 30 triệu. Cao hơn nữa ch&uacute;ng ta sẽ c&oacute; Sentinel v&agrave; Omega. L&agrave; c&aacute;c cấu h&igrave;nh <strong>Gaming PC</strong> cao cấp với mức gi&aacute; tr&ecirc;n 40 triệu, thậm ch&iacute; l&agrave; cả v&agrave;i trăm triệu cũng c&oacute; lu&ocirc;n. Lưu &yacute; với c&aacute;c bạn, tất cả c&aacute;c cấu h&igrave;nh tại TNC Store chỉ l&agrave; <strong>cấu h&igrave;nh THAM KHẢO.</strong></span></p>

<div><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/y-nghia-pc/106987499_1629965587154874_1600672936783953928_o.jpg" style="width:100%" /></div>

<div>&nbsp;</div>

<div><span style="font-size:12px">C&aacute;c cấu h&igrave;nh <strong>PC chơi game</strong> n&agrave;y đều đ&atilde; được kỹ thuật vi&ecirc;n của TNC c&acirc;n đối về hiệu năng v&agrave; gi&aacute; th&agrave;nh hợp l&yacute; nhất cho anh em tham khảo, dựa tr&ecirc;n từng nhu cầu cụ thể nhất về mong muốn trải nghiệm game của anh em ở mức độ n&agrave;o, trong khoảng gi&aacute; bao nhi&ecirc;u. V&agrave; nếu c&oacute; nhu cầu cụ thể hơn th&igrave; TNC cũng ho&agrave;n to&agrave;n c&oacute; thể t&ugrave;y biến để ph&ugrave; hợp nhất với y&ecirc;u cầu của c&aacute;c bạn. Bạn c&oacute; thể chọn mua lu&ocirc;n cấu h&igrave;nh m&aacute;y t&iacute;nh chơi game tham khảo, hoặc t&ugrave;y chỉnh theo &yacute; mu&ocirc;n! Quyết định l&agrave; ở bạn! B&acirc;y giờ, TNC Store sẽ c&ugrave;ng c&aacute;c bạn đi s&acirc;u hơn v&agrave;o từng t&ecirc;n m&atilde; cụ thể nh&eacute;.</span></div>

<div>
<h2>&nbsp;</h2>

<h2><strong><span style="font-size:18px">1.&nbsp;</span><span style="font-size:18px">Gaming PC &ndash; Alpha</span></strong></h2>
</div>

<div>&nbsp;</div>

<div style="text-align: center;"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/rx550/vo-case-aerocool-streak-led-rgb-500x500.jpg" style="width:50%" /></div>

<div style="text-align: left;">
<p><span style="color:inherit"><span style="font-size:12px">Để dễ hiểu th&igrave; m&igrave;nh lấy v&iacute; dụ như c&aacute;c cấu h&igrave;nh </span><strong><span style="font-size:12px">m&aacute;y t&iacute;nh chơi game gi&aacute; rẻ</span></strong><span style="font-size:12px"> Alpha, được lấy cảm hứng từ k&yacute; tự &alpha;, l&agrave; chữ c&aacute;i đầu ti&ecirc;n trong bảng chữ c&aacute;i Hy Lạp, tức l&agrave; thứ đầu ti&ecirc;n, sự khởi đầu của mọi thứ.&nbsp;</span><span style="color:inherit; font-size:12px">C&aacute;c</span><strong><span style="font-size:12px"> cấu h&igrave;nh Gaming PC</span></strong><span style="color:inherit; font-size:12px"> Alpha tại TNC Store thường được tối ưu về mức gi&aacute; cực rẻ, dưới 10 triệu, chỉ sử dụng CPU c&ugrave;ng đồ họa t&iacute;ch hợp, kh&ocirc;ng sử dụng VGA rời nhưng vẫn đảm bảo anh em c&oacute; thể chơi được những tựa game online nhẹ v&agrave; v&ocirc; c&ugrave;ng phổ biến hiện nay. V&agrave; hướng tới khả năng n&acirc;ng cấp l&acirc;u d&agrave;i về sau nữa.</span></span></p>
</div>

<div>
<div>&nbsp;</div>

<blockquote><span style="font-size:12px"><span style="font-size:14px">C&aacute;c cấu h&igrave;nh Gaming PC &ndash; Alpha:</span></span><br />
<span style="font-size:12px">-&nbsp;</span><a href="https://www.tncstore.vn/gaming-pc-alpha-3200g.html" style="background-color: rgb(255, 255, 255);" target="_blank"><span style="background-color:rgb(255, 255, 255); font-size:12px">Gaming PC Alpah 3400G</span></a><br />
<span style="background-color:rgb(255, 255, 255); font-size:12px">-&nbsp;<a href="https://www.tncstore.vn/gaming-pc-alpha-9100.html" style="background-color: rgb(255, 255, 255);" target="_blank">Gaming PC Alpha 9100</a></span></blockquote>

<div>&nbsp;</div>

<div>&nbsp;</div>

<div>
<h2><strong><span style="font-size:18px">2. Gaming PC Glacier</span></strong></h2>
</div>

<div style="text-align: center;"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/y-nghia-pc/104587780_2634519790199238_8029707742972434711_n.jpg" style="width:50%" /></div>

<h2><strong>Cấu h&igrave;nh m&aacute;y t&iacute;nh chơi game</strong><span style="font-size:12px"> TNC Gaming PC Glacier, với &yacute; tưởng từ những d&ograve;ng s&ocirc;ng băng, tĩnh lặng nhưng tiềm ẩn sức mạnh nguy hiểm v&ocirc; c&ugrave;ng.</span></h2>

<div>
<div><span style="font-size:12px">Thường được tối ưu bằng mainboard v&agrave; CPU ngon bổ rẻ, c&ugrave;ng Card đồ họa gi&aacute; rẻ nhưng vẫn cực ngon như GTX 1650 hay 1650 Super.</span></div>

<div><span style="font-size:12px">Quan trọng l&agrave; n&oacute; vẫn đủ khả năng c&acirc;n được những chiếc VGA mạnh mẽ hơn trong tương lai nếu anh em c&oacute; nhu cầu n&acirc;ng cấp.</span></div>

<div>&nbsp;</div>

<blockquote><span style="font-size:14px">C&aacute;c cấu h&igrave;nh Gaming PC &ndash; Glacier:</span><br />
<span style="font-size:12px">-&nbsp;</span><a href="https://www.tncstore.vn/gaming-pc-glacier-1650i.html" target="_blank"><span style="font-size:12px">Gaming PC Glacier1650i</span></a><br />
<span style="font-size:12px">-&nbsp;</span><a href="https://www.tncstore.vn/gaming-pc-glacier-1650super.html" style="background-color: rgb(255, 255, 255);" target="_blank"><span style="background-color:rgb(255, 255, 255); font-size:12px">Gaming PC Glacier1650R</span></a><br />
<span style="background-color:rgb(255, 255, 255); font-size:12px">-&nbsp;<a href="https://www.tncstore.vn/gaming-pc-glacier-streaming-1650s.html" style="background-color: rgb(255, 255, 255);" target="_blank">Gaming PC Glacier Streaming</a></span></blockquote>

<div>
<p>&nbsp;</p>

<p>&nbsp;</p>

<h2><strong><span style="font-size:18px">3. Gaming PC Sniper</span></strong></h2>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/y-nghia-pc/sniper.jpg" style="width:50%" /></p>
</div>
</div>

<div>&nbsp;</div>
</div>

<div>
<div><span style="font-size:12px">Đến với <strong>Gaming PC</strong> Sniper, c&aacute;i t&ecirc;n đ&atilde; khiến ch&uacute;ng ta h&igrave;nh dung ra những s&aacute;t thủ lặng lẽ, ti&ecirc;u diệt gọn g&agrave;ng, nhanh ch&oacute;ng mục ti&ecirc;u từ rất xa, nhờ card đồ họa đủ chiến rất nhiều tựa game đa dạng. V&agrave; Sniper cũng l&agrave; d&ograve;ng PC được lựa chọn nhiều nhất tại TNC Store.</span></div>

<div>&nbsp;</div>

<blockquote><span style="font-size:12px"><span style="font-size:14px">C&aacute;c cấu h&igrave;nh Gaming PC &ndash; Sniper</span></span><br />
<span style="font-size:12px">-&nbsp;</span><a href="https://www.tncstore.vn/gaming-pc-sniper-1660-super-9100.html" target="_blank"><span style="font-size:12px">Gaming PC Sniper1660 Super</span></a><br />
<span style="font-size:12px">-&nbsp;</span><a href="https://www.tncstore.vn/gaming-pc-sniper-1660-super-9100f.html" target="_blank"><span style="font-size:12px">Gaming PC Sniper1660F Super</span></a><br />
<span style="font-size:12px">-&nbsp;</span><a href="https://www.tncstore.vn/gaming-pc-sniper-1660-super.html" target="_blank"><span style="font-size:12px">Gaming PC Sniper1660R Super</span></a></blockquote>

<div>&nbsp;</div>

<div>&nbsp;</div>

<h2><strong><span style="font-size:18px">4.&nbsp;</span><span style="font-size:18px">Gaming PC</span><span style="font-size:18px">&nbsp;</span><span style="font-size:18px">Lumen</span></strong></h2>

<div>
<div style="text-align: center;"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/y-nghia-pc/lumen.jpg" style="width:50%" /></div>
&nbsp;

<div><span style="font-size:12px">Cao hơn nữa anh em c&oacute; <strong>Gaming PC</strong> Lumen, đ&acirc;y l&agrave; đơn vị đo cường độ &aacute;nh s&aacute;ng. Tức l&agrave; sao? C&aacute;c cấu h&igrave;nh m&aacute;y t&iacute;nh chơi game Lumen ch&iacute;nh l&agrave; thước đo của sức mạnh đồ họa, l&agrave; tia s&aacute;ng khởi đầu cho anh em tiến v&agrave;o những tựa game đồ họa cao v&agrave; hardcore.</span></div>

<div><span style="font-size:12px">Trong thời điểm hiện tại, c&aacute;c cấu h&igrave;nh Lumen thường được đi với card đồ họa RTX 2060 v&agrave; 2060 Super, những mẫu VGA rẻ nhất m&agrave; anh em c&oacute; thể tận hưởng được c&ocirc;ng nghệ d&ograve; tia s&aacute;ng Ray Tracing của Nvidia.&nbsp;</span></div>

<div>&nbsp;</div>

<blockquote><span style="font-size:12px"><span style="font-size:14px">C&aacute;c cấu h&igrave;nh Gaming PC &ndash; Lumen:</span></span><br />
<span style="font-size:12px">-&nbsp;</span><a href="https://www.tncstore.vn/gaming-pc-dante-2060.html" target="_blank"><span style="font-size:12px">Gaming PC Lumen 2060 - Core i5 9400F</span></a><br />
<span style="font-size:12px">-&nbsp;</span><a href="https://www.tncstore.vn/gaming-pc-lumen-2060.html" target="_blank"><span style="font-size:12px">Gaming PC Lumen 2606 - R3 3300X</span></a><br />
<span style="font-size:12px">-&nbsp;</span><a href="https://www.tncstore.vn/gaming-pc-lumen-powered-by-asus.html" target="_blank"><span style="font-size:12px">Gaming PC Lumen Powered by ASUS</span></a><br />
<span style="font-size:12px">-&nbsp;</span><a href="https://www.tncstore.vn/gaming-pc-lumen-2060-super.html" target="_blank"><span style="font-size:12px">Gaming PC Lumen 2060 Super</span></a></blockquote>

<h2>&nbsp;</h2>

<h2><span style="font-size:18px"><strong>5. Gaming PC Nova</strong></span></h2>

<div style="text-align: center;"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/y-nghia-pc/nova.jpg" style="width:50%" /></div>

<div>&nbsp;</div>

<div>
<div><span style="font-size:12px">C&ograve;n với c&aacute;c cấu h&igrave;nh <strong>Gaming PC</strong> Nova th&igrave; sao? Nova được tạm dịch l&agrave; &ldquo;T&acirc;n Tinh&rdquo;, l&agrave; những ng&ocirc;i sao mới b&ugrave;ng nổ, sử dụng sức mạnh từ RTX 2070 v&agrave; 2070 Super, c&aacute;c cấu h&igrave;nh Nova c&oacute; thể gi&uacute;p bạn khai ph&aacute; năng lực của bản th&acirc;n, l&agrave;m được rất nhiều thứ kh&aacute;c kh&ocirc;ng chỉ l&agrave; chơi game đơn thuần nữa.</span></div>

<div><span style="font-size:12px">Đ&acirc;y l&agrave; những <strong>cấu h&igrave;nh gaming pc</strong> cao cấp với mức gi&aacute; rẻ nhất m&agrave; anh em c&oacute; thể sở hữu, nhưng vẫn chứa đựng sức mạnh b&ugrave;ng nổ như những T&acirc;n Tinh.</span></div>

<div>&nbsp;</div>

<blockquote><span style="font-size:12px"><span style="font-size:14px">C&aacute;c cấu h&igrave;nh Gaming PC &ndash; Nova:</span></span><br />
<span style="font-size:12px">-&nbsp;</span><a href="https://www.tncstore.vn/gaming-pc-nova-rtx-2070.html" style="background-color: rgb(255, 255, 255);" target="_blank"><span style="font-size:12px">Gaming PC Nova2070</span></a><br />
<span style="font-size:12px">-&nbsp;</span><a href="https://www.tncstore.vn/gaming-pc-nova-2070-i5-9th.html" style="background-color: rgb(255, 255, 255);" target="_blank"><span style="font-size:12px">Gaming PC Nova2070 9th</span></a><br />
<span style="font-size:12px">-&nbsp;</span><a href="https://www.tncstore.vn/gaming-pc-nova-2070-super.html" style="background-color: rgb(255, 255, 255);" target="_blank"><span style="font-size:12px">Gaming PC Nova2070 Super</span></a></blockquote>

<div>&nbsp;</div>

<div>&nbsp;</div>

<h2><strong><span style="font-size:18px">6. Gaming PC Sentinel</span></strong></h2>

<div style="text-align: center;"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/y-nghia-pc/Anh PC (2).png" style="width:50%" /></div>

<div>
<div><span style="font-size:12px">Với những<strong> cấu h&igrave;nh Gaming PC</strong> Sentinel, anh em l&agrave; fan của Transformer chắc cũng quen với c&aacute;i t&ecirc;n n&agrave;y, ch&iacute;nh l&agrave; Sentinel Prime, nh&acirc;n vật l&atilde;nh đạo, l&agrave; vị chiến tướng của c&aacute;c Autobot, với vũ kh&iacute; v&agrave; trang bị tận răng cũng như tinh thần chiến đấu dũng m&atilde;nh nhất.</span></div>

<div><span style="font-size:12px">Thế l&agrave; đủ hiểu sức mạnh của c&aacute;c cấu h&igrave;nh Sentinel rồi phải kh&ocirc;ng anh em. Cứ linh kiện top đầu m&agrave; &ldquo;phang&rdquo; th&ocirc;i. Với Core i7, RTX 2080 hoặc 2080 Super, Sentinel l&agrave; chiến tướng gi&uacute;p anh em thể hiện t&agrave;i năng cũng như trải nghiệm mọi tựa game nặng đo nhất, kh&ocirc;ng cần quan t&acirc;m tới đối phương l&agrave; ai, hay c&aacute;c tựa game đ&ograve;i hỏi phần cứng như thế n&agrave;o.</span></div>

<div>&nbsp;</div>

<blockquote><span style="font-size:12px"><span style="font-size:14px">C&aacute;c cấu h&igrave;nh Gaming PC &ndash; Sentinel:</span></span><br />
<span style="font-size:12px">-&nbsp;</span><a href="https://www.tncstore.vn/gaming-pc-sentinel-2080-super.html" target="_blank"><span style="font-size:12px">Gaming PC Sentinel 2080 Super</span></a><br />
<span style="font-size:12px">-&nbsp;</span><a href="https://www.tncstore.vn/gaming-pc-sentinel-i9-9900ks-z390-2080super.html" target="_blank"><span style="font-size:12px">Gaming PC Sentinel</span></a></blockquote>
</div>

<div>&nbsp;</div>

<div>&nbsp;</div>

<h2><strong><span style="font-size:18px">7. Gaming PC OMEGA</span></strong></h2>

<div style="text-align: center;"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/y-nghia-pc/113964767_2920067604881846_9078536385092691790_n.png" style="width:50%" /></div>

<p><br />
<span style="font-size:12px">C&ograve;n <strong>cấu h&igrave;nh Gaming PC</strong> Omega? Anh em chuy&ecirc;n vật l&yacute; chắc chắn biết k&yacute; hiệu của đơn vị đo điện trở &Omega; đ&uacute;ng kh&ocirc;ng? Nhưng Omega c&ograve;n c&oacute; &yacute; nghĩa kh&aacute;c, n&oacute; l&agrave; k&yacute; tự cuối c&ugrave;ng trong bảng chữ c&aacute;i Hy Lạp, l&agrave; tr&ugrave;m cuối, l&agrave; kẻ mạnh nhất, l&agrave; dấu chấm hết cho mọi kẻ th&ugrave;. V&agrave; cấu h&igrave;nh Omega tại TNC Store cũng kh&ocirc;ng c&oacute; thước đo n&agrave;o cụ thể cả. Bạn c&oacute; thể lựa chọn Dual GPU, gắn 2 chiếc VGA RTX 2080 Ti, hay lựa chọn những bo mạch chủ tối t&acirc;n nhất, những bộ vỏ case hầm hố nhất v&agrave; một bộ nguồn Top Tier. T&oacute;m lại l&agrave; kh&ocirc;ng c&oacute; giới hạn n&agrave;o cho bạn cả!</span></p>

<div>
<div>&nbsp;</div>

<blockquote><span style="font-size:12px"><span style="font-size:14px">C&aacute;c cấu h&igrave;nh Gaming PC &ndash; Omega:</span></span><br />
<span style="font-size:12px">-&nbsp;</span><a href="https://www.tncstore.vn/gaming-pc-omega.html" target="_blank"><span style="font-size:12px">Gaming PC Omega</span></a><br />
<span style="font-size:12px">- </span><a href="https://www.tncstore.vn/gaming-pc/gaming-pc-sieu-to-khong-lo-rog.html" target="_blank"><span style="font-size:12px">Gaming PC Omega Ultra</span></a></blockquote>

<div>&nbsp;</div>

<div><span style="font-size:12px">Như vậy l&agrave; ch&uacute;ng ta vừa c&ugrave;ng nhau kh&aacute;m ph&aacute; to&agrave;n bộ hệ thống t&ecirc;n m&atilde; <strong>cấu h&igrave;nh PC chơi game</strong> tại TNC Store rồi đ&oacute;. Kh&aacute; ngầu đ&uacute;ng kh&ocirc;ng? Vậy cấu h&igrave;nh m&aacute;y t&iacute;nh bạn đang sử dụng tại nh&agrave; thuộc hệ m&atilde; n&agrave;o? Bạn đang dự định sắm cấu h&igrave;nh n&agrave;o? H&atilde;y chia sẻ cho TNC Store biết tr&ecirc;n Group <a href="https://www.facebook.com/groups/387547971725117" rel="nofollow" target="_blank"><strong>Hội Những Người Đam M&ecirc; Build PC</strong></a> nh&eacute;.</span><br />
&nbsp;</div>
</div>
</div>
</div>
</div>
', N'/Data/images/newses/tintucmoinhat/1a.jpg', NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-06T13:27:46.233' AS DateTime), N'quang', CAST(N'2020-12-06T13:27:00.000' AS DateTime), NULL, 4, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (2, N'TOP 3 chuột chơi game MOBA hiệu quả nhất', N'TOP 3 chuột chơi game MOBA', N'top-3-chuot-choi-game-moba', N'Không yêu cầu khắt khe như game FPS nhưng MOBA cũng yêu cầu một số đặc trưng nhất định về chuột. Cùng TNC điểm qua top 3 chuột chơi game MOBA đáng mua nhất hiện nay nhé!', N'<p><em>Kh&ocirc;ng y&ecirc;u cầu khắt khe như game FPS nhưng MOBA cũng y&ecirc;u cầu một số đặc trưng nhất định về chuột. C&ugrave;ng TNC điểm qua top 3 chuột chơi game MOBA đ&aacute;ng mua nhất hiện nay nh&eacute;!</em></p>

<p>&nbsp;</p>

<p>Game MOBA hiện đang l&agrave; một trong những thể loại game c&oacute; sức ảnh hưởng lớn tới cộng đồng game thủ. Hiểu đơn giản l&agrave; những tựa game c&oacute; chiến trường trực tuyến nhiều người chơi, trong đ&oacute; một người chơi điều khiển một nh&acirc;n vật thuộc một trong hai đội tham gia. Nổi tiếng trong số đ&oacute; l&agrave; League of Legends (LoL) v&agrave; DOTA 2.&nbsp;</p>

<p>Kh&aacute;c với c&aacute;c tựa game FPS, game MOBA kh&ocirc;ng y&ecirc;u cầu người chơi phải nhấc chuột l&ecirc;n li&ecirc;n tục để chuyển tầm nh&igrave;n. Thay v&agrave;o đ&oacute;, c&aacute;c chuột gaming chuy&ecirc;n MOBA y&ecirc;u cầu độ nhạy DPI c&ugrave;ng số lần click cao để thực hiện những pha combat trong thời gian d&agrave;i.</p>

<p>Kh&ocirc;ng chỉ vậy, c&aacute;c chuột gaming hiện nay đ&oacute;ng vai tr&ograve; cực kỳ quan trọng hơn khi c&aacute;c thao t&aacute;c xử l&yacute; hit and run, macro&hellip; giờ đ&acirc;y đều c&oacute; thể thực hiện tr&ecirc;n n&oacute;. H&atilde;y c&ugrave;ng TNC Store đến với top 3 chuột chơi game MOBA đ&aacute;ng tiền nhất hiện nay nh&eacute;!</p>

<p>&nbsp;</p>

<h1><span style="font-size:18px"><strong>1. Chuột Gaming ASUS ROG Gladius II Core</strong></span></h1>

<p>Đến với con chuột đầu ti&ecirc;n trong top 3 chuột chơi game MOBA ch&iacute;nh l&agrave; Gaming ASUS ROG Gladius II Core. Chuột kế thừa thiết kế c&ocirc;ng th&aacute;i học cao cấp từ phi&ecirc;n bản đắt tiền hơn l&agrave; Gladius II với form cầm to, trọng lượng nhẹ. Chuột th&iacute;ch hợp với những người c&oacute; form tay to v&agrave; trung b&igrave;nh.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/top 3 chuột chơi game moba/_TNC3106 (1).jpg" title="Chuột Gaming ASUS ROG Gladius II Core" /></p>

<p>Đối với anh em game thủ thuận tay phải th&igrave; thiết kế c&ocirc;ng th&aacute;i học tr&ecirc;n chuột thực sự l&agrave; một bước đột ph&aacute;. Kh&aacute;c với những con chuột th&ocirc;ng thường, chuột c&ocirc;ng th&aacute;i học mang đến cảm gi&aacute;c cầm nắm&nbsp; như d&iacute;nh chặt v&agrave;o tay, như một bộ phận cơ thể vậy, cảm gi&aacute;c rất l&agrave; &ldquo;ph&ecirc;&rdquo;.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/top 3 chuột chơi game moba/_TNC3107.jpg" title="Chuột chơi game MOBA" /></p>

<p>Điểm s&aacute;ng của Gladius II Core đến từ cảm biến Pixart PMW3327 với khả năng bắt chuyển động cực chuẩn x&aacute;c, đem lại nhưng pha xử l&yacute; chuẩn chỉ y như s&aacute;ch gi&aacute;o khoa vậy.</p>

<p>Kh&ocirc;ng chỉ vậy, chuột cho ph&eacute;p người d&ugrave;ng c&oacute; thể thoải m&aacute;i điều chỉnh c&aacute;c thao t&aacute;c với 6 n&uacute;t bấm được t&iacute;ch hợp tr&ecirc;n chuột. Điều n&agrave;y kh&aacute; l&agrave; thuận tiện với những anh em th&iacute;ch g&aacute;n macro để c&oacute; thể combo, d&ugrave;ng ph&eacute;p bổ trợ ngay tr&ecirc;n chuột. Con lăn c&ugrave;ng biểu tượng ROG tr&ecirc;n th&acirc;n chuột c&oacute; th&ecirc;m đ&egrave;n LED m&agrave;u t&iacute;m kh&aacute; bắt mắt.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/top 3 chuột chơi game moba/_TNC3109.jpg" title=" ASUS ROG Gladius II Core chơi game MOBA" /></p>

<p>Hiệu năng gaming đến từ ASUS ROG Gladius II Core l&agrave; kh&ocirc;ng phải b&agrave;n c&atilde;i khi chuột c&oacute; độ nhạy l&ecirc;n tới 6200 DPI. Tuổi thọ đạt 50 triệu lượt click đảm bảo thời gian chinh chiến l&acirc;u d&agrave;i cho anh em.</p>

<p>&gt;&gt;&gt; THAM KHẢO NGAY SẢN PHẨM TẠI LINK DƯỚI:</p>

<h1><span style="font-size:14px"><strong>-&nbsp;<a href="https://www.tncstore.vn/chuot-gaming-asus-rog-gladius-ii-core.html" target="_blank">Chuột Gaming ASUS ROG Gladius II Core</a></strong></span></h1>

<h1>&nbsp;</h1>

<h1><span style="font-size:18px"><strong>2. Chuột Cooler Master MM710&nbsp;</strong></span></h1>

<p>Hẳn anh em cũng kh&ocirc;ng c&ograve;n xa với c&aacute;c sản phẩm Gaming gear đến từ Cooler Master. Điểm đ&aacute;ng ch&uacute; &yacute; l&agrave; con chuột MM710 c&oacute; trọng lượng chỉ 53 gram - nhẹ nhất thế giới ở thời điểm ra mắt. Ưu điểm n&agrave;y gi&uacute;p cho anh em c&oacute; thể chiến game MOBA hiệu quả trong thời gian d&agrave;i m&agrave; kh&ocirc;ng lo bị mỏi tay.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/top 3 chuột chơi game moba/_TNC3113a.jpg" title="Chuột Cooler Master MM710 " /></p>

<p>Thoạt nh&igrave;n c&oacute; thể thấy MM710 c&oacute; thiết kế đối xứng. Tuy vậy, chuột được thiết kế nhằm hướng đến đối tượng người d&ugrave;ng thuận tay phải. Cảm gi&aacute;c cầm chuột rất &ocirc;m tay v&agrave; thoải m&aacute;i nhờ c&oacute; trọng lượng nhẹ.</p>

<p>Th&ecirc;m v&agrave;o đ&oacute;, thiết kế đục lỗ đầy t&aacute;o bạo gi&uacute;p l&agrave;m giảm tối đa lượng mồ h&ocirc;i tay của bạn trong những pha combat 5 vs 5 nảy lửa. Do vậy n&ecirc;n Cooler Master trang bị cho MM710 một lớp phủ chống bụi v&agrave; nước cho bảng mạch, đảm bảo an to&agrave;n cho thiết bị.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/top 3 chuột chơi game moba/_TNC3117a.jpg" title="Chuột Cooler Master MM710 " /></p>

<p>Tất nhi&ecirc;n l&agrave; với thiết kế mang t&iacute;nh đột ph&aacute; th&igrave; Cooler Master cũng kh&ocirc;ng thể qu&ecirc;n đưa phần cứng mạnh nhất v&agrave;o con cưng của m&igrave;nh. Với cảm biến Pixart 3389 thuộc top đầu về độ ch&iacute;nh x&aacute;c, mạnh mẽ v&agrave; ổn định, MM710 xứng đ&aacute;ng l&agrave; một con chuột chơi game MOBA ch&iacute;nh hiệu.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/top 3 chuột chơi game moba/_TNC3116a.jpg" title="Chuột Cooler Master MM710 " /></p>

<p>Kh&ocirc;ng chỉ vậy, MM710 sở hữ c&aacute;c n&uacute;t bấm OMRON c&oacute; độ bền l&ecirc;n tới 20 triệu lần nhấn với tốc độ si&ecirc;u nhạy v&agrave; thời gian phản hồi nhanh khiến cho chuột trở n&ecirc;n cực kỳ hữu dụng trong c&aacute;c trận đ&aacute;nh DOTA 2 hay LOL.</p>

<p>Anh em ho&agrave;n to&agrave;n c&oacute; thể y&ecirc;n t&acirc;m về độ bền khi mỗi trận MOBA c&oacute; độ d&agrave;i trung b&igrave;nh 40 ph&uacute;t l&agrave; 4800 lượt click chuột. Suy ra nếu mỗi ng&agrave;y chơi 1 trận th&igrave; phải mất tới hơn 10 năm anh em mới cần nghĩ đến việc thay một con chuột mới.</p>

<p>Một l&yacute; do nữa khiến MM710 th&iacute;ch hợp với game MOBA ch&iacute;nh l&agrave; độ cảm biến của chuột đạt tới 16000 DPI v&agrave; được t&ugrave;y chỉnh để th&iacute;ch hợp nhất với c&aacute;ch chơi của anh em. Chuột cũng được thiết kế để ph&ugrave; hợp với 3 kiểu cầm phổ biến hiện nay l&agrave; Palm, Claw, Fingertip.</p>

<p>&gt;&gt;&gt; THAM KHẢO NGAY SẢN PHẨM TẠI LINK DƯỚI:<br />
-&nbsp;<strong><a href="https://www.tncstore.vn/chuot-coolermaster-mm710-black.html" target="_blank">Chuột CoolerMaster MM710 Black</a></strong></p>

<p>-&nbsp;<strong><a href="https://www.tncstore.vn/index.php?route=product/product&amp;product_id=4470" target="_blank">Chuột CoolerMaster MM710 White</a></strong></p>

<p>&nbsp;</p>

<p><strong>3. Chuột Gaming DAREU A960 YELLOW - ULTRALIGHT</strong></p>

<p>N&oacute;i qua cũng phải n&oacute;i lại, nếu nhắc đến chuột gaming m&agrave; kh&ocirc;ng nhắc đến DAREU th&igrave; quả l&agrave; một thiếu s&oacute;t lớn. Với m&atilde; sản phẩm A960 Yellow - Ultralight, DAREU thực sự đ&atilde; l&agrave;m rất tốt khi vỏ chuột được l&agrave;m mỏng hơn nhưng vẫn kh&ocirc;ng k&eacute;m phần chắc chắn.</p>

<p>Bề mặt chuột được sơn m&agrave;i nhiều lớp với c&aacute;c hạt mịn b&aacute;m tr&ecirc;n bề mặt l&agrave;m giảm tối đa độ trơn trượt v&agrave; mồ h&ocirc;i, tăng cường độ b&aacute;m cho tay. Với trọng lượng si&ecirc;u nhẹ (chỉ 65 gram) - nhẹ nhất trong c&aacute;c loại chuột kh&ocirc;ng cần d&ugrave;ng vỏ lỗ - cực kỳ th&iacute;ch hợp với c&aacute;c tựa game MOBA.&nbsp;<span style="font-family:chakra petch">Thiết kế c&ocirc;ng th&aacute;i học tr&ecirc;n Dareu A960 mang d&aacute;ng vẻ mềm mại, nhiều đường cong hơn so với Gladius II Core.&nbsp;</span></p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/top 3 chuột chơi game moba/_TNC3048a.jpg" title="Chuột DAREU A960 Ultralight - Chuyên game MOBA" />&nbsp;</p>

<p>Điểm đ&aacute;ng ch&uacute; &yacute; ở A960 l&agrave; chuột được trang bị cảm biến PMW3389 cao cấp gi&uacute;p người d&ugrave;ng thực hiện những pha combo chuẩn x&aacute;c một c&aacute;ch nhanh ch&oacute;ng. Kh&ocirc;ng chỉ vậy, cảm biến PMW3389 gi&uacute;p cho chuột c&oacute; thể chơi được tr&ecirc;n tất cả c&aacute;c loại pad chuột kh&aacute;c nhau.</p>

<p>Anh em n&agrave;o hay leo rank chắc hẳn đều quan t&acirc;m đến trọng lượng chuột v&igrave; khi chơi trong thời gian d&agrave;i sẽ rất dễ mỏi tay. Một con chuột tốt sẽ đ&aacute;p ứng được c&aacute;c ti&ecirc;u ch&iacute; về trọng lượng v&agrave; độ nhạy DPI (Dots per Inch). V&agrave; A960 sở hữu tất cả những ưu điểm l&agrave;m n&ecirc;n một ch&uacute; chuột chuy&ecirc;n game MOBA.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/top 3 chuột chơi game moba/_TNC3051a.jpg" title="Chuột DAREU A960 Ultralight" /></p>

<p>Điểm tương tự của A960 so với MM710 ở tr&ecirc;n ch&iacute;nh l&agrave; DPI l&ecirc;n tới 16000 v&agrave; c&oacute; khả năng t&ugrave;y chỉnh. Th&ecirc;m v&agrave;o đ&oacute; với tốc độ theo d&otilde;i đạt 420 IPS, tốc độ phản hồi l&agrave; 1000Hz cho ph&eacute;p game thủ thực hiện những pha xử l&yacute; thần tốc m&agrave; kh&ocirc;ng lo về độ trễ. Tuổi thọ của chuột cũng được đ&aacute;nh gi&aacute; rất cao khi A960 d&ugrave;ng Switch DAREU với 50 triệu lượt click.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/top 3 chuột chơi game moba/_TNC3057a.jpg" title="Chuột DAREU A960 Ultralight" /></p>

<p>Ngo&agrave;i những th&ocirc;ng số giống với ASUS ROG Gladius II Core về số n&uacute;t bấm v&agrave; thiết kế c&ocirc;ng th&aacute;i học th&igrave; tạo h&igrave;nh v&agrave;ng t&iacute;m c&ugrave;ng số 24 nằm b&ecirc;n cạnh th&acirc;n chuột của A960 nhằm tri &acirc;n tới cố huyền thoại b&oacute;ng rổ Mỹ Kobe Bryant.</p>

<p>&gt;&gt;&gt; THAM KHẢO NGAY SẢN PHẨM TẠI LINK DƯỚI:</p>

<p><strong>-&nbsp;<a href="https://www.tncstore.vn/index.php?route=product/product&amp;product_id=4540" target="_blank">Chuột Gaming DAREU A960 YELLOW - ULTRALIGHT</a>&nbsp;</strong></p>

<p>&nbsp;</p>

<p>V&agrave; đ&oacute; l&agrave; TOP 3 chuột chơi game MOBA đ&aacute;ng mua nhất ở thời điểm hiện tại. Anh em h&atilde;y truy cập ngay <a href="https://www.tncstore.vn/" target="_blank">TNC Store</a> để cập nhật những sản phẩm gaming mới nhất nh&eacute;!</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<div>&nbsp;</div>
', N'/Data/images/newses/tintucmoinhat/top%203%20chuot.jpg', NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-06T13:28:01.153' AS DateTime), N'quang', CAST(N'2020-12-06T13:27:00.000' AS DateTime), NULL, 4, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (3, N'Các thông số HDD cần chú ý khi lựa chọn ổ cứng', N'Các thông số HDD cần chú ý khi lựa chọn ổ cứng', N'cac-thong-so-hdd-can-chu-y-khi-lua-chon-o-cung', N'Không thể phủ nhận độ phổ biến của HDD trên máy tính đến tận thời điểm hiện tại. Hãy cùng TNC khám phá ổ cứng này thông qua top 3 thông số HDD quan trọng nhé!', N'<p><em>Kh&ocirc;ng thể phủ nhận độ phổ biến của HDD tr&ecirc;n m&aacute;y t&iacute;nh đến tận thời điểm hiện tại. H&atilde;y c&ugrave;ng TNC kh&aacute;m ph&aacute; ổ cứng n&agrave;y th&ocirc;ng qua top 3 th&ocirc;ng số HDD quan trọng nh&eacute;!</em></p>

<p>&nbsp;</p>

<p>C&oacute; lẽ nhắc đến thiết bị lưu trữ dữ liệu, hẳn anh em đều nhớ ngay đến chiếc ổ HDD (Hard Disk Drive) truyền thống với một ổ đĩa tr&ograve;n bằng nh&ocirc;m (hoặc thuỷ tinh, gốm) được phủ vật liệu từ t&iacute;nh. Nguy&ecirc;n l&yacute; hoạt động của HDD hiểu đơn giản l&agrave; d&ugrave;ng động cơ quay để đọc/ghi dữ liệu, kết hợp với những bo mạch điện tử nhằm điều khiển đầu đọc/ghi đ&uacute;ng v&agrave;o vị tr&iacute; của đĩa từ khi đang quay để giải m&atilde; th&ocirc;ng tin. Ch&iacute;nh v&igrave; vậy n&ecirc;n tốc độ của HDD phụ thuộc rất nhiều v&agrave;o tốc độ quay cơ học n&ecirc;n kh&ocirc;ng thể so b&igrave; với c&aacute;c ổ SSD.&nbsp;</p>

<p>Tuy nhi&ecirc;n, do gi&aacute; th&agrave;nh rẻ c&ugrave;ng khả năng lưu trữ dữ liệu lớn khiến HDD vẫn được rất ưa chuộng. H&atilde;y để TNC Store gi&uacute;p bạn lựa chọn ổ HDD ph&ugrave; hợp nhất th&ocirc;ng qua c&aacute;c th&ocirc;ng số HDD quan trọng dưới đ&acirc;y nh&eacute;!</p>

<p>&nbsp;</p>

<h1><span style="font-size:18px"><strong>1. Giao tiếp</strong></span></h1>

<p><a href="https://www.tncstore.vn/cac-thong-so-SSD-quan-trong-lua-chon-o-cung-pc.html" target="_blank">Cũng giống như SSD</a>, c&aacute;c ổ HDD phải c&oacute; đ&uacute;ng giao tiếp mới c&oacute; thể kết nối với bo mạch chủ. C&oacute; ba loại giao tiếp HDD cơ bản</p>

<p>Giao tiếp PATA c&oacute; tuổi đời l&acirc;u nhất. Mặc d&ugrave; một số ổ cứng tr&ecirc;n thị trường hiện nay c&oacute; d&ugrave;ng PATA nhưng th&ocirc;ng số HDD n&agrave;y đang dần biến mất, thay thế cho n&oacute; l&agrave; giao tiếp sẽ được tr&igrave;nh b&agrave;y b&ecirc;n dưới.</p>

<p>&nbsp;</p>

<p>Giao tiếp SATA (Serial Advanced Technology Attachment) , c&ograve;n được gọi l&agrave; Serial ATA, l&agrave; c&ocirc;ng nghệ mới hơn so với giao diện PATA v&agrave; l&agrave; giao tiếp phổ biến nhất hiện nay. Do d&acirc;y c&aacute;p hẹp hơn đ&aacute;ng kể, ổ cứng SATA cung cấp luồng kh&ocirc;ng kh&iacute; tăng l&ecirc;n v&agrave; độ ồn thấp hơn so với ổ PATA. Giao tiếp SATA c&oacute; tốc độ truyền dữ liệu cao với chuẩn SATA 3 l&agrave; 6Gbps.</p>

<p>&gt;&gt;&gt; Kh&aacute;m ph&aacute; ngay <a href="https://www.tncstore.vn/hdd.html" target="_blank">c&aacute;c ổ cứng HDD</a> chuẩn SATA 3 đang rất được ưa chuộng tại TNC Store nh&eacute;!</p>

<p>SCSI (Small Computer System Interface) l&agrave; giao tiếp mạnh mẽ, thường được sử dụng cho c&aacute;c trường hợp y&ecirc;u cầu c&aacute;c t&aacute;c vụ đa nhiệm nặng, v&igrave; n&oacute; c&oacute; thể sắp xếp v&agrave; ưu ti&ecirc;n c&aacute;c hoạt động tốt hơn c&aacute;c loại giao tiếp kh&aacute;c. Giao diện SCSI rất quan trọng trong m&ocirc;i trường RAID (gh&eacute;p nhiều ổ đĩa cứng vật l&yacute; th&agrave;nh một hệ thống) hoặc m&aacute;y chủ với nhiều ổ cứng.&nbsp;</p>

<p>&nbsp;</p>

<h1><strong><span style="font-size:18px">2. Tốc độ v&ograve;ng quay</span></strong></h1>

<p>Đ&acirc;y l&agrave; th&ocirc;ng số HDD rất quan trọng, ảnh hưởng trực tiếp tới tốc độ đọc/ghi của ổ cứng. Tốc độ v&ograve;ng quay được t&iacute;nh bằng RPM (round per minute hay số v&ograve;ng quay mỗi ph&uacute;t). C&oacute; hai tốc độ v&ograve;ng quay phổ biến l&agrave; 5400 v&agrave; 7200 RPM (tốc độ v&ograve;ng quay tỷ lệ thuận với tốc độ đọc/ghi của HDD)</p>

<h1><strong><span style="font-size:18px">3. Bộ nhớ đệm</span></strong></h1>

<p>Bộ nhớ đệm (cache) trong ổ đĩa cứng c&oacute; chức năng tương tự như RAM của m&aacute;y t&iacute;nh, ch&uacute;ng c&oacute; nhiệm vụ lưu dữ liệu tạm thời trong qu&aacute; tr&igrave;nh l&agrave;m việc của ổ đĩa cứng v&agrave; c&oacute; đơn vị l&agrave; MB.</p>

<p>Đ&acirc;y l&agrave; th&ocirc;ng số HDD c&oacute; ảnh hưởng đ&aacute;ng kể tới hiệu suất hoạt động của ổ đĩa cứng bởi việc đọc/ghi kh&ocirc;ng xảy ra tức thời (do phụ thuộc v&agrave;o sự di chuyển của đầu đọc/ghi, dữ liệu được truyền tới hoặc đi). Bộ nhớ đệm c&agrave;ng lớn th&igrave; ổ HDD sẽ c&oacute; hiệu suất c&agrave;ng cao.</p>

<p>&nbsp;</p>

<p>Với c&aacute;c anh em hay quan t&acirc;m về HDD chắc hẳn đ&atilde; biết c&oacute; loại ổ cứng lai giữa SSD v&agrave; HDD, gọi l&agrave; SSHD (Solid State Hybrid Drive). C&aacute;c ổ SSHD sử dụng c&aacute;c phiến đĩa của HDD để lưu trữ v&agrave; những chip NAND Flash d&ugrave;ng để truy xuất dữ liệu. Ch&iacute;nh v&igrave; vậy n&ecirc;n SSHD thường c&oacute; tốc độ cao hơn HDD cũng như đảm bảo gi&aacute; th&agrave;nh rẻ hơn SSD.</p>

<p>&nbsp;</p>

<p>Ngo&agrave;i ra k&iacute;ch thước (Form Factor) cũng l&agrave; th&ocirc;ng số HDD cần ch&uacute; &yacute; khi anh em mua ổ cứng. K&iacute;ch thước x&aacute;c định khả năng tương th&iacute;ch vật l&yacute; của HDD với c&aacute;c khoang ổ đĩa, thể hiện đường k&iacute;nh gần đ&uacute;ng của ổ đĩa. Ổ cứng phổ biến nhất hiện nay l&agrave; 2,5 inch v&agrave; 3,5 inch.</p>

<p>&nbsp;</p>

<p>Sự ph&aacute;t triển với tốc độ ch&oacute;ng mặt của SSD k&eacute;o theo đ&oacute; l&agrave; gi&aacute; th&agrave;nh của c&aacute;c ổ cứng ng&agrave;y một rẻ hơn, v&agrave; HDD cũng kh&ocirc;ng phải l&agrave; ngoại lệ. Anh em c&oacute; thể lựa chọn cho m&igrave;nh những ổ HDD c&oacute; dung lượng từ 1TB trở l&ecirc;n để lưu trữ những ứng dụng, video, phần mềm... nặng nhằm tiết kiệm chi ph&iacute; cho c&aacute;c linh kiện kh&aacute;c.</p>

<p>&nbsp;</p>

<p>V&agrave; đ&oacute; l&agrave; những th&ocirc;ng số HDD quan trọng m&agrave; anh em n&ecirc;n t&igrave;m hiểu trước khi lựa chọn chiếc ổ cứng cho m&aacute;y t&iacute;nh của m&igrave;nh. H&atilde;y đến với <a href="https://www.tncstore.vn/" target="_blank">TNC Store</a> để lựa chọn được những sản phẩm với gi&aacute; v&agrave; dịch vụ tốt nhất nh&eacute;!&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>
', N'/Data/images/newses/tintucmoinhat/HDD.jpg', NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-06T13:28:21.477' AS DateTime), N'quang', CAST(N'2020-12-06T13:28:00.000' AS DateTime), NULL, 4, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (4, N'Giải mã những thông số màn hình quan trọng nhất định phải biết', N'Giải mã những thông số màn hình', N'giai-ma-nhung-thong-so-man-hinh', N'Nhắc đến một góc PC mà không nhắc đến màn hình thì quả là thiếu sót. Hãy cùng TNC tìm hiểu các thông số màn hình để lựa chọn được chiếc màn hình ưng ý nhất nhé!', N'<p><em>Nhắc đến một g&oacute;c PC m&agrave; kh&ocirc;ng nhắc đến m&agrave;n h&igrave;nh th&igrave; quả l&agrave; thiếu s&oacute;t. H&atilde;y c&ugrave;ng TNC t&igrave;m hiểu c&aacute;c th&ocirc;ng số m&agrave;n h&igrave;nh để lựa chọn được chiếc m&agrave;n h&igrave;nh ưng &yacute; nhất nh&eacute;!</em></p>

<p>&nbsp;</p>

<p>Chắc hẳn c&aacute;c anh em đều cảm thấy tầm quan trọng của m&agrave;n h&igrave;nh đến việc trải nghiệm khi chơi game cũng như l&agrave;m đồ hoạ. Một chiếc PC c&oacute; cấu h&igrave;nh khủng, max option tất cả c&aacute;c linh kiện b&ecirc;n trong nhưng nếu đi với m&agrave;n h&igrave;nh c&oacute; tần số qu&eacute;t thấp, độ ph&acirc;n giải chỉ đạt chuẩn HD hay d&ugrave;ng tấm nền TN&hellip; sẽ kh&ocirc;ng thể cho ra h&igrave;nh ảnh đẹp v&agrave; rất l&atilde;ng ph&iacute;.&nbsp;</p>

<p>Vậy l&agrave;m sao để lựa chọn m&agrave;n h&igrave;nh sao cho vừa ph&ugrave; hợp với cấu h&igrave;nh PC lại vừa đ&aacute;p ứng t&igrave;nh h&igrave;nh t&agrave;i ch&iacute;nh? H&atilde;y để TNC Store giải m&atilde; c&aacute;c th&ocirc;ng số m&agrave;n h&igrave;nh nh&eacute;!</p>

<p>&nbsp;</p>

<h1><span style="font-size:18px"><strong>1. K&iacute;ch thước m&agrave;n h&igrave;nh&nbsp;</strong></span></h1>

<p>Th&ocirc;ng số m&agrave;n h&igrave;nh đầu ti&ecirc;n phải n&oacute;i đến ch&iacute;nh l&agrave; k&iacute;ch thước m&agrave;n h&igrave;nh. K&iacute;ch thước m&agrave;n h&igrave;nh thể hiện khu vực hiển thị h&igrave;nh ảnh v&agrave; video, được đo bằng đường ch&eacute;o của m&agrave;n h&igrave;nh (độ d&agrave;i giữa c&aacute;c g&oacute;c đối diện) v&agrave; được t&iacute;nh bằng đơn vị inch.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số màn hình/com_proxy_ (1).jpg" style="width:730px" /></p>

<p>Đối với đa số người d&ugrave;ng phổ th&ocirc;ng, l&agrave;m c&aacute;c c&ocirc;ng việc văn ph&ograve;ng th&igrave; k&iacute;ch thước m&agrave;n h&igrave;nh từ 21 đến 27 inch l&agrave; ph&ugrave; hợp. Đối với c&aacute;c nh&agrave; l&agrave;m phim, đồ họa, thiết kế hay game thủ th&igrave; c&aacute;ch chọn m&agrave;n h&igrave;nh hợp l&yacute; l&agrave; k&iacute;ch thước 24 - 34 inch.</p>

<h1><span style="font-size:18px"><strong>2. Loại m&agrave;n h&igrave;nh&nbsp;</strong></span></h1>

<p>Đầu những năm 2000, m&agrave;n h&igrave;nh CRT vẫn c&ograve;n kh&aacute; phổ biến. Nhưng nhờ sự ph&aacute;t triển của c&ocirc;ng nghệ, đa số c&aacute;c m&agrave;n h&igrave;nh m&aacute;y t&iacute;nh hiện nay đều d&ugrave;ng c&ocirc;ng nghệ hiển thị LCD (m&agrave;n tinh thể lỏng) v&agrave; LED. M&agrave;n h&igrave;nh LED t&ecirc;n đầy đủ l&agrave; Light Emitting Diode. Kh&aacute;c với m&agrave;n LCD sử dụng đ&egrave;n nền huỳnh quang để chiếu s&aacute;ng, m&agrave;n h&igrave;nh LED sử dụng c&aacute;c đi-ốt (diode) ph&aacute;t s&aacute;ng với 3 m&agrave;u cơ bản l&agrave; đỏ, xanh l&aacute;, xanh lam để hiển thị h&igrave;nh ảnh, video.&nbsp;</p>

<p>So với m&agrave;n LCD th&igrave; m&agrave;n h&igrave;nh LED được đ&aacute;nh gi&aacute; l&agrave; mỏng hơn, h&igrave;nh ảnh c&oacute; độ tương phản lớn hơn, ti&ecirc;u thụ &iacute;t điện năng hơn v&agrave; tuổi thọ cao hơn. Do ti&ecirc;u tốn &iacute;t năng lượng hơn n&ecirc;n sử dụng m&agrave;n h&igrave;nh LED sẽ th&acirc;n thiện hơn với m&ocirc;i trường.&nbsp;</p>

<p>Do những ti&ecirc;u ch&iacute; vượt trội về LCD n&ecirc;n m&agrave;n h&igrave;nh LED c&oacute; gi&aacute; th&agrave;nh đắt hơn.&nbsp;</p>

<p>&gt;&gt;&gt; Kh&aacute;m ph&aacute; ngay những <a href="https://www.tncstore.vn/man-hinh-gaming.html" target="_blank">m&agrave;n h&igrave;nh&nbsp;Gaming</a>&nbsp;đang rất hot&nbsp;tại TNC Store nh&eacute;!&nbsp;</p>

<h1><strong><span style="font-size:18px">3. Tỷ lệ khung h&igrave;nh&nbsp;</span></strong></h1>

<p>Tỷ lệ khung h&igrave;nh l&agrave; tỷ lệ giữa chiều rộng v&agrave; chiều cao của m&agrave;n h&igrave;nh. Tỷ lệ khung h&igrave;nh &quot;M&agrave;n h&igrave;nh vu&ocirc;ng&quot;&nbsp; l&agrave; 4:3 v&agrave; 5:4, trong khi tỷ lệ khung h&igrave;nh &quot;M&agrave;n h&igrave;nh rộng&quot; l&agrave; 16:9 v&agrave; 16:10. Ngo&agrave;i ra, với c&aacute;c loại m&agrave;n h&igrave;nh giải tr&iacute; hoặc chuyện dụng cho c&aacute;c nh&agrave; l&agrave;m phim, c&ograve;n được sử dụng tỷ lệ UltraWide 21:9 (chuẩn điện ảnh), hoặc thậm ch&iacute; l&ecirc;n tới 32:9.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số màn hình/ti-le-man-hinh-16-9 (1).jpg" style="width:730px" /></p>

<h1><span style="font-size:18px"><strong>4. Độ ph&acirc;n giải</strong></span></h1>

<p>Độ ph&acirc;n giải chỉ số điểm ảnh (gọi l&agrave; pixel) hiển thị tr&ecirc;n m&agrave;n h&igrave;nh, thường được n&ecirc;u bằng &lt;chiều rộng&gt; x &lt;chiều cao&gt;. V&iacute; dụ m&agrave;n h&igrave;nh 1920x1080 sẽ c&oacute; chiều rộng chứa 1920 điểm ảnh v&agrave; chiều cao chứa 1080 điểm ảnh. Tương đương với&nbsp;2,073,600 điểm ảnh tr&ecirc;n to&agrave;n bộ tấm nền.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số màn hình/tv_guide_relative_comparison_0 (1).jpg" style="width:730px" /></p>

<p>Độ ph&acirc;n giải c&agrave;ng cao th&igrave; c&agrave;ng c&oacute; nhiều điểm ảnh, h&igrave;nh ảnh c&agrave;ng chi tiết v&agrave; sắc n&eacute;t hơn.</p>

<h1><strong><span style="font-size:18px">5. Tần số qu&eacute;t</span></strong></h1>

<p>Tần số qu&eacute;t hiểu đơn giản l&agrave; số h&igrave;nh ảnh m&agrave;n h&igrave;nh hiển thị mỗi gi&acirc;y. V&iacute; dụ như m&agrave;n h&igrave;nh c&oacute; tần số qu&eacute;t 144Hz nghĩa l&agrave; trong 1 gi&acirc;y m&agrave;n h&igrave;nh sẽ hiển thị 144 h&igrave;nh ảnh kh&aacute;c nhau thay đổi li&ecirc;n tục.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số màn hình/laptop_man_hinh_144hz_5761e30aa0d945e5b853454c959dd609_grande (1).jpg" title="Tần số quét ảnh hưởng đến chất lượng video" /></p>

<p>Tần số qu&eacute;t c&agrave;ng cao, chuyển động h&igrave;nh ảnh tr&ecirc;n m&agrave;n h&igrave;nh c&agrave;ng chất lượng v&agrave; mượt m&agrave;, gi&uacute;p mắt của bạn sẽ đỡ mỏi hơn. Card m&agrave;n h&igrave;nh đ&oacute;ng vai tr&ograve; quan trọng trong việc xuất h&igrave;nh ảnh n&ecirc;n bạn cũng cần ch&uacute; &yacute; tới <a href="https://www.tncstore.vn/bat-mi-cac-thong-so-card-do-hoa.html" target="_blank">th&ocirc;ng số card m&agrave;n h&igrave;nh</a> nh&eacute;!</p>

<h1><strong><span style="font-size:18px">6. M&agrave;u sắc</span></strong></h1>

<p>Th&ocirc;ng số m&agrave;n h&igrave;nh n&agrave;y thể hiện số lượng m&agrave;u sắc m&agrave;n h&igrave;nh c&oacute; thể hiển thị. (V&iacute; dụ 16,8 triệu m&agrave;u). Một m&agrave;n h&igrave;nh c&oacute; khả năng hiển thị c&agrave;ng nhiều m&agrave;u sắc, th&igrave; h&igrave;nh ảnh sẽ c&agrave;ng ch&acirc;n thực hơn.</p>

<h1><strong><span style="font-size:18px">7. Độ s&aacute;ng</span></strong></h1>

<p>Độ s&aacute;ng của m&agrave;n h&igrave;nh m&ocirc; tả độ ch&oacute;i của m&agrave;n h&igrave;nh hoặc lượng &aacute;nh s&aacute;ng m&agrave; m&agrave;n h&igrave;nh ph&aacute;t ra. Độ s&aacute;ng được đo bằng candelas tr&ecirc;n m&eacute;t vu&ocirc;ng (cd / m2), hoặc đơn vị nits. Độ s&aacute;ng m&agrave;n h&igrave;nh ảnh hưởng đến độ tương phản, khả năng hiển thị c&aacute;c gam m&agrave;u tối, khả năng l&agrave;m việc trong c&aacute;c m&ocirc;i trường &aacute;nh s&aacute;ng kh&aacute;c nhau. V&iacute; dụ l&agrave;m việc trong kh&ocirc;ng gian c&oacute; nhiều &aacute;nh s&aacute;ng mạnh bạn sẽ cần một chiếc m&agrave;n h&igrave;nh c&oacute; độ s&aacute;ng cao, v&agrave; ngược lại.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số màn hình/hbxxa-5 (1).jpg" title="Độ sáng màn hình" /></p>

<p>Bạn sẽ cần độ s&aacute;ng từ 300 cd/m2 trở l&ecirc;n nếu muốn xem phim hoặc chơi game tr&ecirc;n m&aacute;y t&iacute;nh của m&igrave;nh. Đối với c&aacute;c c&ocirc;ng việc văn ph&ograve;ng v&agrave; duyệt web, độ s&aacute;ng từ 200 - 250 cd/m2 l&agrave; ph&ugrave; hợp.</p>

<h1><strong><span style="font-size:18px">8. Thời gian phản hồi</span></strong></h1>

<p>Th&ocirc;ng số m&agrave;n h&igrave;nh n&agrave;y cho biết thời gian m&agrave; c&aacute;c điểm ảnh chuyển m&agrave;u, được t&iacute;nh bằng mili gi&acirc;y (ms). Thời gian phản hồi c&agrave;ng thấp, qu&aacute; tr&igrave;nh chuyển đổi c&agrave;ng nhanh, hạn chế tối đa hiện tượng b&oacute;ng mờ h&igrave;nh ảnh.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số màn hình/maxresdefault (1).jpg" title="Thời gian phản hồi" /></p>

<p>C&oacute; hai loại thời gian phản hồi l&agrave; GtG (Grey to Grey) v&agrave; MPRT (Moving Picture Response Time). GtG biểu thị thời gian một pixel thay đổi m&agrave;u. MPRT biểu thị thời gian một pixel c&oacute; thể nh&igrave;n thấy li&ecirc;n tục trong bao l&acirc;u.</p>

<h1><strong><span style="font-size:18px">9. Tấm nền</span></strong></h1>

<p>Đ&acirc;y l&agrave; th&ocirc;ng số m&agrave;n h&igrave;nh kh&aacute; quan trọng. M&agrave;n h&igrave;nh LCD chủ yếu sử dụng năm loại tấm nền kh&aacute;c nhau:&nbsp;</p>

<p><strong>TN </strong>(Twisted Nematic) l&agrave; c&ocirc;ng nghệ phổ biến nhất v&agrave; cũng l&agrave; c&ocirc;ng nghệ l&acirc;u đời nhất. Tấm nền TN cung cấp thời gian phản hồi thấp nhất, ph&ugrave; hợp cho gaming. Kết hợp với đ&egrave;n nền LED, m&agrave;n h&igrave;nh TN cung cấp độ s&aacute;ng cao v&agrave; tiết kiệm điện hơn so với c&aacute;c c&ocirc;ng nghệ cạnh tranh. Tuy nhi&ecirc;n, n&oacute; c&oacute; hạn chế l&agrave; khả năng hiển thị m&agrave;u sắc k&eacute;m ở c&aacute;c g&oacute;c nh&igrave;n rộng.</p>

<p><strong>IPS</strong> (In-Plane Switching) l&agrave; m&agrave;n h&igrave;nh c&oacute; c&aacute;c lớp tinh thể lỏng được xếp ngang (In-Plane) song song với 2 lớp k&iacute;nh ph&acirc;n cực ở tr&ecirc;n v&agrave; dưới thay v&igrave; vu&ocirc;ng g&oacute;c. Tấm nền IPS cho cung cấp g&oacute;c nh&igrave;n rộng l&ecirc;n tới 178 độ so với phương ngang, gi&uacute;p người d&ugrave;ng kh&ocirc;ng nhất thiết phải ngồi trực diện vẫn c&oacute; thể nh&igrave;n r&otilde; h&igrave;nh ảnh tr&ecirc;n m&agrave;n h&igrave;nh.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số màn hình/man-hinh-ips-la-gi- (1).jpg" title="Tấm nền IPS" /></p>

<p><strong>VA</strong> (Vertical Alignment) l&agrave; tấm m&agrave;n trung h&ograve;a giữa TN v&agrave; IPS. Khả năng hiển thị m&agrave;u sắc của VA lớn hơn TN nhưng kh&ocirc;ng bằng IPS. VA cũng c&oacute; g&oacute;c nh&igrave;n rộng tương tự IPS nhưng tốc độ phản hồi k&eacute;m hơn TN v&agrave; IPS. VA cũng c&oacute; nhược điểm tương tự TN l&agrave; dễ bị thay đổi m&agrave;u sắc, độ tương phản khi chuyển đổi g&oacute;c nh&igrave;n kh&aacute;c ch&iacute;nh diện.</p>

<p><strong>PVA </strong>(Patterned Vertical Alignment) l&agrave; c&ocirc;ng nghệ tấm nền c&oacute; tỷ lệ tương phản tuyệt vời, m&agrave;u đen rất tốt, c&oacute; g&oacute;c nh&igrave;n rộng. Tuy nhi&ecirc;n, PVA c&oacute; thời gian phản hồi điểm ảnh chậm hơn so với tấm nền TN, rẻ hơn so với IPS nhưng lại đắt hơn tấm nền TN.</p>

<p><strong>PLS</strong> (Plane to Line Switching) l&agrave; c&ocirc;ng nghệ tấm nền &quot;IPS-type&quot; được Samsung giới thiệu v&agrave;o cuối năm 2010, l&agrave; một giải ph&aacute;p thay thế cho c&ocirc;ng nghệ IPS phổ biến của LG. Tấm nền PLS c&oacute; g&oacute;c nh&igrave;n rộng như IPS, đồng thời cung cấp độ s&aacute;ng cao hơn với chi ph&iacute; ti&ecirc;u thụ điện năng thấp hơn.</p>

<h1><strong><span style="font-size:18px">10. Cổng HDMI</span></strong></h1>

<p>HDMI (Giao diện đa phương tiện độ n&eacute;t cao) l&agrave; chuẩn kết nối phổ biến nhất hiện nay. HDMI c&oacute; thể truyền video/audio kh&ocirc;ng n&eacute;n v&agrave; ở dạng kỹ thuật số. HDMI hỗ trợ tất cả c&aacute;c chuẩn h&igrave;nh ảnh từ ti&ecirc;u chuẩn đến độ n&eacute;t cao, cũng như t&iacute;n hiệu &acirc;m thanh đa k&ecirc;nh tr&ecirc;n duy nhất một d&acirc;y c&aacute;p.</p>

<h1><strong><span style="font-size:18px">11. Cổng DisplayPort</span></strong></h1>

<p>Giống như HDMI, DisplayPort l&agrave; chuẩn kết nối cũng truyền được cả &acirc;m thanh lẫn h&igrave;nh ảnh kh&ocirc;ng n&eacute;n ở dạng kỹ thuật số. DisplayPort được d&ugrave;ng để xuất ra những m&agrave;n h&igrave;nh lớn với tần số qu&eacute;t cao.</p>

<p>Tr&ecirc;n đ&acirc;y l&agrave; tất cả những th&ocirc;ng số m&agrave;n h&igrave;nh quan trọng nếu anh em đang c&oacute; nhu cầu lựa chọn một chiếc m&agrave;n h&igrave;nh cho d&agrave;n PC của m&igrave;nh. H&atilde;y đến ngay <a href="https://www.tncstore.vn/" target="_blank">TNC Store</a> để được tư vấn mua h&agrave;ng v&agrave; nhận được chế độ hậu m&atilde;i tốt nhất nh&eacute;!</p>

<div>&nbsp;</div>
', N'/Data/images/newses/tintucmoinhat/Ava.jpg', NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-06T13:28:40.450' AS DateTime), N'quang', CAST(N'2020-12-06T13:28:00.000' AS DateTime), NULL, 4, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (5, N'Các thông số RAM đáng chú ý khi build PC', N'Các thông số RAM build PC', N'cac-thong-so-ram-build-pc', N'Không thể phủ nhận vai trò quan trọng của RAM đến tốc độ xử lý của máy tính. Hãy cùng TNC Store đến với những thông số RAM đáng chú ý nhé!', N'<p><em>Kh&ocirc;ng thể phủ nhận vai tr&ograve; quan trọng của RAM đến tốc độ xử l&yacute; của m&aacute;y t&iacute;nh. H&atilde;y c&ugrave;ng TNC Store đến với những th&ocirc;ng số RAM đ&aacute;ng ch&uacute; &yacute; nh&eacute;!</em></p>

<p>&nbsp;</p>

<p>Kh&aacute;c với ROM (Read Only Memory) chỉ đọc dữ liệu đ&atilde; được nạp sẵn v&agrave;o bộ nhớ v&agrave; c&oacute; tốc độ thấp, RAM (Random Access Memory) l&agrave; bộ nhớ truy xuất ngẫu nhi&ecirc;n, c&oacute; t&aacute;c dụng đọc v&agrave; truy cập dữ liệu cực nhanh, gi&uacute;p gia tăng khả năng xử l&yacute; dữ liệu của CPU (do CPU lấy dữ liệu từ RAM). Một thanh RAM chuẩn DDR4 hiện nay c&oacute; tốc độ nhanh gấp h&agrave;ng chục lần ổ SSD mới nhất hiện nay. Vậy cần bao nhi&ecirc;u RAM cho đủ? Sử dụng RAM như n&agrave;o cho hiệu quả? H&atilde;y để TNC Store t&igrave;m c&acirc;u trả lời cho anh em qua c&aacute;c th&ocirc;ng số RAM quan trọng dưới đ&acirc;y nh&eacute;!</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<h1><span style="font-size:18px"><strong>1. Loại RAM&nbsp;</strong></span></h1>

<p>C&oacute; 3 loại RAM phổ biến thường thấy l&agrave; DRAM, SRAM v&agrave; SDRAM.</p>

<p>DRAM (RAM động) chỉ loại RAM cần được nạp điện sau v&agrave;i mili gi&acirc;y để b&ugrave; đắp sự r&ograve; rỉ điện từ tụ điện (tụ điện lưu trữ mỗi bit dữ liệu b&ecirc;n trong bảng mạch) Nếu kh&ocirc;ng được nạp điện th&igrave; c&aacute;c bit dữ liệu trong DRAM sẽ mất dần.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số RAM/dram-la-gi (1).jpg" title="DRAM" /></p>

<p style="text-align:center">&nbsp;</p>

<p>SRAM (RAM tĩnh) l&agrave; loại RAM lưu dữ liệu trong c&aacute;c pin chứa tụ điện v&agrave; b&oacute;ng b&aacute;n dẫn. Kh&aacute;c với DRAM, SRAM chỉ cần được cung cấp nguồn điện l&agrave; c&oacute; thể lưu trữ dữ liệu, kh&ocirc;ng cần phải nạp điện theo định kỳ. V&igrave; c&oacute; tốc độ nhanh hơn n&ecirc;n SRAM c&oacute; gi&aacute; đắt hơn DRAM v&agrave; thường được sử dụng như bộ nhớ đệm cho CPU.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số RAM/sram (1).jpg" title="SRAM" /></p>

<p style="text-align:center">&nbsp;</p>

<p>SDRAM (RAM động đồng bộ ho&aacute;) l&agrave; DRAM được đồng bộ ho&aacute; với xung bus hệ thống. Do đ&oacute; SDRAM c&oacute; tốc độ xử l&yacute; rất nhanh v&agrave; kh&ocirc;ng c&oacute; độ trễ. Đ&acirc;y l&agrave; loại RAM được d&ugrave;ng phổ biến nhất hiện nay.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số RAM/SDRAM (1).jpg" title="SDRAM" /></p>

<p>&gt;&gt;&gt; VRAM tr&ecirc;n card đồ hoạ&nbsp;l&agrave; g&igrave;? C&oacute; giống 3 loại tr&ecirc;n kh&ocirc;ng? Kh&aacute;m ph&aacute; ngay c&aacute;c <a href="https://www.tncstore.vn/bat-mi-cac-thong-so-card-do-hoa.html" target="_blank">th&ocirc;ng số card đồ hoạ</a> nh&eacute;!</p>

<p>Ngo&agrave;i ra c&ograve;n c&aacute;c loại RAM kh&aacute;c như FRAM, ReRAM, MRAM&hellip; nhưng kh&ocirc;ng được sử dụng phổ biến n&ecirc;n m&igrave;nh xin kh&ocirc;ng đề cập tới trong b&agrave;i viết n&agrave;y.</p>

<p>&nbsp;</p>

<h1><span style="font-size:18px"><strong>2. C&ocirc;ng nghệ DDR (Double Data Rate)</strong></span></h1>

<p>Th&ocirc;ng số RAM n&agrave;y được dựa tr&ecirc;n loại SDRAM được nhắc đến ở tr&ecirc;n. Đ&uacute;ng như t&ecirc;n gọi của n&oacute;, DDR cho ph&eacute;p truyền được hai đơn vị dữ liệu trong mỗi xung nhịp thay v&igrave; một như SDR (Single Data Rate). Do vậy n&ecirc;n DDR cho tốc độ truyền dữ liệu nhanh gấp đ&ocirc;i so với SDR.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số RAM/main-qimg-85a5ba0e8a46393bf883821b811bfb5e-1 (1).jpg" style="width:730px" /></p>

<p>Hiện nay m&aacute;y t&iacute;nh phổ biến sử dụng c&aacute;c loại thanh RAM DDR4 thay cho c&aacute;c thế hệ DDR2, DDR3. RAM DDR5 đ&atilde; được c&ocirc;ng bố hứa hẹn sẽ l&ecirc;n ng&ocirc;i v&agrave; trở n&ecirc;n thịnh h&agrave;nh trong tương lai. C&oacute; một lưu &yacute; khi build PC l&agrave; c&aacute;c thanh RAM thế hệ DDR kh&aacute;c nhau sẽ c&oacute; c&aacute;c ch&acirc;n cắm kh&aacute;c nhau n&ecirc;n khi mua RAM anh em cần ch&uacute; &yacute; xem mainboard sử dụng khe cắm cho loại RAM n&agrave;o.</p>

<p>&gt;&gt;&gt; Kh&aacute;m ph&aacute; ngay những thanh<a href="https://www.tncstore.vn/linh-kien-pc/ram.html" target="_blank">&nbsp;RAM </a>hiệu năng khủng&nbsp;với mức gi&aacute; hấp dẫn tại TNC Store nh&eacute;!</p>

<h1><strong><span style="font-size:18px">3. Đa k&ecirc;nh</span></strong></h1>

<p>Đ&acirc;y l&agrave; th&ocirc;ng số RAM kh&aacute; phổ biến. C&aacute;c thanh RAM hiện nay chủ yếu hỗ trợ Dual Channel v&agrave; c&oacute; độ rộng bộ nhớ (Bus width) l&agrave; 64 bit. Hiểu đơn giản, giữa CPU v&agrave; RAM chỉ c&oacute; con đường một chiều trao đổi dữ liệu v&agrave; c&ugrave;ng một thời điểm chỉ c&oacute; 64 chiếc xe di chuyển một chiều.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số RAM/img (1).jpg" style="width:730px" /></p>

<p>Nhưng nếu anh em cắm hai thanh RAM để tạo th&agrave;nh Dual Channel sẽ c&oacute; hai con đường, mỗi con đường c&oacute; tối đa 64 chiếc xe di chuyển v&agrave;o hoặc ra c&ugrave;ng một l&uacute;c. Điều đ&oacute; c&oacute; nghĩa trong một chu kỳ c&oacute; thể tăng gấp đ&ocirc;i hiệu quả nạp xuất dữ liệu.</p>

<p>&nbsp;</p>

<h1><strong><span style="font-size:18px">4. Tốc độ xung truyền tải dữ liệu (Bus Speed)</span></strong></h1>

<p>Nhờ c&oacute; c&ocirc;ng nghệ DDR n&ecirc;n tr&ecirc;n nh&atilde;n c&aacute;c thanh RAM sử dụng c&ocirc;ng nghệ DDR thường ghi tốc độ gấp đ&ocirc;i so với xung nhịp thực tế. Đ&oacute; ch&iacute;nh l&agrave; tốc độ truyền tải dữ liệu của RAM.</p>

<p>V&iacute; dụ như tr&ecirc;n thanh RAM c&oacute; ghi DDR4 3200 th&igrave; 3200 ch&iacute;nh l&agrave; tốc độ truyền tải dữ liệu, được t&iacute;nh bằng MT/s (megatransfer/s), nghĩa l&agrave; 1 gi&acirc;y thanh RAM c&oacute; thể xử l&yacute; được 3,2 triệu đơn vị dữ liệu. C&ograve;n bus RAM (tức xung nhịp thực tế) l&agrave; 1600MHz, đ&uacute;ng bằng một nửa&nbsp; tốc độ được ghi tr&ecirc;n RAM.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số RAM/2000x2000_Retail_DDR4-3200_U-DIMM_32GB_72dpi (1).jpg" style="width:730px" /></p>

<p>Điều đ&aacute;ng ch&uacute; &yacute; l&agrave; tốc độ xung nhịp n&agrave;y l&agrave; tốc độ tối đa m&agrave; bộ nhớ chạy được; chứ kh&ocirc;ng thể tự động chạy với tốc độ đ&oacute;. V&iacute; dụ, nếu anh em d&ugrave;ng bộ nhớ DDR4-2666 l&ecirc;n một m&aacute;y t&iacute;nh&nbsp; truy cập hệ thống ở tốc độ 600MHz (1200 MHz DDR), th&igrave; những bộ nhớ n&agrave;y chỉ c&oacute; tốc độ đạt 600 MHz (1200 MHz DDR) chứ kh&ocirc;ng phải 1333MHz (2666 MHz DDR).</p>

<h1><strong><span style="font-size:18px">5. Băng th&ocirc;ng (Bandwidth)</span></strong></h1>

<p>Th&ocirc;ng số RAM n&agrave;y c&oacute; thể hiểu l&agrave; tốc độ đọc/ghi dữ liệu trong một gi&acirc;y của RAM. Băng th&ocirc;ng được t&iacute;nh bằng c&ocirc;ng thức Bandwidth = (Bus Speed x Bus width)/8.</p>

<p>VD: RAM c&oacute; tốc độ truyền tải dữ liệu l&agrave; 3200 v&agrave; độ rộng bộ nhớ l&agrave; 64 th&igrave; sẽ c&oacute; băng th&ocirc;ng l&agrave; 3,200,000 x 64/8= 25,600,000 byte/s, tương đương khoảng 24,41GB/s.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số RAM/bus-ram-la-gi (1).jpg" style="width:730px" /></p>

<p>Khi anh em sử dụng Dual Channel, lắp 2 RAM song song dữ liệu vận chuyển được trong 1 gi&acirc;y sẽ tăng gấp đ&ocirc;i. Tuy nhi&ecirc;n Bus RAM kh&ocirc;ng tăng, vẫn chỉ l&agrave; 1600Mhz.</p>

<p>C&aacute;c th&ocirc;ng số RAM kh&aacute;c cần biết</p>

<p>Độ trễ (CAS Latency) hiểu đơn giản l&agrave; qu&atilde;ng thời gian kể từ khi bộ điều khiển ra lệnh đến l&uacute;c nhận được phản hồi. Độ trễ c&agrave;ng thấp th&igrave; c&agrave;ng tốt.</p>

<p>Th&ocirc;ng số RAM ECC (Error Checking and Correction) l&agrave; khả năng kiểm tra v&agrave; sửa lỗi. C&aacute;c thanh RAM ECC c&oacute; khả năng điều khiển được d&ograve;ng dữ liệu ra v&agrave;o n&oacute; v&agrave; thường được sử dụng ở c&aacute;c m&aacute;y t&iacute;nh đồng bộ, m&aacute;y trạm điều khiển server. Khi c&oacute; hiện tượng crash xảy ra th&igrave; RAM ECC chỉ cần y&ecirc;u cầu gửi lại đ&uacute;ng g&oacute;i tin bị crash. RAM ECC c&oacute; chế độ tự động sửa lỗi, v&igrave; thế RAM ECC c&oacute; độ ổn định v&agrave; hiệu suất cao hơn c&aacute;c RAM b&igrave;nh thường kh&aacute;c.</p>

<p>Mức điện &aacute;p l&agrave; th&ocirc;ng số RAM cho biết RAM hoạt động ở một ti&ecirc;u chuẩn điện &aacute;p nhất định. Anh em n&ecirc;n cắm chung c&aacute;c RAM c&oacute; c&ugrave;ng mức điện &aacute;p để tr&aacute;nh l&agrave;m hỏng thiết bị.</p>

<p>&nbsp;</p>

<p>V&agrave; đ&oacute; l&agrave; tất cả những th&ocirc;ng số RAM đ&aacute;ng lưu &yacute; nếu anh em đang c&oacute; &yacute; định build một chiếc PC cho ri&ecirc;ng m&igrave;nh. H&atilde;y đến ngay <a href="https://www.tncstore.vn/" target="_blank">TNC Store</a> để nhận được những khuyến m&atilde;i hấp dẫn nhất khi mua h&agrave;ng nh&eacute;!</p>

<div>&nbsp;</div>
', N'/Data/images/newses/tintucmoinhat/RAM.jpg', NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-06T13:31:23.573' AS DateTime), N'quang', CAST(N'2020-12-06T13:30:00.000' AS DateTime), NULL, 4, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (6, N'Top 5 thông số CPU cần biết khi lựa chọn vi xử lý cho PC', N'Top 5 thông số CPU vi xử lýPC', N'top-5-thong-so-cpu-vi-xu-lypc', N'Với sự nổi lên của rất nhiều các hãng công nghệ tham gia vào thị trường bán lẻ PC thì chúng ta đang có rất nhiều sự lựa chọn cho góc học tập của mình. Tuy vậy, điều đó vô hình chung khiến cho chúng ta trở nên “lười" hơn khi chỉ chủ yếu lựa chọn những dàn PC được build sẵn hoặc nghe theo lời tư vấn của các cửa hàng. Vậy làm thế nào để biết được chính xác nhu cầu của mình? Hãy cùng TNC tìm hiểu top 5 thông số CPU cần biết để có cách chọn CPU hiệu quả nhé!', N'<p style="text-align:left"><span style="font-size:14px"><em>L&agrave;m thế n&agrave;o để lựa chọn một CPU hợp l&yacute; cho chiếc m&aacute;y t&iacute;nh của bạn? H&atilde;y để TNC điểm qua top 5 th&ocirc;ng số CPU nổi bật nếu muốn tối ưu hiệu năng sử dụng cho PC nh&eacute;!&nbsp;</em></span></p>

<p style="text-align:left"><span style="font-size:14px">Với sự nổi l&ecirc;n của rất nhiều c&aacute;c h&atilde;ng c&ocirc;ng nghệ tham gia v&agrave;o thị trường b&aacute;n lẻ PC th&igrave; ch&uacute;ng ta đang c&oacute; rất nhiều sự lựa chọn cho g&oacute;c học tập của m&igrave;nh. Tuy vậy, điều đ&oacute; v&ocirc; h&igrave;nh chung khiến cho ch&uacute;ng ta trở n&ecirc;n &ldquo;lười&quot; hơn khi chỉ chủ yếu lựa chọn những d&agrave;n PC được build sẵn hoặc nghe theo lời tư vấn của c&aacute;c cửa h&agrave;ng. Vậy l&agrave;m thế n&agrave;o để biết được ch&iacute;nh x&aacute;c nhu cầu của m&igrave;nh? H&atilde;y c&ugrave;ng TNC t&igrave;m hiểu top 5 th&ocirc;ng số CPU cần biết để c&oacute; c&aacute;ch chọn CPU hiệu quả nh&eacute;!</span></p>

<p style="text-align:center">&nbsp;</p>

<div style="text-align: left;">&nbsp;</div>

<div style="text-align: left;"><span style="font-size:14px">CPU (Central Processing Unit) l&agrave; bộ vi xử l&yacute; trung t&acirc;m, được coi l&agrave; bộ n&atilde;o của m&aacute;y t&iacute;nh. CPU c&oacute; nhiệm vụ thực thi xử l&yacute; v&agrave; kiểm so&aacute;t hoạt động của tất cả c&aacute;c bộ phận trong m&aacute;y t&iacute;nh.&nbsp;</span></div>

<p>&nbsp;</p>

<p><span style="font-size:14px">Ch&iacute;nh v&igrave; vậy m&agrave; một chiếc m&aacute;y t&iacute;nh sẽ kh&ocirc;ng thể hoạt động nếu kh&ocirc;ng c&oacute; bộ vi xử l&yacute; (CPU). Bộ vi xử l&yacute; c&agrave;ng mạnh th&igrave; c&agrave;ng xử l&yacute; được nhiều th&ocirc;ng tin hơn, khiến cho m&aacute;y t&iacute;nh hoạt động nhanh v&agrave; trơn tru hơn.</span></p>

<p>&nbsp;</p>

<h1><span style="font-size:18px"><strong>1. <a name="1">Xung nhịp CPU</a> -&nbsp;</strong></span><span style="font-size:18px"><strong>Yếu tố quan trọng nhất ảnh hưởng đến tốc độ xử l&yacute; của CPU.</strong></span></h1>

<p>&nbsp;</p>

<p><span style="font-size:14px">Đ&acirc;y l&agrave; <strong>th&ocirc;ng số CPU</strong> quan trọng nhất, l&agrave; yếu tố ti&ecirc;n quyết trong c&aacute;ch chọn CPU khi x&eacute;t đến tốc độ xử l&yacute;.<span style="font-size:14px">&nbsp;</span></span><span style="font-size:14px">Hiểu đơn giản, xung nhịp thể hiện số chu kỳ m&agrave; CPU thực hiện được mỗi gi&acirc;y.</span></p>

<p><span style="font-size:14px">Xung nhịp c&agrave;ng lớn, CPU c&agrave;ng thực hiện được nhiều chu kỳ hơn, tốc độ xử l&yacute; c&agrave;ng nhanh hơn.</span></p>

<div>&nbsp;</div>

<div style="text-align: center;"><img src="https://www.tncstore.vn/image/catalog/top 5 thông số CPU/cpu.jpg" title="xung nhịp CPU thể hiện số chu kỳ mà vi xử lý thực hiện được mỗi giây" /></div>

<p style="text-align:center"><span style="font-size:14px">&nbsp;</span></p>

<p>&nbsp;</p>

<p><span style="font-size:14px">Xung nhịp được t&iacute;nh bằng đơn vị Hz. Bạn c&oacute; thể tự so s&aacute;nh, nếu c&ugrave;ng một d&ograve;ng CPU m&agrave; c&oacute; xung nhịp nhanh hơn đồng nghĩa với tốc độ xử l&yacute; nhanh hơn v&agrave; kết quả cũng như khả năng l&agrave;m việc tốt hơn.</span></p>

<p><span style="font-size:14px">Thường CPU sẽ c&oacute; chỉ số xung nhịp từ xung cơ bản đến xung boost.&nbsp;</span></p>

<p><span style="font-size:14px">Xung cơ bản thể hiện tần số m&agrave; CPU đang chạy v&agrave; được t&iacute;nh bằng gigahertz (GHz), nghĩa l&agrave; một tỷ chu kỳ mỗi gi&acirc;y.</span></p>

<p>&nbsp;</p>

<p><span style="font-size:14px">Xung boost cho ph&eacute;p một l&otilde;i đơn c&oacute; thể chạy tối đa dựa tr&ecirc;n c&ocirc;ng nghệ Intel Turbo Boost/AMD Turbo Core.&nbsp;</span></p>

<p><span style="font-size:14px">VD: Intel Core I5 9400F c&oacute; chỉ số 2.9 đến 4.1 GHz, trong đ&oacute;:</span></p>

<p><span style="font-size:14px">Xung cơ bản 2.9 GHz: chip vi xử l&yacute; I5 9400F c&oacute; thể thực hiện được 2.9 tỷ ph&eacute;p t&iacute;nh tr&ecirc;n mỗi gi&acirc;y trong một nh&acirc;n</span></p>

<p><span style="font-size:14px">Xung boost 4.1 GHz: l&agrave; xung nhịp tối đa của một nh&acirc;n m&agrave; bộ xử l&yacute; đạt được trong một khoảng thời gian nhất định.</span></p>

<p>&nbsp;</p>

<h1><span style="font-size:18px"><strong>2. Số nh&acirc;n, số luồng&nbsp;</strong></span>- <span style="font-size:18px"><strong>Con đường t&iacute;nh to&aacute;n dữ liệu</strong></span></h1>

<p><span style="font-size:14px">Số nh&acirc;n (Cores), số luồng (Threads) cũng đ&oacute;ng vai tr&ograve; đ&aacute;ng kể v&agrave;o tốc độ xử l&yacute; của CPU v&agrave; l&agrave; nh&acirc;n tố quan trọng trong c&aacute;ch chọn CPU.&nbsp;</span></p>

<p><span style="font-size:14px">C&oacute; thể hiểu đơn giản CPU n&agrave;o c&oacute; số nh&acirc;n, số luồng c&agrave;ng lớn th&igrave; khả năng xử l&yacute; đa nhiệm c&agrave;ng nhanh. Cũng như đường c&oacute; nhiều l&agrave;n th&igrave; sẽ trở n&ecirc;n th&ocirc;ng tho&aacute;ng hơn, tốc độ di chuyển của c&aacute;c phương tiện sẽ nhanh hơn.</span></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<div style="text-align: center;"><img src="https://www.tncstore.vn/image/catalog/top 5 thông số CPU/hd-nhan-va-luong-cpu-laptop-3.jpg" style="width:800px" /></div>

<div style="text-align: center;">&nbsp;</div>

<p>&nbsp;</p>

<p style="text-align:center">&nbsp;</p>

<p><span style="font-size:14px">Số luồng thể hiện số l&agrave;n dữ liệu m&agrave; một nh&acirc;n CPU c&oacute; thể xử l&yacute; trong c&ugrave;ng một thời điểm.</span></p>

<p><span style="font-size:14px">V&iacute; dụ như Intel Core I7 2400 4 nh&acirc;n 8 luồng sẽ c&oacute; 4 nh&acirc;n được t&iacute;ch hợp tr&ecirc;n con chip. Mỗi nh&acirc;n c&oacute; thể thực hiện được một c&ocirc;ng việc c&ugrave;ng l&uacute;c.</span></p>

<p><span style="font-size:14px">&gt;&gt;&gt; T&igrave;m hiểu <a href="https://www.tncstore.vn/linh-kien-pc/cpu.html" target="_blank">c&aacute;c CPU mạnh nhất</a> hiệu nay tại TNC Store nh&eacute;!</span></p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/top 5 thông số CPU/thread.jpg" style="width:800px" /></p>

<p style="text-align:center">&nbsp;</p>

<h1 style="text-align:left"><strong><span style="font-size:18px">3.&nbsp;</span></strong><span style="font-size:18px"><strong>Socket - Ổ cắm CPU</strong></span></h1>

<p><span style="font-size:14px">Đ&acirc;y l&agrave; th&ocirc;ng số CPU chỉ loại khe cắm v&agrave; l&agrave; đặc t&iacute;nh để x&eacute;t sự tương th&iacute;ch, d&ugrave;ng để cung cấp c&aacute;c kết nối cơ v&agrave; điện giữa vi xử l&yacute; v&agrave; mainboard (bo mạch chủ).&nbsp;</span><span style="font-size:14px">Chỉ mainboard n&agrave;o hỗ trợ c&ugrave;ng loại ổ cắm th&igrave; vi xử l&yacute; mới c&oacute; thể gắn được.</span></p>

<p><span style="font-size:14px">Ổ cắm CPU cho ph&eacute;p c&oacute; thể thay thế CPU m&agrave; kh&ocirc;ng cần h&agrave;n chặt v&agrave;o bo mạch chủ.</span></p>

<div>&nbsp;</div>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/top 5 thông số CPU/chipset.jpg" style="width:800px" /></p>

<p><span style="font-size:14px">VD như chip i7 10700K c&oacute; th&ocirc;ng số socket LGA1200 l&agrave; dạng tiếp x&uacute;c c&oacute; 1200 ch&acirc;n cắm, chỉ c&oacute; thể gắn l&ecirc;n c&aacute;c mainboard B460 hoặc Z490 c&oacute; trang bị socket LGA1200.</span></p>

<h1><span style="font-size:18px"><strong>4. Bộ nhớ đệm&nbsp;- Trạm dừng ch&acirc;n tạm thời của dữ liệu</strong></span></h1>

<p><span style="font-size:14px">Bộ nhớ đệm CPU l&agrave; v&ugrave;ng bộ nhớ nhanh nằm tr&ecirc;n bộ xử l&yacute; v&agrave; l&agrave; nơi lưu trữ dữ liệu nằm chờ phần cứng xử l&yacute;. Mục đ&iacute;ch của n&oacute; l&agrave; để tăng tốc độ xử l&yacute; của chip. Bộ nhớ đệm cao l&agrave; ti&ecirc;u ch&iacute; cần phải x&eacute;t trong c&aacute;ch chọn CPU.</span></p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/top 5 thông số CPU/cache.jpg" style="width:800px" /></p>

<p><span style="font-size:14px">Chỉ số n&agrave;y c&agrave;ng cao sẽ gi&uacute;p cho CPU xử l&yacute; nhanh v&agrave; mượt m&agrave; hơn. Bộ nhớ đệm cũng c&oacute; tr&ecirc;n <a href="https://www.tncstore.vn/bat-mi-cac-thong-so-card-do-hoa.html" target="_blank">card đồ hoạ</a> đấy nh&eacute;!</span></p>

<h1><strong><span style="font-size:18px">5. Mức ti&ecirc;u thụ điện năng (TDP)</span></strong></h1>

<p><span style="font-size:14px">Đ&acirc;y l&agrave; th&ocirc;ng số CPU bạn cần biết nếu muốn x&acirc;y dựng một d&agrave;n m&aacute;y PC cho ri&ecirc;ng m&igrave;nh.&nbsp;TDP thể hiện lượng nhiệt tối đa được tạo ra bởi CPU.</span></p>

<p><span style="font-size:14px">Mỗi con chip sẽ c&oacute; mức ti&ecirc;u thụ điện năng kh&aacute;c nhau. Bạn h&atilde;y t&iacute;nh to&aacute;n tổng mức ti&ecirc;u thụ điện năng hợp l&yacute; v&agrave; c&oacute; c&aacute;ch chọn CPU cũng như nguồn điện ph&ugrave; hợp cho m&aacute;y t&iacute;nh để c&oacute; thể n&acirc;ng cấp phần cứng sau n&agrave;y.</span></p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/top 5 thông số CPU/tdp.jpg" style="width:800px" /></p>

<h1><strong><span style="font-size:18px">6. C&aacute;c th&ocirc;ng số kh&aacute;c c&oacute; thể bạn quan t&acirc;m:</span></strong></h1>

<p><span style="font-size:14px">Ngo&agrave;i 5 th&ocirc;ng số CPU ch&iacute;nh ở tr&ecirc;n, bạn cũng n&ecirc;n biết về c&aacute;c th&ocirc;ng số phụ để c&oacute; c&aacute;ch chọn CPU ưng &yacute; nhất như: dạng bộ nhớ, đồ hoạ t&iacute;ch hợp...</span></p>

<ul>
	<li><span style="font-size:14px"><strong>Dạng bộ nhớ </strong>bao gồm Bus RAM<strong>&nbsp;</strong>hỗ trợ (VD: 2933) v&agrave; kiểu bộ nhớ (DDR4). Nếu th&ocirc;ng số bus tr&ecirc;n RAM nhỏ hơn hoặc bằng bus RAM hỗ trợ của CPU c&oacute; nghĩa m&aacute;y chạy tương đối ổn định. Bus RAM c&oacute; thể cao hơn bus RAM hỗ trợ tuy nhi&ecirc;n điều n&agrave;y sẽ g&acirc;y l&atilde;ng ph&iacute;.</span></li>
	<li><strong>Bus speed</strong><span style="font-size:14px">&nbsp;l&agrave; tốc độ xử l&yacute; dữ liệu, thường được t&iacute;nh bằng số lượng đơn vị truyền tải mỗi gi&acirc;y, c&oacute; đơn vị l&agrave; GT/s (gigatransfer/gi&acirc;y)</span></li>
</ul>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/top 5 thông số CPU/cpuu (1).jpg" style="width:800px" /></p>

<p>&nbsp;</p>

<p><span style="font-size:14px"><strong>* </strong>Một số CPU c&oacute; thể c&oacute; </span><strong>đồ hoạ t&iacute;ch hợp</strong><span style="font-size:14px"> đi k&egrave;m như d&ograve;ng </span><strong>Intel UHD/Iris</strong><span style="font-size:14px">&nbsp;hay </span><strong>AMD APU (Vega Graphic)</strong><span style="font-size:14px">. Nếu bạn t&igrave;m kiếm d&ograve;ng m&aacute;y Work Station hoặc m&aacute;y t&iacute;nh đồng bộ, c&aacute;ch chọn CPU n&agrave;y c&oacute; thể l&agrave; thứ bạn đang t&igrave;m kiếm nhờ t&iacute;nh thuận tiện v&agrave; hiệu quả khi thực hiện c&aacute;c c&ocirc;ng việc văn ph&ograve;ng đơn giản.</span></p>

<ul>
	<li><strong>Xung nhịp card đồ hoạ cơ bản</strong><span style="font-size:14px"> cho biết tốc độ xử l&yacute; của card t&iacute;ch hợp ở trạng th&aacute;i b&igrave;nh thường.</span></li>
	<li><strong>Xung nhịp card đồ hoạ tối đa</strong> <span style="font-size:14px"> cho biết tốc độ xử l&yacute; của card t&iacute;ch hợp ở trạng th&aacute;i &eacute;p xung.</span>
	<div style="text-align: center;"><span style="font-size:14px"><img src="https://www.tncstore.vn/image/catalog/top 5 thông số CPU/CPU Graphic.jpg" style="font-size:12px; width:730px" /></span></div>
	<span style="font-size:14px"> </span></li>
	<li><strong>Tiến tr&igrave;nh:</strong><span style="font-size:14px"> l&agrave; c&ocirc;ng nghệ chế tạo chất b&aacute;n dẫn để sản xuất bộ vi xử l&yacute;, được mi&ecirc;u tả bằng nanomet (nm). Về cơ bản, CPU được cấu th&agrave;nh từ c&aacute;c b&oacute;ng b&aacute;n dẫn v&agrave; tiến tr&igrave;nh mi&ecirc;u tả k&iacute;ch thước của 1 b&oacute;ng b&aacute;n dẫn.&nbsp;</span></li>
</ul>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size:14px">V&iacute; dụ như Intel Core i9-10900K c&oacute; tiến tr&igrave;nh 14nm tức l&agrave; k&iacute;ch thước của 1 b&oacute;ng b&aacute;n dẫn l&agrave; 14nm.</span></p>

<div style="text-align: center;"><img src="https://www.tncstore.vn/image/catalog/top 5 thông số CPU/com_ (1).jpg" style="width:800px" /></div>

<ul>
	<li><span style="font-size:14px"><strong>Hỗ trợ 64-Bit</strong>: C&aacute;c CPU c&oacute; hỗ trợ 64-Bit sẽ c&oacute; tốc độ t&iacute;nh to&aacute;n, xử l&yacute; dữ liệu v&agrave; thời gian phản hồi nhanh hơn so với c&aacute;c CPU 32-bit nhờ độ d&agrave;i thanh ghi (register) lớn hơn.&nbsp;</span></li>
	<li><strong>Hỗ trợ si&ecirc;u ph&acirc;n luồng</strong><span style="font-size:14px">: c&ocirc;ng nghệ n&agrave;y cho ph&eacute;p&nbsp;hai luồng xử l&yacute; song song c&ugrave;ng một thời điểm tr&ecirc;n c&ugrave;ng một nh&acirc;n, cho thời gian ho&agrave;n th&agrave;nh c&ocirc;ng việc nhanh hơn.</span></li>
	<li><strong>Cấu tr&uacute;c 2 k&ecirc;nh</strong><span style="font-size:14px"> (Dual Channel) cho ph&eacute;p bạn cắm 2 thanh RAM c&oacute; c&ugrave;ng bus dữ liệu để tăng gấp đ&ocirc;i băng th&ocirc;ng bộ nhớ.</span></li>
	<li><strong>C&ocirc;ng nghệ ảo ho&aacute;:</strong><span style="font-size:14px"> Hiểu đơn giản th&igrave; c&ocirc;ng nghệ n&agrave;y cho ph&eacute;p m&aacute;y t&iacute;nh của bạn c&oacute; thể chạy được nhiều hệ điều h&agrave;nh kh&aacute;c nhau v&agrave; c&aacute;c phần mềm giả lập. Mỗi hệ điều h&agrave;nh sẽ được chạy tr&ecirc;n một m&aacute;y ảo.</span></li>
	<li><strong><span style="font-size:14px">Phi&ecirc;n bản PCIe v&agrave; số khe cắm PCIe tối đa</span></strong><span style="font-size:14px">:&nbsp;</span><span style="font-size:14px">PCI Express, viết tắt l&agrave; PCIe, l&agrave; một dạng giao diện bus hệ thống/card mở rộng của m&aacute;y t&iacute;nh. N&oacute; l&agrave; một giao diện nhanh hơn nhiều v&agrave; được thiết kế để thay thế giao diện PCI, PCI-X, v&agrave; AGP (thế hệ cũ) chuy&ecirc;n d&ugrave;ng cho c&aacute;c card mở rộng v&agrave; card đồ họa.&nbsp;</span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-size:14px">Tr&ecirc;n đ&acirc;y l&agrave; những th&ocirc;ng số CPU bạn n&ecirc;n biết khi tiến h&agrave;nh lựa chọn bộ vi xử l&yacute; ph&ugrave; hợp cho chiếc m&aacute;y t&iacute;nh của m&igrave;nh. H&atilde;y đến với <a href="https://www.tncstore.vn/" target="_blank">TNC Store</a> để được tư vấn về c&aacute;c sản phẩm một c&aacute;ch tốt nhất nh&eacute;!</span></p>

<div>&nbsp;</div>
', N'/Data/images/newses/tintucmoinhat/CPU1.jpg', NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-06T13:29:13.037' AS DateTime), N'quang', CAST(N'2020-12-06T13:29:00.000' AS DateTime), NULL, 4, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (7, N'Các thông số SSD quan trọng khi lựa chọn ổ cứng cho PC', N'Các thông số SSD quan trọng khi lựa chọn ổ cứng PC', N'cac-thong-so-ssd-quan-trong-khi-lua-chon-o-cung-pc', N'Với những ưu việt của mình thì SSD đang trở nên phổ biến rộng rãi trong cộng đồng game thủ PC cũng như laptop. Hãy cùng TNC điểm qua những thông số SSD quan trọng nhé!', N'<p><em>Với những ưu việt của m&igrave;nh th&igrave; SSD đang trở n&ecirc;n phổ biến rộng r&atilde;i trong cộng đồng game thủ PC cũng như laptop. H&atilde;y c&ugrave;ng TNC điểm qua những th&ocirc;ng số SSD quan trọng nh&eacute;!</em></p>

<p>&nbsp;</p>

<p>SSD (Solid State Drive) l&agrave; ổ cứng thể rắn. Kh&aacute;c với b&ecirc;n trong HDD&nbsp;c&oacute; những mắt đọc v&agrave; v&ograve;ng quay, SSD c&oacute; cấu tạo đặc, gồm c&aacute;c chip flash NAND tương tự như tr&ecirc;n USB, thẻ nhớ... c&oacute; tốc độ nhanh hơn HDD rất nhiều. Do chạy bằng t&iacute;n hiệu điện n&ecirc;n SSD sẽ toả ra &iacute;t nhiệt độ hơn v&agrave; hầu như kh&ocirc;ng rung lắc khi hoạt động.</p>

<p>Khả năng chống sốc của SSD cũng được đ&aacute;nh gi&aacute; cao. Ch&iacute;nh v&igrave; những điểm mạnh tr&ecirc;n n&ecirc;n gi&aacute; th&agrave;nh của ch&uacute;ng kh&ocirc;ng hề rẻ. Vậy l&agrave;m thế n&agrave;o để lựa chọn một chiếc SSD ph&ugrave; hợp với nhu cầu của bản th&acirc;n? H&atilde;y để TNC Store giải đ&aacute;p cho anh em qua c&aacute;c <strong>th&ocirc;ng số SSD</strong> quan trọng dưới đ&acirc;y nh&eacute;!</p>

<p>&nbsp;</p>

<h1><strong><span style="font-size:18px">1. Th&agrave;nh phần bộ nhớ</span></strong></h1>

<p>Đ&acirc;y l&agrave; th&ocirc;ng số SSD kh&aacute; cơ bản m&agrave; <a href="https://www.tncstore.vn/cac-thong-so-hdd-can-chu-y-khi-lua-chon-o-cung.html" target="_blank">th&ocirc;ng số HDD</a> kh&ocirc;ng c&oacute;. Dựa v&agrave;o c&ocirc;ng nghệ c&aacute;c chip flash th&igrave; SSD được chia th&agrave;nh những loại sau:&nbsp;</p>

<p>SLC (Single-Level Cell) l&agrave; chip nhớ đơn tầng, tức mỗi tế b&agrave;o nhớ chỉ chứa được một bit dữ liệu. SLC c&oacute; tuổi thọ rất cao, l&ecirc;n tới 100,000 chu kỳ ghi/xo&aacute; nhưng gi&aacute; th&agrave;nh cũng cao kh&ocirc;ng k&eacute;m n&ecirc;n loại SSD n&agrave;y kh&ocirc;ng được sử dụng phổ biến.</p>

<p>TLC (Triple-Level Cell) sở hữu mỗi tế b&agrave;o nhớ c&oacute; khả năng chứa được tối đa ba bit dữ liệu. TLC c&oacute; tuổi thọ cực kỳ thấp, chỉ khoảng 5000 chu kỳ ghi/x&oacute;a n&ecirc;n anh em cũng kh&ocirc;ng cần qu&aacute; ch&uacute; &yacute; đến loại SSD n&agrave;y.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số SSD/laptop-co-the-gan-3-loai-o-ssd (1).jpg" title="thành phần bộ nhớ" /></p>

<p>MLC (Multi-Level Cell) đ&acirc;y l&agrave; loại SSD th&ocirc;ng dụng hiện nay, c&oacute; thể coi l&agrave; trung ho&agrave; về tuổi thọ cũng như khả năng lưu trữ giữa SLC v&agrave; TLC. Mỗi tế b&agrave;o nhớ của MCL c&oacute; khả năng chứa được 2 bit dữ liệu v&agrave; tuổi thọ khoảng 10000 chu kỳ ghi/xo&aacute;.</p>

<p>Hiện nay một số h&atilde;ng sản xuất đi đầu về c&ocirc;ng nghệ như Samsung đ&atilde; cho ra mắt <strong>SSD V-NAND</strong> (hay 3D V-NAND) cho ph&eacute;p chồng c&aacute;c tế b&agrave;o nhớ trong kh&ocirc;ng gian 3D thay v&igrave; mặt phẳng 2D. Điều n&agrave;y c&oacute; nghĩa c&aacute;c SSD V-NAND sẽ c&oacute; dung lượng lưu trữ v&agrave; tốc độ lớn hơn c&aacute;c loại SSD trước đ&acirc;y.&nbsp;</p>

<p>&gt;&gt;&gt; Kh&aacute;m ph&aacute; ngay c&aacute;c <a href="https://www.tncstore.vn/ssd-o-the-ran.html" target="_blank">ổ cứng&nbsp;SSD</a>&nbsp;thế hệ mới nhất với gi&aacute; v&ocirc; c&ugrave;ng hấp dẫn&nbsp;tại TNC Store nh&eacute;!</p>

<h1><strong><span style="font-size:18px">2. Dạng thức (Form Factor)</span></strong></h1>

<p><strong>Th&ocirc;ng số SSD</strong> n&agrave;y chỉ h&igrave;nh dạng vật l&yacute; của ổ đĩa. C&oacute; 5 Form Factor cơ bản l&agrave; SATA, mSATA, M.2, PCIe v&agrave; dạng U.2 (2,5 inch).</p>

<p>Ổ đĩa SSD xuất hiện đầu ti&ecirc;n ch&iacute;nh l&agrave; <strong>SATA</strong> SSD. Do l&uacute;c mới ra đời SSD th&igrave; HDD vẫn c&ograve;n rất thịnh h&agrave;nh n&ecirc;n c&aacute;c nh&agrave; sản xuất đ&atilde; thiết kế h&igrave;nh dạng ch&uacute;ng theo h&igrave;nh d&aacute;ng của HDD để dễ d&agrave;ng thay thế. Do vậy n&ecirc;n SATA SSD c&oacute; c&aacute;c loại 3,5 inch v&agrave; 2,5 inch v&agrave; 1,8 inch v&agrave; cũng x&agrave;i chung giao tiếp SATA với HDD.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số SSD/25376_____c___ng_ssd_samsung_860_evo_250gb_2_5___sata_iii__mz_76e250bw__4 (1).jpg" style="width:730px" /></p>

<p>Tiếp theo l&agrave; <strong>mSATA</strong>&nbsp; (mini SATA) với k&iacute;ch thước chỉ bằng ⅛ ổ SSD 2,5 inch. Do c&oacute; k&iacute;ch thước nhỏ gọn n&ecirc;n mSATA sử dụng giao tiếp (cổng kết nối ri&ecirc;ng) l&agrave; mSATA v&agrave; thường được sử dụng tr&ecirc;n c&aacute;c loại Laptop. mSATA c&oacute; hai loại k&iacute;ch thước trong đ&oacute; mSATA 50mm phổ biến hơn loại 30mm.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số SSD/crucial_mx200_msata_ssd_1 (1).jpg" style="width:730px" /></p>

<p>Dạng thức tiếp theo chắc hẳn anh em sẽ thấy rất quen thuộc. Đ&oacute; ch&iacute;nh l&agrave; <strong>M.2</strong> (t&ecirc;n gọi trước l&agrave; NGFF) được c&ocirc;ng bố v&agrave;o năm 2012. Form Factor n&agrave;y hỗ trợ cả giao tiếp SATA, PCIe v&agrave; USB v&agrave; c&oacute; k&iacute;ch thước nhỏ gọn, được sử dụng tr&ecirc;n c&aacute;c m&aacute;y t&iacute;nh từ năm 2012 tới nay. Do t&iacute;nh tương th&iacute;ch cao n&ecirc;n M.2 được ứng dụng tr&ecirc;n nhiều linh kiện v&agrave; thường được gọi l&agrave; key.</p>

<p>Phần k&iacute;ch thước của SSD thường c&oacute; 4 tới 5 chữ số. Trong đ&oacute; 2 chữ số đầu chỉ chiều rộng, 2 chữ số sau chỉ chiều d&agrave;i của bảng mạch (đo bằng mm), 1 chữ số kế tiếp (nếu c&oacute;) chỉ phần thập ph&acirc;n của chiều d&agrave;i.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số SSD/116 (1).jpg" style="width:730px" /></p>

<p>VD ổ SSD Gigabyte Aorus RGB 512GB M.2 2280 c&oacute; k&iacute;ch thước 2280, tức l&agrave; rộng 22mm v&agrave; d&agrave;i 80mm.</p>

<p>Dạng thức thứ tư cũng kh&aacute; phổ biến tr&ecirc;n thị trường, đ&oacute; ch&iacute;nh l&agrave; <strong>PCIe</strong>. Đ&acirc;y l&agrave; dạng thức mới với thiết kế c&ugrave;ng ngoại h&igrave;nh rất giống với card đồ hoạ rời. Loại SSD n&agrave;y tận dụng sức mạnh từ cổng kết nối PCIe gi&uacute;p tăng tốc độ l&ecirc;n rất nhiều lần. C&aacute;c nh&agrave; sản xuất c&ocirc;ng bố ổ cứng SSD PCIe c&oacute; tốc độ l&ecirc;n tới 4GB/s.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số SSD/ssd-pcie-type-1479466467702 (1).jpg" style="width:730px" /></p>

<p>Dạng thức cuối c&ugrave;ng l&agrave; U.2 (2,5 inch) l&agrave; chuẩn SSD d&ugrave;ng cổng kết nối ri&ecirc;ng biệt v&agrave; c&oacute; tốc độ kết nối nhanh hơn M.2 nhiều do k&iacute;ch thước lớn n&ecirc;n c&oacute; thể chứa nhiều chip flash hơn. Tuy vậy, th&ocirc;ng số SSD n&agrave;y kh&ocirc;ng thực sự phổ biến do chỉ c&oacute; một số mainboard hỗ trợ cổng kết nối U.2 hoặc anh em nếu muốn sử dụng phải d&ugrave;ng th&ocirc;ng qua Adapter.&nbsp;</p>

<h1><strong><span style="font-size:18px">3. Giao tiếp</span></strong></h1>

<p><strong>Th&ocirc;ng số SSD</strong> n&agrave;y cho biết loại khe cắm m&agrave; SSD d&ugrave;ng để kết nối với m&aacute;y t&iacute;nh. Giao tiếp cũng c&oacute; thể nh&igrave;n thấy trực tiếp v&agrave; c&oacute; t&ecirc;n gọi giống với dạng thức n&ecirc;n anh em c&oacute; thể dựa v&agrave;o đ&oacute; để ph&acirc;n loại SSD.&nbsp;</p>

<p>Cổng SATA l&agrave; dạng cổng ti&ecirc;u chuẩn với kết nối SATA III với tốc độ tối đa l&agrave; 600MB/s. C&aacute;c <a href="https://www.tncstore.vn/hdd.html" target="_blank">ổ cứng HDD</a> v&agrave; SSD SATA 2,5 inch đều sử dụng cổng kết nối n&agrave;y.&nbsp;</p>

<p>Cả hai giao tiếp mSATA v&agrave; M.2 đều cho ph&eacute;p SSD được cắm thẳng l&ecirc;n bo mạch chủ khiến tốc độ truyền dữ liệu, độ trễ, hiệu năng đều được cải thiện đ&aacute;ng kể. Điểm mạnh của giao tiếp M.2 ch&iacute;nh l&agrave; c&oacute; thể d&ugrave;ng cho cả card mạng, card wifi, bluetooth&hellip; nhờ khả năng t&ugrave;y biến về k&iacute;ch thước của thiết bị được gắn l&ecirc;n.</p>

<p>Tiếp theo l&agrave; giao tiếp PCIe. C&aacute;c cổng PCIe phụ thuộc v&agrave;o chuẩn kết nối của n&oacute; (từ X2 đến X16). Hơn nữa, ch&uacute;ng ta c&ograve;n c&oacute; c&aacute;c chuẩn tốc độ PCIe từ 1.0 đến 4.0.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số SSD/pcie (1).jpg" style="width:650px" /></p>

<p>Do c&oacute; k&iacute;ch thước lớn v&agrave; d&ugrave;ng cổng kết nối ri&ecirc;ng biệt n&ecirc;n anh em thường kh&ocirc;ng gặp th&ocirc;ng số SSD n&agrave;y. Giao tiếp U.2 chỉ được hỗ trợ tr&ecirc;n c&aacute;c bo mạch chủ nhất định.</p>

<h1><strong><span style="font-size:18px">4. Giao thức</span></strong></h1>

<p><strong>Th&ocirc;ng số SSD</strong> n&agrave;y thể hiện c&aacute;ch SSD n&oacute;i chuyện với ứng dụng v&agrave; c&aacute;c phần cứng kh&aacute;c th&ocirc;ng qua bộ điều khiển. SSD v&agrave; mainboard c&oacute; c&ugrave;ng một giao tiếp m&agrave; kh&aacute;c giao thức th&igrave; cũng kh&ocirc;ng thể hoạt động được. C&oacute; hai dạng giao thức ch&iacute;nh l&agrave; SATA v&agrave; NVMe.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số SSD/3101_14.jpg" style="width:730px" /></p>

<p>SATA l&agrave; giao thức hỗ trợ cả HDD v&agrave; SSD n&ecirc;n băng th&ocirc;ng bị giới hạn ở một mức độ nhất định. Tốc độ truyền tải dữ liệu tối đa tr&ecirc;n giao thức SATA đạt 600MB/s (chuẩn SATA 3.0) c&oacute; hỗ trợ chế độ AHCI (Advanced host controller interface).</p>

<p>Kh&aacute;c với SATA, giao thức NVMe (non-volatile memory express) được ph&aacute;t triển ri&ecirc;ng cho c&aacute;c ổ cứng SSD n&ecirc;n c&oacute; tốc độ truyền tải cực kỳ nhanh. NVMe sử dụng 4 tuyến PCIe 3.0 để truyền dữ liệu với tốc độ băng th&ocirc;ng l&ecirc;n đến 4GB/s. Độ trễ tr&ecirc;n c&aacute;c SSD sử dụng giao thức NVMe cũng được giảm thiểu đ&aacute;ng kể.</p>

<h1><strong><span style="font-size:18px">5. Tốc độ đọc/ghi ngẫu nhi&ecirc;n</span></strong></h1>

<p>Tốc độ đọc/ghi ngẫu nhi&ecirc;n được t&iacute;nh 4KB. Do ổ cứng phải đọc c&aacute;c tập tin c&oacute; dung lượng nhỏ như cache, cookies của tr&igrave;nh duyệt web, c&aacute;c file văn bản, h&igrave;nh ảnh, save game&hellip; n&ecirc;n th&ocirc;ng số thường được hiển thị l&agrave; IOPS (Input/Output Operations Per Second). Anh em c&oacute; thể quy đổi th&ocirc;ng số IOPS ra chuẩn MB/gi&acirc;y theo c&ocirc;ng thức sau để dễ h&igrave;nh dung hơn: IOPS x 4 / 1024 = tốc độ MB/s. Với 19000 IOPs ở QD1, ta c&oacute; tốc độ (19000 * 4)/1024 ~ 74MB/s.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số SSD/productGallery7132 (2).jpg" style="width:730px" /></p>

<p>QD (Queue Depth) hiểu đơn giản l&agrave; h&agrave;ng đợi hay quy tr&igrave;nh. Theo nguy&ecirc;n l&yacute; hoạt động th&igrave; SSD phải tiến h&agrave;nh đọc/ghi dữ liệu n&agrave;o đ&oacute;, đợi kết quả v&agrave; tiếp tục đọc/ghi dữ liệu kh&aacute;c sau khi kết quả đầu ti&ecirc;n được xử l&yacute;. QD c&agrave;ng lớn, SSD c&agrave;ng thực hiện được nhiều hoạt động c&ugrave;ng l&uacute;c hơn.</p>

<h1><strong><span style="font-size:18px">6. C&aacute;c th&ocirc;ng số kh&aacute;c</span></strong></h1>

<p>Ngo&agrave;i ra anh em cũng thường thấy tốc độ đọc/ghi tuần tự tối đa (thường t&iacute;nh bằng MB/s) do đ&acirc;y l&agrave; th&ocirc;ng số SSD m&agrave; c&aacute;c nh&agrave; sản xuất thường đề cập tới mỗi khi c&ocirc;ng bố sản phẩm. Tuy nhi&ecirc;n, rất hiếm khi c&aacute;c ổ SSD đạt đến tốc độ đọc/ghi n&agrave;y v&agrave; mang t&iacute;nh l&yacute; thuyết n&ecirc;n anh em chỉ n&ecirc;n tham khảo m&agrave; th&ocirc;i.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số SSD/fEsjTx9j9SVqWxMXszYaqe (1).jpg" style="width:730px" /></p>

<p>Độ lớn dung lượng cũng l&agrave; th&ocirc;ng số SSD đ&aacute;ng ch&uacute; &yacute;. Nếu anh em chỉ c&oacute; nhu cầu l&agrave;m việc văn ph&ograve;ng hay chơi game online nhẹ nh&agrave;ng th&igrave; ổ SSD 256GB l&agrave; qu&aacute; đủ. Với c&aacute;c anh em kh&ocirc;ng ngần ngại chịu chi để chơi c&aacute;c game nặng hay render, l&agrave;m video 4K&hellip; th&igrave; n&ecirc;n sắm cho m&igrave;nh ổ SSD 1TB.</p>

<p>Nhiệt độ bảo quản l&agrave; khoảng nhiệt m&agrave; c&aacute;c SSD kh&ocirc;ng bị tổn hại do t&aacute;c động của m&ocirc;i trường b&ecirc;n ngo&agrave;i.</p>

<p>Nhiệt độ hoạt động l&agrave; khoảng nhiệt m&agrave; c&aacute;c SSD hoạt động được b&igrave;nh thường.</p>

<p>&nbsp;</p>

<p>V&agrave; đ&oacute; l&agrave; những <strong>th&ocirc;ng số SSD</strong> đ&aacute;ng ch&uacute; &yacute; khi anh em lựa chọn cho m&aacute;y t&iacute;nh của m&igrave;nh. H&atilde;y đến với <a href="https://www.tncstore.vn/" target="_blank">TNC Store</a> để mua sắm những sản phẩm c&ugrave;ng dịch vụ tốt nhất nh&eacute;!</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>
', N'/Data/images/newses/tintucmoinhat/ava%20(1).jpg', NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-06T13:31:50.377' AS DateTime), N'quang', CAST(N'2020-12-06T13:31:00.000' AS DateTime), NULL, 4, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (8, N'Giải mã các thông số laptop cần nắm rõ trước khi mua', N'Giải mã các thông số laptop', N'giai-ma-cac-thong-so-laptop', N'Laptop là sản phẩm công nghệ rất được ưa chuộng nhờ sự nhỏ gọn, thuận tiện. Hãy cùng TNC tìm hiểu các thông số laptop cần biết trước khi mua nhé!', N'<p><em>Laptop l&agrave; sản phẩm c&ocirc;ng nghệ rất được ưa chuộng nhờ sự nhỏ gọn, thuận tiện. H&atilde;y c&ugrave;ng TNC t&igrave;m hiểu c&aacute;c th&ocirc;ng số laptop cần biết trước khi mua nh&eacute;!</em></p>

<p>&nbsp;</p>

<p>C&oacute; lẽ nhờ ưu điểm c&oacute; thể mang b&ecirc;n m&igrave;nh mỗi khi đi c&ocirc;ng t&aacute;c, l&agrave;m việc, đi chơi hay c&agrave; ph&ecirc; với bạn b&egrave; n&ecirc;n laptop được rất nhiều người ưa th&iacute;ch. Ch&iacute;nh v&igrave; vậy n&ecirc;n c&aacute;c h&atilde;ng c&ocirc;ng nghệ cho ra mắt rất nhiều mẫu laptop đa dạng với từng ph&acirc;n kh&uacute;c từ phổ th&ocirc;ng đến cao cấp, đ&aacute;p ứng đầy đủ c&aacute;c t&aacute;c vụ gaming, l&agrave;m đồ họa hay c&ocirc;ng việc văn ph&ograve;ng. C&aacute;c anh em đang ph&acirc;n v&acirc;n lựa chọn chắc hẳn chưa hiểu hết những th&ocirc;ng số laptop m&agrave; nh&agrave; sản xuất đưa ra. H&atilde;y để TNC Store giải m&atilde; c&aacute;c th&ocirc;ng số laptop quan trọng nhất định phải biết qua b&agrave;i viết dưới đ&acirc;y nh&eacute;!&nbsp;</p>

<h1><span style="font-size:18px"><strong>1. Hệ điều h&agrave;nh (Operating System)</strong></span></h1>

<p>Đến với th&ocirc;ng số laptop đầu ti&ecirc;n ch&iacute;nh l&agrave; hệ điều h&agrave;nh. Đ&acirc;y phần mềm đầu ti&ecirc;n chạy tr&ecirc;n m&aacute;y t&iacute;nh, d&ugrave;ng để điều h&agrave;nh, quản l&yacute; c&aacute;c thiết bị phần cứng, c&aacute;c t&agrave;i nguy&ecirc;n phần mềm tr&ecirc;n m&aacute;y t&iacute;nh v&agrave; c&aacute;c thiết bị di động.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số laptop/windows8 (1).jpg" title="hệ điều hành laptop" /></p>

<p>Ngo&agrave;i ra, hệ điều h&agrave;nh c&oacute; thể chạy c&aacute;c chương tr&igrave;nh của b&ecirc;n thứ ba để mở rộng c&aacute;c chức năng của m&aacute;y t&iacute;nh hoặc cung cấp c&aacute;c giao diện thay thế cho c&aacute;c giao diện hiện c&oacute;.</p>

<p>&nbsp;</p>

<h1><span style="font-size:18px"><strong>2. Vi xử l&yacute; trung t&acirc;m (CPU - Central Processing Unit)</strong></span></h1>

<p>Đ&acirc;y l&agrave; th&ocirc;ng số laptop rất quan trọng CPU l&agrave; chịu tr&aacute;ch ch&iacute;nh việc th&ocirc;ng dịch v&agrave; thực thi hầu hết c&aacute;c lệnh từ phần cứng v&agrave; phần mềm kh&aacute;c của m&aacute;y t&iacute;nh. N&oacute; hoạt động như bộ n&atilde;o của m&aacute;y t&iacute;nh, bao gồm h&agrave;ng triệu b&oacute;ng b&aacute;n dẫn cho tốc độ v&agrave; phản ứng nhạy b&eacute;n. Hiện nay Intel v&agrave; AMD l&agrave; hai nh&agrave; sản xuất CPU ch&iacute;nh tr&ecirc;n thị trường.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số laptop/cpu.jpg" title="cpu" /></p>

<p>&gt;&gt;&gt; Xem th&ecirc;m c&aacute;c&nbsp;<a href="https://www.tncstore.vn/top-5-thong-so-cpu-vi-xu-ly-pc.html"><strong>th&ocirc;ng số CPU</strong></a> quan trọng để lựa chọn vi xử l&yacute; ch&iacute;nh x&aacute;c nhất!</p>

<p>&nbsp;</p>

<p><span style="color:inherit; font-family:inherit; font-size:18px"><strong>3. Bộ nhớ (Memory)</strong></span></p>

<p>Bộ nhớ được d&ugrave;ng để lưu trữ dữ liệu m&aacute;y t&iacute;nh. Th&ocirc;ng số laptop ở đ&acirc;y để chỉ bộ nhớ RAM (Random Access Memory) l&agrave; bộ nhớ truy cập ngẫu nhi&ecirc;n, d&ugrave;ng để lưu trữ dữ liệu tạm thời khi m&aacute;y t&iacute;nh đang bật. RAM hoạt động song song với CPU để giải quyết nhiều t&aacute;c vụ c&ugrave;ng một l&uacute;c. M&aacute;y t&iacute;nh n&agrave;o c&oacute; nhiều RAM th&igrave; tốc độ c&agrave;ng nhanh.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số laptop/ram-la-gi--3 (1).jpg" title="RAM" /></p>

<p>RAM được đo bằng gigabyte (GB). C&aacute;c m&aacute;y t&iacute;nh th&ocirc;ng thường y&ecirc;u cầu trang bị tối thiểu 2GB RAM, trong khi đ&oacute; 6GB l&agrave; bộ nhớ khuyến nghị nếu bạn sử dụng laptop để l&agrave;m việc đa nhiệm nặng, chơi game, chỉnh sửa ảnh v&agrave; video.</p>

<p>C&oacute; ba loại RAM kh&aacute;c nhau được sử dụng hiện nay, gồm DDR2, DDR3 v&agrave; đời mới nhất l&agrave; DDR4. Đời sau sẽ c&oacute; tốc độ băng th&ocirc;ng cao hơn.</p>

<p>&nbsp;</p>

<h1><span style="font-size:18px"><strong>4. Thiết bị lưu trữ dữ liệu (Storage)</strong></span></h1>

<p>Ổ cứng (Hard disk drive) v&agrave; Ổ đĩa thể rắn (Solid-state drive) l&agrave; thiết bị lưu trữ dữ liệu ch&iacute;nh của m&aacute;y t&iacute;nh. N&oacute; lưu trữ dữ liệu kỹ thuật số vĩnh viễn, chẳng hạn như hệ điều h&agrave;nh, phần mềm... Dung lượng ổ cứng c&agrave;ng lớn th&igrave; ổ lưu trữ được c&agrave;ng nhiều dữ liệu.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số laptop/SSD Laptop (1).jpg" title="ổ cứng laptop" /></p>

<p>Do những ưu việt về tốc độ đọc v&agrave; ghi n&ecirc;n hiện nay c&aacute;c ổ SSD được ưa chuộng để l&agrave;m thiết bị lưu trữ dữ liệu ch&iacute;nh tr&ecirc;n c&aacute;c d&ograve;ng <strong><a href="https://www.tncstore.vn/gaming-laptop.html" target="_blank">Laptop Gaming</a></strong>.</p>

<p>&nbsp;</p>

<h1><span style="font-size:18px"><strong>5. Card đồ họa</strong></span></h1>

<p>Những ai c&oacute; nhu cầu chơi game hoặc l&agrave;m đồ họa hẳn kh&ocirc;ng thể bỏ qua th&ocirc;ng số laptop n&agrave;y. Card đồ họa c&oacute; GPU chuy&ecirc;n dụng (Chipset đồ họa ri&ecirc;ng) v&agrave; bộ nhớ chuy&ecirc;n dụng. N&oacute; gi&uacute;p xử l&yacute; dữ liệu đồ họa, kết xuất h&igrave;nh ảnh rồi gửi đầu ra đến m&agrave;n h&igrave;nh video v&agrave; thậm ch&iacute; c&oacute; thể thực hiện c&aacute;c t&aacute;c vụ kh&ocirc;ng phải đồ họa. C&aacute;c nh&agrave; sản xuất GPU ch&iacute;nh hiện nay l&agrave; AMD v&agrave; NVIDIA.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số laptop/card-man-hinh-laptop-1 (1).jpg" title="card đồ hoạ laptop" /></p>

<p>&gt;&gt;&gt; Card đồ họa đ&oacute;ng vai tr&ograve; quan trọng trong c&aacute;c t&aacute;c vụ l&agrave;m đồ họa v&agrave; gaming. T&igrave;m hiểu c&aacute;c&nbsp;<a href="https://www.tncstore.vn/bat-mi-cac-thong-so-card-do-hoa.html" target="_blank">th&ocirc;ng số card đồ họa</a> ngay nh&eacute;!</p>

<p>&nbsp;</p>

<h1><span style="font-size:18px"><strong>6. Bộ nhớ card đồ họa (Video Memory)</strong></span></h1>

<p>Bộ nhớ card đồ họa đ&oacute;ng vai tr&ograve; giống RAM của m&aacute;y t&iacute;nh, c&oacute; nhiệm vụ lưu trữ dữ liệu tạm thời m&agrave; card m&agrave;n h&igrave;nh đang xử l&yacute;. N&oacute; cho ph&eacute;p truy cập dữ liệu nhanh hơn v&agrave; cải thiện hiệu suất đồ họa. Nếu PC sử dụng đồ họa t&iacute;ch hợp tr&ecirc;n CPU, GPU v&agrave; PC sẽ c&ugrave;ng chia sẻ bộ nhớ RAM.</p>

<p>Th&ocirc;ng số laptop n&agrave;y bao gồm k&iacute;ch thước bộ nhớ (VD: 6GB) v&agrave; loại bộ nhớ (VD: DDR6). K&iacute;ch thước bộ nhớ c&agrave;ng lớn v&agrave; loại bộ nhớ đời sau th&igrave; card đồ họa c&agrave;ng c&oacute; hiệu năng mạnh hơn. N&ecirc;n nhớ l&agrave; loại bộ nhớ của card đồ họa kh&ocirc;ng li&ecirc;n quan đến bộ nhớ DDRx của RAM.</p>

<p>&nbsp;</p>

<h1><span style="font-size:18px"><strong>7. Tốc độ xung nhịp CPU (CPU Speed)</strong></span></h1>

<p>Tốc độ xung nhịp CPU được định nghĩa l&agrave; số ph&eacute;p t&iacute;nh m&agrave; CPU c&oacute; thể thực hiện trong một gi&acirc;y (Hz). Mỗi CPU c&oacute; một tốc độ xung nhịp cụ thể.</p>

<p>&nbsp;</p>

<h1><strong><span style="font-size:18px">8. Số nh&acirc;n (Number of Cores)</span></strong></h1>

<p>Th&ocirc;ng số laptop n&agrave;y cho biết số nh&acirc;n trong CPU. CPU n&agrave;o c&agrave;ng c&oacute; nhiều nh&acirc;n th&igrave; tốc độ xử l&yacute; đa nhiệm c&agrave;ng nhanh, kh&ocirc;ng bị giảm hiệu suất v&agrave; tốc độ như c&aacute;c l&otilde;i đơn nhau. C&aacute;c laptop tại TNC Store&nbsp;đều l&agrave; những mẫu laptop c&oacute; số nh&acirc;n CPU lớn c&ugrave;ng hiệu năng mạnh mẽ!</p>

<div style="text-align: center;"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số laptop/intel-se-san-xuat-thu-nghiem-chip-xu-ly-7nm-trong-nam-nay-3 (1).jpg" style="width:730px" /></div>

<p>&nbsp;</p>

<h1><span style="font-size:18px"><strong>9. Xung boost (Turbo Frequency)</strong></span></h1>

<p>Xung boost l&agrave; tốc độ xung nhịp đơn nh&acirc;n tối đa của CPU dựa tr&ecirc;n c&ocirc;ng nghệ Intel Turbo Boost/AMD Turbo Core. Th&ocirc;ng số laptop n&agrave;y cho biết tốc độ boost của CPU nhờ tận dụng khoảng trống nhiệt v&agrave; năng lượng.&nbsp;</p>

<p>Giống như xung cơ bản, xung boost được đo bằng Gigahertz (GHz), tức l&agrave; một tỷ ph&eacute;p t&iacute;nh mỗi gi&acirc;y.</p>

<p>&nbsp;</p>

<h1><span style="font-size:18px"><strong>10. Bộ nhớ đệm CPU (CPU L3 Cache)&nbsp;</strong></span></h1>

<p>Bộ nhớ đệm CPU l&agrave; bộ nhớ được sử dụng bởi CPU để giảm thời gian truy cập bộ nhớ RAM. Bộ nhớ đệm l&agrave; một bộ nhớ nhỏ hơn, nhanh hơn, lưu trữ c&aacute;c bản sao dữ liệu từ bộ nhớ ch&iacute;nh.&nbsp;</p>

<p>Hầu hết c&aacute;c CPU đều c&oacute; c&aacute;c bộ nhớ đệm độc lập kh&aacute;c nhau, bao gồm bộ đệm lệnh v&agrave; bộ nhớ đệm dữ liệu, trong đ&oacute; bộ nhớ đệm dữ liệu thường được tổ chức dưới dạng ph&acirc;n cấp gồm nhiều mức hơn (L1, L2, L3...)</p>

<p>&nbsp;</p>

<h1><span style="font-size:18px"><strong>11. K&iacute;ch thước m&agrave;n h&igrave;nh (Screen Size)</strong></span></h1>

<p>K&iacute;ch thước m&agrave;n h&igrave;nh (hoặc k&iacute;ch thước hiển thị) l&agrave; k&iacute;ch thước vật l&yacute; của khu vực hiển thị h&igrave;nh ảnh v&agrave; video. Th&ocirc;ng số laptop n&agrave;y được đo bằng độ d&agrave;i đường ch&eacute;o của n&oacute;, l&agrave; khoảng c&aacute;ch giữa c&aacute;c g&oacute;c đối diện.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số màn hình/com_proxy_ (1).jpg" style="width:750px" /></p>

<h1><span style="font-size:18px"><strong>12. M&agrave;n h&igrave;nh cảm ứng (Touchscreen)&nbsp;</strong></span></h1>

<p>M&agrave;n h&igrave;nh cảm ứng l&agrave; một m&agrave;n h&igrave;nh điện tử m&agrave; người d&ugrave;ng c&oacute; thể điều khiển th&ocirc;ng qua c&aacute;c cử chỉ đơn giản hoặc đa chạm bằng b&uacute;t chuy&ecirc;n dụng hoặc ng&oacute;n tay. N&oacute; cho ph&eacute;p người d&ugrave;ng tương t&aacute;c trực tiếp với những g&igrave; được hiển thị tr&ecirc;n m&agrave;n h&igrave;nh, thay v&igrave; sử dụng chuột hoặc c&aacute;c thiết bị ngoại vi tương tự.</p>

<p>&nbsp;</p>

<h1><span style="font-size:18px"><strong>13. Hỗ trợ m&agrave;n h&igrave;nh rộng (Wide Screen Support)</strong></span></h1>

<p>Tỷ lệ khung h&igrave;nh rộng hơn 4: 3 được gọi l&agrave; m&agrave;n h&igrave;nh rộng. M&agrave;n h&igrave;nh rộng trước đ&acirc;y thường c&oacute; tỷ lệ khung h&igrave;nh 16:10 v&agrave; b&acirc;y giờ thường l&agrave; 16: 9. Với m&agrave;n h&igrave;nh rộng, người d&ugrave;ng c&oacute; nhiều kh&ocirc;ng gian khả dụng hơn cho c&aacute;c tr&ograve; chơi v&agrave; c&aacute;c chương tr&igrave;nh m&aacute;y t&iacute;nh kh&aacute;c.</p>

<p>&nbsp;</p>

<h1><span style="font-size:18px"><strong>14. Độ ph&acirc;n giải (Resolution)</strong></span></h1>

<p>Th&ocirc;ng số laptop tiếp theo đề cập đến số lượng điểm ảnh c&oacute; tr&ecirc;n m&agrave;n h&igrave;nh, được biểu thị bằng số điểm ảnh tr&ecirc;n trục ngang x số điểm ảnh tr&ecirc;n trục tung. VD: 1920x1080.</p>

<p>Độ sắc n&eacute;t của h&igrave;nh ảnh tr&ecirc;n m&agrave;n h&igrave;nh phụ thuộc v&agrave;o độ ph&acirc;n giải. Độ ph&acirc;n giải c&agrave;ng cao th&igrave; h&igrave;nh ảnh c&agrave;ng c&oacute; nhiều chi tiết.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số màn hình/tv_guide_relative_comparison_0 (1).jpg" style="width:750px" /></p>

<p>V&iacute; dụ: so với 1366 x 768, 1920 x 1080 tr&ocirc;ng sắc n&eacute;t hơn v&igrave; c&oacute; nhiều điểm ảnh hơn. V&igrave; vậy, nếu bạn xem phim ở độ ph&acirc;n giải 1080p tr&ecirc;n m&agrave;n h&igrave;nh m&aacute;y t&iacute;nh x&aacute;ch tay 1920 x 1080, bạn sẽ tận hưởng trải nghiệm xem tốt hơn.</p>

<p>&nbsp;</p>

<h1><span style="font-size:18px"><strong>15. Chip xử l&yacute; đồ họa (GPU/VPU)</strong></span></h1>

<p>Chip xử l&yacute; đồ họa l&agrave; th&ocirc;ng số laptop quan trọng, l&agrave; một chip chuy&ecirc;n dụng để thực hiện c&aacute;c ph&eacute;p t&iacute;nh to&aacute;n học v&agrave; h&igrave;nh học phức tạp cần thiết để kết xuất đồ họa. GPU c&oacute; thể được đặt tr&ecirc;n một card m&agrave;n h&igrave;nh rời hoặc được t&iacute;ch hợp trực tiếp v&agrave;o CPU hoặc bo mạch chủ của m&aacute;y t&iacute;nh. Hầu hết c&aacute;c m&aacute;y t&iacute;nh x&aacute;ch tay đều c&oacute; GPU t&iacute;ch hợp.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số card đồ hoạ/GPU (1).jpg" style="width:800px" /></p>

<p>&nbsp;</p>

<h1><span style="font-size:18px"><strong>16. Loại card đồ họa (Graphic Type)</strong></span></h1>

<p>C&oacute; hai loại đồ họa: Card đồ họa rời v&agrave; t&iacute;ch hợp. Card rời c&oacute; bộ nhớ, hệ thống l&agrave;m m&aacute;t ri&ecirc;ng v&agrave; bộ điều chỉnh điện năng chuy&ecirc;n dụng, với tất cả c&aacute;c th&agrave;nh phần được thiết kế đặc biệt để xử l&yacute; h&igrave;nh ảnh, video. Đồ họa t&iacute;ch hợp được t&iacute;ch hợp v&agrave;o bo mạch chủ hoặc CPU. Với card đồ họa t&iacute;ch hợp, GPU chia sẻ t&agrave;i nguy&ecirc;n với CPU.</p>

<p>&nbsp;</p>

<h1><span style="font-size:18px"><strong>17. Mạng m&aacute;y t&iacute;nh cục bộ (LAN - Local Area Network)</strong></span></h1>

<p>Nếu m&aacute;y t&iacute;nh của bạn c&oacute; cổng LAN, bạn c&oacute; thể kết nối mạng bằng kết nối c&oacute; d&acirc;y. Trong mạng nội bộ c&oacute; d&acirc;y, c&oacute; c&aacute;c ti&ecirc;u chuẩn 1000Mb/s,&nbsp; 100Mb/s v&agrave; 10Mb/s.</p>

<p>&nbsp;</p>

<h1><span style="font-size:18px"><strong>18. Mạng kh&ocirc;ng d&acirc;y (WLAN - Wireless Local Area Network)</strong></span></h1>

<p>Đ&acirc;y l&agrave; th&ocirc;ng số laptop M&aacute;y t&iacute;nh c&oacute; WLAN được t&iacute;ch hợp sẵn c&oacute; thể kết mạng m&agrave; kh&ocirc;ng cần d&acirc;y (sử dụng s&oacute;ng v&ocirc; tuyến để truyền v&agrave; nhận t&iacute;n hiệu giữa c&aacute;c thiết bị). IEEE 802.11 l&agrave; một tập hợp c&aacute;c th&ocirc;ng số kỹ thuật li&ecirc;n quan đến mạng kh&ocirc;ng d&acirc;y.</p>

<p>&nbsp;</p>

<h1><span style="font-size:18px"><strong>19. Bluetooth</strong></span></h1>

<p>Bluetooth l&agrave; một ti&ecirc;u chuẩn c&ocirc;ng nghệ kh&ocirc;ng d&acirc;y để trao đổi dữ liệu trong khoảng c&aacute;ch ngắn (sử dụng s&oacute;ng v&ocirc; tuyến UHF c&oacute; bước s&oacute;ng ngắn trong băng tần ISM từ 2,4 đến 2,485 GHz) từ c&aacute;c thiết bị cố định v&agrave; di động cũng như x&acirc;y dựng mạng c&aacute; nh&acirc;n (PANs).</p>

<p>&nbsp;</p>

<h1><span style="font-size:18px"><strong>20. USB (Universal Serial Bus)&nbsp;</strong></span></h1>

<p>USB l&agrave; giao thức ti&ecirc;u chuẩn trong kết nối, d&ugrave;ng để kết nối c&aacute;c thiết bị ngoại vi với m&aacute;y t&iacute;nh. Hiện nay c&oacute; 4 phi&ecirc;n bản USB với 3 phi&ecirc;n bản đầu 1.0, 2.0 v&agrave; 3.0 c&oacute; chuẩn Loại A v&agrave; phi&ecirc;n bản 3.1.&nbsp;</p>

<p>Ri&ecirc;ng phi&ecirc;n bản 3.1 c&oacute; hai loại l&agrave; Loại A v&agrave; Loại C c&oacute; tốc độ nhanh hơn c&aacute;c phi&ecirc;n bản tiền nhiệm. USB Loại-A c&oacute; đầu nối được l&agrave;m theo h&igrave;nh chữ nhật với tối đa 9 ch&acirc;n, trong khi đ&oacute; Loại C c&oacute; đầu nối h&igrave;nh bầu dục d&agrave;i chứa tối đa 24 ch&acirc;n.</p>

<p>&nbsp;</p>

<h1><span style="font-size:18px"><strong>21. Webcam (Web Camera)</strong></span></h1>

<p>Webcam được sử dụng để truyền video trực tiếp đến một m&aacute;y t&iacute;nh kh&aacute;c th&ocirc;ng qua internet. Đối với m&aacute;y t&iacute;nh x&aacute;ch tay, webcam lu&ocirc;n được t&iacute;ch hợp ở viền tr&ecirc;n hoặc dưới của m&agrave;n h&igrave;nh để c&oacute; thể sử dụng ngay lập tức m&agrave; kh&ocirc;ng cần điều chỉnh.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số laptop/cach-quay-phim-va-chup-anh-bang-webcam-laptop-don-gian-nhat-fb (1).jpg" style="width:730px" /></p>

<p>Người d&ugrave;ng c&oacute; thể d&ugrave;ng webcam để tr&ograve; chuyện video qua c&aacute;c phần mềm như Skype, Google Meeting, Zoom&hellip; hoặc c&aacute;c t&aacute;c vụ video kh&aacute;c.</p>

<p>&nbsp;</p>

<p>V&agrave; đ&oacute; l&agrave; những th&ocirc;ng số laptop quan trọng m&agrave; anh em cần nắm r&otilde; trước khi mua. Hi vọng qua b&agrave;i viết n&agrave;y anh em c&oacute; thể hiểu th&ecirc;m về laptop v&agrave; chọn mua được sản phẩm ưng &yacute;. H&atilde;y đến ngay <a href="https://www.tncstore.vn/">TNC Store</a> để tham khảo c&aacute;c mẫu laptop chất lượng với mức gi&aacute; v&agrave; chế độ chăm s&oacute;c sau b&aacute;n h&agrave;ng tốt nhất nh&eacute;!</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>
', N'/Data/images/newses/tintucmoinhat/Avatar%20bai%20viet.jpg', NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-06T13:32:04.573' AS DateTime), N'quang', CAST(N'2020-12-06T13:32:00.000' AS DateTime), NULL, 4, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (9, N'Những thông số kỹ thuật vỏ case máy tính quan trọng khi build PC', N'thông số kỹ thuật vỏ case máy tính quan trọng build PC', N'thong-so-ky-thuat-vo-case-may-tinh-quan-trong-build-pc', N'Vỏ case máy tính là bộ phận không thể thiếu cho một chiếc PC có tính thẩm mỹ cao. Cùng TNC Store tìm hiểu các thông số kỹ thuật vỏ case máy tính quan trọng nhé!', N'<div class="post_content">
<p><em>Vỏ case m&aacute;y t&iacute;nh l&agrave; bộ phận kh&ocirc;ng thể thiếu cho một chiếc PC c&oacute; t&iacute;nh thẩm mỹ cao. C&ugrave;ng TNC Store t&igrave;m hiểu c&aacute;c th&ocirc;ng số kỹ thuật vỏ case m&aacute;y t&iacute;nh quan trọng nh&eacute;!</em></p>

<p>&nbsp;</p>

<p>Nếu coi chiếc PC l&agrave; một cơ thể th&igrave; vỏ case ch&iacute;nh l&agrave; khung xương kết nối v&agrave; bảo vệ c&aacute;c bộ phận b&ecirc;n trong. Kh&ocirc;ng những vậy, đ&acirc;y cũng l&agrave; linh kiện l&agrave;m n&ecirc;n độ thẩm mỹ v&agrave; vẻ đẹp của một chiếc m&aacute;y t&iacute;nh. Vỏ case cũng c&oacute; rất nhiều loại tuỳ thuộc v&agrave;o khả năng n&acirc;ng cấp về sau cũng như k&iacute;ch thước c&aacute;c bộ phận b&ecirc;n trong.&nbsp;</p>

<p>Việc lựa chọn vỏ case kh&ocirc;ng đ&uacute;ng sẽ g&acirc;y rất nhiều phiền to&aacute;i như kh&ocirc;ng đ&oacute;ng được nắp m&aacute;y, đi d&acirc;y xấu, kh&oacute; lắp th&ecirc;m c&aacute;c linh kiện mới&hellip; Vậy khi build PC Gaming cần ch&uacute; &yacute; mua vỏ case như thế n&agrave;o? H&atilde;y để TNC Store giải đ&aacute;p gi&uacute;p anh em th&ocirc;ng qua những th&ocirc;ng số kỹ thuật<strong> vỏ case</strong> <strong>m&aacute;y t&iacute;nh</strong> quan trọng nh&eacute;!</p>

<p>&nbsp;</p>

<h1><span style="font-size:18px"><strong>1. Loại case</strong></span></h1>

<p>Đ&acirc;y l&agrave; th&ocirc;ng số kỹ thuật<strong> vỏ case</strong> quan trọng nhất, quyết định đến h&igrave;nh d&aacute;ng v&agrave; khả năng n&acirc;ng cấp cho chiếc <strong>PC Gaming</strong> của anh em. <strong>Loại case</strong> phụ thuộc v&agrave;o k&iacute;ch thước case, phổ biến l&agrave; Mini Tower, Mid Tower, Full Tower v&agrave; Super Tower.</p>

<p>Đ&uacute;ng như t&ecirc;n gọi, Mini Tower c&oacute; k&iacute;ch thước nhỏ gọn, ph&ugrave; hợp với người d&ugrave;ng nhu cầu văn ph&ograve;ng hoặc giải tr&iacute; nhẹ nh&agrave;ng. Mini Tower thường cao từ 35 - 40 cm v&agrave; thường kh&ocirc;ng hỗ trợ lắp th&ecirc;m nhiều linh kiện như ổ cứng, card đồ hoạ. Khả năng đi d&acirc;y do đ&oacute; cũng hạn chế v&igrave; kh&ocirc;ng gian chật hẹp, lưu lượng kh&ocirc;ng kh&iacute; lưu th&ocirc;ng cũng kh&ocirc;ng cao so với những loại case kh&aacute;c.</p>

<p>Mid Tower rất phổ biến v&igrave; khả năng n&acirc;ng cấp cũng như k&iacute;ch thước đều ở mức &ldquo;vừa đẹp&rdquo; với người d&ugrave;ng phổ th&ocirc;ng. Loại case n&agrave;y cao từ 43 - 53 cm v&agrave; thường c&oacute; 3 - 4 khay cho ổ đĩa cứng. K&iacute;ch thước của Mid Tower rộng hơn Mini n&ecirc;n việc đi d&acirc;y cũng dễ d&agrave;ng hơn, vừa tăng t&iacute;nh thẩm mỹ vừa gi&uacute;p kh&ocirc;ng kh&iacute; được lưu th&ocirc;ng dễ d&agrave;ng hơn.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/vỏ case máy tính/Comptuer-Case-Size-Comparison-1024x702 (1).jpg" style="width:730px" /></p>

<p>Nhắc đến những chiếc <strong>PC Gaming</strong> k&iacute;ch thước lớn th&igrave; ch&uacute;ng ta c&oacute; thể biết ngay PC đ&oacute; d&ugrave;ng loại case Full Tower. Nếu Mini Tower l&agrave; một căn nh&agrave; 2 tầng th&igrave; Full Tower l&agrave; một biệt thự đ&uacute;ng nghĩa. Với chiều cao từ 56 - 86cm v&agrave; c&oacute; từ 5 khay trở l&ecirc;n để anh em gắn c&aacute;c ổ đĩa cứng. Ch&iacute;nh v&igrave; vậy n&ecirc;n Full Tower thường được gắn những bộ tản nhiệt nước hoặc kh&iacute; một c&aacute;ch thoải m&aacute;i, đặc biệt l&agrave; tản custom.&nbsp;</p>

<p>V&agrave; cuối c&ugrave;ng ch&iacute;nh l&agrave; qu&aacute;i vật Super Tower/Ultra Tower. V&igrave; k&iacute;ch thước kh&aacute; khủng cũng như mức gi&aacute; tr&ecirc;n trời n&ecirc;n loại case n&agrave;y thường chỉ d&agrave;nh cho anh em n&agrave;o muốn max option mọi thứ cũng như c&oacute; kh&ocirc;ng gian rộng lớn cho chiếc PC Gaming của m&igrave;nh.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/vỏ case máy tính/JaBT7mMscmtJWEkaFUBZAo (1).jpg" style="width:730px" /></p>

<p>&gt;&gt;&gt; Kh&aacute;m ph&aacute; ngay những <strong><a href="https://www.tncstore.vn/vo-case.html" target="_blank">case m&aacute;y t&iacute;nh</a></strong> c&oacute; kiểu d&aacute;ng v&agrave; độ thẩm mỹ cực chất tại TNC Store nh&eacute;!</p>

<p>Ngo&agrave;i ra c&ograve;n c&oacute; những loại case đặc biệt kh&aacute;c như Modular Case, LAN BOX, HTPC&hellip; nhưng anh em nắm r&otilde; 4 loại case đề cập ở tr&ecirc;n l&agrave; đủ.</p>

<h1><strong><span style="font-size:18px">2. Hỗ trợ Mainboard</span></strong></h1>

<p>Tuỳ thuộc <strong>loại case</strong> m&agrave; sẽ hỗ trợ c&aacute;c mainboard kh&aacute;c nhau. Do k&iacute;ch thước hẹp n&ecirc;n thường Mini Tower chỉ gắn được mainboard m-ATX. Mid Tower gắn được c&aacute;c mainboard <a href="https://www.tncstore.vn/vo-case.html?attribute_id=128" target="_blank">ATX</a> trở xuống. Trong khi đ&oacute; việc lắp m-ATX, ATX, E-ATX v&agrave;o Full Tower l&agrave; điều qu&aacute; dễ d&agrave;ng. Super Power th&igrave; khỏi phải b&agrave;n, bao thầu tất cả c&aacute;c loại mainboard, kể cả XL-ATX.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/vỏ case máy tính/net_ (1).jpg" style="width:730px" /></p>

<p>&gt;&gt;&gt; T&igrave;m hiểu th&ecirc;m c&aacute;c <a href="https://www.tncstore.vn/thong-so-ky-thuat-mainboard.html" target="_blank"><strong>loại mainboard</strong></a> cho PC.</p>

<h1><strong><span style="font-size:18px">3. Vị tr&iacute; gắn nguồn điện</span></strong></h1>

<p>Th&ocirc;ng số kỹ thuật<strong> vỏ case</strong> n&agrave;y cho biết vị tr&iacute; bộ nguồn c&oacute; thể được gắn ở ph&iacute;a tr&ecirc;n hoặc ph&iacute;a dưới của vỏ m&aacute;y. Thiết kế gắn ph&iacute;a tr&ecirc;n thường c&oacute; tr&ecirc;n c&aacute;c case thế hệ cũ. Kh&ocirc;ng kh&iacute; được h&uacute;t v&agrave;o từ b&ecirc;n trong khung v&agrave; sau đ&oacute; được thải ra ngo&agrave;i. Nhưng nhiệt thải do card đồ họa v&agrave; bộ xử l&yacute; tạo ra cũng đi v&agrave;o PSU, dẫn đến nhiệt độ PSU cao hơn, đồng thời hoạt động k&eacute;m hiệu quả v&agrave; ồn &agrave;o.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/vỏ case máy tính/Huong-dan-chon-mua-nguon-may-tinh-PSU-3 (1).jpg" style="width:730px" /></p>

<p><strong>PSU</strong> gắn dưới đ&aacute;y mang lại độ ổn định của vỏ m&aacute;y tốt hơn v&agrave; khả năng l&agrave;m m&aacute;t độc lập. N&oacute; h&uacute;t kh&ocirc;ng kh&iacute; từ b&ecirc;n ngo&agrave;i v&agrave; sau đ&oacute; đẩy n&oacute; ra khỏi mặt sau của thiết bị m&agrave; kh&ocirc;ng x&acirc;m nhập v&agrave;o vỏ m&aacute;y hoặc ảnh hưởng đến c&aacute;c th&agrave;nh phần kh&aacute;c.</p>

<h1><strong><span style="font-size:18px">4. Side Panel&nbsp;</span></strong></h1>

<p>Đ&acirc;y l&agrave; phần cạnh b&ecirc;n của <strong>vỏ case</strong>, thường được l&agrave;m bằng k&iacute;nh acrylic hoặc k&iacute;nh cường lực trong suốt để nh&igrave;n thấy được to&agrave;n bộ linh kiện b&ecirc;n trong chiếc <strong>PC Gaming</strong>.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/vỏ case máy tính/black-diamond-disscected (1).jpg" style="width:730px" /></p>

<h1><strong><span style="font-size:18px">5. Hỗ trợ đ&egrave;n LED</span></strong></h1>

<p>Với xu hướng đề cao t&iacute;nh thẩm mỹ b&ecirc;n cạnh hiệu năng th&igrave; những <strong>vỏ case m&aacute;y t&iacute;nh</strong> hiện nay thường được thiết kế để hỗ trợ lắp c&aacute;c bộ phận tản nhiệt c&oacute; LED RGB v&agrave; I/O mặt trước c&oacute; thể tuỳ chỉnh hiệu ứng &aacute;nh s&aacute;ng.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/vỏ case máy tính/_20170807144213_LINK_Ecosystem_08 (2).jpg" style="width:730px" /></p>

<h1><strong><span style="font-size:18px">6. Bộ lọc&nbsp;</span></strong></h1>

<p>Bộ lọc thường được gắn ph&iacute;a trước quạt để giảm thiểu bụi v&agrave; chất bẩn b&ecirc;n trong vỏ m&aacute;y t&iacute;nh của bạn. Bộ lọc c&oacute; t&iacute;nh năng th&aacute;o rời n&ecirc;n anh em rất dễ d&agrave;ng vệ sinh hoặc thay thế.</p>

<h1><strong><span style="font-size:18px">7. Số lượng khe mở rộng&nbsp;</span></strong></h1>

<p>Th&ocirc;ng số kỹ thuật<strong> vỏ case</strong> <strong>m&aacute;y t&iacute;nh</strong> n&agrave;y cho biết khả năng n&acirc;ng cấp ổ cứng. C&aacute;c khe cắm mở rộng thường nằm ở mặt sau của vỏ m&aacute;y t&iacute;nh.&nbsp;</p>

<p>&nbsp;</p>

<p>Một số mẹo khi mua <strong>vỏ case</strong> cho anh em l&agrave; n&ecirc;n t&igrave;m hiểu về c&aacute;ch đi d&acirc;y sao cho gọn g&agrave;ng v&agrave; tiết kiệm kh&ocirc;ng gian cho kh&ocirc;ng kh&iacute; lưu th&ocirc;ng nhiều nhất c&oacute; thể. Nếu anh em c&oacute; nhu cầu dựng card m&agrave;n h&igrave;nh dọc theo th&acirc;n m&aacute;y th&igrave; n&ecirc;n lựa chọn c&aacute;c vỏ case c&oacute; k&iacute;ch thước to như Full Tower nhằm tr&aacute;nh nằm qu&aacute; gần side panel.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/vỏ case máy tính/m9cbuild-case2 (1).jpg" style="width:730px" /></p>

<p>&nbsp;</p>

<p>V&agrave; đ&oacute; l&agrave; những th&ocirc;ng số kỹ thuật<strong> vỏ case</strong> m&aacute;y t&iacute;nh quan trọng khi build một chiếc PC cho ri&ecirc;ng m&igrave;nh. H&atilde;y đến ngay <a href="https://www.tncstore.vn/" target="_blank"><strong>TNC Store</strong></a> để lựa chọn vỏ case ph&ugrave; hợp với nhu cầu của anh em nh&eacute;!</p>

<div>&nbsp;</div>
</div>
', N'/Data/images/newses/tintucmoinhat/Avatar%20bai%20viet%20(1).jpg', NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-06T13:32:21.507' AS DateTime), N'quang', CAST(N'2020-12-06T13:32:00.000' AS DateTime), NULL, 4, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (10, N'Gia nhập hàng ngũ các siêu anh hùng Avengers với CPU Intel', N' Avengers CPU Intel', N'avengers-cpu-intel', N'Cùng CPU Intel phiên bản Avengers đồng hành với các siêu anh hùng trên con đường chinh phục những đỉnh cao mới! ', N'<p><em>C&ugrave;ng CPU Intel phi&ecirc;n bản Avengers đồng h&agrave;nh với c&aacute;c si&ecirc;u anh h&ugrave;ng tr&ecirc;n con đường chinh phục những đỉnh cao mới!&nbsp;</em></p>

<p>&nbsp;</p>

<p>Từ ng&agrave;y 28/8/2020 đến 28/2/2021, khi anh em mua c&aacute;c sản phẩm CPU Intel phi&ecirc;n bản Avengers sẽ được tặng ngay game Marvel Avengers v&agrave; số lượng code game c&oacute; hạn.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/CPU Avengers/1PNG_A~2.JPG" style="width:730px" /></p>

<p>Lưu &yacute;: Khi mua CPU, anh em nhớ nhanh tay truy cập ngay website để k&iacute;ch hoạt v&igrave; code game chỉ mở đến ng&agrave;y 31/3/2021 th&ocirc;i nh&eacute;!</p>

<p>&nbsp;</p>

<h1><strong><span style="font-size:18px">1. Đối tượng sản phẩm</span></strong></h1>

<p>V&agrave; những CPU c&oacute; trong chương tr&igrave;nh ch&iacute;nh l&agrave; bộ ba chip xử l&yacute; thế hệ mới nhất, thuộc h&agrave;ng top đầu về hiệu năng nay lại c&agrave;ng đặc biệt hơn với phi&ecirc;n bản Avengers.</p>

<p>Với i5-10600K&nbsp;6 nh&acirc;n 12 luồng, c&aacute;c t&aacute;c vụ cơ bản như l&agrave;m văn ph&ograve;ng, chỉnh sửa ảnh, photoshop trở n&ecirc;n cực kỳ đơn giản. CPU cũng th&iacute;ch hợp với nhiều d&ograve;ng m&aacute;y PC Gaming kh&aacute;c nhau, đảm bảo trải nghiệm gaming ch&acirc;n thực nhất.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/CPU Avengers/cpu-intel-core-i9-10850k-o1-500x500 (1).jpg" style="width:730px" /></p>

<p>Kh&ocirc;ng cần phải b&agrave;n c&atilde;i nhiều về hiệu năng l&agrave;m đồ hoạ lẫn gaming tr&ecirc;n cả tuyệt vời của CPU Intel Core i7-10700K. Với 8 nh&acirc;n, 16 luồng c&ugrave;ng mức xung boost 5.1 GHz th&igrave; i7-10700K thật sự l&agrave; sản phẩm l&yacute; tưởng cho những game thủ, nh&agrave; l&agrave;m phim, video....</p>

<p>C&aacute;c d&ograve;ng CPU Intel Core i9 c&oacute; lẽ kh&ocirc;ng c&ograve;n xa lạ với những game thủ hardcore, th&iacute;ch &quot;max options&quot; tất cả c&aacute;c linh kiện b&ecirc;n b&ecirc;n trong chiếc PC. Với hiệu năng cực kỳ mạnh mẽ, <a href="https://www.tncstore.vn/cpu/cpu-intel-core-i9-10850k-avengers-edition.html" target="_blank">i</a>9-10850K v&agrave; i9-10900K ch&iacute;nh l&agrave; những &ldquo;qu&aacute;i vật&rdquo; đ&uacute;ng nghĩa. Xung nhịp boost tối đa l&ecirc;n tới 5.2 GHz cho tốc độ xử l&yacute; c&aacute;c t&aacute;c vụ nặng như render, l&agrave;m phim, chơi game nặng&hellip; chỉ l&agrave; chuyện nhỏ.</p>

<p>&gt;&gt;&gt; Tham khảo ngay c&aacute;c sản phẩm tại linh dưới</p>

<p><a href="https://www.tncstore.vn/cpu.html?product_id=4472" target="_blank">CPU Intel Core i5-10600K phi&ecirc;n bản Marvel Avengers</a></p>

<p><a href="https://www.tncstore.vn/cpu.html?product_id=4465" target="_blank">CPU Intel Core i7-10700K phi&ecirc;n bản Marvel Avengers</a></p>

<p><a href="https://www.tncstore.vn/cpu/cpu-intel-core-i9-10850k-avengers-edition.html" target="_blank">CPU Intel Core i9-10850K phi&ecirc;n bản Marvel Avengers</a></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<h1><strong><span style="font-size:18px">2. Hướng dẫn k&iacute;ch hoạt game code</span></strong></h1>

<p>Khi anh em đ&atilde; sở hữu chiếc CPU v&ocirc; c&ugrave;ng xịn s&ograve;, h&atilde;y l&agrave;m theo những bước dưới đ&acirc;y để rinh ngay game về nh&eacute;:</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/CPU Avengers/1PNG_A~1.JPG" style="width:730px" /></p>

<p>Bước 1: Truy cập: <a href="https://softwareoffer.intel.com/Identity/Account/Login?ReturnUrl=%2FDashboard" target="_blank">www.softwareoffer.intel.com/MarvelsAvengers</a></p>

<p>Bước 2: Đăng nhập hoặc tạo t&agrave;i khoản Intel&reg; Digital Hub.</p>

<p>Bước 3: Khi t&agrave;i khoản của anh em đ&atilde; được x&aacute;c minh, h&atilde;y đăng nhập v&agrave; nhập Kh&oacute;a Ch&iacute;nh trước ng&agrave;y 31 th&aacute;ng 3 năm 2021 để nhận g&oacute;i phần mềm.</p>

<p>Bước 4: Đồng &yacute; Điều khoản v&agrave; Điều kiện Ưu đ&atilde;i v&agrave; ho&agrave;n th&agrave;nh cuộc khảo s&aacute;t ngắn.</p>

<p>Finish: Chọn v&agrave; tải xuống c&aacute;c sản phẩm phần mềm c&oacute; sẵn.</p>

<p>&nbsp;</p>

<p>Anh em lưu &yacute; th&ecirc;m khi mua c&aacute;c sản phẩm CPU Intel phi&ecirc;n bản Avengers tại <a href="https://www.tncstore.vn/" target="_blank">TNC Store</a> l&agrave; li&ecirc;n hệ ngay với đội ngũ b&aacute;n h&agrave;ng để nhận được code game Marvel Avengers nh&eacute;!&nbsp;</p>

<p>Do số lượng c&oacute; hạn n&ecirc;n c&ograve;n chần chừ g&igrave; nữa, h&atilde;y sắm ngay cấu h&igrave;nh PC Gaming khủng để chiến mọi game MAX Settings với tốc độ xử l&yacute; tr&ecirc;n cả tuyệt vời c&ugrave;ng CPU Intel thế hệ mới nhất!</p>

<p>&nbsp;</p>
', N'/Data/images/newses/tintucmoinhat/Avatar%20bai%20viet%20(2).jpg', NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-06T13:32:41.540' AS DateTime), N'quang', CAST(N'2020-12-06T13:32:00.000' AS DateTime), NULL, 4, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (11, N'Những thông số kỹ thuật nguồn máy tính cần lưu ý', N'thông số kỹ thuật nguồn máy tính', N'thong-so-ky-thuat-nguon-may-tinh', N'Nguồn máy tính có vai trò quan trọng cho việc cấp năng lượng và giữ ổn định cho các linh kiện. Cùng TNC Store tìm hiểu các thông số kỹ thuật nguồn máy tính nhé!', N'<p><em>Nguồn m&aacute;y t&iacute;nh c&oacute; vai tr&ograve; quan trọng cho việc cấp năng lượng v&agrave; giữ ổn định cho c&aacute;c linh kiện. C&ugrave;ng TNC Store t&igrave;m hiểu c&aacute;c th&ocirc;ng số kỹ thuật nguồn m&aacute;y t&iacute;nh nh&eacute;!</em></p>

<p>&nbsp;</p>

<p>Kh&ocirc;ng c&oacute; c&aacute;c đặc điểm đặc trưng như nhiều nh&acirc;n, đa luồng, xung nhịp... của <strong>CPU</strong> hay card đồ hoạ nhưng <strong>bộ nguồn</strong> (PSU - Power Supply Unit) cũng ảnh hưởng đến hiệu năng của m&aacute;y t&iacute;nh. Bộ nguồn của m&aacute;y t&iacute;nh thường l&agrave; nguồn phi tuyến, c&oacute; khả năng chuyển đổi nguồn điện xoay chiều (AC) th&agrave;nh d&ograve;ng điện 1 chiều (DC) với mức điện &aacute;p đầu ra ổn định để đảm bảo an to&agrave;n cho c&aacute;c linh kiện b&ecirc;n trong. Cấu tạo bộ nguồn m&aacute;y t&iacute;nh c&oacute; thể tham thảo như h&igrave;nh dưới.</p>

<p style="text-align:left">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số nguồn/nguyen ly hoat dong (1).jpg" style="height:434.72px; width:729.672px" /></p>

<p>Th&ecirc;m nữa, v&igrave; l&agrave; phần cứng cung cấp năng lượng cho to&agrave;n bộ hệ thống n&ecirc;n n&oacute; l&agrave; một trong c&aacute;c thiết bị ảnh hưởng trực tiếp đến tuổi thọ, sự ổn định cũng như độ bền của c&aacute;c linh kiện.</p>

<p>Việc trang bị những bộ nguồn k&eacute;m chất lượng hay c&oacute; c&ocirc;ng suất thấp, kh&ocirc;ng cấp đủ điện sẽ g&acirc;y ra những lỗi lặt vặt như phần mềm bị đứng h&igrave;nh, m&aacute;y tự khởi động lại, h&igrave;nh bị vỡ&hellip; hoặc thậm ch&iacute; g&acirc;y phồng rộp, ch&aacute;y nổ rất nguy hiểm.&nbsp;</p>

<p>Vậy một bộ nguồn tốt l&agrave; như thế n&agrave;o v&agrave; m&aacute;y t&iacute;nh của bạn cần tối thiểu nguồn bao nhi&ecirc;u c&ocirc;ng suất? H&atilde;y để TNC giải đ&aacute;p cho bạn th&ocirc;ng qua c&aacute;c th&ocirc;ng số kỹ thuật <strong>nguồn m&aacute;y t&iacute;nh</strong> đ&aacute;ng ch&uacute; &yacute; nh&eacute;!</p>

<p>&nbsp;</p>

<h1><strong><span style="font-size:18px">1. C&ocirc;ng suất tối đa</span></strong></h1>

<p><strong>Bộ nguồn</strong> về cơ bản được ph&acirc;n biệt theo c&ocirc;ng suất đầu ra với th&ocirc;ng số đặc trưng l&agrave; &quot;C&ocirc;ng suất tối đa&quot; (Maximum Power) hay &quot;C&ocirc;ng suất thực&quot; (Total Power). C&ocirc;ng suất tối đa cho biết số lượng thiết bị m&agrave; bộ nguồn sẽ c&oacute; thể cung cấp th&ocirc;ng qua mức ti&ecirc;u thụ điện năng của mỗi thiết bị.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số nguồn/6b5135d49f819b9601f3e86dd4942709&amp;hangmaytinh.com (1).jpg" style="width:730px" /></p>

<p>&gt;&gt;&gt; Tham khảo ngay c&aacute;c bộ <a href="https://www.tncstore.vn/nguon-may-tinh.html" target="_blank"><strong>nguồn m&aacute;y t&iacute;nh</strong></a> cực chất lượng tại TNC Store nh&eacute;!</p>

<p>C&ocirc;ng suất cực đại kh&aacute;c với &quot;c&ocirc;ng suất đỉnh&quot; (Peak Power). Con số &quot;C&ocirc;ng suất tối đa&quot; của bộ nguồn đề cập đến c&ocirc;ng suất li&ecirc;n tục (ổn định) m&agrave; PSU sẽ cung cấp một c&aacute;ch nhất qu&aacute;n, trong khi c&ocirc;ng suất đỉnh đề cập đến c&ocirc;ng suất cao nhất m&agrave; PSU c&oacute; thể đạt được nhưng chỉ trong khoảng thời gian rất ngắn.</p>

<h1><strong><span style="font-size:18px">2. Quạt tản nhiệt</span></strong></h1>

<p>Kh&ocirc;ng c&oacute; nguồn điện n&agrave;o hiện c&oacute; thể đạt hiệu suất 100% do c&oacute; điện trở, c&oacute; nghĩa l&agrave; sẽ lu&ocirc;n c&oacute; nhiệt sinh ra trong qu&aacute; tr&igrave;nh hoạt động. N&oacute;i chung, một <strong>PSU</strong> c&oacute; c&ocirc;ng suất cao hơn sẽ dẫn đến nhiệt được tạo ra nhiều hơn. Do vậy n&ecirc;n bộ nguồn cũng cần c&oacute; quạt tản nhiệt.&nbsp; Hầu hết c&aacute;c bộ nguồn sử dụng một hoặc nhiều quạt để l&agrave;m m&aacute;t.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số nguồn/tt_9a717137b54b4a98895615f1fdc70fc7_6c9e645099c14131b33e2f3fb0070492_master (1).jpg" style="width:730px" /></p>

<p style="text-align:center">&nbsp;</p>

<h1><strong><span style="font-size:18px">3. Đầu nối nguồn ch&iacute;nh</span></strong></h1>

<p>Đầu nối nguồn ch&iacute;nh được sử dụng để kết nối trực tiếp bo mạch chủ với PSU. Hai loại đầu nối nguồn ch&iacute;nh thường được sử dụng phổ biến l&agrave; định dạng 20 ch&acirc;n v&agrave; 24 ch&acirc;n. Để cung cấp khả năng tương th&iacute;ch với c&aacute;c bo mạch chủ cũ c&oacute; thiết kế ổ cắm điện 20 ch&acirc;n, một số <strong>PSU</strong> cung cấp đầu nối nguồn ch&iacute;nh 20 + 4 ch&acirc;n.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số nguồn/Fuente-de-alimentaci-n-ATX-24-pin-pines-a-20-pin-20-pin-adaptador-de-Cable (1).jpg" style="width:730px" /></p>

<p>Loại đầu nối nguồn n&agrave;y rất linh hoạt, c&oacute; thể dễ d&agrave;ng sử dụng với cả bo mạch chủ 20 ch&acirc;n v&agrave; 24 ch&acirc;n. Ng&agrave;y c&agrave;ng c&oacute; nhiều bo mạch chủ cung cấp ổ cắm đầu nối nguồn 24 ch&acirc;n (nhiều bo mạch chủ c&oacute; ổ cắm 24 ch&acirc;n vẫn c&oacute; thể hoạt động với nguồn điện 20 ch&acirc;n).</p>

<h1><strong><span style="font-size:18px">4. D&acirc;y +12V</span></strong></h1>

<p>Th&ocirc;ng số kỹ thuật <strong>nguồn m&aacute;y t&iacute;nh</strong> n&agrave;y chỉ nguồn điện ch&iacute;nh m&agrave; m&aacute;y t&iacute;nh của bạn sử dụng. Vi xử l&yacute; CPU, <strong>mainboard</strong> v&agrave; <a href="https://www.tncstore.vn/vga-card-man-hinh.html" target="_blank"><strong>card m&agrave;n h&igrave;nh</strong></a>, c&ugrave;ng với c&aacute;c linh kiện kh&aacute;c đều d&ugrave;ng nguồn điện n&agrave;y.. D&ograve;ng điện 12V c&agrave;ng nhiều th&igrave; c&agrave;ng c&oacute; nhiều c&ocirc;ng suất hơn. Cần đặc biệt ch&uacute; &yacute; đến th&ocirc;ng số d&acirc;y nguồn m&aacute;y t&iacute;nh 12V nếu anh em muốn lắp nhiều card m&agrave;n h&igrave;nh cho m&aacute;y t&iacute;nh của m&igrave;nh.</p>

<h1><strong><span style="font-size:18px">5. Giao tiếp PCIe</span></strong></h1>

<p>Th&ocirc;ng số kỹ thuật <strong>nguồn m&aacute;y t&iacute;nh</strong> n&agrave;y bao gồm 6-pin, 8-pin v&agrave; 6 + 2-pin, để sử dụng với c&aacute;c <strong>card m&agrave;n h&igrave;nh</strong> cao cấp. Mỗi đầu nối PCI Express 6 ch&acirc;n c&oacute; thể xuất ra tối đa 75 W. V&agrave; mỗi đầu nối PCI Express 8 ch&acirc;n (6 + 2 ch&acirc;n) c&oacute; thể xuất ra tối đa 150 W.</p>

<h1><strong><span style="font-size:18px">6. Giao tiếp SATA</span></strong></h1>

<p style="text-align:center"><strong>Nguồn m&aacute;y t&iacute;nh</strong> c&oacute; th&ocirc;ng số n&agrave;y c&oacute; đầu nối 15 ch&acirc;n cho c&aacute;c linh kiện sử dụng giao tiếp SATA. Đầu nối n&agrave;y cấp nguồn ở ba điện &aacute;p kh&aacute;c nhau: +3.3, +5 v&agrave; +12V.<img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số nguồn/Mi-n-ph-v-n-chuy-n-12-v-DC-ATX-picoPSU-ngu-n-cung-c (1).jpg" style="width:730px" /></p>

<h1><strong><span style="font-size:18px">7. Modular</span></strong></h1>

<p>Th&ocirc;ng số kỹ thuật <strong>nguồn m&aacute;y t&iacute;nh</strong> n&agrave;y được chia l&agrave;m 3 loại: Modular, Non-Modular v&agrave; Semi-Modular.&nbsp;</p>

<p>Modular l&agrave; loại nguồn m&agrave; hệ thống d&acirc;y c&oacute; thể th&aacute;o rời, c&oacute; thể loại bỏ c&aacute;c kết nối kh&ocirc;ng cần d&ugrave;ng. Từ đ&oacute; c&oacute; thể giảm thiểu lượng điện trở kh&ocirc;ng cần thiết. Hơn nữa, c&aacute;c nguồn Modular loại bỏ nguy cơ d&acirc;y c&aacute;p lủng lẳng, cải thiện luồng kh&iacute; của vỏ m&aacute;y. Ch&iacute;nh v&igrave; vậy n&ecirc;n đ&acirc;y l&agrave; loại nguồn được d&ugrave;ng phổ biến.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số nguồn/maxresdefault (1) (1).jpg" style="width:730px" /></p>

<p>Non-Modular l&agrave; loại nguồn m&agrave; c&aacute;c d&acirc;y được gắn chặt v&agrave;o bộ nguồn v&agrave; kh&ocirc;ng thể th&aacute;o rời. Việc n&agrave;y g&acirc;y ra sự bất tiện nhất định khi anh em kh&ocirc;ng thể bỏ đi những d&acirc;y kh&ocirc;ng d&ugrave;ng. Semi-Modular l&agrave; loại nguồn kết hợp hai loại nguồn ở tr&ecirc;n.</p>

<h1><strong><span style="font-size:18px">8. Hiệu suất</span></strong></h1>

<p>Trong thời gian chuyển đổi từ điện AC sang DC, <strong>bộ nguồn</strong> lu&ocirc;n c&oacute; sự hao hụt điện năng nhất định. Th&ocirc;ng số kỹ thuật <strong>nguồn m&aacute;y t&iacute;nh</strong> n&agrave;y cho biết hiệu suất hoạt động của n&oacute;. Hầu hết c&aacute;c <strong>bộ nguồn</strong> phổ biến hiện nay đều c&oacute; chuẩn 80 Plus, nghĩa l&agrave; hiệu suất chuyển đổi điện năng đạt tối thiểu 80%.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số nguồn/photo-0-1477757417336 (1).jpg" style="width:730px" /></p>

<p>Chuẩn 80 Plus được chia th&agrave;nh 5 mức độ: Standard, Bronze, Silver, Gold, Platinum. Nguồn chuẩn Platinum c&oacute; gi&aacute; cao gấp đ&ocirc;i gấp 3 nguồn chuẩn Bronze. Nhưng kh&ocirc;ng c&oacute; nghĩa Bronze chất lượng kh&ocirc;ng tốt. Mặc d&ugrave; vậy với người d&ugrave;ng b&igrave;nh thường th&igrave; mức Silver trở xuống l&agrave; đủ d&ugrave;ng, chỉ những người d&ugrave;ng chuy&ecirc;n nghiệp về m&aacute;y t&iacute;nh đ&ograve;i hỏi nguồn điện &quot;sạch&quot; mới cần lựa chọn chuẩn Gold trở l&ecirc;n.&nbsp;</p>

<h1><strong><span style="font-size:18px">9. Tuổi thọ</span></strong></h1>

<p>Tuổi thọ thường được x&aacute;c định theo thời gian trung b&igrave;nh giữa c&aacute;c lần hỏng h&oacute;c (MTBF), MTBF cao hơn cho thấy tuổi thọ thiết bị l&acirc;u hơn v&agrave; c&oacute; độ tin cậy tốt hơn. Sử dụng c&aacute;c linh kiện chất lượng cao hoặc cung cấp khả năng l&agrave;m m&aacute;t tốt hơn c&oacute; thể g&oacute;p phần l&agrave;m tăng tuổi thọ cho bộ nguồn cũng như to&agrave;n bộ hệ thống.</p>

<p>&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số nguồn/rog-thor-2.jpg" style="width:730px" /></p>

<p>&nbsp;</p>

<p>V&agrave; đ&oacute; l&agrave; tất cả những th&ocirc;ng số kỹ thuật <strong>nguồn m&aacute;y t&iacute;nh</strong> quan trọng m&agrave; anh em n&ecirc;n biết khi lựa chọn bộ nguồn cho chiếc PC của m&igrave;nh. H&atilde;y gh&eacute; ngay <a href="https://www.tncstore.vn/" target="_blank">TNC Store</a> để nhận được những ưu đ&atilde;i lớn b&ecirc;n cạnh c&aacute;c sản phẩm chất lượng nh&eacute;!</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>
', N'/Data/images/newses/tintucmoinhat/Avatar%20bai%20viet%20(3).jpg', NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-06T13:32:55.087' AS DateTime), N'quang', CAST(N'2020-12-06T13:32:00.000' AS DateTime), NULL, 4, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (12, N'Bật mí các thông số card đồ họa quan trọng cần phải biết', N'Bật mí các thông số card đồ họa', N'bat-mi-cac-thong-so-card-do-hoa', N'Sự cạnh tranh gay gắt từ các hãng sản xuất khiến anh em luôn thấy “rối” khi chọn card màn hình. Cùng TNC bật mí các thông số card đồ họa quan trọng cần biết nhé!', N'<p><em>Sự cạnh tranh gay gắt từ c&aacute;c h&atilde;ng sản xuất khiến anh em lu&ocirc;n thấy &ldquo;rối&rdquo; khi chọn card m&agrave;n h&igrave;nh. C&ugrave;ng TNC bật m&iacute; c&aacute;c <strong>th&ocirc;ng số card đồ họa</strong> quan trọng cần biết nh&eacute;!</em></p>

<p>&nbsp;</p>

<p>Kh&ocirc;ng thể phủ nhận vai tr&ograve; quan trọng của card m&agrave;n h&igrave;nh trong một c&acirc;y m&aacute;y t&iacute;nh hay laptop. N&oacute; c&oacute; nhiệm vụ ch&iacute;nh l&agrave; xử l&yacute; đồ hoạ, kết xuất c&aacute;c h&igrave;nh ảnh 2D, 3D với độ ph&acirc;n giải cao, đạt chuẩn Full HD, 2K, 4K hoặc thậm ch&iacute; l&agrave; 8K - mức cao nhất hiện nay với RTX3090 đến từ NVIDIA.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số card đồ hoạ/title (1).jpg" style="width:800px" /></p>

<p>Ch&iacute;nh v&igrave; vậy n&ecirc;n card đồ họa l&agrave; một trong những linh kiện m&agrave; anh em quan t&acirc;m đầu ti&ecirc;n khi x&acirc;y dựng một bộ case m&aacute;y t&iacute;nh hoặc laptop. Những chiếc card với hiệu năng mạnh mẽ, c&oacute; dung lượng VRam khủng sẽ xử l&yacute; được c&aacute;c t&aacute;c vụ kết xuất đồ họa nặng, cho h&igrave;nh ảnh c&oacute; độ sắc n&eacute;t v&agrave; ch&acirc;n thực.&nbsp;</p>

<p>Tuy vậy kh&ocirc;ng phải ai cũng nắm r&otilde; những th&ocirc;ng số card đồ họa được c&aacute;c nh&agrave; ph&aacute;t h&agrave;nh c&ocirc;ng bố. H&atilde;y để TNC Store điểm qua c&aacute;c <strong>th&ocirc;ng số card đồ họa</strong> phải nắm r&otilde; để c&oacute; được sản phẩm ph&ugrave; hợp nhất nh&eacute;!&nbsp;</p>

<p>&nbsp;</p>

<h1><span style="font-size:18px"><strong>1.&nbsp;PCIe (Peripheral Component Interconnect Express)</strong></span></h1>

<p>PCI Express, viết tắt l&agrave; PCIe, l&agrave; một dạng giao diện bus hệ thống/card mở rộng của m&aacute;y t&iacute;nh. N&oacute; l&agrave; một giao diện nhanh hơn nhiều v&agrave; được thiết kế để thay thế giao diện PCI, PCI-X, v&agrave; AGP (thế hệ cũ) chuy&ecirc;n d&ugrave;ng cho c&aacute;c card mở rộng v&agrave; card đồ họa. Đ&acirc;y l&agrave; phần kết nối của card đồ họa với bo mạch chủ v&agrave; l&agrave; nơi trao đổi dữ liệu với m&aacute;y t&iacute;nh. Hầu hết <strong>card đồ họa</strong> hiện nay sử dụng giao diện PCIe x16, trong đ&oacute;, x16 thể hiện số l&agrave;n PCIe, tương ứng với k&iacute;ch thước của khe cắm.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số card đồ hoạ/sao-cong-pci-express-tren-bo-mach-chu-co-kich-thuoc-khac-nhau3 (1).jpg" title="giao tiếp PCIe thông số card màn hình" /></p>

<p>PCI Express c&oacute; hai phi&ecirc;n bản ch&iacute;nh hiện nay l&agrave; PCI Express 3.0 v&agrave; PCI Express 4.0.&nbsp; PCI Express 4.0 l&agrave; ti&ecirc;u chuẩn mới nhất thường được sử dụng v&agrave; cung cấp băng th&ocirc;ng gấp hai lần so với PCI Express 3.0, c&oacute; khả năng tương th&iacute;ch ngược v&agrave; chuyển tiếp.</p>

<p>&nbsp;</p>

<h1><span style="font-size:18px"><strong>2. Vi xử l&yacute; đồ họa (GPU - Graphic Processing Unit)</strong></span></h1>

<p>Vi xử l&yacute; đồ họa tr&ecirc;n <strong><a href="https://www.tncstore.vn/vga-card-man-hinh.html" target="_blank">card m&agrave;n h&igrave;nh</a></strong> l&agrave; một con chip xử l&yacute; chuy&ecirc;n dụng, được thiết kế đặc biệt để thực hiện c&aacute;c ph&eacute;p t&iacute;nh to&aacute;n học v&agrave; h&igrave;nh học phức tạp cần thiết để kết xuất h&igrave;nh ảnh đồ họa. Đ&acirc;y l&agrave; <strong>th&ocirc;ng số card đồ họa</strong> quan trọng v&igrave; GPU giống như CPU của 1 chiếc PC vậy.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số card đồ hoạ/GPU (1).jpg" style="width:800px" /></p>

<p style="text-align:left">&gt;&gt;&gt; Kh&aacute;m ph&aacute; ngay <a href="https://www.tncstore.vn/linh-kien-pc/vga-card-man-hinh.html" target="_blank"><strong>c&aacute;c card đồ hoạ mới nhất</strong></a> tr&ecirc;n thị trường với mức gi&aacute; đặc biệt chỉ c&oacute; tại TNC Store!</p>

<h1><span style="font-size:18px"><strong>3. Xung Nhịp GPU (Clock)</strong></span></h1>

<p>Xung nhịp GPU l&agrave; tốc độ xung xử l&yacute; dữ liệu của GPU, thường được t&iacute;nh bằng MHz. Trong đ&oacute;, mỗi GPU đều c&oacute; 2 mức xung nhịp l&agrave; <strong>Xung cơ bản (Base Clock)</strong> v&agrave; <strong>Xung nhịp tăng cường (Boost Clock)</strong></p>

<ul>
	<li><strong>Base Clock</strong> (Xung nhịp cơ bản)<strong>: </strong>L&agrave; mức xung nhịp hoạt động th&ocirc;ng thường của GPU với c&aacute;c t&aacute;c vụ đồ họa nhẹ, kh&ocirc;ng đ&ograve;i hỏi hiệu năng qu&aacute; cao.</li>
	<li><strong>Boost Clock</strong> (Xung nhịp boost): l&agrave; trạng th&aacute;i c&aacute;c chip xử l&yacute; được &eacute;p xung tự động, c&oacute; thể chạy với tần suất cao hơn b&igrave;nh thường nhưng nhiệt độ vẫn ở trong giới hạn cho ph&eacute;p do nh&agrave; sản xuất tinh chỉnh v&agrave; tối ưu sẵn.</li>
</ul>

<p>&nbsp;</p>

<h1><span style="font-size:18px"><strong>4. Nh&acirc;n CUDA (CUDA Cores)</strong></span></h1>

<p>Nh&acirc;n CUDA l&agrave; một l&otilde;i xử l&yacute; trong chip GPU của Nvidia. GPU n&agrave;o c&agrave;ng chứa nhiều nh&acirc;n CUDA th&igrave; c&agrave;ng mạnh (cũng t&ugrave;y thuộc v&agrave;o xung nhịp, k&iacute;ch thước bộ nhớ v&agrave; tần số)</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số card đồ hoạ/NVIDIA-notebook-GPUs-1 (1).jpg" style="width:800px" /></p>

<p>&nbsp;</p>

<h1><span style="font-size:18px"><strong>5. L&otilde;i vi xử l&yacute; (Stream Processor)</strong></span></h1>

<p>Đ&acirc;y l&agrave; t&ecirc;n gọi một l&otilde;i xử l&yacute; trong chip GPU của AMD. Về cơ bản th&igrave; l&otilde;i vi xử l&yacute; cũng giống như nh&acirc;n CUDA của Nvidia, GPU c&agrave;ng chứa nhiều l&otilde;i th&igrave; c&agrave;ng mạnh. Tuy nhi&ecirc;n, cấu tr&uacute;c GPU của AMD v&agrave; Nvidia l&agrave; kh&aacute;c nhau n&ecirc;n kh&ocirc;ng thể d&ugrave;ng th&ocirc;ng số n&agrave;y để so s&aacute;nh hiệu năng card đồ họa giữa hai h&atilde;ng.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số card đồ hoạ/wtkxfgu6lkc51 (1).jpg" style="width:730px" /></p>

<h1><span style="font-size:18px"><strong>6. K&iacute;ch thước bộ nhớ (Memory size)</strong></span></h1>

<p><strong>Th&ocirc;ng số card đồ hoạ n&agrave;y</strong> cho biết dung lượng bộ nhớ ram (VRAM - Video Random Access Memony) của card m&agrave;n h&igrave;nh. N&oacute; c&oacute; chức năng giống như RAM của PC. Bộ nhớ Vram c&agrave;ng lớn th&igrave; card sẽ c&agrave;ng c&oacute; nhiều chỗ trống để xử l&yacute; đồ họa, cho hiệu năng c&agrave;ng cao.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số card đồ hoạ/123.jpg" style="width:730px" /></p>

<h1><span style="font-size:18px"><strong>7. Giao diện bộ nhớ (Memory Interface)</strong></span></h1>

<p>Giao diện bộ nhớ l&agrave; chiều rộng của bus bộ nhớ m&agrave; c&aacute;c dữ liệu được truyền qua đ&oacute;. Độ rộng bus c&agrave;ng lớn th&igrave; c&agrave;ng truyền được nhiều dữ liệu trong một chu kỳ xung nhịp của Vram.</p>

<p>&nbsp;</p>

<h1><span style="font-size:18px"><strong>8. Loại bộ nhớ (Memory Type)</strong></span></h1>

<p>Đ&acirc;y l&agrave; <strong>th&ocirc;ng số card đồ họa</strong> thường thấy. Loại bộ nhớ phổ biến hiện nay l&agrave; GDDRx (V&iacute; dụ GDDR6). C&aacute;c thế hệ bộ nhớ về sau sẽ c&oacute; tốc độ v&agrave; băng th&ocirc;ng được cải thiện so với người tiền nhiệm.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số card đồ hoạ/15776883_663925100447309_7991919027877925261_o_1024x1024 (1).jpg" style="width:730px" /></p>

<h1><span style="font-size:18px"><strong>9. Tốc độ bộ nhớ (Effective Memory Clock)</strong></span></h1>

<p><strong>Th&ocirc;ng số card đồ họa</strong> n&agrave;y thể hiện xung bộ nhớ được chạy dựa tr&ecirc;n c&ocirc;ng nghệ &ldquo;quad bump&rdquo; của loại bộ nhớ GDDR5 trở l&ecirc;n, c&oacute; tốc độ gấp 4 lần tần số xung nhịp thực tế.</p>

<p>&nbsp;</p>

<h1><span style="font-size:18px"><strong>10. Thư viện đồ họa DirectX</strong></span></h1>

<p>Microsoft DirectX l&agrave; một thư viện tập hợp c&aacute;c giao diện lập tr&igrave;nh ứng dụng (API) để xử l&yacute; c&aacute;c t&aacute;c vụ đa phương tiện, đặc biệt l&agrave; lập tr&igrave;nh game v&agrave; video tr&ecirc;n nền tảng của Microsoft.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số card đồ hoạ/directx-la-gi-640 (1).jpg" style="width:730px" /></p>

<h1><span style="font-size:18px"><strong>11.&nbsp;</strong></span><strong>Thư viện đồ họa</strong><strong>&nbsp;OpenGL</strong></h1>

<p>OpenGL (Open Graphics Library) l&agrave; một thư viện tập hợp c&aacute;c giao diện lập tr&igrave;nh ứng dụng (API) đa ng&ocirc;n ngữ, đa nền tảng để kết xuất đồ họa 2D v&agrave; 3D. API thường được sử dụng để tương t&aacute;c với đơn vị xử l&yacute; đồ họa (GPU) để đạt được tốc độ kết xuất phần cứng.</p>

<p>&nbsp;</p>

<h1><span style="font-size:18px"><strong>12. Cổng HDMI (High-Definition Multimedia Interface)</strong></span></h1>

<p>HDMI (Giao diện đa phương tiện độ n&eacute;t cao) l&agrave; một giao diện &acirc;m thanh / video nhỏ gọn để truyền dữ liệu kỹ thuật số kh&ocirc;ng n&eacute;n. HDMI hỗ trợ tất cả c&aacute;c chuẩn h&igrave;nh ảnh từ ti&ecirc;u chuẩn đến độ n&eacute;t cao, cũng như t&iacute;n hiệu &acirc;m thanh đa k&ecirc;nh tr&ecirc;n duy nhất một d&acirc;y c&aacute;p.</p>

<p>&nbsp;</p>

<h1><span style="font-size:18px"><strong>13. Cổng DisplayPort&nbsp;</strong></span></h1>

<p>DisplayPort l&agrave; ti&ecirc;u chuẩn giao diện hiển thị kỹ thuật số, gi&uacute;p tối ưu việc hiển thị h&igrave;nh ảnh chất lượng cao tr&ecirc;n nhiều m&agrave;n h&igrave;nh.</p>

<p>&gt;&gt;&gt; HDMI v&agrave; DisplayPort cũng l&agrave; <a href="https://www.tncstore.vn/giai-ma-nhung-thong-so-man-hinh.html" target="_blank"><strong>th&ocirc;ng số m&agrave;n h&igrave;nh</strong></a> rất đ&aacute;ng ch&uacute; &yacute; đấy nh&eacute;!</p>

<h1><span style="font-size:18px"><strong>14. Giao diện li&ecirc;n kết mở rộng (SLI)</strong></span></h1>

<p>Giao diện li&ecirc;n kết mở rộng l&agrave; t&ecirc;n thương hiệu của c&ocirc;ng nghệ đa vi xử l&yacute; do NVIDIA ph&aacute;t triển để li&ecirc;n kết hai hoặc nhiều card đồ họa tr&ecirc;n một m&aacute;y nhằm tăng sức mạnh xử l&yacute; đồ họa.</p>

<p>&nbsp;</p>

<h1><span style="font-size:18px"><strong>15. C&ocirc;ng suất thiết kế nhiệt (TDP)</strong></span></h1>

<p>Nhắc đến <strong>th&ocirc;ng số card đồ họa</strong> m&agrave; kh&ocirc;ng nhắc đến c&ocirc;ng suất thiết kế nhiệt l&agrave; thiếu s&oacute;t lớn. N&oacute; l&agrave; lượng nhiệt tối đa được tạo ra bởi card m&agrave;n h&igrave;nh t&iacute;nh bằng watt m&agrave; hệ thống l&agrave;m m&aacute;t cần tản ra để giữ cho linh kiện lu&ocirc;n hoạt động. TDP kh&ocirc;ng phải l&agrave; lượng điện năng ch&iacute;nh x&aacute;c m&agrave; chỉ l&agrave; chỉ số chỉ định. TDP c&agrave;ng cao, card sẽ d&ugrave;ng nhiều năng lượng hơn từ nguồn điện v&agrave; c&agrave;ng cần nhiều khả năng l&agrave;m m&aacute;t hơn.</p>

<p>&nbsp;</p>

<h1><span style="font-size:18px"><strong>16. Bảo vệ nội dung số băng th&ocirc;ng cao (HDCP)</strong></span></h1>

<p>Bảo vệ nội dung số băng th&ocirc;ng cao l&agrave; một ti&ecirc;u chuẩn m&atilde; h&oacute;a d&ugrave;ng để bảo vệ nội dung số v&agrave; chống sao ch&eacute;p bất hợp ph&aacute;p. Trong đ&oacute;, phi&ecirc;n bản 2.2 ch&iacute;nh l&agrave; phi&ecirc;n bản mới v&agrave; ti&ecirc;n tiến nhất của chuẩn m&atilde; h&oacute;a n&agrave;y. Về l&yacute; thuyết th&igrave; 2.2 sẽ kh&oacute; để hack v&agrave; an to&agrave;n hơn so với c&aacute;c phi&ecirc;n bản tiền nhiệm.</p>

<p>&nbsp;</p>

<p>V&agrave; đ&oacute; l&agrave; những <strong>th&ocirc;ng số card đồ họa</strong> quan trọng m&agrave; anh em cần phải biết. H&atilde;y đến với <a href="https://www.tncstore.vn/">TNC Store</a> để rinh ngay chiếc card m&agrave;n h&igrave;nh ưng &yacute; với mức gi&aacute; tốt nhất nh&eacute;!</p>

<div>&nbsp;</div>
', N'/Data/images/newses/tintucmoinhat/GPU.jpg', NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-06T13:34:26.947' AS DateTime), N'quang', CAST(N'2020-12-06T13:34:00.000' AS DateTime), NULL, 4, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (13, N'Những thông số bàn phím cơ quan trọng cần biết trước khi mua', N'thông số bàn phím cơ quan trọng', N'thong-so-ban-phim-co-quan-trong', N'Cấu hình PC Gaming xịn thôi thì chưa đủ, một chiếc bàn phím cơ tốt sẽ giúp anh em có trải nghiệm tốt nhất. Cùng TNC tìm hiểu ngay các thông số bàn phím cơ nhé!', N'<p dir="ltr"><em>Cấu h&igrave;nh PC Gaming xịn th&ocirc;i th&igrave; chưa đủ, một chiếc b&agrave;n ph&iacute;m cơ tốt sẽ gi&uacute;p anh em c&oacute; trải nghiệm tốt nhất. C&ugrave;ng TNC t&igrave;m hiểu ngay c&aacute;c th&ocirc;ng số b&agrave;n ph&iacute;m cơ nh&eacute;!</em></p>

<p dir="ltr">&nbsp;</p>

<p dir="ltr">Hầu hết những người d&ugrave;ng m&aacute;y t&iacute;nh hiện nay đều nhận thức được tầm quan trọng của chiếc b&agrave;n ph&iacute;m. Bất cứ c&ocirc;ng việc g&igrave; tr&ecirc;n m&aacute;y t&iacute;nh như l&agrave;m văn ph&ograve;ng, chơi game, l&agrave;m đồ hoạ, render video, phim ảnh&hellip; đều cần đến b&agrave;n ph&iacute;m. Những nh&agrave; s&aacute;ng tạo nội dung, thiết kế chủ yếu l&agrave;m việc tr&ecirc;n b&agrave;n ph&iacute;m thay cho chuột v&igrave; độ tiện dụng, tiết kiệm thời gian một c&aacute;ch đ&aacute;ng kể.</p>

<p dir="ltr" style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số bàn phím cơ/razer-blackwidow-x-chroma-group-1_1024x1024 (1).jpg" style="width:730px" /></p>

<p dir="ltr">Ch&iacute;nh v&igrave; vậy, để c&ocirc;ng việc cũng như giải tr&iacute; được ho&agrave;n hảo nhất th&igrave; một chiếc <strong>b&agrave;n ph&iacute;m cơ</strong> l&agrave; kh&ocirc;ng thể thiếu đối với mọi người d&ugrave;ng m&aacute;y t&iacute;nh hiện nay, nhất l&agrave; với người d&ugrave;ng PC Gaming. H&atilde;y để TNC Store giải đ&aacute;p những <strong>th&ocirc;ng số b&agrave;n ph&iacute;m cơ</strong> quan trọng nh&eacute;!</p>

<p dir="ltr">&nbsp;</p>

<h1><span style="font-size:18px"><strong>1. B&agrave;n ph&iacute;m cơ l&agrave; g&igrave;?</strong></span></h1>

<p dir="ltr"><strong>B&agrave;n ph&iacute;m cơ</strong> sử dụng c&aacute;c n&uacute;t bấm (switch) dạng khối cứng (solid), kh&aacute;c với ph&iacute;m bấm cao su (membrane). Khi g&otilde; loại b&agrave;n ph&iacute;m n&agrave;y sẽ đem lại cho ch&uacute;ng ta cảm gi&aacute;c bấm thật sự r&otilde; r&agrave;ng v&agrave; rất &ldquo;sướng tay&rdquo;.&nbsp;</p>

<p dir="ltr">Cụ thể hơn, n&uacute;t switch c&oacute; một tiếng click nổi bật v&agrave; nghe thấy rất r&otilde;. Switch cơ cũng y&ecirc;u cầu lực bấm &iacute;t hơn tương đối nếu so với ph&iacute;m cao su th&ocirc;ng thường.&nbsp;</p>

<p dir="ltr">&nbsp;</p>

<p dir="ltr" style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số bàn phím cơ/aaa (1).jpg" style="width:730px" /></p>

<p dir="ltr" style="text-align:center">&nbsp;</p>

<p dir="ltr"><strong>C&aacute;c ph&iacute;m bấm (Switch)</strong></p>

<p dir="ltr">Switch ch&iacute;nh l&agrave; cốt l&otilde;i của b&agrave;n ph&iacute;m cơ. Một ph&iacute;m bấm (Switch) bao gồm một đế, một l&ograve; xo v&agrave; một th&acirc;n. T&ugrave;y thuộc v&agrave;o h&igrave;nh dạng của th&acirc;n, ph&iacute;m c&oacute; khả năng truyền động v&agrave; khoảng c&aacute;ch di chuyển kh&aacute;c nhau. T&ugrave;y thuộc v&agrave;o lực cản của l&ograve; xo, ph&iacute;m y&ecirc;u cầu lượng &aacute;p lực kh&aacute;c nhau để t&aacute;c động.</p>

<p dir="ltr">&nbsp;</p>

<p dir="ltr">Ch&iacute;nh v&igrave; cơ chế đ&oacute; n&ecirc;n c&oacute; nhiều loại switch kh&aacute;c nhau, nhưng tựu chung lại sẽ c&oacute; ba loại switch cơ bản như sau:</p>

<p dir="ltr"><strong>Linear</strong>: ph&iacute;m bấm c&oacute; lực nhấn đều, mượt m&agrave;, kh&ocirc;ng c&oacute; tiếng ngắt qu&atilde;ng.</p>

<p dir="ltr"><strong>Tactile</strong>: c&oacute; một lực nảy (bump) ở giữa khoảng di chuyển (travel distance), thường l&agrave; tại điểm k&iacute;ch động của switch (actuation point).</p>

<p dir="ltr"><strong>Clicky</strong>: tương tự như tactile, c&oacute; lực nảy ở khoảng di chuyển, nhưng thay v&agrave;o đ&oacute; sẽ c&oacute; một tiếng &ldquo;click&rdquo; ph&aacute;t ra từ ph&iacute;m, kh&aacute; giống với click chuột &ndash; giống như c&aacute;i t&ecirc;n Clicky của n&oacute;!</p>

<p dir="ltr">&gt;&gt;&gt; T&igrave;m hiểu th&ecirc;m về c&aacute;c loại<a href="https://www.tncstore.vn/ban-phim-co-la-gi.html" target="_blank"><strong>switch b&agrave;n ph&iacute;m cơ</strong></a> chi tiết tại đ&acirc;y!</p>

<p dir="ltr">&nbsp;</p>

<p dir="ltr" style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số bàn phím cơ/SWITCHES (1).jpg" style="width:730px" /></p>

<p dir="ltr" style="text-align:center">&nbsp;</p>

<p dir="ltr">Hiện nay c&oacute; rất nhiều c&aacute;c h&atilde;ng sản xuất <strong>b&agrave;n ph&iacute;m cơ</strong> theo switch đặc trưng của h&atilde;ng đ&oacute;. Trong đ&oacute; <strong>Switch Cherry</strong> vẫn l&agrave; thương hiệu được đ&ocirc;ng đảo người d&ugrave;ng ưa chuộng bởi độ bền cao cũng như h&agrave;nh tr&igrave;nh ph&iacute;m bấm rất tốt. Tuy vậy, với sự tham gia đ&ocirc;ng đảo của nhiều &ocirc;ng lớn trong l&agrave;ng gaming gear th&igrave; anh em cũng c&oacute; rất nhiều lựa chọn với mẫu m&atilde; đa dạng.</p>

<p dir="ltr">&nbsp;</p>

<p dir="ltr" style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số bàn phím cơ/1.jpg" style="width:730px" /></p>

<p dir="ltr">&nbsp;</p>

<p dir="ltr">Kh&ocirc;ng chỉ vậy, khung, chức năng, phương ph&aacute;p in, cấu tạo ph&iacute;m, bảng mạch PCB, đ&egrave;n LED (độ sắc n&eacute;t, độ s&aacute;ng, khả năng điều chỉnh) v&agrave; một loạt c&aacute;c t&iacute;nh năng kh&aacute;c vượt trội hơn nhiều so với b&agrave;n ph&iacute;m cao su truyền thống. Hầu hết những cải tiến n&agrave;y đều tập trung v&agrave;o một điều - sự cảm nhận của người d&ugrave;ng.&nbsp;</p>

<h1><strong><span style="font-size:18px">2. Giao tiếp b&agrave;n ph&iacute;m</span></strong></h1>

<p dir="ltr">Giao tiếp b&agrave;n ph&iacute;m được sử dụng để kết nối <strong>b&agrave;n ph&iacute;m cơ</strong> với <strong>PC Gaming</strong>. C&aacute;c ứng dụng tr&ecirc;n PC c&oacute; thể sử dụng giao diện để lấy đầu v&agrave;o tổ hợp ph&iacute;m. Khi dữ liệu từ b&agrave;n ph&iacute;m đến, giao tiếp sẽ nhận t&iacute;n hiệu để cho ph&eacute;p CPU xử l&yacute; đầu v&agrave;o v&agrave; để ứng dụng phản hồi lại. Giao tiếp b&agrave;n ph&iacute;m bao gồm PS/2 (kiểu cũ) v&agrave; USB.</p>

<p dir="ltr">&nbsp;</p>

<p dir="ltr" style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số bàn phím cơ/vn_file_ (3).jpg" style="width:730px" /></p>

<p dir="ltr">&gt;&gt;&gt; Tham khảo ngay c&aacute;c <a href="https://www.tncstore.vn/ban-phim-co.html" target="_blank"><strong>b&agrave;n ph&iacute;m cơ</strong></a> gaming đang rất hot tại TNC Store nh&eacute;!</p>

<p dir="ltr">&nbsp;</p>

<h1><strong><span style="font-size:18px">3. Keycap</span></strong></h1>

<p dir="ltr"><strong>Keycap</strong> ch&iacute;nh l&agrave; vỏ của mỗi ph&iacute;m tr&ecirc;n <strong>b&agrave;n ph&iacute;m cơ gaming</strong>. Profile keycap l&agrave; độ nghi&ecirc;ng v&agrave; độ cao của keycap. Tuỳ thuộc mỗi h&atilde;ng sản xuất m&agrave; keycap v&agrave; profile được l&agrave;m bằng chất liệu v&agrave; c&oacute; đặc trưng kh&aacute;c nhau.&nbsp;</p>

<p dir="ltr">C&aacute;c loại nhựa được sử dụng để l&agrave;m keycaps bao gồm: ABS, PBT, PC, POM, PVC, thậm ch&iacute; cả l&agrave; cả kim loại.&nbsp;</p>

<p dir="ltr"><strong>Nhựa ABS</strong> rất bền v&agrave; kh&oacute; vỡ. Tuy vậy c&aacute;c h&igrave;nh, chi tiết tr&ecirc;n ph&iacute;m dễ bị đổi m&agrave;u v&agrave; b&oacute;ng khi sử dụng l&acirc;u. Đ&acirc;y l&agrave; loại nhựa được sử dụng rất phổ biến trong sản xuất keycap.</p>

<p dir="ltr" style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số bàn phím cơ/keycap-la-gi-2 (1).jpg" style="width:730px" /></p>

<p dir="ltr" style="text-align:center">&nbsp;</p>

<p dir="ltr"><strong>Nhựa PBT</strong> th&igrave; tr&aacute;i ngược ho&agrave;n to&agrave;n so với ABS, kh&ocirc;ng bị b&oacute;ng hay ngả m&agrave;u khi sử dụng n&ecirc;n được &aacute;p dụng nhiều tr&ecirc;n c&aacute;c b&agrave;n ph&iacute;m cơ trang tr&iacute; nhiều hoạ tiết như AKKO.</p>

<p dir="ltr" style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số bàn phím cơ/keycap-la-gi-3-1024x602 (1).jpg" style="width:730px" /></p>

<p dir="ltr" style="text-align:center">&nbsp;</p>

<p dir="ltr"><strong>Nhựa PC</strong> được sử dụng tr&ecirc;n c&aacute;c b&agrave;n ph&iacute;m cơ sử dụng đ&egrave;n LED do đặc t&iacute;nh trong suốt. Tuy nhi&ecirc;n loại nhựa n&agrave;y kh&aacute; hiếm n&ecirc;n kh&ocirc;ng được sử dụng nhiều.</p>

<p dir="ltr" style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số bàn phím cơ/keycap-la-gi-4 (1).jpg" style="width:730px" /></p>

<p dir="ltr" style="text-align:center">&nbsp;</p>

<p dir="ltr"><strong>Nhựa POM</strong> c&oacute; chất lượng tốt nhất nhưng gi&aacute; th&agrave;nh cũng rất đắt, chỉ c&oacute; những h&atilde;ng sản xuất muốn sản phẩm thuộc h&agrave;ng hiếm, độc quyền mới sử dụng.</p>

<p dir="ltr" style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số bàn phím cơ/keycap-la-gi-5 (1).jpg" style="width:730px" /></p>

<p dir="ltr" style="text-align:center">&nbsp;</p>

<p dir="ltr"><strong>Nhựa PVC</strong> c&oacute; độ phổ biến đứng sau ABS, c&oacute; độ bền cao nhưng thường kh&ocirc;ng chịu được nhiệt độ qu&aacute; n&oacute;ng.</p>

<p dir="ltr">&nbsp;</p>

<h1><strong><span style="font-size:18px">4. Kiểu kết nối b&agrave;n ph&iacute;m</span></strong></h1>

<p dir="ltr">Th&ocirc;ng số<strong> b&agrave;n ph&iacute;m cơ</strong> n&agrave;y cho biết c&aacute;ch b&agrave;n ph&iacute;m kết nối với m&aacute;y t&iacute;nh. C&oacute; hai loại kết nối ch&iacute;nh l&agrave; c&oacute; d&acirc;y v&agrave; kh&ocirc;ng d&acirc;y (bluetooth)</p>

<p dir="ltr" style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số bàn phím cơ/jpg_imgeng=_.jpg" style="width:960px" /></p>

<h1><strong><span style="font-size:18px">5. LED RGB</span></strong></h1>

<p dir="ltr">Với xu hướng đề cao t&iacute;nh thẩm mỹ th&igrave; hầu hết mọi linh kiện cũng như thiết bị ngoại vi tr&ecirc;n m&aacute;y t&iacute;nh đều c&oacute; hỗ trợ LED RGB nhằm n&acirc;ng cao trải nghiệm cho người d&ugrave;ng. C&aacute;c b&agrave;n ph&iacute;m cơ hiện nay cũng kh&ocirc;ng nằm ngo&agrave;i xu thế đ&oacute;. Tuy nhi&ecirc;n kh&ocirc;ng phải chiếc b&agrave;n ph&iacute;m n&agrave;o cũng c&oacute; hỗ trợ đ&egrave;n LED RGB v&agrave; anh em n&ecirc;n để &yacute; kỹ trước khi mua.</p>

<p dir="ltr" style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số bàn phím cơ/3 (1).jpg" style="width:730px" /></p>

<p dir="ltr">&nbsp;</p>

<p dir="ltr">V&agrave; đ&oacute; l&agrave; tất cả những th&ocirc;ng số <strong>b&agrave;n ph&iacute;m cơ</strong> quan trọng. <a href="https://www.tncstore.vn/" target="_blank"><strong>TNC Store</strong></a> xin ch&uacute;c anh em t&igrave;m được chiếc b&agrave;n ph&iacute;m cơ ưng &yacute; nhất nh&eacute;!</p>

<p dir="ltr">&nbsp;</p>

<p dir="ltr">&nbsp;</p>

<p dir="ltr">&nbsp;</p>

<p dir="ltr">&nbsp;</p>

<p dir="ltr">&nbsp;</p>

<p><br />
&nbsp;</p>
', N'/Data/images/newses/tintucmoinhat/Avatar%20bai%20viet%20(4).jpg', NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-06T13:34:48.707' AS DateTime), N'quang', CAST(N'2020-12-06T13:34:00.000' AS DateTime), NULL, 4, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (14, N'Giành lợi thế CỰC LỚN trên chiến trường với NVIDIA GeForce RTX 3000 Series', N'Tặng game khi mua card đồ hoạ RTX 3000 Series', N'tang-game-khi-mua-card-do-hoa-rtx-3000-series', N'Hãy lựa chọn đồng minh một cách khôn ngoan. Với card đồ hoạ thế hệ mới nhất đến từ NVIDIA, chiến thắng là điều quá đơn giản!', N'<p><em>H&atilde;y lựa chọn đồng minh một c&aacute;ch kh&ocirc;n ngoan. Với card đồ hoạ thế hệ mới nhất đến từ NVIDIA, chiến thắng l&agrave; điều qu&aacute; đơn giản!</em></p>

<p><em>&nbsp;</em></p>

<p>Từ ng&agrave;y 30/10 đến 10/12/2020, khi anh em mua c&aacute;c card đồ hoạ NIVIDA GeForce RTX 3080 hoặc RTX 3090 sẽ được tặng ngay phi&ecirc;n bản mới nhất từ d&ograve;ng game Call of Duty nổi tiếng: CoD: Cold War.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/CPU Avengers/cod (1).png" style="width:730px" /></p>

<p>Lưu &yacute;: Khi mua card đồ hoạ hoặc build <strong>PC Gaming</strong>, anh em nhớ nhanh tay thực ngay c&aacute;c bưới tại đ&acirc;y để nhận game nh&eacute;! Mỗi sản phẩm c&oacute; 1 code game duy nhất!</p>

<p>&nbsp;</p>

<h1><strong><span style="font-size:18px">1. Đối tượng sản phẩm</span></strong></h1>

<p>Chất lượng đồ hoạ l&ecirc;n đỉnh cao mới với GeForce RTX 3000 Series đến từ NVIDIA. Với Ray Traycing c&ugrave;ng kết xuất AI đột ph&aacute;, RTX 3000 Series hứa hẹn mang đến trải nghiệm gaming ch&acirc;n thực nhất.</p>

<p>Kh&ocirc;ng chỉ vậy, c&ocirc;ng nghệ NVIDIA Reflex hoạt động tr&ecirc;n m&agrave;n h&igrave;nh NVIDIA&reg; G-SYNC&reg; khiến RTX 3000 Series đạt độ nhạy tốt nhất v&agrave; độ trễ thấp nhất, gi&uacute;p c&aacute;c game thủ gi&agrave;nh thế chủ động tr&ecirc;n chiến trường - nơi chiến thắng được ph&acirc;n định qua từng mili gi&acirc;y.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/CPU Avengers/colorful-rtx3000 (1).jpg" style="width:730px" /></p>

<p>&gt;&gt;&gt; NHANH TAY SẮM NGAY SẢN PHẨM CỰC XỊN S&Ograve; TẠI:</p>

<p><a href="https://www.tncstore.vn/index.php?route=product/search&amp;search=rtx+3080&amp;category_id=0&amp;fbclid=IwAR0roHGmE0j_Jld1WM-IWUhFLlTHzsIu1Q_72-OWK1VytlOwk1bbFZ7fnGM" target="_blank"><strong>NIVIDA GeForce RTX 3080</strong></a></p>

<p><strong><a href="https://www.tncstore.vn/index.php?route=product/search&amp;search=rtx+3090&amp;category_id=0&amp;fbclid=IwAR2GOZ4TwGd51nW0-LaeHX3i9r6Oskro5_X6_yUUbMg8Wg-O1i9pS3rfc_Y" style="background-color: rgb(255, 255, 255);" target="_blank">NIVIDA GeForce RTX 3090</a></strong></p>

<p>&gt;&gt;&gt; Nếu anh em vẫn đang băn khoăn liệu về việc x&acirc;y dựng cấu h&igrave;nh PC Gaming&nbsp;ph&ugrave; hợp với &ldquo;hai &ocirc;ng lớn&rdquo; tr&ecirc;n, h&atilde;y nhanh tay tham khảo ngay d&ograve;ng <a href="https://www.tncstore.vn/gaming-pc.html?attribute_id=211" target="_blank"><strong>PC Gaming</strong></a> Sentinel tại <strong>TNC Store </strong>nh&eacute;!</p>

<p>&nbsp;</p>

<h1><strong><span style="font-size:18px">2. Hướng dẫn k&iacute;ch hoạt code game&nbsp;</span></strong></h1>

<p>Sau khi anh em mua sản phẩm, vui l&ograve;ng thực hiện những bước sau để k&iacute;ch hoạt code game:</p>

<p>1. C&agrave;i đặt v&agrave; update driver card đồ họa.</p>

<p>2. Cập nhật hoặc c&agrave;i đặt phi&ecirc;n bản GeForce Experience mới nhất. (<a href="https://www.nvidia.com/vi-vn/geforce/geforce-experience/" target="_blank">Phi&ecirc;n bản 3.18</a> trở l&ecirc;n)</p>

<p>3. Mở v&agrave; đăng nhập v&agrave;o GeForce Experience.</p>

<p>4. Chuyển đến menu mục T&agrave;i khoản v&agrave; chọn &ldquo;REDEEM&rdquo;.</p>

<p>5. Nhập m&atilde; khuyến m&atilde;i của bạn nhận được khi mua card.</p>

<p>6. L&agrave;m theo c&aacute;c hướng dẫn c&ograve;n lại tr&ecirc;n m&agrave;n h&igrave;nh để đăng nhập th&ocirc;ng qua t&agrave;i khoản Battle.net của bạn.</p>

<p>7. Chọn &quot;REDEEM&quot; để đổi Call of Duty: Black Ops Cold War v&agrave;o t&agrave;i khoản Battle.net của bạn.</p>

<p>8. Chọn &ldquo;LAUNCH BATTLE.NET&rdquo; để ho&agrave;n tất v&agrave; c&agrave;i đặt game.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/CPU Avengers/ssss (1).png" style="width:730px" /></p>

<p>Anh em lưu &yacute; th&ecirc;m khi mua c&aacute;c sản phẩm card đồ hoạ RTX 3080, RTX 3090 tại TNC Store l&agrave; li&ecirc;n hệ ngay với đội ngũ b&aacute;n h&agrave;ng để nhận được code game Call of Duty: Cold War nh&eacute;!&nbsp;</p>

<p>&nbsp;</p>

<p>Do thời gian&nbsp; c&oacute; hạn n&ecirc;n c&ograve;n chần chừ g&igrave; nữa, h&atilde;y sắm ngay cấu h&igrave;nh <strong>PC Gaming</strong> khủng để chiến mọi game MAX Settings với chất lượng đồ hoạ tuyệt đỉnh c&ugrave;ng RTX 3000 Series!!!</p>

<p>&nbsp;</p>
', N'/Data/images/newses/tintucmoinhat/Avatar%20bai%20viet%20RTX%203000%20(1).jpg', NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-06T13:35:00.877' AS DateTime), N'quang', CAST(N'2020-12-06T13:34:00.000' AS DateTime), NULL, 4, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (15, N'Thông số tai nghe gaming có nổi bật hơn các tai nghe khác?', N'Thông số tai nghe gaming nổi bật', N'thong-so-tai-nghe-gaming-noi-bat', N'Âm thanh là một phần không thể thiếu mỗi khi anh em chơi những tựa game mình yêu thích. Hãy cùng TNC điểm qua các thông số tai nghe gaming quan trọng nhé!', N'<p><em>&Acirc;m thanh l&agrave; một phần kh&ocirc;ng thể thiếu mỗi khi anh em chơi những tựa game m&igrave;nh y&ecirc;u th&iacute;ch. H&atilde;y c&ugrave;ng TNC điểm qua c&aacute;c th&ocirc;ng số tai nghe gaming quan trọng nh&eacute;!</em></p>

<p>&nbsp;</p>

<p>Nếu chỉ c&oacute; h&igrave;nh ảnh chất lượng cao, đồ hoạ đẹp, bộ b&agrave;n ph&iacute;m, chuột gaming xịn&hellip; nhưng thiếu đi &acirc;m thanh th&igrave; sẽ kh&ocirc;ng thể n&agrave;o l&agrave;m n&ecirc;n những khoảnh khắc đ&aacute;ng nhớ. C&aacute;c nh&agrave; l&agrave;m game hiện nay ng&agrave;y một đầu tư v&agrave;o phần &acirc;m thanh như nhạc nền, nhạc gameplay&hellip; Thậm ch&iacute; thu&ecirc; cả một d&agrave;n nhạc như c&aacute;c tựa game đ&igrave;nh đ&aacute;m của Naughty Dog.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Thông số tai nghe gaming/GameSound-e1439426681413 (1).jpg" style="width:730px" /></p>

<p>Ch&iacute;nh v&igrave; l&yacute; do đ&oacute; n&ecirc;n một chiếc tai nghe gaming tốt sẽ mang đến trải nghiệm v&ocirc; c&ugrave;ng tuyệt vời với những cảm x&uacute;c rất đặc trưng trong mỗi tựa game kh&aacute;c nhau. Những tiếng bom đạn khốc liệt trong Call of Duty, kh&uacute;c ca du dương trong Genshin Impact&hellip; đều tạo n&ecirc;n những khoảnh khắc kh&oacute; qu&ecirc;n.&nbsp;</p>

<p>Vậy như n&agrave;o l&agrave; một chiếc <strong>tai nghe gaming</strong> tốt? C&oacute; điểm nổi bật g&igrave; so với c&aacute;c tai nghe th&ocirc;ng thường? C&ugrave;ng TNC kh&aacute;m ph&aacute; ngay c&aacute;c th&ocirc;ng số tai nghe gaming quan trọng nh&eacute;!</p>

<p>&nbsp;</p>

<h1><strong><span style="font-size:18px">1. Tr&igrave;nh điều khiển (Driver)</span></strong></h1>

<p>Anh em n&agrave;o quan t&acirc;m về c&ocirc;ng nghệ hẳn đều biết driver l&agrave; một tr&igrave;nh điều khiển mỗi linh kiện cụ thể n&agrave;o đ&oacute; như <strong><a href="https://www.tncstore.vn/bat-mi-cac-thong-so-card-do-hoa.html" target="_blank">card đồ họa</a></strong>, mạng, m&agrave;n h&igrave;nh&hellip;V&agrave; tai nghe cũng tương tự như vậy.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Thông số tai nghe gaming/dynamic-driver-unit.jpeg (1).jpg" style="width:730px" /></p>

<p>Tr&igrave;nh điều khiển l&agrave; bộ phận tạo ra &acirc;m thanh trong tai nghe, được tạo th&agrave;nh từ nam ch&acirc;m, m&agrave;ng loa v&agrave; c&aacute;c th&agrave;nh phần kh&aacute;c. Chất lượng &acirc;m thanh của tai nghe phụ thuộc rất nhiều v&agrave;o k&iacute;ch thước của m&agrave;ng loa, được biểu thị bằng đường k&iacute;nh m&agrave;ng loa.&nbsp;</p>

<p>Hầu hết c&aacute;c tr&igrave;nh điều khiển cho đường k&iacute;nh 13,5&ndash;15,4 mm, với đường k&iacute;nh d&agrave;nh cho tai nghe trong tai l&agrave; 8,8&ndash;12,5 mm. Tr&igrave;nh điều khiển tai nghe gaming tr&ugrave;m đầu nằm trong phạm vi 30&ndash;53 mm.</p>

<h1><strong><span style="font-size:18px">2. Tần số đ&aacute;p ứng</span></strong></h1>

<p>Th&ocirc;ng số tai nghe gaming n&agrave;y cho biết dải tần số &acirc;m thanh tối đa được t&aacute;i tạo, từ nốt trầm nhất cho đến nốt cao nhất, được đo bằng Hz. Dải tần tai người nghe được th&ocirc;ng thường l&agrave; trong khoảng 20 &ndash; 20,000 Hz, tuy nhi&ecirc;n nhiều tai nghe c&oacute; thể đến tận 28000 Hz, như một số sản phẩm của Sennheiser, c&oacute; nốt cao trong hơn.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Thông số tai nghe gaming/headset-2x1-gettyimages-1132282369.png_crop=0.655xw_0.984xh;0 (1).jpg" style="width:730px" /></p>

<p>Kh&aacute;c với c&aacute;c tai nghe gaming cao cấp, c&aacute;c tai nghe th&ocirc;ng thường c&oacute; vật liệu kỹ thuật kh&ocirc;ng đ&aacute;p ứng được tần số cao n&ecirc;n dễ nghe thấy tiếng h&uacute;, rất kh&oacute; chịu trong khi sử dụng.</p>

<p>&gt;&gt;&gt; Tham khảo ngay c&aacute;c <a href="https://www.tncstore.vn/tai-nghe-choi-game.html" target="_blank"><strong>tai nghe gaming</strong></a> tốt nhất tại TNC Store nh&eacute;!</p>

<h1><strong><span style="font-size:18px">3. Trở kh&aacute;ng</span></strong></h1>

<p>Như mọi đồ điện tử kh&aacute;c, tai nghe gaming cũng c&oacute; trở kh&aacute;ng. Đ&oacute; l&agrave; điện trở của tai nghe đối với d&ograve;ng điện chạy qua ch&uacute;ng v&agrave; được đo bằng Ohm (&Omega;).</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Thông số tai nghe gaming/12.jpg" style="width:730px" /></p>

<p>Tai nghe gaming c&oacute; trở kh&aacute;ng c&agrave;ng thấp th&igrave; c&agrave;ng tốt v&igrave; giảm thiểu được t&igrave;nh trạng l&atilde;ng ph&iacute; điện v&agrave; thường những chiếc tai nghe n&agrave;y c&oacute; độ bền cao hơn.</p>

<h1><strong><span style="font-size:18px">4. Độ nhạy</span></strong></h1>

<p>Độ nhạy của một chiếc <strong>tai nghe gaming</strong>&nbsp; l&agrave; ph&eacute;p đo hiệu quả của bộ tai nghe, t&iacute;nh bằng dB&nbsp; tr&ecirc;n mỗi miliwatt đầu v&agrave;o. Ở c&ugrave;ng một mức &acirc;m thanh đầu v&agrave;o, tai nghe n&agrave;o c&oacute; độ nhạy lớn hơn sẽ ph&aacute;t ra &acirc;m thanh to hơn. Nếu bạn muốn ph&aacute;t nhạc ở &acirc;m lượng lớn, bạn n&ecirc;n t&igrave;m tai nghe c&oacute; độ nhạy từ 100dB trở l&ecirc;n.</p>

<h1><strong><span style="font-size:18px">5. Khớp nối tai</span></strong></h1>

<p>Khớp nối của tai nghe đề cập đến thiết kế của tai nghe v&agrave; c&aacute;ch n&oacute; ph&ugrave; hợp với tai của bạn.&nbsp;</p>

<p>Tuỳ thuộc v&agrave;o loại khớp nối sẽ c&oacute; c&aacute;c loại tai nghe gaming kh&aacute;c nhau. C&oacute; ba thiết kế phổ biến cho khớp nối tai bao gồm circumaural, supra-aural, and intra-aural.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Thông số tai nghe gaming/HeadphoneTestingFigure5 (1).jpg" style="width:400px" /></p>

<p>Circumaural c&oacute; nghĩa l&agrave; tai nghe bao bọc tai của bạn bằng c&aacute;c miếng đệm lớn, chẳng hạn như tai nghe over-the-ear hay full size. Tai nghe Supra-aural c&oacute; trọng lượng nhẹ hơn, kh&ocirc;ng &ocirc;m trọn tai v&agrave; kh&ocirc;ng phổ biến bằng circumaural.</p>

<p>Nhỏ gọn hơn ch&uacute;ng ta sẽ c&oacute; tai nghe Intra-aural v&agrave; In-ear. Tuy nhi&ecirc;n c&aacute;c tai nghe gaming thường kh&ocirc;ng sử dụng kiểu thiết kế n&agrave;y.</p>

<h1><strong><span style="font-size:18px">6. Microphone</span></strong></h1>

<p>Đ&acirc;y ch&iacute;nh l&agrave; th&ocirc;ng số nổi bật của một chiếc tai nghe gaming so với c&aacute;c tai nghe th&ocirc;ng thường. Đối với c&aacute;c game thủ chuy&ecirc;n nghiệp th&igrave; một chiếc microphone tốt l&agrave; kh&aacute; quan trọng v&igrave; chiến thắng trong những trận đấu đồng đội chủ yếu phụ thuộc v&agrave;o việc phối hợp với cả nh&oacute;m.&nbsp;</p>

<p>Cũng như phần tai nghe, microphone c&oacute; trở kh&aacute;ng, tần số đ&aacute;p ứng v&agrave; độ nhạy.&nbsp;</p>

<p>Một micro trở kh&aacute;ng cao c&oacute; trở kh&aacute;ng từ 10.000 đến 100.000 ohms v&agrave; c&oacute; gi&aacute; kh&aacute; rẻ. Nhược điểm ch&iacute;nh của ch&uacute;ng l&agrave; ch&uacute;ng kh&ocirc;ng hoạt động tốt tr&ecirc;n c&aacute;p khoảng c&aacute;ch xa - sau khoảng 5 hoặc 10 m&eacute;t, ch&uacute;ng bắt đầu tạo ra &acirc;m thanh chất lượng k&eacute;m (đặc biệt l&agrave; mất tần số cao).</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Thông số tai nghe gaming/Top-10-Best-Gaming-Headsets-In-2019 (1).jpg" style="width:730px" /></p>

<p>C&aacute;c mic trở kh&aacute;ng thấp c&oacute; trở kh&aacute;ng từ 50 đến 600 ohms, phổ biến nhất l&agrave; 150 đến 250 ohms, với khả năng truyền &acirc;m thanh rất tốt.</p>

<p>Tần số đ&aacute;p ứng đề cập đến c&aacute;ch micro phản hồi với c&aacute;c tần số kh&aacute;c nhau. V&iacute; dụ: tần số đ&aacute;p ứng cao c&oacute; nghĩa l&agrave; đầu ra &acirc;m thanh thu được sẽ nghe hay hơn &acirc;m thanh gốc.</p>

<p>Độ nhạy của micro l&agrave; độ lớn của &acirc;m lượng c&oacute; thể ghi lại cho một t&iacute;n hiệu nhất định. V&iacute; dụ ở một t&iacute;n hiệu nhất định, một micr&ocirc; c&oacute; thể ghi lại t&iacute;n hiệu ở mức thấp; do đ&oacute;, n&oacute; c&oacute; độ nhạy thấp. Đối với c&ugrave;ng một t&iacute;n hiệu đ&oacute;, một micro kh&aacute;c c&oacute; thể ghi lại t&iacute;n hiệu ở mức lớn; do đ&oacute;, n&oacute; c&oacute; độ nhạy cao.</p>

<h1><strong><span style="font-size:18px">7. Kết nối</span></strong></h1>

<p>C&aacute;c <strong>tai nghe gaming</strong> hiện nay c&oacute; hai kiểu kết nối ch&iacute;nh l&agrave; USB v&agrave; jack cắm 3.5 mm, đều ph&ugrave; hợp với c&aacute;c thiết bị điện tử hiện nay n&ecirc;n anh em kh&ocirc;ng cần qu&aacute; lo lắng về phần kết nối.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Thông số tai nghe gaming/vn_file_ (4) (1).jpg" style="width:730px" /></p>

<p>V&agrave; đ&oacute; ch&iacute;nh l&agrave; những th&ocirc;ng số tai nghe gaming quan trọng m&agrave; anh em cần ch&uacute; &yacute; khi mua sắm. H&atilde;y thường xuy&ecirc;n gh&eacute; thăm <strong><a href="https://www.tncstore.vn/" target="_blank">TNC Store</a></strong> để cập nhật những tin tức về c&ocirc;ng nghệ hữu &iacute;ch nhất nh&eacute;!</p>

<p>&nbsp;</p>

<p>&gt;&gt;&gt; Tham khảo th&ecirc;m c&aacute;c b&agrave;i viết tương tự:</p>

<p>Những th&ocirc;ng số b&agrave;n ph&iacute;m cơ quan trọng cần biết trước khi mua:&nbsp;<a href="https://www.tncstore.vn/thong-so-ban-phim-co-quan-trong.html">https://www.tncstore.vn/thong-so-ban-phim-co-quan-trong.html</a></p>

<p>C&aacute;ch lựa chọn chuột gaming th&ocirc;ng minh:&nbsp;https://www.tncstore.vn/cach-lua-chon-chuot-gaming.html</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>
', N'/Data/images/newses/tintucmoinhat/Avatar%20bai%20viet%20(5).jpg', NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-06T13:35:13.547' AS DateTime), N'quang', CAST(N'2020-12-06T13:35:00.000' AS DateTime), NULL, 4, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (16, N'Bàn phím cơ là gì ? | Kiến Thức Cơ Bản Khi Lựa Chọn Phím Cơ', N'Bàn phím cơ là gì ?', N'ban-phim-co-la-gi', N'Bàn phím cơ (mechanical keyboard) đã dần trở nên quen thuộc đối với những ai đam mê với máy tính cá nhân nói chung ...', N'<p style="text-align:justify">&nbsp;&nbsp;&nbsp;&nbsp;Nếu như bạn d&agrave;nh nhiều thời gian sử dụng chiếc m&aacute;y t&iacute;nh của m&igrave;nh, bất kể đ&oacute; l&agrave; c&ocirc;ng việc văn ph&ograve;ng, lướt web t&aacute;n gẫu với bạn b&egrave;, hay chơi game giải tr&iacute; vui vẻ, hoặc thậm ch&iacute; l&agrave; thi đấu game một c&aacute;ch nghi&ecirc;m t&uacute;c, v.v &hellip; Th&igrave; việc sử dụng một chiếc <a href="http://www.tncstore.vn/gaming-gear/ban-phim-gaming/ban-phim-co.html" target="_blank">b&agrave;n ph&iacute;m cơ</a> (tiếng Anh gọi l&agrave; Mechanical Keyboard) l&agrave; một điều m&agrave; bạn cần phải xem x&eacute;t cũng như quyết định một c&aacute;ch sớm nhất v&agrave; ch&iacute;nh x&aacute;c nhất. B&agrave;i viết h&ocirc;m nay sẽ gi&uacute;p c&aacute;c bạn t&igrave;m hiểu được tốt nhất những kiến thức cơ bản về b&agrave;n ph&iacute;m cơ.&nbsp;</p>

<p style="text-align:justify"><img src="https://tncstore.cdn.vccloud.vn/image/catalog/BAI VIET/Phím cơ/1677451b4f15476a74ff5cf015a2aea4-970-80.jpg" style="width:750px" title="" /></p>

<p style="text-align:justify">---------------------------------------------</p>

<h1 style="text-align:justify"><strong><span style="font-size:24px">B&agrave;n ph&iacute;m cơ l&agrave; g&igrave; ?</span></strong></h1>

<p style="text-align:justify">&nbsp;&nbsp;&nbsp;&nbsp;Để hiểu một c&aacute;ch đơn giản, th&igrave; b&agrave;n ph&iacute;m cơ sử dụng c&aacute;c n&uacute;t bấm (hay gọi nhanh theo tiếng Anh l&agrave; switch) dạng khối cứng (solid), kh&aacute;c với ph&iacute;m bấm cao su phổ th&ocirc;ng (membrane) m&agrave; ch&uacute;ng ta hay gặp thường ng&agrave;y. Một chiếc b&agrave;n ph&iacute;m cơ khi g&otilde;, sẽ đem lại cho ch&uacute;ng ta cảm gi&aacute;c bấm thật sự r&otilde; r&agrave;ng v&agrave; rất &ldquo;sướng tay&rdquo;. Cụ thể hơn, c&aacute;c switch cơ học n&agrave;y c&oacute; một tiếng click nổi bật v&agrave; r&otilde;, c&ugrave;ng với đ&oacute; l&agrave; việc y&ecirc;u cầu lực bấm &iacute;t hơn tương đối nếu so với ph&iacute;m cao su th&ocirc;ng thường. V&agrave; như đ&atilde; n&oacute;i ở phần mở đầu, nếu bạn thực sự d&agrave;nh nhiều thời gian b&ecirc;n chiếc m&aacute;y t&iacute;nh của m&igrave;nh, th&igrave; một chiếc b&agrave;n ph&iacute;m cơ ph&ugrave; hợp sẽ l&agrave; một người bạn đồng h&agrave;nh v&ocirc; c&ugrave;ng th&acirc;n thiết v&agrave; gần gũi, v&agrave; khiến cho trải nghiệm d&ugrave;ng m&aacute;y t&iacute;nh của bạn trở n&ecirc;n th&uacute; vị v&agrave; hiệu quả hơn rất nhiều.&nbsp;</p>

<p style="text-align:justify">---------------------------------------------</p>

<h1><strong><span style="font-size:24px">T&igrave;m hiểu về c&aacute;c loại switch</span></strong></h1>

<p style="text-align:justify">&nbsp;&nbsp;&nbsp;&nbsp;Nếu như trước đ&acirc;y, khi lựa chọn b&agrave;n ph&iacute;m, bạn chỉ c&oacute; thể lựa chọn giữa b&agrave;n ph&iacute;m cao su th&ocirc;ng thường v&agrave; b&agrave;n ph&iacute;m cơ c&oacute; switch được sản xuất bởi h&atilde;ng Cherry đến từ nước Đức. Nhưng với thời điểm hiện tại, điều đ&oacute; đ&atilde; kh&ocirc;ng c&ograve;n đ&uacute;ng nữa. Bởi v&igrave; hiện nay, tr&ecirc;n thị trường, c&oacute; v&ocirc; số c&aacute;c loại switch kh&aacute;c nhau đến từ nhiều h&atilde;ng sản xuất, với nhiều đặc t&iacute;nh đa dạng kh&aacute;c nhau. Đối với những người mới tiếp cận đến ph&iacute;m cơ, hay kể cả với những người đ&atilde; c&oacute; kha kh&aacute; kinh nghiệm, một t&aacute; những lựa chọn như vậy c&oacute; thể sẽ g&acirc;y cản trờ. Dưới đ&acirc;y l&agrave; một số th&ocirc;ng k&ecirc; v&agrave; so s&aacute;nh cụ thể đối với h&agrave;ng loạt c&aacute;c loại switch b&agrave;n ph&iacute;m cơ hiện c&oacute; phổ biến tr&ecirc;n thị trường hiện nay.</p>

<p style="text-align:justify">&nbsp;&nbsp;&nbsp;&nbsp;Trước hết, switch ph&iacute;m cơ sẽ được chia th&agrave;nh ba thể loại chung như sau:</p>

<ul>
	<li style="text-align:justify">Linear: ph&iacute;m bấm nhấn đều, liền mạch v&agrave; mượt m&agrave; kh&ocirc;ng c&oacute; ngắt qu&atilde;ng.</li>
	<li style="text-align:justify">Tactile: c&oacute; một lực nảy (bump) ở giữa khoảng di chuyển (travel distance), thường l&agrave; tại điểm k&iacute;ch động của switch (actuation point).</li>
	<li style="text-align:justify">Clicky: tương tự như tactile, c&oacute; lực nảy ở khoảng di chuyển, nhưng thay v&agrave;o đ&oacute; sẽ c&oacute; một tiếng &ldquo;click&rdquo; ph&aacute;t ra từ ph&iacute;m, kh&aacute; giống với click chuột &ndash; giống như c&aacute;i t&ecirc;n Clicky của n&oacute;.</li>
</ul>

<p style="text-align:justify">&nbsp;&nbsp;&nbsp;&nbsp;Điều đ&aacute;ng n&oacute;i, đ&oacute; ch&iacute;nh l&agrave; việc d&ugrave; bạn c&oacute; chọn loại switch n&agrave;o đi chăng nữa, th&igrave; khi chơi game, phản hồi từ ph&iacute;m bấm l&agrave; ho&agrave;n to&agrave;n r&otilde; r&agrave;ng, kh&ocirc;ng thể nhầm lẫn được một khi đ&atilde; nhấn ph&iacute;m xuống. V&agrave; th&uacute; vui sẽ chỉ thực sự bắt đầu, khi bạn bắt đầu tự m&igrave;nh t&igrave;m kiếm b&agrave;n ph&iacute;m với switch ph&ugrave; hợp nhất.&nbsp;</p>

<p style="text-align:justify">&nbsp;&nbsp;&nbsp;&nbsp;Với c&aacute;c loại switch &ldquo;tactile&rdquo; v&agrave; &ldquo;clicky&rdquo;, bạn sẽ nhận được sự phản hồi x&aacute;c định rằng ph&iacute;m m&igrave;nh bấm đ&atilde; được nhận v&agrave; hiện ở tr&ecirc;n m&aacute;y t&iacute;nh, với phản hồi c&oacute; thể l&agrave; một lực nảy hoặc một tiếng click từ ph&iacute;m bấm. Điều n&agrave;y sẽ c&oacute; lợi đối với những ai kh&ocirc;ng thật sự muốn bấm ph&iacute;m xuống hết mức để c&oacute; thể được nhận ph&iacute;m, từ đ&oacute; dẫn đến tốc độ g&otilde; ph&iacute;m l&agrave; cao hơn. Đ&acirc;y c&oacute; thể l&agrave; một điều hữu &iacute;ch trong những thể loại game như chiến lược thời gian thực (Real Time Strategy), khi m&agrave; tốc độ APM (Action Per Minute) l&agrave; một yếu tố quan trọng đối với gameplay của mỗi người.</p>

<p style="text-align:justify">&nbsp;&nbsp;&nbsp;&nbsp;Nếu bạn chơi những tựa game c&oacute; nhịp độ cao hơn, như bắn s&uacute;ng g&oacute;c nh&igrave;n thứ nhắt (First-Person Shooter), switch Linear sẽ c&oacute; &iacute;ch hơn v&agrave; đem lại cho bạn lợi thế. Đơn giản l&agrave; bởi v&igrave; bạn kh&ocirc;ng cần phải ấn hết xuống ph&iacute;m để vượt qua được lực, n&ecirc;n bạn c&oacute; thể bấm ph&iacute;m nhanh hơn, cũng như ph&iacute;m sẽ được ghi nhận nhanh hơn.</p>

<p style="text-align:justify">&nbsp;&nbsp;&nbsp;&nbsp;X&eacute;t về độ bền, th&igrave; b&agrave;n ph&iacute;m cơ c&oacute; tuổi thọ cao hơn hẳn so với b&agrave;n ph&iacute;m cao su truyền thống. C&oacute; thể lấy v&iacute; dụ, switch Cherry MX được sản xuất với độ bền cao từ 20-50 triệu lần nhấn, t&ugrave;y thuộc v&agrave;o đ&oacute; l&agrave; switch g&igrave;. So với b&agrave;n ph&iacute;m cao su, th&igrave; độ bền thường chỉ rơi v&agrave;o khoảng 5 triệu lần nhấn.</p>

<p style="text-align:justify">&nbsp; &nbsp; Dưới đ&acirc;y l&agrave; những loại switch phổ biến tr&ecirc;n thị trường hiện nay:</p>

<h2 style="text-align:justify">&nbsp; &nbsp; <strong>&nbsp; &nbsp; 1.&nbsp;Cherry MX</strong></h2>

<p style="text-align:justify">&nbsp;&nbsp;&nbsp;&nbsp;Lần đầu ti&ecirc;n được đưa ra v&agrave;o năm 1983, c&aacute;c thế hệ switch mang thương hiệu Cherry MX đ&atilde; trở n&ecirc;n v&ocirc; c&ugrave;ng th&agrave;nh c&ocirc;ng cho đến ng&agrave;y h&ocirc;m nay. Với mỗi một loại switch trong gia đ&igrave;nh Cherry, sẽ được ph&acirc;n biệt bởi một m&agrave;u kh&aacute;c nhau với những đặc t&iacute;nh ri&ecirc;ng biệt của từng loại. Cụ thể như sau:</p>

<h3>&nbsp;</h3>

<ul>
	<li style="text-align:justify"><a href="https://www.tncstore.vn/ban-phim-co.html?attribute_id=31&amp;minprice=&amp;maxprice=" target="_blank">Cherry MX Red</a></li>
</ul>

<p style="text-align:justify"><img src="https://tncstore.cdn.vccloud.vn/image/catalog/BAI VIET/Phím cơ/cherrymxred.jpg" style="width:320px" /></p>

<ul>
	<li>
	<ul>
		<li style="text-align:justify">Cơ chế hoạt đ&ocirc;ng: Linear</li>
		<li style="text-align:justify">Cảm gi&aacute;c: Nhẹ</li>
		<li style="text-align:justify">Lực nhấn ph&iacute;m: 45g</li>
		<li style="text-align:justify">Khoảng c&aacute;ch tiếp nhận ph&iacute;m: 2 mm</li>
		<li style="text-align:justify">Khoảng c&aacute;ch di chuyển tổng: 4 mm</li>
		<li style="text-align:justify">Mức độ &acirc;m thanh: Y&ecirc;n lặng</li>
		<li style="text-align:justify">Độ bền hoạt động: 50 triệu lần nhấn</li>
		<li style="text-align:justify">Th&iacute;ch hợp: Những game thủ cần thao t&aacute;c ph&iacute;m nhanh với &iacute;t lực cản. Kh&ocirc;ng c&oacute; lực nảy ở giữa ngăn cản việc bấm ph&iacute;m. Thế nhưng, điều đ&oacute; lại khiến cho MX Red ph&ugrave; hợp với những người g&otilde; chữ nhiều v&igrave; kh&ocirc;ng c&oacute; lực phản hồi khi thực hiện g&otilde; ph&iacute;m.</li>
	</ul>
	</li>
	<li style="text-align:justify"><strong><span style="font-size:24px">Cherry MX Black</span></strong></li>
</ul>

<p style="text-align:justify"><img src="https://tncstore.cdn.vccloud.vn/image/catalog/BAI VIET/Phím cơ/cherrymxblack.jpg" style="width:320px" title="" /></p>

<ul>
	<li>
	<ul>
		<li style="text-align:justify">Cơ chế hoạt đ&ocirc;ng: Linear</li>
		<li style="text-align:justify">Cảm gi&aacute;c: Nặng</li>
		<li style="text-align:justify">Lực nhấn ph&iacute;m: 60g</li>
		<li style="text-align:justify">Khoảng c&aacute;ch tiếp nhận ph&iacute;m: 2 mm</li>
		<li style="text-align:justify">Khoảng c&aacute;ch di chuyển tổng: 4 mm</li>
		<li style="text-align:justify">Mức độ &acirc;m thanh: Y&ecirc;n lặng</li>
		<li style="text-align:justify">Độ bền hoạt động: 50 triệu lần nhấn</li>
		<li style="text-align:justify">Th&iacute;ch hợp: Thao t&aacute;c trong game một c&aacute;ch nhanh ch&oacute;ng với một ch&uacute;t lực cản nhiều hơn tương đối so với switch MX Red. Đặc t&iacute;nh Linear của switch MX Black n&agrave;y khiến n&oacute; trở n&ecirc;n ph&ugrave; hợp đối với việc spam n&uacute;t với tốc độ cao.</li>
	</ul>
	</li>
</ul>

<h3>&nbsp;</h3>

<ul>
	<li style="text-align:justify"><a href="http://www.tncstore.vn/ban-phim-co.html?attribute_id=33">Cherry MX Blue</a></li>
</ul>

<p style="text-align:justify"><img src="https://tncstore.cdn.vccloud.vn/image/catalog/BAI VIET/Phím cơ/cherrymxblue.jpg" style="width:320px" title="" /></p>

<ul>
	<li>
	<ul>
		<li style="text-align:justify">Cơ chế hoạt đ&ocirc;ng: Clicky</li>
		<li style="text-align:justify">Cảm gi&aacute;c: Nặng</li>
		<li style="text-align:justify">Lực nhấn ph&iacute;m: 60g để vượt qua được độ nảy</li>
		<li style="text-align:justify">Khoảng c&aacute;ch tiếp nhận ph&iacute;m: 2 mm</li>
		<li style="text-align:justify">Khoảng c&aacute;ch di chuyển tổng: 4 mm</li>
		<li style="text-align:justify">Mức độ &acirc;m thanh: Ồn</li>
		<li style="text-align:justify">Độ bền hoạt động: 50 triệu lần nhấn</li>
		<li style="text-align:justify">Th&iacute;ch hợp: Chủ yếu d&agrave;nh cho việc g&otilde; chữ. Switch MX Blue n&agrave;y c&oacute; một tiếng &ldquo;click&rdquo; r&otilde; r&agrave;ng khi ph&iacute;m được nhấn qua điểm k&iacute;ch hoạt, khiến n&oacute; trở th&agrave;nh switch c&oacute; tiếng ồn lớn nhất trong d&ograve;ng sản phẩm Cherry MX. C&ugrave;ng với đ&oacute;, MX Blue cũng đem lại phản hồi tactile cao nhất trong tất cả c&aacute;c loại switch của Cherry. Tuy nhi&ecirc;n, việc spam ph&iacute;m sử dụng switch MX Blue sẽ c&oacute; ph&agrave;n hơi kh&oacute; khăn hơn một ch&uacute;t.</li>
	</ul>
	</li>
</ul>

<h3>&nbsp;</h3>

<ul>
	<li style="text-align:justify"><a href="http://www.tncstore.vn/ban-phim-co.html?attribute_id=31" target="_blank">Cherry MX Brown</a></li>
</ul>

<p style="text-align:justify"><img src="https://tncstore.cdn.vccloud.vn/image/catalog/BAI VIET/Phím cơ/cherrymxbrown.jpg" style="width:320px" title="" /></p>

<ul>
	<li>
	<ul>
		<li style="text-align:justify">Cơ chế hoạt đ&ocirc;ng: Tactile</li>
		<li style="text-align:justify">Cảm gi&aacute;c: Trung b&igrave;nh</li>
		<li style="text-align:justify">Lực nhấn ph&iacute;m: 45g</li>
		<li style="text-align:justify">Khoảng c&aacute;ch tiếp nhận ph&iacute;m: 2 mm</li>
		<li style="text-align:justify">Khoảng c&aacute;ch di chuyển tổng: 4 mm</li>
		<li style="text-align:justify">Mức độ &acirc;m thanh: Y&ecirc;n lặng</li>
		<li style="text-align:justify">Độ bền hoạt động: 50 triệu lần nhấn</li>
		<li style="text-align:justify">Th&iacute;ch hợp: Đ&acirc;y l&agrave; một sự kết hợp tốt giữa một switch để g&otilde; chữ v&agrave; để chơi game. MX Brown được nhiều người coi l&agrave; switch ph&ugrave; hợp cho mọi nhu cầu. Với lực nảy tactile, &acirc;m thanh hoạt động y&ecirc;n lặng, v&agrave; lực k&iacute;ch hoạt ph&iacute;m ở mức trung b&igrave;nh, khiến cho MX Brown trở n&ecirc;n rất đa dụng trong nhiều trường hợp. Lực nảy của switch MX Brown n&agrave;y cũng v&igrave; thế m&agrave; &iacute;t r&otilde; r&agrave;ng hơn nếu so với MX Blue.<br />
		<strong><span style="font-size:24px">Cherry MX Speed</span></strong></li>
	</ul>
	</li>
</ul>

<p style="text-align:justify"><img src="https://tncstore.cdn.vccloud.vn/image/catalog/BAI VIET/Phím cơ/cherrymxspeed.jpg" style="width:320px" title="" /></p>

<ul>
	<li>
	<ul>
		<li style="text-align:justify">Cơ chế hoạt đ&ocirc;ng: Linear</li>
		<li style="text-align:justify">Cảm gi&aacute;c: Nhẹ</li>
		<li style="text-align:justify">Lực nhấn ph&iacute;m: 45g</li>
		<li style="text-align:justify">Khoảng c&aacute;ch tiếp nhận ph&iacute;m: 1.2 mm</li>
		<li style="text-align:justify">Khoảng c&aacute;ch di chuyển tổng: 4 mm</li>
		<li style="text-align:justify">Mức độ &acirc;m thanh: Y&ecirc;n lặng</li>
		<li style="text-align:justify">Độ bền hoạt động: 50 triệu lần nhấn</li>
		<li style="text-align:justify">Th&iacute;ch hợp: Switch Cherry duy nhất kh&ocirc;ng được x&aacute;c định bởi m&agrave;u sắc trong d&ograve;ng sản phẩm (thực ra l&agrave; n&oacute; c&oacute; m&agrave;u x&aacute;m, nếu bạn t&ograve; m&ograve;). Đ&acirc;y l&agrave; d&ograve;ng sản phẩm mới m&agrave; Cherry tạo ra để c&oacute; thể cạnh tranh với c&aacute;c loại switch mới hơn với điểm k&iacute;ch hoạt cao hơn.</li>
	</ul>
	</li>
</ul>

<p style="text-align:justify">&nbsp;&nbsp;&nbsp;&nbsp;Ngo&agrave;i ra, c&ograve;n c&oacute; một số loại switch kh&aacute;c &iacute;t phổ biến hơn như Cherry MX Green, Cherry MX Clear, Cherry MX Pink, v.v &hellip;</p>

<h2 style="text-align:justify"><strong>&nbsp; &nbsp; &nbsp; &nbsp; 2.&nbsp;Kailh Switch l&agrave; g&igrave;</strong></h2>

<p style="text-align:justify">&nbsp; &nbsp;&nbsp;Kailh, hay c&ograve;n được biết dưới c&aacute;i t&ecirc;n Kaihua Electronics, l&agrave; một h&atilde;ng sản xuất switch lớn tại Trung Quốc. Kể từ khi được th&agrave;nh lập v&agrave;o năm 1990, c&ocirc;ng ty đ&atilde; mở rộng hoạt động của m&igrave;nh ra to&agrave;n cầu. Kh&ocirc;ng chỉ c&aacute;c switch của Kaihua ra đời v&agrave; cạnh tranh trực tiếp với Cherry, họ cũng tạo ra c&aacute;c switch đặc biệt hơn phục vụ cho c&aacute;c đối t&aacute;c sản xuất thiết bị.</p>

<p style="text-align:justify">&nbsp;&nbsp;&nbsp;&nbsp;Được mọi người coi l&agrave; bản sao của switch Cherry, switch của Kailh c&oacute; n&eacute;t tương đồng với Cherry MX về mặt thiết kế. Ch&uacute;ng c&ograve;n c&oacute; chung đặc t&iacute;nh tương ứng với c&ugrave;ng một hệ thống m&agrave;u sắc. V&agrave; cũng v&igrave; thế, keycap thiết kế cho switch Cherry MX cũng sẽ tương th&iacute;ch với switch Kailh.</p>

<h3>&nbsp;</h3>

<ul>
	<li style="text-align:justify">Kailh Red</li>
</ul>

<ul>
	<li>
	<ul>
		<li style="text-align:justify">Cơ chế hoạt đ&ocirc;ng: Linear</li>
		<li style="text-align:justify">Cảm gi&aacute;c: Nhẹ</li>
		<li style="text-align:justify">Lực nhấn ph&iacute;m: 50g</li>
		<li style="text-align:justify">Khoảng c&aacute;ch tiếp nhận ph&iacute;m: 2 mm</li>
		<li style="text-align:justify">Khoảng c&aacute;ch di chuyển tổng: 4 mm</li>
		<li style="text-align:justify">Mức độ &acirc;m thanh: Y&ecirc;n lặng</li>
		<li style="text-align:justify">Độ bền hoạt động: 50 triệu lần nhấn</li>
	</ul>
	</li>
	<li style="text-align:justify"><a href="http://www.tncstore.vn/ban-phim-co.html?attribute_id=33" target="_blank"><span style="font-size:24px">Kailh Blue</span></a>
	<ul>
		<li style="text-align:justify">Cơ chế hoạt đ&ocirc;ng: Clicky</li>
		<li style="text-align:justify">Cảm gi&aacute;c: Nặng</li>
		<li style="text-align:justify">Lực nhấn ph&iacute;m: 60g để vượt qua được độ nảy</li>
		<li style="text-align:justify">Khoảng c&aacute;ch tiếp nhận ph&iacute;m: 2 mm</li>
		<li style="text-align:justify">Khoảng c&aacute;ch di chuyển tổng: 4 mm</li>
		<li style="text-align:justify">Mức độ &acirc;m thanh: Ồn</li>
		<li style="text-align:justify">Độ bền hoạt động: 50 triệu lần nhấn</li>
	</ul>
	</li>
</ul>

<h3>&nbsp;</h3>

<ul>
	<li style="text-align:justify">Kailh Black</li>
</ul>

<ul>
	<li>
	<ul>
		<li style="text-align:justify">Cơ chế hoạt đ&ocirc;ng: Linear</li>
		<li style="text-align:justify">Cảm gi&aacute;c: Nặng</li>
		<li style="text-align:justify">Lực nhấn ph&iacute;m: 60g</li>
		<li style="text-align:justify">Khoảng c&aacute;ch tiếp nhận ph&iacute;m: 2 mm</li>
		<li style="text-align:justify">Khoảng c&aacute;ch di chuyển tổng: 4 mm</li>
		<li style="text-align:justify">Mức độ &acirc;m thanh: Y&ecirc;n lặng</li>
		<li style="text-align:justify">Độ bền hoạt động: 50 triệu lần nhấn</li>
	</ul>
	</li>
</ul>

<h3>&nbsp;</h3>

<ul>
	<li style="text-align:justify"><a href="http://www.tncstore.vn/ban-phim-co.html?attribute_id=32" target="_blank">Kailh Brown</a></li>
</ul>

<ul>
	<li>
	<ul>
		<li style="text-align:justify">Cơ chế hoạt đ&ocirc;ng: Tactile</li>
		<li style="text-align:justify">Cảm gi&aacute;c: Trung b&igrave;nh</li>
		<li style="text-align:justify">Lực nhấn ph&iacute;m: 45g</li>
		<li style="text-align:justify">Khoảng c&aacute;ch tiếp nhận ph&iacute;m: 2 mm</li>
		<li style="text-align:justify">Khoảng c&aacute;ch di chuyển tổng: 4 mm</li>
		<li style="text-align:justify">Mức độ &acirc;m thanh: Y&ecirc;n lặng</li>
		<li style="text-align:justify">Độ bền hoạt động: 50 triệu lần nhấn</li>
	</ul>
	</li>
</ul>

<h3 style="text-align:justify">&nbsp; &nbsp; &nbsp;<strong> &nbsp; 3.&nbsp;<a href="http://www.tncstore.vn/ban-phim-co.html?manufacturer_id=17" target="_blank">Razer</a></strong></h3>

<p style="text-align:justify">&nbsp;&nbsp;&nbsp;&nbsp;Sẽ gần như l&agrave; kh&ocirc;ng thể nếu bạn đi t&igrave;m kiếm thứ g&igrave; li&ecirc;n quan đến &ldquo;gaming&rdquo; m&agrave; kh&ocirc;ng bắt gặp thương hiệu Razer. V&agrave;o năm 2014, Razer đ&atilde; hợp t&aacute;c c&ugrave;ng với Kailh để ph&aacute;t triển ra switch b&agrave;n ph&iacute;m cơ mang thương hiệu của ch&iacute;nh Razer, sau đ&oacute; họ sử dụng ch&uacute;ng tr&ecirc;n c&aacute;c d&ograve;ng sản phẩm b&agrave;n ph&iacute;m chơi game mang t&ecirc;n BlackWidow. V&agrave; kể từ đ&oacute;, Razer đ&atilde; tự m&igrave;nh ph&aacute;t triển c&aacute;c d&acirc;y chuyền sản xuất switch, với h&agrave;ng loạt nh&agrave; sản xuất như Kailh, Greetech, &hellip; c&ugrave;ng tham gia v&agrave;o qu&aacute; tr&igrave;nh. Hiện tại, Razer đang c&oacute; ba loại switch ph&iacute;m cơ, theo ba m&agrave;u kh&aacute;c nhau &ndash; đ&oacute; l&agrave; Razer Green, Razer Orange, Razer Yellow.</p>

<ul>
	<li style="text-align:justify"><strong><span style="font-size:18px">Razer Green</span></strong></li>
</ul>

<p style="text-align:justify"><img src="https://tncstore.cdn.vccloud.vn/image/catalog/BAI VIET/Phím cơ/razergreen.jpg" style="width:600px" title="" /></p>

<ul>
	<li>
	<ul>
		<li style="text-align:justify">Cơ chế hoạt đ&ocirc;ng: Clicky</li>
		<li style="text-align:justify">Cảm gi&aacute;c: Nặng</li>
		<li style="text-align:justify">Lực nhấn ph&iacute;m: 55g</li>
		<li style="text-align:justify">Khoảng c&aacute;ch tiếp nhận ph&iacute;m: 1.9 mm</li>
		<li style="text-align:justify">Khoảng c&aacute;ch di chuyển tổng: 4 mm</li>
		<li style="text-align:justify">Mức độ &acirc;m thanh: Ồn</li>
		<li style="text-align:justify">Độ bền hoạt động: 80 triệu lần nhấn</li>
		<li style="text-align:justify">Ph&ugrave; hợp với: Chủ yếu l&agrave; g&otilde; chữ v&agrave; chơi game. Điểm k&iacute;ch hoạt ngắn hơn một ch&uacute;t so với Cherry MX Blue v&agrave; Kailh Blue. Razer giải th&iacute;ch rằng l&agrave;m như vậy l&agrave; để giảm độ trễ bằng việc giảm khoảng c&aacute;ch giữa điểm k&iacute;ch hoạt v&agrave; điểm reset lại xuống 0.4 mm</li>
	</ul>
	</li>
	<li style="text-align:justify"><strong><span style="font-size:18px">Razer Orange</span></strong></li>
</ul>

<p style="text-align:justify"><img src="https://tncstore.cdn.vccloud.vn/image/catalog/BAI VIET/Phím cơ/razerorange.jpg" style="width:750px" title="" /></p>

<ul>
	<li>
	<ul>
		<li style="text-align:justify">Cơ chế hoạt động: Tactile</li>
		<li style="text-align:justify">Cảm gi&aacute;c: Trung b&igrave;nh</li>
		<li style="text-align:justify">Lực nhấn ph&iacute;m: 55g</li>
		<li style="text-align:justify">Khoảng c&aacute;ch tiếp nhận ph&iacute;m: 1.9 mm</li>
		<li style="text-align:justify">Khoảng c&aacute;ch di chuyển tổng: 4 mm</li>
		<li style="text-align:justify">Mức độ &acirc;m thanh: Y&ecirc;n lặng</li>
		<li style="text-align:justify">Độ bền hoạt động: 80 triệu lần nhấn</li>
		<li style="text-align:justify">Ph&ugrave; hợp với: Chơi game v&agrave; g&otilde; chữ. Razer Orange gần như l&agrave; một phi&ecirc;n bản copy từ Kailh Brown. N&oacute; c&oacute; một lực nảy tactile kh&aacute; y&ecirc;n lặng, v&agrave; thiết kế slider đơn chiếc.</li>
	</ul>
	</li>
	<li style="text-align:justify"><strong><span style="font-size:18px">Razer Yellow</span></strong>
	<ul>
		<li style="text-align:justify">Cơ chế hoạt động: Linear</li>
		<li style="text-align:justify">Cảm gi&aacute;c: Trung b&igrave;nh</li>
		<li style="text-align:justify">Lực nhấn ph&iacute;m: 45g</li>
		<li style="text-align:justify">Khoảng c&aacute;ch tiếp nhận ph&iacute;m: 1.2 mm</li>
		<li style="text-align:justify">Khoảng c&aacute;ch di chuyển tổng: 4 mm</li>
		<li style="text-align:justify">Mức độ &acirc;m thanh: Y&ecirc;n lặng</li>
		<li style="text-align:justify">Độ bền hoạt động: 80 triệu lần nhấn</li>
		<li style="text-align:justify">Ph&ugrave; hợp với: Chơi game tốc độ cao. Đ&acirc;y l&agrave; loại switch mới ra mắt m&agrave; Razer muốn tung ra để cạnh tranh với c&aacute;c d&ograve;ng switch chuy&ecirc;n chơi game, cũng như cạnh tranh trực tiếp với switch Cherry MX Speed. Với khoảng c&aacute;ch tiếp nhận ph&iacute;m thấp ở mức 1.2mm &ndash; tương đương với Cherry MX Speed, c&ugrave;ng với đ&oacute; l&agrave; việc thiết kế switch sao cho điểm k&iacute;ch hoạt v&agrave; reset l&agrave; một, kh&ocirc;ng hề c&oacute; khoảng c&aacute;ch n&agrave;o.</li>
	</ul>
	</li>
</ul>

<h2 style="text-align:justify">&nbsp; &nbsp; &nbsp;<strong> &nbsp; 4.&nbsp;Logitech</strong></h2>

<p style="text-align:justify">&nbsp; &nbsp; Logitech bắt đầu ph&aacute;t triển switch ph&iacute;m cơ độc quyền của m&igrave;nh với h&atilde;ng Omron, nh&agrave; sản xuất thiết bị điện tử danh tiếng đến từ Nhật Bản, với t&ecirc;n gọi Romer-G. Hiện tại, Romer-G chỉ xuất hiện tr&ecirc;n c&aacute;c model b&agrave;n ph&iacute;m: G310 Atlas Dawn, G410 Atlas Spectrum, G810 Orion Spectrum, G910 Orion Spark/Spectrum, G Pro Gaming Keyboard.</p>

<p style="text-align:justify">&nbsp;&nbsp;&nbsp;&nbsp;Romer-G được thiết kế ho&agrave;n to&agrave;n lại từ ban đầu, với mục đ&iacute;ch khắc phục những điểm yếu m&agrave; c&aacute;c loại switch ph&iacute;m cơ phổ th&ocirc;ng c&ograve;n tồn tại. Romer-G c&oacute; điểm k&iacute;ch hoạt đạt 1.5 mm, thấp hơn 25% nếu như so với c&aacute;c switch Cherry hay Kailh phổ biến hiện tại. Switch cũng được thiết kế để giảm thiểu những va chạm kh&ocirc;ng đ&aacute;ng c&oacute;, cũng như gia tăng độ bền của ph&iacute;m th&ecirc;m 20%, l&ecirc;n đến 70 triệu lần nhấn. Switch n&agrave;y đem lại một lực nảy kh&aacute; l&agrave; nhỏ, đến mức kh&ocirc;ng thể nhận biết được khi m&agrave; bạn chơi game một c&aacute;ch miệt m&agrave;i. Phần giữa của switch được lộ ra một khoảng trống cho đ&egrave;n LED được đặt tr&ecirc;n bề mặt switch, v&agrave; cũng c&oacute; t&aacute;c dụng điều hướng &aacute;nh s&aacute;ng một c&aacute;ch rực rỡ v&agrave; đều đặn hơn.</p>

<ul>
	<li style="text-align:justify"><strong><span style="font-size:18px">Romer-G</span></strong></li>
</ul>

<p style="text-align:justify"><img src="https://tncstore.cdn.vccloud.vn/image/catalog/BAI VIET/Phím cơ/romerg.jpg" style="width:320px" /></p>

<ul>
	<li>
	<ul>
		<li style="text-align:justify">Cơ chế hoạt động: Hơi một ch&uacute;t tactile</li>
		<li style="text-align:justify">Cảm gi&aacute;c: Nhẹ</li>
		<li style="text-align:justify">Lực nhấn ph&iacute;m: 45g</li>
		<li style="text-align:justify">Khoảng c&aacute;ch tiếp nhận ph&iacute;m: 1.5 mm</li>
		<li style="text-align:justify">Khoảng c&aacute;ch di chuyển tổng: 3 mm</li>
		<li style="text-align:justify">Mức độ &acirc;m thanh: Y&ecirc;n lặng</li>
		<li style="text-align:justify">Độ bền hoạt động: 70 triệu lần nhấn</li>
		<li style="text-align:justify">Ph&ugrave; hợp với: Chơi game với tốc độ cao. Qu&atilde;ng đường di chuyển ngắn của switch Romer-G đ&oacute;ng vai tr&ograve; v&ocirc; c&ugrave;ng quan trọng trong việc cải thiện tỉ lệ nhấn lặp ph&iacute;m. Điểm reset kh&aacute; gần với điểm k&iacute;ch hoạt, thế n&ecirc;n l&agrave; gần như kh&ocirc;ng c&oacute; độ trễ.</li>
	</ul>
	</li>
</ul>

<h2 style="text-align:justify">&nbsp; &nbsp; <strong>&nbsp; &nbsp; 5.&nbsp;<a href="http://www.tncstore.vn/ban-phim-co.html?manufacturer_id=24" target="_blank">Steelseries</a></strong></h2>

<p style="text-align:justify">&nbsp; &nbsp; Steelseries bắt tay hợp t&aacute;c với Kaihua để ph&aacute;t triển n&ecirc;n switch ph&iacute;m cơ nhanh nhất c&oacute; thể. V&agrave; kết quả từ sự hợp t&aacute;c đ&oacute;, ch&iacute;nh l&agrave; switch mang t&ecirc;n QS1, xuất hiện lần đầu ti&ecirc;n tr&ecirc;n b&agrave;n ph&iacute;m Steelseries Apex M800.</p>

<p style="text-align:justify">&nbsp;&nbsp;&nbsp;&nbsp;QS1 c&oacute; cấu tr&uacute;c tương đồng với Romer-G. Một phần đế nằm ở s&acirc;u ph&iacute;a giữa, đem lại sự hỗ trợ cho keycap. Tại phần nền của switch, c&oacute; một đ&egrave;n LED được đặt ở phần bề mặt, nhưng kh&ocirc;ng c&oacute; c&aacute;i g&igrave; để điều hướng &aacute;nh s&aacute;ng ph&aacute;t ra.</p>

<ul>
	<li style="text-align:justify"><strong><span style="font-size:18px">QS1</span></strong></li>
</ul>

<p style="text-align:justify"><img src="https://tncstore.cdn.vccloud.vn/image/catalog/BAI VIET/Phím cơ/qs1.jpg" style="width:320px" /></p>

<ul>
	<li>
	<ul>
		<li style="text-align:justify">Cảm gi&aacute;c: Nhẹ</li>
		<li style="text-align:justify">Lực nhấn ph&iacute;m: 45g</li>
		<li style="text-align:justify">Khoảng c&aacute;ch tiếp nhận ph&iacute;m: 1.5 mm</li>
		<li style="text-align:justify">Khoảng c&aacute;ch di chuyển tổng: 3 mm</li>
		<li style="text-align:justify">Mức độ &acirc;m thanh: Y&ecirc;n lặng</li>
		<li style="text-align:justify">Ph&ugrave; hợp với: Chơi game tốc độ cao. Khoảng c&aacute;ch di chuyển tổng ngắn, gi&uacute;p cho ph&iacute;m nảy nhanh hơn sau khi nhấn hết ph&iacute;m xuống dưới. Lực nhấn ph&iacute;m nhẹ, c&ugrave;ng với điểm k&iacute;ch động cao kiến cho việc spam ph&iacute;m trở n&ecirc;n tương đối dễ d&agrave;ng.</li>
	</ul>
	</li>
</ul>

<p style="text-align:justify">&nbsp;&nbsp;&nbsp;&nbsp;V&agrave; c&aacute;ch đ&acirc;y kh&ocirc;ng l&acirc;u, Steelseries đ&atilde; cho ra đời thế hệ switch mới nhất của họ, hợp t&aacute;c với h&atilde;ng sản xuất Gateron, mang t&ecirc;n Steelseries QX2. Hệ thống m&agrave;u sắc cũng được sử dụng tương tự như với Cherry MX hay Kailh. Hiện tại switch n&agrave;y đang c&oacute; mặt tr&ecirc;n d&ograve;ng sản phẩm ph&iacute;m cơ với đ&egrave;n LED RGB của h&atilde;ng, với t&ecirc;n gọi Steelseries Apex M650. C&aacute;c th&ocirc;ng số cụ thể như sau:</p>

<p style="text-align:justify"><img src="https://tncstore.cdn.vccloud.vn/image/catalog/BAI VIET/Phím cơ/coolpc-steelseries-apex-m650-45.jpg" style="outline:red dashed 1px; width:750px" title="" /></p>

<p style="text-align:justify"><strong>&nbsp; &nbsp; &nbsp; QX2 Brown</strong></p>

<ul>
	<li>
	<ul>
		<li style="text-align:justify">Cơ chế hoạt động: Non-linear (Tactile)</li>
		<li style="text-align:justify">Lực nhấn ph&iacute;m: 50g</li>
		<li style="text-align:justify">Khoảng c&aacute;ch tiếp nhận ph&iacute;m: 2mm</li>
		<li style="text-align:justify">Khoảng c&aacute;ch di chuyển tổng: 4 mm</li>
		<li style="text-align:justify">Độ bền hoạt động: 50 triệu lần nhấn</li>
	</ul>
	</li>
	<li style="text-align:justify"><strong><span style="font-size:18px">QX2 Black</span></strong>
	<ul>
		<li style="text-align:justify">Cơ chế hoạt động: Linear</li>
		<li style="text-align:justify">Lực nhấn ph&iacute;m: 60g</li>
		<li style="text-align:justify">Khoảng c&aacute;ch tiếp nhận ph&iacute;m: 2mm</li>
		<li style="text-align:justify">Khoảng c&aacute;ch di chuyển tổng: 4 mm</li>
		<li style="text-align:justify">Độ bền hoạt động: 50 triệu lần nhấn</li>
	</ul>
	</li>
	<li style="text-align:justify"><strong><span style="font-size:18px">QX2 Red</span></strong>
	<ul>
		<li style="text-align:justify">Cơ chế hoạt động: Linear</li>
		<li style="text-align:justify">Lực nhấn ph&iacute;m: 45g</li>
		<li style="text-align:justify">Khoảng c&aacute;ch tiếp nhận ph&iacute;m: 2mm</li>
		<li style="text-align:justify">Khoảng c&aacute;ch di chuyển tổng: 4 mm</li>
		<li style="text-align:justify">Độ bền hoạt động: 50 triệu lần nhấn</li>
	</ul>
	</li>
	<li style="text-align:justify"><strong><span style="font-size:18px">QX2 Blue</span></strong>
	<ul>
		<li style="text-align:justify">Cơ chế hoạt động: Non-linear (Clicky)</li>
		<li style="text-align:justify">Lực nhấn ph&iacute;m: 55g</li>
		<li style="text-align:justify">Khoảng c&aacute;ch tiếp nhận ph&iacute;m: 2mm</li>
		<li style="text-align:justify">Khoảng c&aacute;ch di chuyển tổng: 4 mm</li>
		<li style="text-align:justify">Độ bền hoạt động: 50 triệu lần nhấn</li>
	</ul>
	</li>
</ul>

<h2 style="text-align:justify"><strong><span style="font-size:18px">&nbsp; &nbsp; &nbsp; &nbsp; 6.&nbsp;</span><span style="font-size:18px">Topre</span></strong></h2>

<p style="text-align:justify"><img src="https://tncstore.cdn.vccloud.vn/image/catalog/BAI VIET/Phím cơ/topre1.jpg" style="width:750px" title="" /></p>

<ul>
	<li>
	<ul>
		<li style="text-align:justify">Cơ chế hoạt động: Tactile</li>
		<li style="text-align:justify">Cảm gi&aacute;c: Nhẹ đến trung b&igrave;nh</li>
		<li style="text-align:justify">Lực nhấn ph&iacute;m: 30, 35, 40, 45g</li>
		<li style="text-align:justify">Khoảng c&aacute;ch tiếp nhận ph&iacute;m: 2 mm</li>
		<li style="text-align:justify">Khoảng c&aacute;ch di chuyển tổng: 4 mm</li>
		<li style="text-align:justify">Mức độ &acirc;m thanh: Y&ecirc;n lặng</li>
		<li style="text-align:justify">Ph&ugrave; hợp với: Chơi game v&agrave; g&otilde; chữ. Switch Topre với đặc t&iacute;nh nhanh v&agrave; tactile khiến cho n&oacute; rất ph&ugrave; hợp với việc sử dụng n&oacute;i chung. Mặc d&ugrave; c&oacute; một ch&uacute;t độ nảy tactile tại điểm k&iacute;ch hoạt, kh&ocirc;ng c&oacute; độ trễ ở ph&iacute;m v&igrave; đ&acirc;y l&agrave; switch c&oacute; t&iacute;nh chất điện dung (capacitive switch)</li>
	</ul>
	</li>
</ul>

<h2 style="text-align:justify"><strong><span style="font-size:18px">&nbsp; &nbsp; &nbsp; &nbsp; 7.&nbsp;</span><a href="http://www.tncstore.vn/ban-phim-co.html?manufacturer_id=24" target="_blank"><span style="font-size:18px">CoolerMaster</span></a></strong></h2>

<p style="text-align:justify">&nbsp; &nbsp;&nbsp;Tất cả c&aacute;c d&ograve;ng ph&iacute;m cơ m&agrave; CoolerMaster sản xuất đều sử dụng switch Cherry MX, ngoại trừ một sản phẩm duy nh&aacute;t &ndash; CoolerMaster NovaTouch TKL. Đ&acirc;y l&agrave; sản phẩm ph&iacute;m sử dụng switch Hybrid Capacitive.</p>

<p style="text-align:justify">&nbsp;&nbsp;&nbsp;&nbsp;N&oacute;i một c&aacute;ch đơn giản, đ&acirc;y l&agrave; một phi&ecirc;n bản Topre được chế t&aacute;c lại, với việc th&ecirc;m phần stem Cherry MX v&agrave;o ph&iacute;a trung t&acirc;m stem của switch Topre, gi&uacute;p cho người d&ugrave;ng c&oacute; thể sử dụng keycap Cherry MX tr&ecirc;n ph&iacute;m n&agrave;y một c&aacute;ch dễ d&agrave;ng nhất.</p>

<p style="text-align:justify"><img src="https://tncstore.cdn.vccloud.vn/image/catalog/BAI VIET/Phím cơ/hybridcapacitive.jpg" style="width:320px" /></p>

<ul>
	<li>
	<ul>
		<li style="text-align:justify">Cơ chế hoạt động: Tactile</li>
		<li style="text-align:justify">Cảm gi&aacute;c: Nhẹ</li>
		<li style="text-align:justify">Lực nhấn ph&iacute;m: 45g</li>
		<li style="text-align:justify">Khoảng c&aacute;ch tiếp nhận ph&iacute;m: 1 mm</li>
		<li style="text-align:justify">Khoảng c&aacute;ch di chuyển tổng: 4 mm</li>
		<li style="text-align:justify">Mức độ &acirc;m thanh: Y&ecirc;n lặng</li>
		<li style="text-align:justify">Độ bền ph&iacute;m: 60 triệu lần nhấn</li>
		<li style="text-align:justify">Ph&ugrave; hợp với: Chơi game v&agrave; g&otilde; chữ. Switch Hybrid Capacitive n&agrave;y c&oacute; t&iacute;nh chất hoạt động tương tự với Topre. CoolerMaster khẳng định rằng điểm k&iacute;ch hoạt của switch n&agrave;y chỉ c&oacute; 1 mm, tức l&agrave; ngắn hơn 1 mm so với switch Topre.</li>
	</ul>
	</li>
</ul>

<h2 style="text-align:justify"><strong><span style="font-size:18px">&nbsp; &nbsp; &nbsp; &nbsp; 8.&nbsp;</span><span style="font-size:18px">Gateron</span></strong></h2>

<p style="text-align:justify">&nbsp; &nbsp;&nbsp;Gateron l&agrave; một h&atilde;ng sản xuất tại Trung Quốc, sản xuất ra c&aacute;c loại switch c&oacute; stem tương tự như Cherry MX. Giống như Cherry, họ cũng sử dụng m&agrave;u sắc để ph&acirc;n biệt c&aacute;c loại switch kh&aacute;c nhau trong d&ograve;ng sản phẩm. Cộng đồng đam m&ecirc; ph&iacute;m cơ n&oacute;i rằng họ kh&aacute; l&agrave; th&iacute;ch d&ugrave;ng switch Gateron Clear v&agrave; Gateron Black linear.</p>

<p style="text-align:justify">&nbsp;&nbsp;&nbsp;&nbsp;Ngo&agrave;i tất cả c&aacute;c loại switch tr&ecirc;n, th&igrave; tr&ecirc;n thị trường vẫn c&ograve;n hiện diện kh&aacute; nhiều loại switch kh&aacute;c nữa, với nhiều đặc t&iacute;nh nổi bật v&agrave; kh&aacute;c nhau. Tuy nhi&ecirc;n, trong b&agrave;i viết n&agrave;y chỉ giới thiệu được qua những switch thật sự phổ biến v&agrave; c&oacute; thể t&igrave;m thấy dễ d&agrave;ng tr&ecirc;n c&aacute;c sản phẩm hiện nay đang được b&aacute;n.&nbsp;</p>

<p style="text-align:justify">---------------------------------------------</p>

<p style="text-align:justify">Lời kết</p>

<p style="text-align:justify">&nbsp;&nbsp;&nbsp;&nbsp;Cần phải khẳng định một điều rằng, kh&ocirc;ng c&oacute; switch <strong>ph&iacute;m cơ</strong> n&agrave;o l&agrave; ho&agrave;n hảo cho từng nhu cầu cụ thể cả, cho d&ugrave; đ&oacute; l&agrave; việc chơi game hay g&otilde; văn bản. Mặc d&ugrave; được đại đa số t&aacute;n th&agrave;nh, rằng c&aacute;c b&agrave;n ph&iacute;m cơ đem lại hiệu năng v&agrave; độ bền vượt trội, việc chọn một chiếc b&agrave;n ph&iacute;m cơ sao cho ph&ugrave; hợp c&ograve;n t&ugrave;y thuộc v&agrave;o nhu cầu cũng như sở th&iacute;ch của c&aacute; nh&acirc;n. V&igrave; vậy, h&atilde;y cố gắng tiếp cận sản phẩm m&agrave; bạn đang cần một c&aacute;ch trực tiếp, h&atilde;y trải nghiệm n&oacute; thật nhiều nhất c&oacute; thể, để đưa ra lựa chọn đ&uacute;ng đắn nhất c&oacute; thể nh&eacute;. B&agrave;i viết tr&ecirc;n đ&acirc;y chỉ l&agrave; giới thiệu một c&aacute;ch cơ bản về b&agrave;n ph&iacute;m cơ, cũng như th&ocirc;ng số kỹ thuật về một số c&aacute;c loại switch phổ biến hiện nay.</p>

<p style="text-align:justify">&nbsp;&nbsp;&nbsp;&nbsp;Credits nội dung &amp; h&igrave;nh ảnh: PC Gamer, Razerzone, Steelseries, mạng Internet &hellip;&nbsp;</p>

<p style="text-align:justify">&nbsp; &nbsp; C&aacute;c sản phẩm b&agrave;n ph&iacute;m cơ hiện đang b&aacute;n tại <a href="http://www.tncstore.vn">TNCStore</a>, c&oacute; thể tham khảo <a href="http://www.tncstore.vn/gaming-gear/ban-phim-gaming/ban-phim-co.html">tại đ&acirc;y</a>&nbsp;</p>

<p style="text-align:justify">-----------------------------------------------</p>

<p style="text-align:justify">Showroom: 172 L&ecirc; Thanh Nghị - Hai B&agrave; Trưng - H&agrave; Nội</p>

<p style="text-align:justify">Tel: (024) 36288790 &ndash; 36230369</p>

<p style="text-align:justify">Hỗ trợ tư vấn Online 24/07</p>

<p style="text-align:justify">Ship h&agrave;ng to&agrave;n quốc - Giao h&agrave;ng miễn ph&iacute; trong nội th&agrave;nh H&agrave; Nội</p>
', N'/Data/images/newses/tintucmoinhat/cherrymxbrown.jpg', NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-06T13:36:59.507' AS DateTime), N'quang', CAST(N'2020-12-06T13:36:00.000' AS DateTime), NULL, 4, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (17, N'Lựa chọn chuột gaming nhất định phải biết những điều này!', N'Cách lựa chọn chuột gaming', N'cach-lua-chon-chuot-gaming', N'Được coi là công cụ đắc lực trong những trận chiến khốc liệt, chuột gaming chính là bí quyết dẫn đến chiến thắng. Hãy cùng TNC điểm qua những thông số chuột gaming quan trọng nhé!', N'<p><em>Được coi l&agrave; c&ocirc;ng cụ đắc lực trong những trận chiến khốc liệt, chuột gaming ch&iacute;nh l&agrave; b&iacute; quyết dẫn đến chiến thắng. H&atilde;y c&ugrave;ng TNC điểm qua những th&ocirc;ng số chuột gaming quan trọng nh&eacute;!</em></p>

<p>&nbsp;</p>

<p>Kh&ocirc;ng c&oacute; t&iacute;nh đa dụng như <strong><a href="https://www.tncstore.vn/thong-so-ban-phim-co-quan-trong.html" target="_blank">b&agrave;n ph&iacute;m cơ</a></strong> nhưng <strong>chuột gaming</strong> cũng được rất nhiều anh em ch&uacute; &yacute; tới cho c&aacute;c t&aacute;c vụ chơi game. Những trận đấu s&uacute;ng căng thẳng, những pha call team combat hay snap bắn tỉa&hellip; đều phụ thuộc phần lớn v&agrave;o ch&uacute; chuột của anh em.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số chuột gaming/gaming_mouse (1).jpg" style="width:730px" /></p>

<p><strong>Chuột gaming</strong> cũng c&oacute; rất nhiều loại, đa dạng về mẫu m&atilde; cũng như đối tượng hướng đến n&ecirc;n việc nắm được những th&ocirc;ng số cơ bản l&agrave; điều cần thiết nếu anh em muốn lựa chọn được sản phẩm ưng &yacute;. Vậy chuột gaming l&agrave; g&igrave;? C&oacute; những yếu tố n&agrave;o quyết định đến gi&aacute; th&agrave;nh, chất lượng chuột? H&atilde;y để TNC Store giải đ&aacute;p gi&uacute;p anh em th&ocirc;ng qua c&aacute;c th&ocirc;ng số chuột gaming dưới đ&acirc;y nh&eacute;!</p>

<p>&nbsp;</p>

<h1><strong><span style="font-size:18px">1. Cảm biến</span></strong></h1>

<p>C&ograve;n được gọi l&agrave; mắt đọc, <strong>cảm biến</strong> (sensor) ch&iacute;nh l&agrave; linh hồn của một chiếc <strong>chuột gaming</strong>. Để hiểu về cảm biến, anh em cần biết cơ chế hoạt động của chuột như sau:&nbsp;</p>

<p>Hệ thống thu thập h&igrave;nh ảnh (IAS &ndash; image acquisition system) sẽ &ldquo;chụp&rdquo; lại h&igrave;nh ảnh bề mặt khi ch&uacute;ng ta di chuyển chuột với số lượng l&ecirc;n tới h&agrave;ng ngh&igrave;n h&igrave;nh ảnh trong một gi&acirc;y (frames-per-second).&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số chuột gaming/chuot-gaming-logitech-g403-hero-den-11 (1).jpg" style="width:730px" /></p>

<p>Lượng h&igrave;nh ảnh n&agrave;y sau đ&oacute; sẽ được xử l&yacute; qua vi xử l&yacute; kỹ thuật số (digital system processor) nhằm x&aacute;c định 2 gi&aacute; trị (delta) &Delta;x/&Delta;y (toạ độ giữa 2 điểm cũ v&agrave; mới khi di chuyển chuột) th&ocirc;ng qua hướng v&agrave; cường độ của chuyển động. Tới đ&acirc;y, c&aacute;c bộ điều khiển MCU (microcontroller unit) sẽ chuyển lượng th&ocirc;ng tin n&agrave;y tới m&aacute;y t&iacute;nh của ch&uacute;ng ta th&ocirc;ng qua t&iacute;n hiệu USB hoặc PS/2.</p>

<p>Hiện nay c&oacute; hai cảm biến ch&iacute;nh l&agrave; cảm biến quang học v&agrave; cảm biến laser.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số chuột gaming/Laser-vs-Optical-scaled (1).jpg" style="width:730px" /></p>

<p><strong>Cảm biến laser</strong> cho &aacute;nh s&aacute;ng hội tụ qu&eacute;t rất mạnh n&ecirc;n qu&eacute;t được chi tiết s&acirc;u, tăng độ nhạy thực (DPI). Tuy nhi&ecirc;n, loại cảm biến n&agrave;y đang dần bị l&eacute;p vế so với cảm biến quang học do cảm biến laser đọc qu&aacute; &ldquo;kỹ&rdquo; những chi tiết ở ph&iacute;a dưới chuột n&ecirc;n chỉ hợp với một số pad chuột cứng, c&oacute; bề mặt ho&agrave;n thiện tiệm cận sự ho&agrave;n hảo.</p>

<p><strong>Cảm biến quang học</strong> l&agrave; loại cảm biến được sử dụng rất phổ biến tr&ecirc;n c&aacute;c <strong>chuột gaming</strong> hiện nay, sử dụng &aacute;nh s&aacute;ng chiếu qua thấu k&iacute;nh để ph&aacute;t hiện chuyển động tr&ecirc;n bề mặt. Với t&iacute;nh chất chiếu s&aacute;ng diện rộng n&ecirc;n cảm biến quang học chỉ phản chiếu được lớp tr&ecirc;n c&ugrave;ng của bề mặt di. Do đ&oacute; c&aacute;c chuột gaming sử dụng cảm biến n&agrave;y ph&ugrave; hợp với mọi loại pad chuột.</p>

<p>Ngo&agrave;i ra c&ograve;n một loại cảm biến m&agrave; anh em n&agrave;o 8x 9x đều biết. Đ&oacute; ch&iacute;nh l&agrave; chuột &ldquo;bi&rdquo;, hay chuột cơ học. Loại chuột n&agrave;y cho độ ch&iacute;nh x&aacute;c khi thao t&aacute;c rất cao, thường được d&ugrave;ng trong hội hoạ. Tuy nhi&ecirc;n, loại chuột n&agrave;y dần bị thay thế bởi c&aacute;c loại chuột d&ugrave;ng hai cảm biến n&oacute;i tr&ecirc;n bởi độ bền k&eacute;m, độ ch&iacute;nh x&aacute;c giảm khi vi&ecirc;n bi bị bẩn hoặc m&ograve;n.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số chuột gaming/dasadasdasdasd (1).jpg" style="width:730px" /></p>

<p>Hiện nay hầu hết c&aacute;c loại <strong>chuột gaming</strong> v&agrave; <a href="https://www.tncstore.vn/ban-phim-co.html" target="_blank"><strong>b&agrave;n ph&iacute;m cơ</strong></a> đều sử dụng giao tiếp USB thay v&igrave; PS/2 n&ecirc;n anh em game thủ ho&agrave;n to&agrave;n c&oacute; thể y&ecirc;n t&acirc;m về cổng kết nối khi mua c&aacute;c sản phẩm n&agrave;y.</p>

<h1><span style="font-size:18px"><strong>2. Độ nhạy (DPI - Dots per inch)</strong></span></h1>

<p>Dots per inch (DPI) l&agrave; đơn vị đo lường để cho biết độ nhạy của chuột. DPI của <strong>chuột gaming</strong> c&agrave;ng cao th&igrave; con trỏ tr&ecirc;n m&agrave;n h&igrave;nh của bạn sẽ di chuyển c&agrave;ng xa khi bạn di chuyển. Chuột gaming c&oacute; c&agrave;i đặt DPI cao hơn sẽ ph&aacute;t hiện v&agrave; phản ứng với c&aacute;c chuyển động nhỏ hơn.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số chuột gaming/6723864e3a9b8169a535df104a596fe0 (1).jpg" style="width:730px" /></p>

<p>Kh&ocirc;ng phải chuột chơi game n&agrave;o c&oacute; DPI cao cũng tốt. Anh em chỉ cần mức DPI từ 1000 - 10000 l&agrave; qu&aacute; đủ để chơi game rồi. Nhiều chuột gaming cao cấp c&oacute; n&uacute;t chuyển đổi DPI để anh em c&oacute; thể chuyển đổi nhanh ch&oacute;ng giữa c&aacute;c mức DPI cho ph&ugrave; hợp với c&aacute;c t&igrave;nh huống kh&aacute;c nhau.</p>

<p>&gt;&gt;&gt; Tham khảo ngay c&aacute;c loại <strong><a href="https://www.tncstore.vn/chuot-gaming.html" target="_blank">chuột gaming</a></strong> chất lượng tốt tại TNC Store!</p>

<h1><strong><span style="font-size:18px">3. FPS (Frame Per Second)</span></strong></h1>

<p>Được nhắc đến ở phần một của b&agrave;i viết, FPS ch&iacute;nh l&agrave; số khung h&igrave;nh tr&ecirc;n 1 gi&acirc;y, thể hiện khả năng xử l&yacute; dữ liệu m&agrave; cảm biến đ&atilde; thu được. FPS c&agrave;ng cao đồng nghĩa với số lượng h&igrave;nh ảnh sẽ nhiều hơn, thao t&aacute;c của người chơi sẽ ch&iacute;nh x&aacute;c hơn.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số chuột gaming/3__Corsair_Glaive_RGB (1).jpg" style="width:660px" /></p>

<p>Đ&acirc;y l&agrave; th&ocirc;ng số cực k&igrave; quan trọng trong mỗi con chuột gaming, quyết định đến sự ch&iacute;nh x&aacute;c khi di chuyển chuột v&agrave; g&oacute;p phần kh&ocirc;ng nhỏ dẫn tới chiến thắng.</p>

<h1><strong><span style="font-size:18px">4. LOD (Lift of Distance)</span></strong></h1>

<p>Đ&acirc;y l&agrave; <strong>th&ocirc;ng số chuột gaming</strong> m&agrave; anh em cần quan t&acirc;m đến khi chơi c&aacute;c tựa game FPS. LOD l&agrave; độ cao được đo giữa chuột v&agrave; bề mặt di chuyển m&agrave; khi người d&ugrave;ng n&acirc;ng chuột l&ecirc;n, cảm biến kh&ocirc;ng c&ograve;n hoạt động, được t&iacute;nh bằng đơn vị mm.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số chuột gaming/647831c6-6822-4813-a5ae-444f9ba14a49 (1).jpg" style="width:730px" /></p>

<p>Trong qu&aacute; tr&igrave;nh chơi game, đặc biệt l&agrave; c&aacute;c game bắn s&uacute;ng, người chơi thường nhấc chuột l&ecirc;n, hạ chuột xuống rất nhiều lần. Bởi thế, th&ocirc;ng số LOD c&agrave;ng thấp c&agrave;ng tốt. Điều n&agrave;y nhằm đảm bảo kh&ocirc;ng c&oacute; sự dao động bất thường n&agrave;o xảy ra khi anh em chơi game.</p>

<h1><strong><span style="font-size:18px">5. Tần số phản hồi</span></strong></h1>

<p>Tần số phản hồi (hay Polling Rate hay Refresh Rate, tuỳ thuộc v&agrave;o h&atilde;ng sản xuất) cho biết tần số m&agrave; cảm biến lấy mẫu trong 1 gi&acirc;y. VD như một con chuột gaming c&oacute; th&ocirc;ng số Polling Rate l&agrave; 1000Hz c&oacute; nghĩa l&agrave; chuột gửi th&ocirc;ng tin về m&aacute;y chủ 1000 lần trong 1 gi&acirc;y.&nbsp;</p>

<p>Tần số phản hồi c&agrave;ng cao th&igrave; chuột gaming c&agrave;ng di chuyển mượt m&agrave; hơn do m&aacute;y chủ nhận được nhiều th&ocirc;ng tin hơn.&nbsp;</p>

<h1><strong><span style="font-size:18px">6. Form cầm</span></strong></h1>

<p><strong>Th&ocirc;ng số chuột gaming</strong> n&agrave;y cho biết thiết kế của chuột ph&ugrave; hợp với người d&ugrave;ng thuận tay g&igrave;. Hầu hết c&aacute;c loại chuột tr&ecirc;n thị trường hiện nay đều được thiết kế v&agrave; tối ưu h&oacute;a đặc biệt cho việc sử dụng tay phải. Người d&ugrave;ng thuận tay tr&aacute;i thường sử dụng c&aacute;c chuột gaming c&oacute; thiết kế đối xứng.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số chuột gaming/various-gaming-mics_ae46933933704aa69d4587d90626d043_569d47c19f5545b4a47aae40b80eb9bd (1).jpg" style="width:730px" /></p>

<p>Ngo&agrave;i ra, k&iacute;ch thước chuột cũng kh&aacute; quan trọng. T&ugrave;y v&agrave;o k&iacute;ch thước tay của anh em m&agrave; lựa chọn form cầm cho th&iacute;ch hợp.</p>

<p>&nbsp;</p>

<p>V&agrave; đ&oacute; l&agrave; tất cả những <strong>th&ocirc;ng số chuột gaming</strong> m&agrave; anh em cần biết nếu muốn sắm cho m&igrave;nh chiếc chuột ưng &yacute; nhất. H&atilde;y thường xuy&ecirc;n gh&eacute; thăm <strong><a href="https://www.tncstore.vn/" target="_blank">TNC Store</a></strong> để cập nhật những sản phẩm c&ocirc;ng nghệ mới nhất nh&eacute;!</p>

<div>&nbsp;</div>
', N'/Data/images/newses/tintucmoinhat/Avatar%20bai%20viet%20(4)%20(1).jpg', NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-06T13:37:17.767' AS DateTime), N'quang', CAST(N'2020-12-06T13:37:00.000' AS DateTime), NULL, 4, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (18, N'Tuần này mua gì? Các sản phẩm bán chạy tại TNC Store (9/11 - 15/11)', N'Sản phẩm bán chạy TNC Store tuần 46', N'san-pham-ban-chay-tnc-store-tuan-46', N'Dịp cuối năm chính là thời điểm rất thích hợp để mua sắm các sản phẩm mới. Cùng TNC khám phá các sản phẩm đang bán chạy tuần vừa rồi nhé!', N'<div class="post_content">
<p><em>Dịp cuối năm ch&iacute;nh l&agrave; thời điểm rất th&iacute;ch hợp để mua sắm c&aacute;c sản phẩm mới. C&ugrave;ng TNC kh&aacute;m ph&aacute; c&aacute;c sản phẩm đang b&aacute;n chạy tuần vừa rồi nh&eacute;!</em></p>

<p>&nbsp;</p>

<p style="text-align:left">Với sự ra mắt của c&aacute;c linh kiện, sản phẩm mới đến từ những &ocirc;ng lớn như RTX 3000 Series của Intel, CPU Ryzen 5000 Series đến từ AMD&hellip; th&igrave; thị trường c&ocirc;ng nghệ đang trở n&ecirc;n s&ocirc;i động hơn bao giờ hết.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Sản phẩm bán chạy 9-15 tháng 11/amd-chinh-thuc-ra-mat-cac-vi-xu-ly-amd-ryzen-5000-series-tin-gaming-gear-2-1140x641 (1).jpg" style="width:730px" /></p>

<p style="text-align:left">&nbsp;</p>

<p>Do đ&oacute;, những anh em game thủ đang c&oacute; nhu cầu sắm một chiếc <strong>PC Gaming </strong>th&igrave; đ&acirc;y ch&iacute;nh l&agrave; thời điểm th&iacute;ch hợp do gi&aacute; c&aacute;c linh kiện quan trọng như card đồ hoạ, CPU, RAM đ&atilde; trở n&ecirc;n &ldquo;mềm&rdquo; hơn nhiều.</p>

<p>C&ograve;n nếu như anh em vẫn đang ph&acirc;n v&acirc;n chưa biết lựa chọn người bạn đồng h&agrave;nh n&agrave;o sẽ đi c&ugrave;ng tr&ecirc;n chặng đường ph&iacute;a trước th&igrave; chuy&ecirc;n mục sản phẩm b&aacute;n chạy trong tuần tại TNC Store sẽ l&agrave; trợ thủ đắc lực cho anh em. Kh&aacute;m ph&aacute; ngay top 6 &ldquo;nh&acirc;n vật&rdquo; ti&ecirc;u biểu tại TNC tuần vừa qua nh&eacute;!</p>

<p>&nbsp;</p>

<h1><strong><span style="font-size:18px">1. Laptop MSI Bravo 15 A4DCR 270VN</span></strong></h1>

<p>Nhắc đến c&aacute;c d&ograve;ng <strong>Laptop gaming</strong> tầm trung c&oacute; hiệu năng mạnh mẽ th&igrave; <strong>MSI Bravo 15</strong> ch&iacute;nh l&agrave; sản phẩm ti&ecirc;u biểu. Với m&atilde; sản phẩm A4DCR 270VN, chiếc <strong>laptop chơi game</strong> MSI Bravo 15 c&oacute; thiết kế cứng c&aacute;p, tinh tế.&nbsp;</p>

<p>Tiếp đến, sau Alpha 15 th&igrave; MSI đ&atilde; cho ra mắt d&ograve;ng sản phẩm sử dụng full linh kiện đến từ AMD với CPU Ryzen 5 4600H, VGA Radeon&trade; RX5300M 3GB GDDR6 c&oacute; hiệu năng cực kỳ mạnh mẽ, vượt tr&ecirc;n c&aacute;c đối thủ c&ugrave;ng ph&acirc;n kh&uacute;c.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Sản phẩm bán chạy 9-15 tháng 11/msibravo2 (1).jpg" style="width:730px" /></p>

<p>Về c&aacute;c th&ocirc;ng số đ&aacute;ng ch&uacute; &yacute; kh&aacute;c, chiếc<strong> laptop gaming</strong> n&agrave;y sở hữu m&agrave;n h&igrave;nh 15.6 inch với tần số qu&eacute;t l&ecirc;n tới 144Hz, RAM 8GB c&oacute; khả năng n&acirc;ng cấp l&ecirc;n đến 64GB, ổ cứng SSD 256GB NVMe. Hiệu năng của m&aacute;y v&igrave; thế kh&aacute; ấn tượng, c&oacute; thể đ&aacute;p ứng tốt c&aacute;c t&aacute;c vụ văn ph&ograve;ng cơ bản, chơi c&aacute;c tựa game online mượt m&agrave; c&ugrave;ng một số game nặng ở mức c&agrave;i đặt trung b&igrave;nh.</p>

<p>&gt;&gt;&gt; THAM KHẢO NGAY SẢN PHẨM TẠI LINK DƯỚI:</p>

<p><a href="https://www.tncstore.vn/laptop-msi-bravo-15-a4dcr-270vn.html" target="_blank"><strong>Laptop MSI Bravo 15 A4DCR 270VN</strong></a></p>

<h1><strong><span style="font-size:18px">2. M&agrave;n h&igrave;nh Asus TUF Gaming VG249Q1R</span></strong></h1>

<p>Kh&ocirc;ng phải b&agrave;n c&atilde;i g&igrave; nhiều về chất lượng của chiếc <strong>m&agrave;n h&igrave;nh gaming</strong> Asus TUF VG249Q1R. Anh em n&agrave;o theo d&otilde;i thường xuy&ecirc;n <strong>TNC Channel</strong> chắc hẳn đều biết đến chiếc m&agrave;n h&igrave;nh &ldquo;ngon, bổ, rẻ&rdquo; n&agrave;y.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Sản phẩm bán chạy 9-15 tháng 11/tuf-gaming-vg249q1r-o1 (1).jpg" style="width:730px" /></p>

<p>Với thiết kế viền c&ugrave;ng độ d&agrave;y si&ecirc;u mỏng, VG249Q1R c&ograve;n sở hữu tấm nền IPS, tần số qu&eacute;t l&ecirc;n tới 165Hz cho trải nghiệm gaming cực kỳ ch&acirc;n thực. Mức gi&aacute; của chiếc m&agrave;n h&igrave;nh n&agrave;y chắc hẳn sẽ khiến nhiều gamethủ phải giật m&igrave;nh so với thị trường khoảng 2, 3 năm về trước.</p>

<p>&gt;&gt;&gt; Tham khảo ngay sản phẩm tại link dưới:</p>

<p><strong><a href="https://www.tncstore.vn/man-hinh-asus-tuf-gaming-vg249qr1r-ips.html" target="_blank">M&agrave;n h&igrave;nh Asus TUF Gaming VG249Q1R</a></strong></p>

<h1><strong><span style="font-size:18px">3. B&agrave;n ph&iacute;m cơ E-DRA EK387 Pro MX Cherry Blue Switch</span></strong></h1>

<p>Được mệnh danh l&agrave; <strong>b&agrave;n ph&iacute;m cơ gaming</strong> sử dụng switch Cherry c&oacute; gi&aacute; rẻ nhất Việt Nam. <strong>E-DRA EK387 Pro</strong> c&oacute; thiết kế kh&aacute; chắc chắn, kiểu d&aacute;ng TKL nhỏ gọn tiết kiệm kh&ocirc;ng gian l&agrave;m việc, th&iacute;ch hợp cho anh em hay di chuyển.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Sản phẩm bán chạy 9-15 tháng 11/img6333-copy-1582865481149759522007 (1).jpg" style="width:730px" /></p>

<p>C&aacute;c keycap được l&agrave;m bằng nhựa PBT si&ecirc;u bền, kh&oacute; bị mờ trong thời gian d&agrave;i,<strong> Switch Cherry</strong> mang lại độ bền tuyệt vời với tuổi thọ l&ecirc;n tới h&agrave;ng triệu lần bấm. Đ&acirc;y ch&iacute;nh l&agrave; một trong những sản phẩm b&agrave;n ph&iacute;m cơ gaming phổ th&ocirc;ng được nhiều người d&ugrave;ng để &yacute; v&agrave; lựa chọn nhất.</p>

<p>&gt;&gt;&gt; Tham khảo ngay <a href="https://www.tncstore.vn/ban-phim-co-e-dra-ek387-pro-mx-cherry-blue.html" target="_blank"><strong>B&agrave;n ph&iacute;m cơ E-DRA EK387 Pro MX Cherry Blue Switch</strong></a>.</p>

<h1><strong><span style="font-size:18px">4. Chuột Asus Cerberus Optical</span></strong></h1>

<p>Với thiết kế c&acirc;n đối ph&ugrave; hợp với mọi đối tượng game thủ, số lượng ph&iacute;m bấm v&agrave; c&aacute;c mức DPI đa dạng khiến <strong>chuột Gaming</strong> <strong>Asus</strong> <strong>Cerberus </strong>l&agrave; sản phẩm xứng đ&aacute;ng nằm trong top c&aacute;c gaming gear gi&aacute; rẻ.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Sản phẩm bán chạy 9-15 tháng 11/18575420186d8ff6c58085096c641ea6.jpg_720x720q80.jpg_ (1).jpg" style="width:730px" /></p>

<p>Lớp cao su được phủ ở hai b&ecirc;n h&ocirc;ng<strong> chuột gaming </strong>gi&uacute;p giảm thiểu lượng mồ h&ocirc;i tay b&aacute;m tr&ecirc;n th&acirc;n nhằm trải nghiệm khi chơi game được trọn vẹn nhất. Anh em n&agrave;o sử dụng c&aacute;c linh kiện, gear đến từ Asus th&igrave; Cerberus chắc chắn l&agrave; mảnh gh&eacute;p ho&agrave;n hảo cho bộ m&aacute;y t&iacute;nh chơi game của m&igrave;nh.</p>

<p>&gt;&gt;&gt; Tham khảo ngay sản phẩm tại link dưới:</p>

<p><strong><a href="https://www.tncstore.vn/chuot-asus-cerberus.html" target="_blank">Chuột Asus Cerberus Optical</a></strong></p>

<h1><strong><span style="font-size:18px">5. Tai nghe Kingston HyperX Cloud Stinger Core 7.1</span></strong></h1>

<p>Nếu anh em đang t&igrave;m một chiếc <strong>tai nghe gaming</strong> vừa nhẹ, vừa bền lại c&oacute; gi&aacute; th&agrave;nh hợp l&yacute; th&igrave;<strong> Kingston HyperX Cloud Stinger Core 7.1</strong> ch&iacute;nh l&agrave; sản phẩm ti&ecirc;u biểu nhất. Với trọng lượng chỉ 215g, sở hữu m&agrave;ng loa 40mm, chụp tai mềm mại c&ugrave;ng hỗ trợ giả lập &acirc;m thanh 7.1, chiếc tai nghe gaming n&agrave;y rất th&iacute;ch hợp cho chơi game trong thời gian d&agrave;i.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Sản phẩm bán chạy 9-15 tháng 11/maxresdefault (2) (1).jpg" style="width:730px" /></p>

<p>HyperX Cloud Stinger Core c&oacute; kết nối 3.5mm cho cả tai nghe v&agrave; mic (mic c&oacute; thể xoay tuỳ theo &yacute; muốn của anh em). Thanh trượt bằng th&eacute;p cũng c&oacute; thể điều chỉnh dễ d&agrave;ng gi&uacute;p ph&ugrave; hợp với mọi người d&ugrave;ng.</p>

<p>&gt;&gt;&gt; Tham khảo ngay Tai nghe Kingston HyperX Cloud Stinger Core 7.1 <a href="https://www.tncstore.vn/tai-nghe-kingston-hyperx-cloud-stinger-core-7.1.html" target="_blank">tại đ&acirc;y!</a></p>

<h1><strong><span style="font-size:18px">6. Ghế Gaming Cooler Master Caliber R2 Purple</span></strong></h1>

<p>Nh&acirc;n vật cuối c&ugrave;ng kh&ocirc;ng ai kh&aacute;c ch&iacute;nh l&agrave; chiếc <strong>ghế gaming</strong> &ldquo;m&agrave;u t&iacute;m mộng mer&rdquo; <strong>Cooler Master Caliber R2 Purple</strong>. C&oacute; thiết kế ph&ugrave; hợp với khổ người trung b&igrave;nh v&agrave; to, R2 c&oacute; thể chịu đựng tải trọng l&ecirc;n tới 150kg.&nbsp;</p>

<p style="text-align:center"><iframe class="note-video-clip" frameborder="0" height="360" src="//www.youtube.com/embed/5uWWFxwJoMs" width="640"></iframe></p>

<p>Với những anh em thường xuy&ecirc;n chơi game trong thời gian d&agrave;i th&igrave; chiếc ghế gaming n&agrave;y đ&uacute;ng l&agrave; &ldquo;vị cứu tinh&rdquo; khi c&oacute; thể điều chỉnh 180 độ gi&uacute;p người d&ugrave;ng nghỉ ngơi lấy lại sức ngay tại chỗ. Anh em chỉ cần thong thả đắm ch&igrave;m người xuống với g&oacute;c độ y&ecirc;u th&iacute;ch v&agrave; thư gi&atilde;n với gối k&ecirc; đầu si&ecirc;u thoải m&aacute;i.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Sản phẩm bán chạy 9-15 tháng 11/96756872_3133020250070953_240360272693297152_o.jpg__nc_cat=104&amp;ccb=2&amp;_nc_sid=730e14&amp;_nc_ohc=JO5KWKr6YZYAX_ukKJL&amp;_nc_ht=scontent.fhan2-6 (1).jpg" style="width:730px" /></p>

<p>&gt;&gt;&gt; Tham khảo ngay sản phẩm tại link dưới:</p>

<p><a href="https://www.tncstore.vn/ghe-gaming-coolermaster-caliber-r2-purple.html" target="_blank">Ghế Gaming Cooler Master Caliber R2 Purple</a></p>

<p>&nbsp;</p>

<p>V&agrave; đ&oacute; l&agrave; top 6 sản phẩm b&aacute;n chạy tuần vừa qua tại <strong>TNC Store</strong>. Hi vọng qua b&agrave;i viết n&agrave;y anh em đ&atilde; c&oacute; sự lựa chọn ưng &yacute; cho nhu cầu của m&igrave;nh.&nbsp;H&atilde;y thường xuy&ecirc;n gh&eacute; thăm <strong><a href="https://www.tncstore.vn/" target="_blank">TNC Store</a></strong> để cập nhật những tin tức về c&ocirc;ng nghệ hữu &iacute;ch nhất nh&eacute;!</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>
</div>
', N'/Data/images/newses/tintucmoinhat/sale-online-la-gi(1)%20(1).jpg', NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-06T13:37:37.947' AS DateTime), N'quang', CAST(N'2020-12-06T13:37:00.000' AS DateTime), NULL, 4, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (19, N'Tuần này mua gì? Các sản phẩm đang bán chạy tại TNC Store (16/11 - 22/11)', N'Top sản phẩm bán chạy tuần 46', N'top-san-pham-ban-chay-tuan-46', N'Sự kiện mua sắm lớn nhất trong năm Black Friday sắp tới mà bạn vẫn chưa tìm được món đồ ưng ý? Hãy cùng TNC khám phá các sản phẩm đang bán chạy tuần vừa qua nhé!', N'<p>Sự kiện mua sắm lớn nhất trong năm Black Friday sắp tới m&agrave; bạn vẫn chưa t&igrave;m được m&oacute;n đồ ưng &yacute;? H&atilde;y c&ugrave;ng TNC kh&aacute;m ph&aacute; c&aacute;c sản phẩm đang b&aacute;n chạy tuần vừa qua nh&eacute;!</p>

<p>&nbsp;</p>

<p>Đến hẹn lại l&ecirc;n, dịp <strong>Black Friday</strong> (ng&agrave;y thứ 6 cuối c&ugrave;ng trong th&aacute;ng 11) thu h&uacute;t sự ch&uacute; &yacute; đ&ocirc;ng đảo từ người ti&ecirc;u d&ugrave;ng do đ&acirc;y l&agrave; sự kiện c&aacute;c nh&agrave; b&aacute;n lẻ tung ra những khuyến mại, giảm gi&aacute; cực kỳ hấp dẫn, c&oacute; một kh&ocirc;ng hai trong năm.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Sản phẩm bán chạy 16-22 tháng 11/Black-Friday-online (1).jpg" style="width:730px" /></p>

<p>Kh&ocirc;ng nằm ngo&agrave;i xu thế chung th&igrave; thị trường c&ocirc;ng nghệ cũng đ&oacute;n những &ldquo;deal&rdquo; m&agrave; chỉ nghe qua th&ocirc;i cũng khiến d&acirc;n t&igrave;nh &ldquo;đổ x&ocirc;&rdquo; đi mua sắm, nhất l&agrave; ở thời điểm m&agrave; CPU AMD Ryzen 5000 Series v&agrave; PlayStation 5 vừa được mở b&aacute;n th&igrave; gi&aacute; c&aacute;c sản phẩm c&ocirc;ng nghệ thế hệ cũ hơn hứa hẹn sẽ giảm kh&aacute; nhiều.</p>

<p>Nếu như anh em vẫn chưa biết hoặc đang ph&acirc;n v&acirc;n kh&ocirc;ng biết mua sắm g&igrave; th&igrave; chuy&ecirc;n mục top c&aacute;c sản phẩm b&aacute;n chạy trong tuần tại TNC Store sẽ gi&uacute;p anh em t&igrave;m ra những &ldquo;deal&rdquo; ph&ugrave; hợp nhất cho bản th&acirc;n đấy!</p>

<p>&nbsp;</p>

<h1><strong><span style="font-size:18px">1. Laptop Gaming Acer Nitro 5 2020 AN515-55-5923</span></strong></h1>

<h1 style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Sản phẩm bán chạy 16-22 tháng 11/an515-55-des-1.jpg" style="width:730px" /></h1>

<h1 style="text-align:center">&nbsp;</h1>

<p>Với mẫu 2020 th&igrave; d&ograve;ng <strong>Laptop Gaming Acer Nitro 5</strong> thực sự trở th&agrave;nh chiếc laptop rất đ&aacute;ng để sở hữu trong ph&acirc;n kh&uacute;c tầm trung. V&agrave; tuần vừa qua chiếc laptop gaming <strong>Acer Nitro 5 </strong>với m&atilde; sản phẩm AN515-55-5923 đ&atilde; được rất nhiều anh em lựa chọn nhờ những t&iacute;nh năng rất hữu &iacute;ch như tản nhiệt tốt, hiệu năng khoẻ, khối lượng mỏng nhẹ.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Sản phẩm bán chạy 16-22 tháng 11/53839_nitro5__5_.jpg" style="width:730px" /></p>

<p>Mặt A của <strong>Acer Nitro 5 2020</strong> c&oacute; chất lượng ho&agrave;n thiện cực tốt, đường cắt phay xước thể hiện sự tinh tế thường thấy tr&ecirc;n d&ograve;ng Predator. Lỗ sạc pin được chuyển xuống ph&iacute;a sau m&aacute;y gi&uacute;p thuận tiện hơn khi sử dụng. Bộ phận tho&aacute;t kh&iacute; tr&ecirc;n Acer Nitro 5 2020 cũng được chăm ch&uacute;t kh&aacute; cẩn thận, hốc tản nhiệt to hơn, cho lượng kh&iacute; lưu th&ocirc;ng lớn hơn.</p>

<p>C&oacute; mức gi&aacute; rất hợp l&yacute;, <strong>Acer Nitro 5</strong> <strong>AN515-55-5923</strong> sở hữu CPU Intel&reg; Core&trade; I5-10300H, card đồ họa nVidia Geforce GTX 1650Ti 4GB cứng 512GB SSD cho hiệu năng cũng như tốc độ khi chơi game mạnh mẽ. Những tựa game online phổ biến c&ugrave;ng một số game c&oacute; mức đồ hoạ nặng đều c&oacute; thể chiến tốt tr&ecirc;n chiếc <strong>Laptop Gaming</strong> Acer Nitro 5.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Sản phẩm bán chạy 16-22 tháng 11/CPS-Acer-Nitro-5-2020-6.jpg" style="width:730px" /></p>

<p>Ngo&agrave;i ra, chiếc laptop gaming n&agrave;y c&ograve;n sở hữu m&agrave;n h&igrave;nh 15.6 inch với tần số qu&eacute;t l&ecirc;n tới 144Hz. Anh em ho&agrave;n to&agrave;n c&oacute; thể k&eacute;o mức settings của CS:GO, LOL, Valorant&hellip; l&ecirc;n cao nhất m&agrave; vẫn tận dụng được tần số qu&eacute;t tối đa của chiếc m&agrave;n h&igrave;nh gaming n&agrave;y.</p>

<p>&gt;&gt;&gt; THAM KHẢO NGAY SẢN PHẨM TẠI LINK DƯỚI:</p>

<p><strong><a href="https://www.tncstore.vn/laptop-gaming-acer-nitro-5-an515-55-5923.html" target="_blank">Laptop Gaming Acer Nitro 5 2020 AN515-55-5923</a></strong></p>

<p>&nbsp;</p>

<p><strong>2. M&agrave;n H&igrave;nh Viewsonic VA2432-H</strong></p>

<p style="text-align:center">&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Sản phẩm bán chạy 16-22 tháng 11/1_89ceb16b89444355a8e097ee1ed108ca_master (1).jpg" style="width:730px" /></p>

<p>Đừng nh&igrave;n c&aacute;i t&ecirc;n m&agrave; lầm tưởng đ&acirc;y l&agrave; chiếc m&agrave;n h&igrave;nh gaming d&ugrave;ng tấm nền VA. <strong>Viewsonic VA2432-H</strong> nổi bật l&ecirc;n nhờ mức gi&aacute; si&ecirc;u rẻ cho một <strong>m&agrave;n h&igrave;nh gaming</strong> sở hữu tấm nền IPS, cho m&agrave;u sắc c&ugrave;ng g&oacute;c nh&igrave;n rộng.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Sản phẩm bán chạy 16-22 tháng 11/3806P542_pc (1).jpg" style="width:730px" /></p>

<p>Với k&iacute;ch thước 24 inch vừa đủ cho gaming c&ugrave;ng c&aacute;c t&aacute;c vụ giải tr&iacute; kh&aacute;c như xem phim, xem ảnh, video. Ba mặt cạnh của chiếc <strong>m&agrave;n h&igrave;nh gaming</strong> Viewsonic VA2432-H được thiết kế si&ecirc;u mỏng, tr&agrave;n viền cực kỳ th&iacute;ch hợp cho game thủ khi chơi <strong>PC Gaming</strong>.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Sản phẩm bán chạy 16-22 tháng 11/39254_VA2432-HBVh4 (1).jpg" style="width:730px" /></p>

<p>Gi&aacute; của chiếc <strong>m&agrave;n h&igrave;nh gaming</strong> n&agrave;y nh&acirc;n dịp Black Friday rất hấp dẫn, ph&ugrave; hợp với đa số anh em game thủ. Mức tần số qu&eacute;t 75Hz l&agrave; đủ để anh em chơi c&aacute;c tựa game một c&aacute;ch mượt m&agrave; m&agrave; kh&ocirc;ng cần phải qu&aacute; lo lắng về vấn đề trải nghiệm.</p>

<p>&gt;&gt;&gt; THAM KHẢO NGAY SẢN PHẨM TẠI LINK DƯỚI:</p>

<p><strong><a href="https://www.tncstore.vn/man-hinh-viewsonic-va2432-h.html" target="_blank">M&agrave;n H&igrave;nh Viewsonic VA2432-H</a></strong></p>

<h1><strong><span style="font-size:18px">3. B&agrave;n ph&iacute;m cơ E-DRA EK3104 RGB</span></strong></h1>

<h1 style="text-align:center"><iframe class="note-video-clip" frameborder="0" height="360" src="//www.youtube.com/embed/3BMY_zX7nBk" width="640"></iframe></h1>

<p>Đến từ thương hiệu &ldquo;c&acirc;y nh&agrave; l&aacute; vườn&rdquo; E-DRA, chiếc b&agrave;n ph&iacute;m cơ gaming<strong> EK3104 RGB</strong> l&agrave; sản phẩm nổi bật với đ&egrave;n LED RGB 16,8 triệu m&agrave;u v&agrave; c&oacute; thể tuỳ chỉnh m&agrave;u bằng ứng dụng.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Sản phẩm bán chạy 16-22 tháng 11/e-dra-ek3104-blue-switch-3.jpg" style="width:730px" /></p>

<p>C&oacute; k&iacute;ch thước Full Size, thiết kế tối giản, chất lượng build kh&aacute; chắc chắn c&ugrave;ng việc sở hữu Switch Outemu si&ecirc;u bền, <strong>EK3104 RGB</strong> thực sự l&agrave; một chiếc b&agrave;n ph&iacute;m cơ gaming tốt trong ph&acirc;n kh&uacute;c dưới 1 triệu đồng.</p>

<p>Anh em cũng c&oacute; thể ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m về độ bền của keycaps, được l&agrave;m bằng nhựa ABS Double shot cho chất lượng vỏ ph&iacute;m cũng như c&aacute;c chi tiết được in tr&ecirc;n b&agrave;n ph&iacute;m cơ rất tốt, thuận tiện cho việc <strong><a href="https://www.tncstore.vn/ve-sinh-ban-phim-co-pc-gaming-dung-cach.html" target="_blank">vệ sinh b&agrave;n ph&iacute;m cơ</a></strong> thường xuy&ecirc;n.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Sản phẩm bán chạy 16-22 tháng 11/8d0b4a4fa0180f6804f422ed233de7cc.jpg_720x720q80.jpg_.jpg" style="width:730px" /></p>

<p>&gt;&gt;&gt; THAM KHẢO NGAY SẢN PHẨM TẠI LINK DƯỚI:</p>

<p><strong><a href="https://www.tncstore.vn/index.php?route=product%2Fsearch&amp;search=B%C3%A0n+ph%C3%ADm+c%C6%A1+E-DRA+EK3104+RGB&amp;category_id=0" target="_blank">B&agrave;n ph&iacute;m cơ E-DRA EK3104 RGB</a></strong></p>

<h1><strong><span style="font-size:18px">4. Chuột Cooler Master CM310</span></strong></h1>

<h1 style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Sản phẩm bán chạy 16-22 tháng 11/Cooler-Master-CM310-review (1).jpg" style="width:730px" /></h1>

<h1 style="text-align:center">&nbsp;</h1>

<p>Thương hiệu Cooler Master dường như chưa bao giờ l&agrave;m game thủ thất vọng về c&aacute;c sản phẩm <strong>gaming gear</strong> với chất lượng build tốt, thiết kế ph&ugrave; hợp với mọi đối tượng người d&ugrave;ng. V&agrave; <strong>chuột gaming CM310</strong> ch&iacute;nh l&agrave; sản phẩm ti&ecirc;u biểu cho d&ograve;ng chuột gaming gi&aacute; rẻ.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Sản phẩm bán chạy 16-22 tháng 11/37-CM310 (1).jpg" style="width:730px" /></p>

<p>C&oacute; thiết kế đối xứng, lớp đệm cao su ở hai b&ecirc;n h&ocirc;ng v&agrave; th&acirc;n gi&uacute;p game thủ thoải m&aacute;i hơn khi chiến game trong thời gian d&agrave;i tr&ecirc;n chiếc <strong>PC Gaming</strong> của m&igrave;nh. Cảm biến tầm trung Pixart A3325 tr&ecirc;n CM310 l&agrave; vừa đủ cho gaming.</p>

<p>Với những anh em muốn gắn macro khi chơi game th&igrave; CM310 l&agrave; sự lựa chọn rất th&iacute;ch hợp với tổng cộng 8 n&uacute;t bấm tr&ecirc;n th&acirc;n chuột, gi&uacute;p những pha combo được thực hiện một c&aacute;ch trơn tru v&agrave; nhuần nhuyễn hơn.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Sản phẩm bán chạy 16-22 tháng 11/07img_1227 (1).jpg" style="width:730px" /></p>

<p>&gt;&gt;&gt; THAM KHẢO NGAY SẢN PHẨM TẠI LINK DƯỚI:</p>

<p><strong><a href="https://www.tncstore.vn/chuot-cooler-master-cm310.html" target="_blank">Chuột Cooler Master CM310</a></strong></p>

<h1><strong><span style="font-size:18px">5. Tai nghe DAREU EH469 RGB</span></strong></h1>

<h1 style="text-align:center"><iframe class="note-video-clip" frameborder="0" height="360" src="//www.youtube.com/embed/wKDVTjvG4ZY" width="640"></iframe></h1>

<p>Thuộc ph&acirc;n kh&uacute;c<strong> tai nghe gaming</strong> phổ th&ocirc;ng, <strong>Dareu EH469 RGB</strong> c&oacute; chất lượng &acirc;m thanh rất tốt c&ugrave;ng đ&egrave;n LED RGB tr&ecirc;n tai nghe gi&uacute;p EH469 RGB nổi bật so với những sản phẩm kh&aacute;c.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Sản phẩm bán chạy 16-22 tháng 11/maxresdefault (4) (1).jpg" style="width:730px" /></p>

<p>Thuộc loại tai nghe Over-Ear, EH469 RGB c&oacute; thiết kế kh&aacute; đẹp với hai mẫu sản phẩm c&oacute; t&ocirc;ng m&agrave;u đen hoặc hồng. Phi&ecirc;n bản hồng rất th&iacute;ch hợp với những anh em c&oacute; &yacute; định mua tặng crush, người y&ecirc;u hay chị em g&aacute;i bởi phi&ecirc;n bản n&agrave;y sẽ c&oacute; th&ecirc;m hai c&aacute;i &ldquo;tai thỏ&rdquo; c&oacute; thể gắn tr&ecirc;n tai nghe.</p>

<p>Chất lượng &acirc;m thanh của <strong>tai nghe gaming</strong> EH469 cũng được đ&aacute;nh gi&aacute; cao với giả lập &acirc;m thanh 7.1, tần số đ&aacute;p ứng trong khoảng 20Hz-20000Hz. Đệm m&uacute;t của tai nghe gaming n&agrave;y kh&aacute; &ecirc;m d&ugrave; những tiếng ồn từ m&ocirc;i trường b&ecirc;n ngo&agrave;i c&oacute; thể nghe thấy được khi đang đeo chiếc tai nghe n&agrave;y.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Sản phẩm bán chạy 16-22 tháng 11/4601_DareUEH469-p-2 (1).jpg" style="width:730px" /></p>

<p>&gt;&gt;&gt;&nbsp;THAM KHẢO NGAY SẢN PHẨM TẠI LINK DƯỚI:</p>

<p><strong><a href="https://www.tncstore.vn/index.php?route=product%2Fsearch&amp;search=Tai+nghe+DAREU+EH469+RGB&amp;category_id=0" target="_blank">Tai nghe DAREU EH469 RGB</a></strong></p>

<h1><strong><span style="font-size:18px">6. Ghế Gaming EDRA Hercules EGC203 V2</span></strong></h1>

<h1 style="text-align:center"><iframe class="note-video-clip" frameborder="0" height="360" src="//www.youtube.com/embed/96iiZLb7eKk" width="640"></iframe></h1>

<p>L&agrave; thương hiệu <strong>gaming gear</strong> nổi tiếng với những sản phẩm chất lượng cao ở ph&acirc;n kh&uacute;c &ldquo;rẻ hơn&rdquo;, Edra thực sự đ&atilde; l&agrave;m rất tốt với<strong> ghế gaming Hercules EGC203 V2</strong>.&nbsp;</p>

<p>C&oacute; thiết kế cực kỳ chắc chắn c&ugrave;ng ch&acirc;n v&agrave; khung gầm được l&agrave;m bằng kim loại, <strong>Hercules EGC203</strong> hứa hẹn mang lại những gi&acirc;y ph&uacute;t gaming trở n&ecirc;n thư gi&atilde;n v&agrave; thoải m&aacute;i nhất.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Sản phẩm bán chạy 16-22 tháng 11/ghe-game-e-dra-hercules-egc203-pro-12.jpg" style="width:730px" /></p>

<p>Hai tay đỡ c&oacute; khả năng xoay tr&aacute;i, phải thường thấy tr&ecirc;n những chiếc ghế gaming đắt tiền v&agrave; được đặt ch&eacute;o về ph&iacute;a trước. Mặt đệm lưng được thiết kế c&ocirc;ng th&aacute;i học, tạo cảm gi&aacute;c thoải m&aacute;i khi ngồi chơi game trong thời gian d&agrave;i tr&ecirc;n chiếc <strong>ghế gaming</strong> n&agrave;y.</p>

<p>&gt;&gt;&gt; Tham khảo ngay sản phẩm tại link dưới:</p>

<p><strong><a href="https://www.tncstore.vn/ghe-gaming-edra-hercules-egc203.html" target="_blank">Ghế Gaming EDRA Hercules EGC203 V2</a></strong></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>V&agrave; đ&oacute; l&agrave; top 6 <strong>sản phẩm b&aacute;n chạy t</strong>uần vừa qua tại <strong>TNC Store</strong>. H&atilde;y nhanh tay chốt ngay những sản phẩm ưa th&iacute;ch trong dịp sale Black Friday v&agrave; đừng qu&ecirc;n theo d&otilde;i <strong><a href="https://www.tncstore.vn/tin-tuc" target="_blank">TNC News</a></strong> để cập nhật những tin tức về sản phẩm c&ocirc;ng nghệ hữu &iacute;ch nhất nh&eacute;!</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>
', N'/Data/images/newses/tintucmoinhat/125958774_1275303589497607_6075705389528246555_n_jpg__nc_cat%3D107%26ccb%3D2%26_nc_sid%3Dae9488%26_nc_ohc%3D705b5V_Q_DQAX-xvz83%26_nc_ht%3Dscontent_fhan2-5%20(1).jpg', NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-06T13:38:10.253' AS DateTime), N'quang', CAST(N'2020-12-06T13:38:00.000' AS DateTime), NULL, 4, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (20, N'Những điều tuyệt vời không thể ngờ tới khi mua PC Gaming mới', N'Những điều tuyệt vời khi mua PC Gaming mới', N'nhung-dieu-tuyet-voi-khi-mua-pc-gaming-moi', N'Việc quyết định lựa chọn chiếc máy tính chơi game cũ hay mới chưa bao giờ đơn giản. Cùng TNC bật mí những điều tuyệt vời khi mua PC Gaming mới nhé!', N'<p><em>Việc quyết định lựa chọn chiếc m&aacute;y t&iacute;nh chơi game cũ hay mới chưa bao giờ đơn giản. C&ugrave;ng TNC bật m&iacute; những điều tuyệt vời khi mua PC Gaming mới nh&eacute;!</em></p>

<p>&nbsp;</p>

<p>Đối với phần đ&ocirc;ng anh em game thủ th&igrave; việc sở hữu một chiếc <strong>PC Gaming</strong> thực sự rất tuyệt vời. Cảm gi&aacute;c khi tụ tập, chơi game tại qu&aacute;n net mang lại niềm vui th&iacute;ch, được sẻ chia những cảm x&uacute;c vui buồn c&ugrave;ng bạn b&egrave; cũng th&iacute;ch đấy. Nhưng trong những ng&agrave;y thời tiết ẩm ương kh&oacute; chịu th&igrave; việc ngồi nh&agrave; chiến con game m&igrave;nh ưa th&iacute;ch, k&egrave;m một t&aacute;ch đồ uống hợp vị th&igrave; kh&ocirc;ng c&oacute; g&igrave; c&oacute; thể diễn tả được.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/PC Gaming mới/96_pc_gaming (1).jpg" style="width:730px" /></p>

<p>Việc mua một bộ <strong>PC Gaming</strong> c&ograve;n gi&uacute;p anh em chủ động hơn, kh&ocirc;ng c&ograve;n phải &ldquo;bon chen&rdquo; mỗi khi qu&aacute;n net hết m&aacute;y hay gặp sự cố bất chợt như mất điện. Anh em cũng ho&agrave;n to&agrave;n hiểu đứa con cưng của m&igrave;nh, <strong>cấu h&igrave;nh m&aacute;y t&iacute;nh chơi game</strong> của m&igrave;nh c&oacute; những điểm mạnh, điểm yếu g&igrave;. Từ đ&oacute; việc n&acirc;ng cấp, sửa chữa, bảo dưỡng cũng rất dễ d&agrave;ng.</p>

<p>Vậy lựa chọn <strong>PC Gaming </strong>cũ hay mới? Với phần lớn anh em game thủ vẫn c&ograve;n đang trong độ tuổi đi học, l&agrave; học sinh, sinh vi&ecirc;n tr&ecirc;n giảng đường th&igrave; thường sẽ nghĩ ngay đến một bộ <strong>PC Gaming cũ</strong> v&igrave; c&oacute; gi&aacute; th&agrave;nh rẻ v&agrave; tiện lợi. Tuy nhi&ecirc;n, việc lựa chọn PC gaming cũ gặp rất nhiều rủi ro ph&aacute;t sinh như chất lượng, tuổi thọ, bảo h&agrave;nh&hellip; kh&ocirc;ng đảm bảo.</p>

<p>Ch&iacute;nh v&igrave; vậy n&ecirc;n thay v&igrave; lựa chọn <strong>PC Gaming cũ</strong>, tại sao anh em kh&ocirc;ng tham khảo c&aacute;c bộ <strong>m&aacute;y t&iacute;nh chơi game mới</strong>, ch&iacute;nh h&atilde;ng, nguy&ecirc;n seal từ nh&agrave; sản xuất. H&atilde;y để TNC Store bật m&iacute; c&aacute;c lợi &iacute;ch tuyệt vời khi anh em mua <strong>PC gaming mới</strong> nh&eacute;!&nbsp;</p>

<p>&nbsp;</p>

<h1><strong><span style="font-size:18px">1. Được build m&aacute;y theo đ&uacute;ng sở th&iacute;ch của bản th&acirc;n</span></strong></h1>

<p>Mỗi người mỗi vẻ, c&oacute; những sở th&iacute;ch v&agrave; ti&ecirc;u chuẩn về sự ho&agrave;n mỹ kh&aacute;c nhau. Khi t&igrave;m chọn mua c&aacute;c bộ <strong>PC Gaming cũ</strong>, anh em thường thấy hầu hết c&aacute;c bộ m&aacute;y t&iacute;nh đ&atilde; được build sẵn. C&aacute;c linh kiện b&ecirc;n trong được chủ cũ lựa chọn n&ecirc;n kh&oacute; tr&aacute;nh khỏi việc anh em kh&ocirc;ng ưng &yacute;.&nbsp;</p>

<p>Ngược lại, khi mua bộ <strong>PC Gaming mới</strong>, anh em sẽ được lựa chọn thoải m&aacute;i c&aacute;c linh kiện từ c&aacute;c h&atilde;ng m&igrave;nh ưa th&iacute;ch. Do t&iacute;nh chất &ldquo;free style&rdquo; n&ecirc;n c&aacute;c cấu h&igrave;nh m&aacute;y t&iacute;nh chơi game của anh em sẽ mang t&iacute;nh c&aacute; nh&acirc;n cao, phụ thuộc v&agrave;o thị hiếu v&agrave; sở th&iacute;ch của mỗi người.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/PC Gaming mới/partner01 (1).jpg" style="width:730px" /></p>

<p>Việc tự m&igrave;nh lựa chọn c&aacute;c linh kiện trong bộ <strong>PC Gaming</strong> cũng gi&uacute;p anh em hiểu r&otilde; hơn về th&ocirc;ng số, hiệu năng v&agrave; khả năng kết nối của từng linh kiện. Từ đ&oacute; chiếc m&aacute;y t&iacute;nh của anh em cũng c&oacute; hiệu suất tốt hơn c&aacute;c pc gaming cũ. V&igrave; l&agrave; tự build n&ecirc;n chủ nh&acirc;n cũng biết r&otilde; khả năng n&acirc;ng cấp sau n&agrave;y của m&aacute;y. Đ&uacute;ng l&agrave; một mũi t&ecirc;n tr&uacute;ng hai đ&iacute;ch!</p>

<p>&gt;&gt;&gt; XEM NGAY c&aacute;c cấu h&igrave;nh <a href="https://www.tncstore.vn/gaming-pc.html" target="_blank"><strong>PC GAMING</strong></a> CỰC ĐẸP tại TNC STORE!</p>

<table class="table table-bordered">
	<tbody>
		<tr>
			<td>
			<p><a href="https://www.tncstore.vn/gaming-pc/gaming-pc-lumen-powered-by-asus.html" target="_self"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 game tháng 11/Lumen Asus.jpg" /></a></p>
			</td>
			<td>
			<p><a href="https://www.tncstore.vn/gaming-pc/gaming-pc-nova-3070-power-by-aorus.html" target="_self"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 game tháng 11/Nova 3070 Aorus.jpg" /></a></p>
			</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>

<h1><strong><span style="font-size:18px">2. Được xem trải nghiệm thực tế của cấu h&igrave;nh PC Gaming</span></strong></h1>

<p>Một khi đ&atilde; lựa chọn được cấu h&igrave;nh <strong>m&aacute;y t&iacute;nh chơi game</strong> ưng &yacute; th&igrave; hẳn anh em đều n&oacute;ng l&ograve;ng muốn biết hiệu năng thực tế của chiếc m&aacute;y ra sao. Chỉ c&oacute; phần &iacute;t những bộ pc gaming cũ c&oacute; phần kiểm tra sức mạnh khi hoạt động.&nbsp;</p>

<p>Hơn nữa, từ thời điểm test hiệu năng thực tế cho tới l&uacute;c anh em tham khảo l&agrave; một khoảng thời gian kh&aacute; l&acirc;u. Thứ nhất, c&aacute;c linh kiện đều đ&atilde; qua thời thời gian sử dụng. Thứ hai, c&aacute;c phần mềm hay game test đều l&agrave; phi&ecirc;n bản cũ, hoặc đ&atilde; lỗi thời, hoặc trải qua nhiều bản cập nhật. Ch&iacute;nh v&igrave; những l&yacute; do đ&oacute; n&ecirc;n hiệu năng test kh&ocirc;ng thể ch&iacute;nh x&aacute;c như l&uacute;c đầu.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/PC Gaming mới/OMEGA 3090A (1).jpg" style="width:730px" /></p>

<p>C&ograve;n với những chiếc <strong>PC gaming mới </strong>th&igrave; c&aacute;c cửa h&agrave;ng, đều c&oacute; phần kiểm tra hiệu năng thực tế đối với từng bộ m&aacute;y t&iacute;nh. Đặc biệt tại <strong>TNC Store</strong>, anh em sẽ được &ldquo;thị s&aacute;t&rdquo; một c&aacute;ch chi tiết hiệu năng qua c&aacute;c tựa game, những phần mềm th&ocirc;ng dụng th&ocirc;ng qua c&aacute;c video tr&ecirc;n <strong>TNC Channel</strong> v&agrave; c&aacute;c b&agrave;i viết m&ocirc; tả sản phẩm.</p>

<p>&nbsp;</p>

<h1><strong><span style="font-size:18px">3. Kh&ocirc;ng lo về vấn đề tuổi thọ của sản phẩm</span></strong></h1>

<p>Đ&acirc;y hẳn ch&iacute;nh l&agrave; nỗi lo chung của anh em khi sử dụng c&aacute;c đồ c&ocirc;ng nghệ. Mỗi linh kiện tr&ecirc;n bộ <strong><a href="https://www.tncstore.vn/gaming-pc.html" target="_blank">PC Gaming mới</a></strong>đều l&agrave; sản phẩm nguy&ecirc;n seal, mới ch&iacute;nh h&atilde;ng từ c&aacute;c nh&agrave; sản xuất n&ecirc;n c&oacute; tuổi thọ rất l&acirc;u, c&oacute; linh kiện c&oacute; thể sử dụng hơn 10 năm nếu anh em biết c&aacute;ch bảo quản v&agrave; sử dụng.</p>

<p>Kh&ocirc;ng như đồ mới, c&aacute;c linh kiện tr&ecirc;n <strong>PC gaming cũ</strong> đều đ&atilde; qua sử dụng. Người mua rất kh&oacute; x&aacute;c định thời gian sử dụng của linh kiện cũng như linh kiện đ&oacute; c&oacute; thường xuy&ecirc;n gặp phải t&igrave;nh trạng qu&aacute; tải hay kh&ocirc;ng. Việc nắm được ch&iacute;nh x&aacute;c th&ocirc;ng tin sản phẩm cũng kh&ocirc;ng phải điều đơn giản.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/PC Gaming mới/ly5hwdq-15184224676151174018380 (1).jpg" style="width:730px" /></p>

<h1><strong><span style="font-size:18px">4. Gi&aacute; PC Gaming hiện nay đ&atilde; dễ chịu hơn rất nhiều</span></strong></h1>

<p>Những anh em hay theo d&otilde;i gi&aacute; đồ c&ocirc;ng nghệ hẳn sẽ nhận thấy nếu như v&agrave;o khoảng 3, 4 năm về trước, một chiếc PC Gaming c&oacute; gi&aacute; th&agrave;nh kh&aacute; đắt, do gi&aacute; trị c&aacute;c linh kiện như RAM, CPU, card đồ hoạ đều ở mức &ldquo;tr&ecirc;n trời&rdquo;.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/PC Gaming mới/XPG-Spectrix-D41-32 (1).jpg" style="width:730px" /></p>

<p>V&iacute; dụ như để mua <strong>RAM m&aacute;y t&iacute;nh </strong>8GB trước đ&acirc;y c&oacute; gi&aacute; v&agrave;o khoảng 2-3 triệu đồng th&igrave; giờ đ&acirc;y c&ugrave;ng với số tiền đ&oacute; anh em đ&atilde; c&oacute; thể sở hữu dung lượng RAM gấp đ&ocirc;i.&nbsp;</p>

<p>C&aacute;c <strong>CPU</strong> v&agrave; <strong>card đồ hoạ</strong> hiện nay cũng c&oacute; nhiều sự lựa chọn hơn với sự trỗi dậy mạnh mẽ từ AMD. Intel v&agrave; Nvidia giờ kh&ocirc;ng c&ograve;n &ldquo;một m&igrave;nh một ngựa&rdquo; tr&ecirc;n thị trường c&ocirc;ng nghệ nữa. V&agrave; người được hưởng lợi nhiều nhất ch&iacute;nh l&agrave; người ti&ecirc;u d&ugrave;ng. Với c&aacute;c mẫu sản phẩm mới li&ecirc;n tục được ra mắt qua mỗi năm th&igrave; chẳng đ&aacute;ng cho anh em lựa chọn c&aacute;c linh kiện cũ - hiệu năng kh&ocirc;ng bằng, kh&ocirc;ng nắm r&otilde; được t&igrave;nh trạng thực tế.</p>

<p>Đặc biệt hơn, hiểu được t&acirc;m l&yacute; những anh em game thủ kh&ocirc;ng c&oacute; hầu bao dư dả th&igrave; <strong>TNC Store</strong> đ&atilde; build sẵn những bộ <strong><a href="https://www.tncstore.vn/gaming-pc.html?attribute_id=201&amp;minprice=&amp;maxprice=" target="_blank">PC Gaming gi&aacute; rẻ</a></strong>&nbsp; m&agrave; chiến được c&aacute;c tựa game online phổ biến hiện nay.&nbsp;</p>

<table class="table table-bordered">
	<tbody>
		<tr>
			<td>
			<p><a href="https://www.tncstore.vn/gaming-pc/gaming-pc-alpha-9100.html" target="_self"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 game tháng 11/PC Gaming Alpha 9100.jpg" /></a></p>
			</td>
			<td>
			<p><a href="https://www.tncstore.vn/gaming-pc/gaming-pc-alpha-4350g.html" target="_self"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 game tháng 11/Alpha 4350G.jpg" /></a></p>
			</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>

<h1><strong><span style="font-size:18px">5. Nhiều nh&agrave; sản xuất, nguồn cung dồi d&agrave;o dẫn đến sự lựa chọn đa dạng</span></strong></h1>

<p>Ở phần tr&ecirc;n ch&uacute;ng ta đ&atilde; được t&igrave;m hiểu về t&igrave;nh h&igrave;nh cạnh tranh tr&ecirc;n thị trường CPU v&agrave; card đồ hoạ của ba &ocirc;ng lớn AMD, Intel v&agrave; Nvidia. V&agrave; mỗi linh kiện lớn lại c&oacute; rất nhiều nh&agrave; sản xuất kh&aacute;c nhau. V&iacute; dụ như chiếc card đồ họa Nvidia Geforce RTX 3080 được c&aacute;c h&atilde;ng như Asus, MSI, Gigabyte, Galax, Inno3D&hellip; sản xuất ra c&aacute;c sản phẩm kh&aacute;c nhau, sử dụng chip GPU của Nvidia.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/PC Gaming mới/74882_524_asus-intros-geforce-rtx-30-series-rog-strix-tuf-gaming-graphics-cards_full (1).jpg" style="width:730px" /></p>

<p>Kh&ocirc;ng chỉ card đồ hoạ m&agrave; anh em cũng c&oacute; rất nhiều sự lựa chọn cho bo mạch chủ, <a href="https://www.tncstore.vn/ram.html" target="_blank">RAM</a>, ổ cứng&hellip; trải d&agrave;i tr&ecirc;n từng ph&acirc;n kh&uacute;c v&agrave; tuỳ thuộc v&agrave;o nhu cầu của anh em. Được &ldquo;pick&rdquo; thoải m&aacute;i như vậy th&igrave; tội g&igrave; phải mua bộ <strong>PC gaming cũ</strong> đ&uacute;ng kh&ocirc;ng anh em?</p>

<h1><strong><span style="font-size:18px">6. Tr&aacute;nh t&igrave;nh trạng người b&aacute;n kh&ocirc;ng trung thực dẫn đến việc mua hớ</span></strong></h1>

<p>V&igrave; lợi &iacute;ch n&ecirc;n thường những nh&agrave; ph&acirc;n phối, cửa h&agrave;ng rất &iacute;t khi trung thực khi đăng b&aacute;n c&aacute;c sản phẩm <strong>PC gaming cũ</strong>. Trừ khi anh em quen biết hoặc c&oacute; những mối quan hệ với cửa h&agrave;ng th&igrave; sẽ mua được bộ <strong>PC gaming cũ</strong> chất lượng. Phần lớn anh em sẽ kh&oacute; c&oacute; được sản phẩm như m&igrave;nh mong muốn về chất lượng.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/PC Gaming mới/cau-hinh-may-tinh-choi-game-moi-nhat (1).jpg" style="width:730px" /></p>

<p>Việc mua <strong>PC gaming mới</strong> kh&ocirc;ng chỉ được đảm bảo bảo h&agrave;nh ch&iacute;nh h&atilde;ng từ c&aacute;c nh&agrave; sản xuất m&agrave; c&ograve;n mang lại cảm gi&aacute;c b&oacute;c seal sản phẩm mới rất chill. Anh em n&agrave;o đ&atilde; thử trải nghiệm cảm gi&aacute;c n&agrave;y chắc hẳn sẽ kh&ocirc;ng muốn mua những linh kiện đ&atilde; &ldquo;qua tay&rdquo; người d&ugrave;ng kh&aacute;c.</p>

<h1><strong><span style="font-size:18px">7. Được nhiều phần qu&agrave; hấp dẫn từ c&aacute;c h&atilde;ng cũng như TNC Store</span></strong></h1>

<p>Nếu những điều tr&ecirc;n đ&acirc;y vẫn chưa đủ để khiến anh em lựa chọn một bộ m&aacute;y mới thay v&igrave; <strong>PC Gaming cũ </strong>th&igrave; những phần qu&agrave; khi mua sắm chắc hẳn sẽ khiến anh em h&agrave;i l&ograve;ng. Ngo&agrave;i qu&agrave; tặng đến từ TNC Store khi mua một chiếc <strong>PC Gaming</strong> (tuỳ thuộc v&agrave;o cấu h&igrave;nh m&aacute;y t&iacute;nh chơi game m&agrave; phần qu&agrave; sẽ kh&aacute;c nhau), anh em sẽ nhận được qu&agrave; từ c&aacute;c h&atilde;ng sản xuất, thường l&agrave; đợt cuối năm khi c&aacute;c sản phẩm c&ugrave;ng c&aacute;c tựa game mới ra mắt.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/CPU Avengers/1PNG_A~2.JPG" style="width:730px" /></p>

<p>Sắm một bộ<strong> PC gaming</strong> mới, c&ugrave;ng bạn b&egrave; chiến những con game khủng vừa ra mắt chắc hẳn rất tuyệt vời so với chiếc <strong>PC Gaming cũ.</strong></p>

<p>&nbsp;</p>

<p>V&agrave; đ&oacute; l&agrave; những cảm gi&aacute;c, trải nghiệm m&agrave; TNC Store muốn chia sẻ với anh em khi mua <strong>PC Gaming</strong> mới. Nếu anh em vẫn cảm thấy th&iacute;ch pc gaming cũ hơn v&igrave; gi&aacute; b&aacute;n của n&oacute; th&igrave; cần lựa chọn cẩn thận trước khi &ldquo;xuất hầu bao&rdquo;.</p>

<p>C&ograve;n với những anh em ưa th&iacute;ch c&aacute;c sản phẩm mới v&igrave; những tiện dụng kể tr&ecirc;n th&igrave; c&ograve;n chần chừ g&igrave; m&agrave; kh&ocirc;ng gh&eacute; thăm ngay <strong><a href="https://www.tncstore.vn/" target="_blank">TNC Store</a></strong> để lựa chọn bộ <strong>PC Gaming</strong> ưng &yacute; nhất n&agrave;o!</p>

<div>&nbsp;</div>
', N'/Data/images/newses/tintucmoinhat/ASS.jpg', NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-06T13:38:24.863' AS DateTime), N'quang', CAST(N'2020-12-06T13:38:00.000' AS DateTime), NULL, 4, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (21, N'Tháng 11 chơi game gì? Top 5 game PC đáng chơi nhất tháng 11', N'Top 5 game đáng chơi nhất PC Gaminf', N'top-5-game-dang-choi-nhat-pc-gaminf', N'Dịp cuối năm luôn là khoảng thời gian các nhà phát triển game tung ra các át chủ bài của mình. Hãy cùng TNC Store điểm qua top 5 tựa game đáng chơi nhất tháng 11 nhé!', N'<p><em>Dịp cuối năm lu&ocirc;n l&agrave; khoảng thời gian c&aacute;c nh&agrave; ph&aacute;t triển game tung ra c&aacute;c &aacute;t chủ b&agrave;i của m&igrave;nh. H&atilde;y c&ugrave;ng TNC Store điểm qua top 5 tựa game đ&aacute;ng chơi nhất th&aacute;ng 11 nh&eacute;!</em></p>

<p>&nbsp;</p>

<p>Với sự ra mắt của chiếc m&aacute;y chơi game mới nhất đến từ Sony l&agrave; <strong>Playstation 5</strong> th&igrave; cộng đồng game thủ đang trở n&ecirc;n x&ocirc;n xao hơn bao giờ hết. Kh&ocirc;ng chỉ c&oacute; sự cải tiến về hiệu năng với CPU v&agrave; GPU đến từ AMD, PS5 c&ograve;n sở hữu SSD tốc độ cao cho thời gian tải game giảm xuống đ&aacute;ng kể so với thế hệ tiền nhiệm.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 game tháng 11/ps5-2.jpg" style="width:730px" /></p>

<p>Tuy nhi&ecirc;n, khi t&igrave;nh h&igrave;nh dịch COVID-19 vẫn đang diễn biến phức tạp tr&ecirc;n to&agrave;n thế giới th&igrave; việc sở hữu chiếc m&aacute;y PS5 l&agrave; kh&aacute; kh&oacute; khăn cho anh em game thủ khi mức gi&aacute; được đẩy l&ecirc;n kh&aacute; cao tại thị trường Việt Nam.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 game tháng 11/DSC07780.JPG" style="width:730px" /></p>

<p>Do đ&oacute;, thay v&igrave; phải đợi chờ &ldquo;m&ograve;n mỏi&rdquo; (chưa kể thư viện game PS5 vẫn c&ograve;n rất &iacute;t), anh em ho&agrave;n to&agrave;n c&oacute; thể lựa chọn những chiếc <strong>PC Gaming</strong> c&oacute; hiệu năng mạnh mẽ với gi&aacute; th&agrave;nh đ&uacute;ng bằng chiếc PS5 hiện tại m&agrave; kh&ocirc;ng cần mất qu&aacute; nhiều thời gian.</p>

<p>Vậy c&oacute; những tựa game n&agrave;o đang hot thời gian qua? B&agrave;i viết dưới đ&acirc;y sẽ điểm qua top 5 tựa game đ&aacute;ng chơi nhất th&aacute;ng 11 cho những anh em vừa build <strong>PC Gaming</strong> hoặc đang t&igrave;m kiếm những trải nghiệm mới nh&eacute;!</p>

<p>&nbsp;</p>

<h1><strong><span style="font-size:18px">1. Genshin Impact</span></strong></h1>

<h1>&nbsp;</h1>

<h1 style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 game tháng 11/untitled1_800x450 (1).jpg" style="width:730px" /></h1>

<h1 style="text-align:center">&nbsp;</h1>

<p>Thuộc top những tựa game đ&aacute;ng chơi nhất tr&ecirc;n PC Gaming, kh&ocirc;ng cần phải b&agrave;n c&atilde;i về sức h&uacute;t cực lớn của tựa game phi&ecirc;u lưu, nhập vai đầy ấn tượng đến từ nh&agrave; sản xuất miHoYo. Kể từ khi ra mắt đồng thời tr&ecirc;n nền tảng PC, Playstation, Android, iOS v&agrave;o ng&agrave;y 28/9 vừa qua, <strong>Genshin Impact</strong> đ&atilde; trở th&agrave;nh một hiện tượng với cộng đồng game thủ y&ecirc;u th&iacute;ch phong c&aacute;ch anime. L&agrave; tựa game RPG (thế giới mở) free to play, Genshin Impact thu ph&iacute; bằng c&aacute;ch b&aacute;n c&aacute;c vật phẩm ngẫu nhi&ecirc;n (gacha) với lối chơi kh&aacute; độc đ&aacute;o, rất th&iacute;ch hợp khi chơi tr&ecirc;n <strong>PC Gaming,</strong> đặc biệt game cũng c&oacute; cả Tiếng Việt nữa nh&eacute;.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 game tháng 11/94f969138b (1).jpg" style="width:730px" /></p>

<p>Về gameplay, c&oacute; thể n&oacute;i <strong>Genshin Impact</strong> đ&atilde; đạt được th&agrave;nh c&ocirc;ng lớn khi game c&oacute; lối chơi dễ tiếp cận với đa số game thủ. Anh em sẽ được sử dụng bốn nh&acirc;n vật để tạo th&agrave;nh đội h&igrave;nh v&agrave; c&oacute; thể chuyển qua lại giữa họ bất kỳ l&uacute;c n&agrave;o, trừ khi leo tr&egrave;o hay bơi lội. Mỗi nh&acirc;n vật c&oacute; một combo, hai kỹ năng k&iacute;ch hoạt, c&aacute;c nội tại cần mở kh&oacute;a v&agrave; một động t&aacute;c n&eacute; tr&aacute;nh rất dễ l&agrave;m quen tr&ecirc;n chiếc PC Gaming của m&igrave;nh.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 game tháng 11/screen-6.jpg_fakeurl=1&amp;type= (1).jpg" style="width:730px" /></p>

<p>Thế giới rộng lớn của Genshin Impact cũng được update thường xuy&ecirc;n c&ugrave;ng với c&aacute;c sự kiện, gi&uacute;p anh em lu&ocirc;n c&oacute; được cảm gi&aacute;c tươi mới với mỗi nh&acirc;n vật đều c&oacute; chiều s&acirc;u v&agrave; c&aacute; t&iacute;nh nhất định.</p>

<p>Cốt truyện của game được update thường xuy&ecirc;n, mang lại cảm gi&aacute;c v&agrave; trải nghiệm cực kỳ hấp dẫn. Điểm đặc biệt thu h&uacute;t của <strong>Genshin Impact</strong> ch&iacute;nh l&agrave; lối chơi c&oacute; chiều s&acirc;u dựa tr&ecirc;n t&iacute;nh năng Nguy&ecirc;n tố kh&aacute; tương đồng với <strong>The Legend of Zelda: Breath of the Wild</strong>. Yếu tố ngẫu nhi&ecirc;n khi mở gacha cũng l&agrave; một trong những t&aacute;c nh&acirc;n &ldquo;g&acirc;y nghiện&rdquo; với sự đa dạng về nh&acirc;n vật, vũ kh&iacute;, hiệu ứng, kỹ năng&hellip;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 game tháng 11/maxresdefault (3) (1).jpg" style="width:730px" /></p>

<p>Mức y&ecirc;u cầu cấu h&igrave;nh của Genshin Impact cũng kh&aacute; nhẹ nh&agrave;ng với GTX 1030 với cấu h&igrave;nh tối thiểu v&agrave; GTX 1060 6GB với cấu h&igrave;nh đề nghị. Với những cấu h&igrave;nh <strong><a href="https://www.tncstore.vn/gaming-pc.html?attribute_id=202&amp;minprice=&amp;maxprice=" target="_blank">PC Gaming</a></strong> c&oacute; mức gi&aacute; chỉ từ 10 triệu đồng tại TNC Store, anh em đ&atilde; c&oacute; thể chiến mượt game với mức fps 60 ở độ ph&acirc;n giải Full HD.</p>

<p>&nbsp;</p>

<p>&gt;&gt;&gt; XEM NGAY cấu h&igrave;nh <strong><a href="https://www.tncstore.vn/gaming-pc.html" target="_blank">Gaming PC chiến mượt Genshin Impact</a></strong></p>

<table class="table table-bordered">
	<tbody>
		<tr>
			<td>
			<p><a href="https://www.tncstore.vn/gaming-pc/gaming-pc-glacier-1650i.html" target="_self"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 game tháng 11/san pham bai viet 1.jpg" title="Gaming PC - Glacier 1650 - i3 9100F/ B365/ 8GB/ 120GB/ GTX 1650/ 450W" /></a></p>
			</td>
			<td>
			<p><a href="https://www.tncstore.vn/gaming-pc/gaming-pc-glacier-streaming-1650s.html" target="_self"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 game tháng 11/san pham bai viet 2.jpg" title="Gaming PC - Glacier Streaming 1650s - R3 3100/ A320M/ 16GB/ 120GB/ GTX 1650s/ 450W" /></a></p>
			</td>
		</tr>
	</tbody>
</table>

<h1><br />
<strong><span style="font-size:18px">2. League of Legends</span></strong></h1>

<h1 style="text-align:center">&nbsp;</h1>

<h1 style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 game tháng 11/league-of-legends (1).jpg" style="width:730px" /></h1>

<p style="text-align:center">&nbsp;</p>

<p>Vẫn lu&ocirc;n giữ vững vị tr&iacute; top c&aacute;c game MOBA hấp dẫn nhất trong nhiều năm, <strong>League of Legends</strong> (hay Li&ecirc;n Minh Huyền Thoại) c&oacute; số lượng người chơi li&ecirc;n tục rất ổn định. Thuộc thể loại game eSport tr&ecirc;n <strong>PC Gaming</strong>, mỗi v&aacute;n đấu trong LoL đều phụ thuộc v&agrave;o tr&igrave;nh độ của người chơi v&agrave; c&aacute;c tương t&aacute;c giữa game thủ với nhau.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 game tháng 11/cd5ba-15808008164841-800 (1).jpg" style="width:730px" /></p>

<p>Với sự đa dạng c&aacute;c vị tướng, trang bị, c&aacute;ch l&ecirc;n đồ c&ugrave;ng hệ thống đấu rank, t&ugrave;y chọn&hellip; hấp dẫn th&igrave; LOL xứng đ&aacute;ng để anh em trải nghiệm khi sở hữu một chiếc <strong>PC Gaming</strong>. Ngo&agrave;i việc cập nhập tướng, skin mới thường xuy&ecirc;n th&igrave; Riot (nh&agrave; ph&aacute;t h&agrave;nh game) l&agrave;m kh&aacute; tốt việc duy tr&igrave; cộng đồng với những giải đấu chuy&ecirc;n nghiệp, sự kiện lớn h&agrave;ng qu&yacute;, h&agrave;ng năm, thu h&uacute;t đ&ocirc;ng đảo game thủ tham gia v&agrave; theo d&otilde;i.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 game tháng 11/League-of-Legends-world-championship (1).jpg" style="width:730px" /></p>

<p>Điều khiến game thực sự trở n&ecirc;n đ&aacute;ng chơi trong thời gian gần đ&acirc;y ch&iacute;nh l&agrave; bản big update Tiền m&ugrave;a giải, với sự &ldquo;thay da đổi thịt&rdquo; của to&agrave;n bộ c&aacute;c trang bị v&agrave; sự hiện diện của trang bị Thần thoại hứa hẹn một l&agrave;n gi&oacute; mới cho c&aacute;c game thủ tr&ecirc;n PC Gaming.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 game tháng 11/maxresdefault (4) (1).jpg" style="width:730px" /></p>

<p><strong>Li&ecirc;n Minh Huyền Thoại</strong> cũng y&ecirc;u cầu cấu h&igrave;nh cực kỳ nhẹ nh&agrave;ng. Chỉ với hơn 7 triệu đồng, anh em đ&atilde; c&oacute; thể c&oacute; một chiếc <strong>PC Gaming</strong> chiến tốt tựa game đ&igrave;nh đ&aacute;m n&agrave;y. Gameplay của LOL cũng kh&aacute; dễ tiếp cận với người chơi mới nhưng cũng mất kh&aacute; nhiều thời gian nếu anh em muốn đạt đến đẳng cấp cao nhất.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 game tháng 11/2019-02-22-100431_1920x1080_scrot (1).jpg" style="width:730px" /></p>

<p>&gt;&gt;&gt; Sắm ngay cấu h&igrave;nh <a href="https://www.tncstore.vn/gaming-pc.html" target="_blank"><strong>PC Gaming</strong></a> với mức gi&aacute; tốt nhất tại TNC Store để trải nghiệm ngay Li&ecirc;n Minh Huyền Thoại n&agrave;o!</p>

<table class="table table-bordered">
	<tbody>
		<tr>
			<td>
			<p><a href="https://www.tncstore.vn/gaming-pc/gaming-pc-alpha-9100.html" target="_top"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 game tháng 11/PC Gaming Alpha 9100.jpg" /></a></p>
			</td>
			<td>
			<p><a href="https://www.tncstore.vn/gaming-pc/gaming-pc-alpha-4350g.html" target="_top"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 game tháng 11/Alpha 4350G.jpg" /></a></p>
			</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>

<h1><strong><span style="font-size:18px">3. Assassin&#39;s Creed Valhalla</span></strong></h1>

<h1>&nbsp;</h1>

<h1 style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 game tháng 11/photo-1-15883153668261290385269 (1).jpg" style="width:730px" /></h1>

<h1 style="text-align:center">&nbsp;</h1>

<p>Được coi l&agrave; một trong những tựa game &ldquo;test phần cứng&rdquo; PC Gaming hiệu quả nhất, series Assassin&rsquo;s Creed lu&ocirc;n được đ&ocirc;ng đảo game thủ đ&oacute;n nhận v&agrave;o dịp cuối năm. V&agrave; sau phần game Odyssey v&ocirc; c&ugrave;ng th&agrave;nh c&ocirc;ng về mặt doanh thu cũng như từ giới ph&ecirc; b&igrave;nh, Ubisoft tiếp tục cho ra mắt hậu bản v&agrave;o ng&agrave;y 10/11 vừa qua với t&ecirc;n gọi<strong> Assassin&#39;s Creed Valhalla</strong>.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 game tháng 11/assssins-creed-22 (1).jpg" style="width:730px" /></p>

<p>L&agrave; phần ch&iacute;nh thứ mười hai của loạt game đ&igrave;nh đ&aacute;m tr&ecirc;n <strong>PC Gaming</strong>, Valhalla sẽ đưa người chơi v&agrave;o bối cảnh những năm 800 sau c&ocirc;ng nguy&ecirc;n, thời kỳ của những chiến binh Viking Bắc &Acirc;u. Anh em sẽ được t&ugrave;y chọn nh&acirc;n vật Eivor nam hoặc nữ, độ kh&oacute; của từng hoạt động ri&ecirc;ng lẻ cũng được game thủ tuỳ chỉnh tuỳ &yacute;.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 game tháng 11/1596737007_4836054235682 (1).jpg" style="width:730px" /></p>

<p>Điểm hay của<strong> Valhalla</strong> ch&iacute;nh l&agrave; c&aacute;ch truyền tải c&acirc;u chuyện, thay v&igrave; l&agrave;m nhiệm vụ th&ocirc;ng thường, kh&aacute;m ph&aacute; theo tr&igrave;nh tự được thiết lập sẵn, anh em sẽ được trải nghiệm từng c&acirc;u chuyện trong một chuỗi những truyền thuyết th&uacute; vị như cuộc định cư của gia tộc Eivor ở Anh. Nhiều c&acirc;u chuyện cảm động đan xen khiến mạch cảm x&uacute;c của người chơi lu&ocirc;n liền mạch.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 game tháng 11/assassins-creed-valhalla-hands-on-preview-14 (1).jpg" style="width:730px" /></p>

<p>Tương tự như Genshin Impact, một chiếc <strong>PC Gaming</strong> sở hữu card đồ họa GTX 1650 l&agrave; đủ để chơi Valhalla với mức thiết lập medium với fps trung b&igrave;nh khoảng 50. Nếu muốn trải nghiệm game được trọn vẹn nhất th&igrave; d&ograve;ng <strong><a href="https://www.tncstore.vn/gaming-pc.html?attribute_id=204&amp;minprice=&amp;maxprice=" target="_blank">PC Gaming Lumen</a></strong> tại TNC Store chắc chắn sẽ l&agrave;m anh em h&agrave;i l&ograve;ng.</p>

<p>&gt;&gt;&gt; THAM KHẢO NGAY c&aacute;c cấu h&igrave;nh <strong><a href="https://www.tncstore.vn/gaming-pc.html" target="_blank">PC Gaming</a></strong> mạnh mẽ tại TNC Store nh&eacute;!&nbsp;</p>

<table class="table table-bordered">
	<tbody>
		<tr>
			<td>
			<p><a href="https://www.tncstore.vn/gaming-pc/gaming-pc-lumen-2060.html" target="_self"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 game tháng 11/lumen 2060a.jpg" /></a></p>
			</td>
			<td>
			<p><a href="https://www.tncstore.vn/gaming-pc/gaming-pc-lumen-powered-by-asus.html" target="_self"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 game tháng 11/Lumen Asus.jpg" /></a></p>
			</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>

<h1><strong><span style="font-size:18px">4. Call of Duty: War Zone</span></strong></h1>

<h1>&nbsp;</h1>

<h1 style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 game tháng 11/wz-social-share (1).jpg" style="width:730px" /></h1>

<h1>&nbsp;</h1>

<p>Đối với những game thủ ch&iacute;nh hiệu th&igrave; kh&ocirc;ng thể kh&ocirc;ng biết đến series Call of Duty. D&ograve;ng game bắn s&uacute;ng g&oacute;c nh&igrave;n thứ nhất nổi tiếng của Activision hiện vẫn cho ra mắt c&aacute;c game thuộc series Call of Duty h&agrave;ng năm v&agrave; mới nhất l&agrave; phần thứ s&aacute;u của d&ograve;ng Black Ops với t&ecirc;n gọi Cold War.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 game tháng 11/maxresdefault (5) (1).jpg" style="width:730px" /></p>

<p>Được chăm ch&uacute;t kh&aacute; nhiều về mặt đồ hoạ, <strong>CoD: War Zone</strong>, thuộc thể loại <strong>Battle Royale</strong> nổi tiếng, được ph&aacute;t h&agrave;nh lần đầu ti&ecirc;n v&agrave;o ng&agrave;y 10/03/2020 v&agrave; ho&agrave;n to&agrave;n miễn ph&iacute;, c&oacute; mặt tr&ecirc;n cả PlayStation, Xbox v&agrave; PC. Tr&ograve; chơi l&agrave; một phần của tựa game Call of Duty: Modern Warfare năm 2019 nhưng anh em sẽ kh&ocirc;ng phải mua phi&ecirc;n bản n&agrave;y để chơi War Zone tr&ecirc;n chiếc <strong>PC Gaming</strong> của m&igrave;nh.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 game tháng 11/Black-Ops-Warzone-Map-Changes (1).jpg" style="width:730px" /></p>

<p>Với sự ra mắt của phi&ecirc;n bản CoD: Black Ops - Cold War th&igrave; anh em sẽ được trải nghiệm những m&oacute;n vũ kh&iacute; thời Chiến tranh lạnh khi tham chiến trong War Zone. Game cũng được tối ưu kh&aacute; tốt với những chiếc PC Gaming c&oacute; cấu h&igrave;nh kh&ocirc;ng qu&aacute; mạnh.</p>

<p>Cấu h&igrave;nh đề nghị để tựa game n&agrave;y cũng kh&ocirc;ng qu&aacute; cao, chỉ với chiếc <strong>PC Gaming</strong> được trang bị card đồ họa GTX 1660 Super hoặc AMD Radeon RX 580 l&agrave; anh em ho&agrave;n to&agrave;n c&oacute; thể chiến mượt m&agrave; rồi. Tuy nhi&ecirc;n, để c&oacute; trải nghiệm tuyệt vời nhất th&igrave; những cấu h&igrave;nh <strong><a href="https://www.tncstore.vn/gaming-pc.html?attribute_id=210&amp;minprice=&amp;maxprice=" target="_blank">PC Gaming Nova</a></strong> hoặc <strong><a href="https://www.tncstore.vn/gaming-pc.html?attribute_id=211&amp;minprice=&amp;maxprice=" target="_blank">Sentinel</a></strong> tại TNC Store với VGA RTX 3000 Series sẽ l&agrave; sự lựa chọn ho&agrave;n hảo cho anh em.</p>

<p>&gt;&gt;&gt; XEM NGAY c&aacute;c bộ m&aacute;y <strong><a href="https://www.tncstore.vn/gaming-pc.html?attribute_id=210,211&amp;minprice=&amp;maxprice=" target="_blank">PC Gaming</a></strong> cực đẹp tại TNC Store nh&eacute;!</p>

<table class="table table-bordered">
	<tbody>
		<tr>
			<td>
			<p><a href="https://www.tncstore.vn/gaming-pc/gaming-pc-nova-3070-power-by-aorus.html" target="_self"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 game tháng 11/Nova 3070 Aorus.jpg" /></a></p>
			</td>
			<td>
			<p><a href="https://www.tncstore.vn/gaming-pc/gaming-pc-sentinel-3080a.html" target="_self"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 game tháng 11/Sentinel 3080 A.jpg" /></a></p>
			</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>

<h1><strong><span style="font-size:18px">5. FIFA ONLINE 4</span></strong></h1>

<h1>&nbsp;</h1>

<h1 style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 game tháng 11/fifa-online-4-featured_800x450-600x400 (1).jpg" style="width:730px" /></h1>

<h1>&nbsp;</h1>

<p>B&oacute;ng đ&aacute; lu&ocirc;n c&oacute; sức h&uacute;t v&ocirc; h&igrave;nh cực kỳ m&atilde;nh liệt, được mệnh danh m&ocirc;n thể thao vua, l&agrave; một trong những m&ocirc;n được y&ecirc;u th&iacute;ch nhất kh&ocirc;ng chỉ tại Việt Nam m&agrave; c&ograve;n tr&ecirc;n to&agrave;n thế giới. V&agrave; những tựa game thể thao như d&ograve;ng FIFA ONLINE được hầu hết c&aacute;c game thủ tại nước ta y&ecirc;u mến. Nối tiếp sự th&agrave;nh c&ocirc;ng của FIFA ONLINE 3, <strong>FIFA ONLINE 4</strong> ch&iacute;nh l&agrave; <strong>Gaming PC</strong> mang lại lượng người chơi đ&ocirc;ng đảo bậc nhất tại thị trường Việt Nam hiện nay.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 game tháng 11/maxresdefault (6) (1).jpg" style="width:730px" /></p>

<p>Game được ph&aacute;t triển bởi EA Spearhead v&agrave; ph&aacute;t h&agrave;nh độc quyền tại Việt Nam bởi c&ocirc;ng ty Vietnam Esports (m&agrave; ch&uacute;ng ta vẫn hay biết đến l&agrave; Garena), FIFA ONLINE 4 l&agrave; <strong>Gaming PC</strong> online đầu ti&ecirc;n sử dụng Engine của nền tảng Console. Do đ&oacute; h&igrave;nh ảnh cũng như cơ chế của game được m&ocirc; phỏng v&agrave; t&aacute;i hiện theo c&aacute;ch rất ri&ecirc;ng, mang lại sự ch&acirc;n thực v&agrave; ho&agrave;n hảo nhất.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 game tháng 11/maxresdefault (7) (1).jpg" style="width:730px" /></p>

<p><strong>FIFA ONLINE 4</strong> được đầu tư rất nhiều về mảng đồ họa v&agrave; &acirc;m thanh nhằm t&aacute;i hiện kh&ocirc;ng kh&iacute; s&acirc;n cỏ n&aacute;o nhiệt, mang tới những trải nghiệm ch&acirc;n thật cho người chơi. Ngo&agrave;i ra theo sự biến động của c&aacute;c đội b&oacute;ng v&agrave; thị trường chuyển nhượng m&agrave; mỗi 3 th&aacute;ng tựa game sẽ được c&oacute; một bản cập nhật lớn b&ecirc;n cạnh chỉ số cầu thủ được cập nhật h&agrave;ng tuần.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 game tháng 11/hinh-nen-game-FIFA-online-4-dep-7 (1).jpg" style="width:730px" /></p>

<p>Giống như LOL, FIFA ONLINE 4 cũng y&ecirc;u cầu cấu h&igrave;nh<strong> PC Gaming</strong> rất nhẹ nh&agrave;ng. Chỉ với cấu h&igrave;nh <strong>PC Gaming</strong> c&oacute; gi&aacute; từ 7 triệu đồng l&agrave; anh em ho&agrave;n to&agrave;n c&oacute; thể so t&agrave;i tr&ecirc;n mặt s&acirc;n online một c&aacute;ch mượt m&agrave; rồi.</p>

<p>&gt;&gt;&gt; Tham khảo ngay d&ograve;ng <strong><a href="https://www.tncstore.vn/gaming-pc.html?attribute_id=201&amp;minprice=&amp;maxprice=" target="_blank">PC Gaming Alpha </a></strong>c&oacute; mức gi&aacute; cực kỳ hấp dẫn tại TNC Store nh&eacute;!</p>

<table class="table table-bordered">
	<tbody>
		<tr>
			<td>
			<p><a href="https://www.tncstore.vn/gaming-pc/gaming-pc-alpha-10100.html" target="_self"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 game tháng 11/Alpha 10100.jpg" /></a></p>
			</td>
			<td>
			<p><a href="https://www.tncstore.vn/gaming-pc/gaming-pc-alpha-4350g.html" target="_self"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 game tháng 11/Alpha 4350G.jpg" /></a></p>
			</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>

<p>V&agrave; đ&oacute; l&agrave; top 5 tựa game đ&aacute;ng chơi nhất thời điểm hiện tại. Vẫn c&ograve;n rất nhiều tựa game kh&aacute;c cực hay m&agrave; TNC muốn giới thiệu với anh em nhưng trong giới hạn khu&ocirc;n khổ b&agrave;i viết n&ecirc;n m&igrave;nh xin d&agrave;nh những tựa game đ&oacute; ở những b&agrave;i viết sau.</p>

<p>Hi vọng anh em sẽ c&oacute; những gi&acirc;y ph&uacute;t gaming thư gi&atilde;n v&agrave; giải tr&iacute; tuyệt vời b&ecirc;n cạnh chiếc <strong>PC Gaming </strong>y&ecirc;u dấu của m&igrave;nh v&agrave; đừng qu&ecirc;n gh&eacute; thăm <strong><a href="https://www.tncstore.vn/" target="_blank">TNC Store</a></strong> thường xuy&ecirc;n để cập nhật những tin tức, kiến thức về c&ocirc;ng nghệ hữu &iacute;ch nhất nh&eacute;!</p>

<div>&nbsp;</div>
', N'/Data/images/newses/tintucmoinhat/Avatar%20bai%20viet%20(4)%20(2).jpg', NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-06T13:38:36.447' AS DateTime), N'quang', CAST(N'2020-12-06T13:38:00.000' AS DateTime), NULL, 4, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (22, N'Bạn đã biết vệ sinh bàn phím cơ ĐÚNG CÁCH chưa?', N'vệ sinh bàn phím cơ đúng cách', N've-sinh-ban-phim-co-dung-cach', N'Chiếc bàn phím cơ luôn là vật dụng phần đông game thủ tiếp xúc nhiều nhất mỗi khi sử dụng PC Gaming. Hãy để TNC Store bật mí cách vệ sinh bàn phím cơ đúng chuẩn cho bạn nhé!', N'<p><em>Chiếc b&agrave;n ph&iacute;m cơ lu&ocirc;n l&agrave; vật dụng phần đ&ocirc;ng game thủ tiếp x&uacute;c nhiều nhất mỗi khi sử dụng PC Gaming. H&atilde;y để TNC Store bật m&iacute; c&aacute;ch vệ sinh b&agrave;n ph&iacute;m cơ đ&uacute;ng chuẩn cho bạn nh&eacute;!</em></p>

<p>Giống như mọi đồ d&ugrave;ng v&agrave; <strong>gaming gear</strong> kh&aacute;c, chiếc b&agrave;n ph&iacute;m cơ của ch&uacute;ng ta sau qu&aacute; tr&igrave;nh sử dụng l&acirc;u d&agrave;i sẽ chịu những t&aacute;c động kh&aacute;c nhau từ b&ecirc;n ngo&agrave;i. C&oacute; thể do va đập, &aacute;nh nắng, độ ẩm, bụi từ kh&ocirc;ng kh&iacute;, mồ h&ocirc;i tay&hellip; t&aacute;c động v&agrave;o khiến t&igrave;nh trạng kh&ocirc;ng c&ograve;n tốt như l&uacute;c ban đầu sử dụng.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Vệ sinh bàn phím cơ/huong-dan-cach-ve-sinh-ban-phim-don-gian-va-hieu-qua-nhat-1 (1).jpg" style="width:730px" /></p>

<p>Đ&atilde; bao giờ bạn tự hỏi chiếc b&agrave;n ph&iacute;m cơ của m&igrave;nh c&oacute; bị d&iacute;nh bụi bẩn, vi khuẩn khi sử dụng l&acirc;u ng&agrave;y kh&ocirc;ng? Lần gần nhất bạn vệ sinh chiếc b&agrave;n ph&iacute;m cơ l&agrave; khi n&agrave;o? C&oacute; thực hiện đ&uacute;ng c&aacute;ch kh&ocirc;ng?... C&oacute; rất nhiều c&acirc;u hỏi cần phải trả lời v&agrave; qua b&agrave;i viết n&agrave;y TNC sẽ giải đ&aacute;p thắc mắc về c&aacute;ch vệ sinh b&agrave;n ph&iacute;m cơ th&ocirc;ng qua c&aacute;c bước tuần tự nh&eacute;!</p>

<p>&nbsp;</p>

<h1><strong><span style="font-size:18px">1. Th&aacute;o keycaps</span></strong></h1>

<p>Bước đầu ti&ecirc;n trong qu&aacute; tr&igrave;nh <strong>vệ sinh b&agrave;n ph&iacute;m cơ</strong> ch&iacute;nh l&agrave; th&aacute;o những <strong>keycap</strong> (vỏ ph&iacute;m) ra khỏi b&agrave;n ph&iacute;m. C&oacute; một lưu &yacute; nhỏ l&agrave; bạn n&ecirc;n chụp lại h&igrave;nh b&agrave;n ph&iacute;m cơ trước khi th&aacute;o nhằm tr&aacute;nh lắp lại sai thứ tự, ảnh hưởng đến qu&aacute; tr&igrave;nh sử dụng sau n&agrave;y.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Vệ sinh bàn phím cơ/maxresdefault (6) (1).jpg" style="width:730px" /></p>

<p>Đa số c&aacute;c <strong>b&agrave;n ph&iacute;m cơ gaming</strong> hiện nay đều c&oacute; một chiếc keycap puller d&ugrave;ng để gắp vỏ ph&iacute;m rất thuận tiện, tr&aacute;nh t&igrave;nh trạng keycap bị nứt, g&atilde;y trong qu&aacute; tr&igrave;nh th&aacute;o. Một số b&agrave;n ph&iacute;m cơ sẽ c&oacute; thanh stabilizer ở ph&iacute;m c&aacute;ch hoặc ph&iacute;m Shift nhằm c&acirc;n bằng ph&iacute;m. Bạn n&ecirc;n ch&uacute; &yacute; th&aacute;o ra trước khi vệ sinh v&igrave; c&aacute;c thanh n&agrave;y rất dễ bị gỉ khi tiếp x&uacute;c với nước.</p>

<p>&gt;&gt;&gt; Tham khảo ngay những chiếc <a href="https://www.tncstore.vn/ban-phim-co.html" target="_blank"><strong>b&agrave;n ph&iacute;m cơ</strong></a> chất lượng tại TNC Store.</p>

<table class="table table-bordered">
	<tbody>
		<tr>
			<td>
			<p><a href="https://www.tncstore.vn/ban-phim-co/ban-phim-co-edra-ek308-rgb-optical.html" target="_self"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Vệ sinh bàn phím cơ/ban phim 1.jpg" /></a></p>
			</td>
			<td>
			<p><a href="https://www.tncstore.vn/ban-phim-co/ban-phim-corsair-k95-rgb-platinum-xt-cherry-mx-speed.html" target="_self"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Vệ sinh bàn phím cơ/ban phim 2.jpg" /></a></p>
			</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>

<h1><strong><span style="font-size:18px">2. L&agrave;m sạch keycaps</span></strong></h1>

<p>Đ&acirc;y ch&iacute;nh l&agrave; c&ocirc;ng đoạn l&acirc;u nhất, &ldquo;kỳ c&ocirc;ng&rdquo; nhất trong qu&aacute; tr&igrave;nh vệ sinh b&agrave;n ph&iacute;m cơ. C&oacute; rất nhiều c&aacute;ch để bạn vệ sinh keycaps. Với những bạn c&oacute; t&iacute;nh c&aacute;ch cẩn thận, hay chăm ch&uacute;t cho chiếc b&agrave;n ph&iacute;m cơ gaming của m&igrave;nh th&igrave; việc lau từng vỏ ph&iacute;m một rất ph&ugrave; hợp.&nbsp;</p>

<p>Nếu bạn muốn vệ sinh<strong> keycaps</strong> một c&aacute;ch sạch, nhanh nhất th&igrave; chỉ việc g&oacute;i c&aacute;c keycap lại v&agrave;o một t&uacute;i vải v&agrave; đem v&agrave;o m&aacute;y giặt. Lưu &yacute; l&agrave; c&aacute;ch l&agrave;m n&agrave;y chỉ ph&ugrave; hợp với c&aacute;c keycap l&agrave;m bằng nhựa ABS, tuyệt đối kh&ocirc;ng sử dụng với c&aacute;c b&agrave;n ph&iacute;m c&oacute; keycap bằng PBT.</p>

<p>&gt;&gt;&gt; T&igrave;m hiểu ngay những loại nhựa l&agrave;m <strong><a href="https://www.tncstore.vn/thong-so-ban-phim-co-quan-trong.html" target="_blank">keycap b&agrave;n ph&iacute;m cơ</a></strong>.</p>

<p>Nếu hai c&aacute;ch tr&ecirc;n chưa ph&ugrave; hợp với bạn th&igrave; việc đơn giản nhất ch&iacute;nh l&agrave; chuẩn bị một c&aacute;i b&aacute;t thật to để đựng<strong> keycap</strong> v&agrave; tiến h&agrave;nh đổ nước v&agrave;o (thường l&agrave; nước ấm vừa phải, nước lạnh).&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Vệ sinh bàn phím cơ/how-to-clean-a-mechanical-keyboard (1).jpg" style="width:730px" /></p>

<p>Tiếp đến l&agrave; d&ugrave;ng c&aacute;c chất tẩy rửa nhẹ (như dầu gội, nước rửa tay, tr&aacute;nh d&ugrave;ng nước rửa b&aacute;t, nước tẩy rửa bồn cầu) ng&acirc;m keycap trong khoảng từ 15-20 ph&uacute;t. Bạn n&ecirc;n d&ugrave;ng tay rửa sạch keycap trong khi ng&acirc;m để vỏ ph&iacute;m trở n&ecirc;n sạch nhất.</p>

<p>Bạn kh&ocirc;ng n&ecirc;n ng&acirc;m keycap qu&aacute; l&acirc;u v&igrave; khả năng c&aacute;c chữ, k&yacute; tự tr&ecirc;n vỏ ph&iacute;m sẽ bị mờ đi. Sau khi ng&acirc;m xong th&igrave; bạn cần phơi keycap cho kh&ocirc; trước khi lắp v&agrave;o b&agrave;n ph&iacute;m cơ, c&aacute;ch tốt nhất l&agrave; d&ugrave;ng một tấm khăn lớn lau keycap. Bạn tuyệt đối kh&ocirc;ng n&ecirc;n d&ugrave;ng m&aacute;y sấy để l&agrave;m kh&ocirc; v&igrave; nhiệt độ cao ch&iacute;nh l&agrave; kẻ th&ugrave; của keycap.</p>

<h1><strong><span style="font-size:18px">3. Vệ sinh khu vực b&agrave;n ph&iacute;m&nbsp;</span></strong></h1>

<p>Bước tiếp theo trong qu&aacute; tr&igrave;nh <strong>vệ sinh b&agrave;n ph&iacute;m cơ</strong> ch&iacute;nh l&agrave; l&agrave;m sạch khu vực b&agrave;n ph&iacute;m bằng chổi. Bạn n&ecirc;n dốc ngược chiếc<strong> b&agrave;n ph&iacute;m cơ </strong>trước khi lau nhằm tr&aacute;nh t&igrave;nh trạng c&aacute;c hạt bụi chui s&acirc;u v&agrave;o b&ecirc;n trong c&aacute;c lỗ tr&ecirc;n b&agrave;n ph&iacute;m.</p>

<p>Đến đ&acirc;y th&igrave; khu vực b&agrave;n ph&iacute;m của c&aacute;c bạn cũng kh&aacute; l&agrave; sạch sẽ rồi! Tuy nhi&ecirc;n, để cho <strong>b&agrave;n ph&iacute;m cơ</strong> trở n&ecirc;n &ldquo;như mới&rdquo; th&igrave; bạn n&ecirc;n sử dụng tăm b&ocirc;ng ẩm (c&oacute; thể nh&uacute;ng v&agrave;o nước vệ sinh keycap ở bước hai) để lau sạch sẽ c&aacute;c switch bấm tr&ecirc;n b&agrave;n ph&iacute;m cơ gaming.&nbsp;</p>

<p style="text-align:center"><iframe class="note-video-clip" frameborder="0" height="360" src="//www.youtube.com/embed/M-8XmPe-ZLo" width="640"></iframe></p>

<p>Sau khi <strong>b&agrave;n ph&iacute;m</strong> cũng như keycap đ&atilde; kh&ocirc;, c&aacute;c bạn tiến h&agrave;nh lắp lại keycap v&agrave;o <strong>b&agrave;n ph&iacute;m cơ gaming</strong> (nhớ l&agrave; n&ecirc;n tham khảo ảnh trước khi vệ sinh để tr&aacute;nh lắp nhầm c&aacute;c ph&iacute;m với nhau nh&eacute;).&nbsp;</p>

<p>Cuối c&ugrave;ng, sau qu&aacute; tr&igrave;nh l&agrave;m sạch th&igrave; chiếc b&agrave;n ph&iacute;m cơ gaming đ&atilde; tr&ocirc;ng như mới, cho cảm gi&aacute;c bấm tốt hơn cũng như đảm bảo vệ sinh cho người d&ugrave;ng, tr&aacute;nh những bệnh kh&ocirc;ng đ&aacute;ng c&oacute;.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Vệ sinh bàn phím cơ/1__Logitech_G413 (1).jpg" style="width:730px" /></p>

<p>V&agrave; đ&oacute; l&agrave; c&aacute;ch vệ sinh <strong>b&agrave;n ph&iacute;m cơ</strong> chuẩn chỉ nhất, gi&uacute;p tiết kiệm thời gian cũng như bảo vệ chiếc b&agrave;n ph&iacute;m của bạn khỏi c&aacute;c t&aacute;c nh&acirc;n từ b&ecirc;n ngo&agrave;i. Bạn nhớ thường xuy&ecirc;n vệ sinh chiếc b&agrave;n ph&iacute;m cơ gaming của m&igrave;nh nhằm k&eacute;o d&agrave;i tuổi thọ của sản phẩm cũng như để c&oacute; sức khoẻ tốt nhất khi sử dụng h&agrave;ng ng&agrave;y.</p>

<p>H&atilde;y thường xuy&ecirc;n gh&eacute; thăm <strong><a href="https://www.tncstore.vn/" target="_blank">TNC Store</a></strong> để cập nhật những mẹo chăm s&oacute;c <strong>gaming gear</strong> hữu &iacute;ch nhất nh&eacute;!</p>

<div>&nbsp;</div>
', N'/Data/images/newses/tintucmoinhat/Avatar%20bai%20viet%20(4)%20(3).jpg', NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-06T13:38:49.237' AS DateTime), N'quang', CAST(N'2020-12-06T13:38:00.000' AS DateTime), NULL, 4, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (23, N'Những thông số kỹ thuật mainboard quan trọng cần chú ý', N'thông số kỹ thuật mainboard', N'thong-so-ky-thuat-mainboard', N'Nếu CPU là bộ não thì mainboard chính là xương sống kết nối mọi linh kiện thành một khối thống nhất. Cùng TNC Store tìm hiểu các thông số kỹ thuật mainboard cần biết nhé!', N'<p><em>Nếu CPU l&agrave; bộ n&atilde;o th&igrave; mainboard ch&iacute;nh l&agrave; xương sống kết nối mọi linh kiện th&agrave;nh một khối thống nhất. C&ugrave;ng TNC Store t&igrave;m hiểu c&aacute;c th&ocirc;ng số kỹ thuật mainboard cần biết nh&eacute;!</em></p>

<p>&nbsp;</p>

<p>C&oacute; lẽ rất nhiều anh em khi build PC chỉ ch&uacute; &yacute; tới CPU, card m&agrave;n h&igrave;nh cũng như RAM m&agrave; qu&ecirc;n mất rằng <strong>mainboard</strong> (bo mạch chủ) cũng đ&oacute;ng vai tr&ograve; rất quan trọng. N&oacute; ch&iacute;nh l&agrave; bảng mạch li&ecirc;n kết tất cả linh kiện c&ugrave;ng c&aacute;c th&agrave;nh phần ngoại vi th&agrave;nh một bộ m&aacute;y ho&agrave;n chỉnh. <strong>Mainboard</strong> c&oacute; chức năng điều khiển tốc độ c&aacute;c luồng dữ liệu giữa c&aacute;c thiết bị cũng như ph&acirc;n phối điện &aacute;p cho c&aacute;c linh kiện được gắn tr&ecirc;n n&oacute;.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số mainboard/GIGABYTE-B460M-GAMING-HD-Mainboard-1 (1).jpg" style="width:730px" /></p>

<p>Ch&iacute;nh v&igrave; vậy n&ecirc;n mainboard c&oacute; ảnh hưởng trực tiếp tới hiệu năng của m&aacute;y t&iacute;nh v&agrave; c&oacute; khả năng tương th&iacute;ch với một số linh kiện nhất định. H&atilde;y c&ugrave;ng TNC Store giải m&atilde; những th&ocirc;ng số kỹ thuật mainboard quan trọng nh&eacute;!</p>

<p>&nbsp;</p>

<h1><strong><span style="font-size:18px">1. K&iacute;ch cỡ&nbsp;</span></strong></h1>

<p><strong>Th&ocirc;ng số kỹ thuật mainboard</strong> đầu ti&ecirc;n phải để &yacute; đến ch&iacute;nh l&agrave; k&iacute;ch cỡ. C&aacute;c loại mainboard được d&ugrave;ng phổ biến gồm mATX (micro-ATX), ATX v&agrave; EATX (Extra-ATX). Ngo&agrave;i ra c&ograve;n c&oacute; mainboard mini ATX v&agrave; XL-ATX.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số mainboard/mobo-1024x576 (1).jpg" style="width:730px" /></p>

<p>&gt;&gt;&gt; Xem th&ecirc;m c&aacute;c vỏ case th&iacute;ch hợp với từng loại mainboard <a href="https://www.tncstore.vn/thong-so-ky-thuat-mainboard.html" target="_blank"><strong>tại đ&acirc;y.</strong></a></p>

<p>Tuỳ thuộc v&agrave;o nhu cầu của anh em muốn build chiếc PC c&oacute; cần nhiều khe cắm mở rộng hay kh&ocirc;ng m&agrave; lựa chọn mainboard th&iacute;ch hợp v&igrave; k&iacute;ch thước hầu như kh&ocirc;ng ảnh hưởng đến hiệu năng của mainboard. Chỉ kh&aacute;c l&agrave; mainboard lớn hơn th&igrave; c&oacute; nhiều khe DIMM v&agrave; PICe hoặc th&ecirc;m c&aacute;c thanh tản nhiệt.&nbsp;&nbsp;</p>

<h1><strong><span style="font-size:18px">2. Đế cắm CPU (Socket)</span></strong></h1>

<p><strong>Đế cắm CPU</strong> l&agrave; một th&agrave;nh phần cơ học cung cấp kết nối giữa bộ vi xử l&yacute; v&agrave; bảng mạch in (PCB). Điều n&agrave;y cho ph&eacute;p CPU c&oacute; thể th&aacute;o rời v&agrave; thay thế m&agrave; kh&ocirc;ng phải h&agrave;n chết v&agrave;o mainboard. Nếu mainboard c&oacute; ghi LGA 1200 th&igrave; bo mạch chủ n&agrave;y chỉ hỗ trợ c&aacute;c CPU c&oacute; c&ugrave;ng socket l&agrave; LGA 1200.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số mainboard/ASUS-Rampage-VI-Extreme-Omega-10.jpg" style="width:730px" /></p>

<p>&gt;&gt;&gt; Kh&aacute;m ph&aacute; ngay c&aacute;c <a href="https://www.tncstore.vn/mainboard-bo-mach-chu.html" target="_blank"><strong>mainboard</strong></a> thế hệ mới nhất tại TNC Store nh&eacute;!</p>

<h1><strong><span style="font-size:18px">3. Chipset</span></strong></h1>

<p>Đ&acirc;y l&agrave; thiết bị phần cứng quan trọng thứ hai trong m&aacute;y t&iacute;nh, chỉ sau <a href="https://www.tncstore.vn/top-5-thong-so-cpu-vi-xu-ly-pc.html" target="_blank"><strong>CPU</strong></a>. Chipset được gắn liền tr&ecirc;n mainboard, l&agrave; một tập hợp c&aacute;c th&agrave;nh phần điện tử trong một mạch t&iacute;ch hợp quản l&yacute; luồng dữ liệu giữa bộ xử l&yacute;, bộ nhớ v&agrave; thiết bị ngoại vi.</p>

<p><strong>Chipset</strong> c&oacute; vai tr&ograve; l&agrave; trung t&acirc;m giao tiếp điều khiển việc truyền tải dữ liệu giữa c&aacute;c phần cứng với nhau. Chip set bao gồm chip cầu Bắc v&agrave; chip cầu Nam.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số mainboard/chipset-la-gi-3.jpg" style="width:730px" /></p>

<p>Chip cầu Bắc phụ tr&aacute;ch c&aacute;c hoạt động của những thiết bị quan trọng như CPU, card đồ hoạ, RAM&hellip; Trong khi đ&oacute; Chip cầu Nam c&oacute; nhiệm vụ thực thi c&aacute;c việc c&oacute; tốc độ chậm trong bo mạch chủ. Chip cầu Nam kh&ocirc;ng trực tiếp kết nối với CPU m&agrave; th&ocirc;ng qua chip cầu Bắc.</p>

<h1><strong><span style="font-size:18px">4. Khe cắm RAM</span></strong></h1>

<p><strong>Th&ocirc;ng số kỹ thuật mainboard</strong> n&agrave;y cho biết số lượng thanh <a href="https://www.tncstore.vn/Cac-thong-so-ram-build-pc.html" target="_blank"><strong>RAM</strong></a> tối đa m&agrave; mainboard hỗ trợ c&ugrave;ng chuẩn DDR v&agrave; Bus của RAM. Tuỳ thuộc loại mainboard m&agrave; c&oacute; hỗ trợ đa k&ecirc;nh kh&aacute;c nhau như Dual Channel, Triple Channel hay Quad Channel.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số mainboard/pc-buildout-2016-ram-720x480-02-720x480-1 (1).jpg" style="width:720px" /></p>

<h1><strong><span style="font-size:18px">5. Khe cắm mở rộng</span></strong></h1>

<p>Tuỳ v&agrave;o c&aacute;c k&iacute;ch cỡ kh&aacute;c nhau m&agrave; <strong>mainboard</strong> sẽ c&oacute; số lượng khe cắm mở rộng kh&aacute;c nhau. Hầu hết c&aacute;c bo mạch chủ hiện nay sử dụng c&aacute;c khe cắm PCIe để kết nối với linh kiện kh&aacute;c.&nbsp;</p>

<p><strong>PCI Express (PCIe)</strong> l&agrave; một cổng giao tiếp thay thế cho PCI trước đ&acirc;y v&agrave; c&oacute; tốc độ nhanh hơn nhiều, được d&ugrave;ng cho c&aacute;c card mở rộng v&agrave; card đồ họa. C&oacute; bốn chuẩn PCIe l&agrave; 1.0, 2.0, 3.0 v&agrave; 4.0, ngo&agrave;i ra phi&ecirc;n bản mới nhất l&agrave; 5.0 cũng đ&atilde; ra mắt nhưng chưa được sử dụng phổ biến. N&oacute; l&agrave; nền tảng cho c&ocirc;ng nghệ Thunderbolt thường được d&ugrave;ng tr&ecirc;n c&aacute;c thiết bị ngoại vi.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số mainboard/card-pci-to-1394-4 (1).jpg" style="width:730px" /></p>

<p>Với mỗi chuẩn <strong>PCIe</strong> kh&aacute;c nhau sẽ lại c&oacute; k&iacute;ch cỡ vật l&yacute; kh&aacute;c nhau l&agrave; x1, x4, x8 v&agrave; x16. C&aacute;c k&iacute;ch cỡ cổng PCIe c&agrave;ng lớn sẽ cho số ch&acirc;n kết nối c&agrave;ng nhiều, tốc độ truyền dữ liệu giữa thiết bị v&agrave; hệ thống sẽ c&agrave;ng nhanh. C&aacute;c kết nối n&agrave;y được gọi l&agrave; l&agrave;n (lane), với mỗi l&agrave;n PCIe sẽ c&oacute; hai cặp t&iacute;n hiệu, một cho việc gửi v&agrave; một để nhận dữ liệu.</p>

<h1><strong><span style="font-size:18px">6. Khe cắm ổ cứng</span></strong></h1>

<p>C&aacute;c bo mạch chủ phổ biến đều sở hữu c&aacute;c khe cắm SATA với tốc độ 6 Gb/s v&agrave; NVMe. Ri&ecirc;ng c&aacute;c khe NVMe c&ograve;n tuỳ thuộc v&agrave;o loại ổ cứng SSD c&oacute; c&aacute;c ch&acirc;n cắm kh&aacute;c nhau n&ecirc;n thường mainboard sẽ ghi th&ecirc;m th&ocirc;ng số n&agrave;y.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số mainboard/Bo_mach_chu (1).jpg" style="width:730px" /></p>

<h1><span style="font-size:18px"><strong>7. Cổng SATA&nbsp;</strong></span></h1>

<h1><span style="font-size:14px"><strong>Serial ATA (SATA)</strong> l&agrave; giao tiếp bus m&aacute;y t&iacute;nh kết nối bộ điều hợp bus chủ với c&aacute;c thiết bị lưu trữ chung như ổ đĩa cứng v&agrave; ổ đĩa quang. Serial ATA thay thế ti&ecirc;u chuẩn AT Attachment cũ hơn (Parallel ATA hay PATA).</span></h1>

<h1 style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số mainboard/2475251_Z87-Deluxe-SATA-Express-1 (1).jpg" style="width:730px" /></h1>

<h1><span style="font-size:14px">SATA c&oacute; ưu điểm giảm k&iacute;ch thước v&agrave; chi ph&iacute; c&aacute;p (bảy d&acirc;y dẫn thay v&igrave; 40 hoặc 80), truyền dữ liệu nhanh hơn, tốc độ t&iacute;n hiệu cao hơn th&ocirc;ng qua giao thức I/O (Input/Output). Phi&ecirc;n bản SATA 1.0, 2.0 v&agrave; 3.0 tương ứng mang lại tốc độ truyền tải l&agrave; 1.5Gbit/s, 3.0Gbit/s v&agrave; 6.0Gbit/s.</span></h1>

<div>&nbsp;</div>

<h1><strong><span style="font-size:18px">8. Hỗ trợ đồ họa t&iacute;ch hợp</span></strong></h1>

<p>C&aacute;c <strong>mainboard</strong> n&agrave;y chỉ hỗ trợ c&aacute;c CPU c&oacute; card đồ họa t&iacute;ch hợp (on board) với kết nối HDMI v&agrave; DisplayPort. Một th&ocirc;ng tin th&uacute; vị cho anh em l&agrave; c&oacute; một số mainboard c&oacute; t&iacute;ch hợp ngay card đồ hoạ (thay v&igrave; ở tr&ecirc;n CPU) n&ecirc;n anh em c&oacute; thể sử dụng được lu&ocirc;n m&agrave; kh&ocirc;ng cần cắm card m&agrave;n h&igrave;nh.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số mainboard/card-vga-onboard (1).jpg" style="width:730px" /></p>

<h1><strong><span style="font-size:18px">9. Chipset &acirc;m thanh&nbsp;</span></strong></h1>

<p>Chipset &acirc;m thanh chứa bộ xử l&yacute; DAC để chuyển đổi t&iacute;n hiệu điện tử th&agrave;nh analog. Sở dĩ cần tới DAC bởi bộ phận khuếch đại t&iacute;n hiệu &acirc;m thanh (amply) chỉ nhận t&iacute;n hiệu dạng analog, trong khi c&aacute;c tập tin nhạc số lại lưu trữ dưới dạng t&iacute;n hiệu điện tử.&nbsp;</p>

<h1><strong><span style="font-size:18px">10. K&ecirc;nh &acirc;m thanh</span></strong></h1>

<p><strong>Th&ocirc;ng số kỹ thuật mainboard</strong> n&agrave;y thể hiện số k&ecirc;nh &acirc;m thanh được hỗ trợ bởi bo mạch chủ. Đầu ra &acirc;m thanh c&agrave;ng c&oacute; nhiều k&ecirc;nh th&igrave; &acirc;m thanh c&agrave;ng ch&acirc;n thực v&agrave; hay hơn.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/thông số mainboard/techzones-huong-dan-chon-mua-mainboard-phu-hop-may-tinh-cua-ban (1).jpg" style="width:730px" /></p>

<p>Do chức năng kết nối c&aacute;c linh kiện n&ecirc;n c&aacute;c bo mạch chủ thường c&oacute; rất nhiều cổng kết nối (USB, DisplayPort, HDMI, &acirc;m thanh, mạng&hellip;) cho ph&iacute;a sau của m&aacute;y t&iacute;nh. Anh em n&agrave;o build PC c&oacute; nhu cầu về l&agrave;m nhạc, livestream, l&agrave;m phim&hellip; n&ecirc;n để &yacute; số cổng kết nối với loa cũng như m&agrave;n h&igrave;nh để tr&aacute;nh những phiền to&aacute;i kh&ocirc;ng đ&aacute;ng c&oacute;.</p>

<p>&nbsp;</p>

<p>V&agrave; đ&oacute; l&agrave; tất cả những<strong> th&ocirc;ng số mainboard</strong> quan trọng cần ch&uacute; &yacute; khi anh em muốn build PC. H&atilde;y đến ngay <a href="https://www.tncstore.vn/" target="_blank"><strong>TNC Store</strong></a> để lựa chọn được mainboard ưng &yacute; cho chiếc PC của m&igrave;nh nh&eacute;!</p>

<div>&nbsp;</div>
', N'/Data/images/newses/tintucmoinhat/Avatar%20bai%20viet%20(6).jpg', NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-06T13:39:02.210' AS DateTime), N'quang', CAST(N'2020-12-06T13:38:00.000' AS DateTime), NULL, 4, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (24, N'Bật mí cách lựa chọn bàn di chuột hữu hiệu phù hợp với mọi nhu cầu', N'Sự thật thú vị bàn di chuột', N'su-that-thu-vi-ban-di-chuot', N'Những người dùng máy tính để bàn chắc hẳn đều sử dụng bàn di chuột để trợ giúp trong công việc và giải trí. Cùng TNC tìm hiểu những điều thú vị xung quanh sản phẩm này nhé!', N'<p><em>Những người d&ugrave;ng m&aacute;y t&iacute;nh để b&agrave;n chắc hẳn đều sử dụng b&agrave;n di chuột để trợ gi&uacute;p trong c&ocirc;ng việc v&agrave; giải tr&iacute;. C&ugrave;ng TNC t&igrave;m hiểu những điều th&uacute; vị xung quanh sản phẩm n&agrave;y nh&eacute;!</em></p>

<p>&nbsp;</p>

<p>C&oacute; lẽ rất nhiều bạn chỉ quan t&acirc;m đến những gaming gear như b&agrave;n ph&iacute;m, chuột, tai nghe&hellip; m&agrave; qu&ecirc;n mất rằng <strong>b&agrave;n di chuột</strong> (b&agrave;n l&oacute;t chuột, pad chuột) cũng đ&oacute;ng vai tr&ograve; quan trọng trong việc sử dụng m&aacute;y t&iacute;nh, đặc biệt l&agrave; với c&aacute;c game thủ.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Bàn di chuột/276fcf34068cc52313c3587a58742024 (1).jpg" title="bàn di chuột gaming" /></p>

<p>Vậy c&oacute; bao nhi&ecirc;u loại <strong>b&agrave;n di chuột</strong>? C&oacute; những ti&ecirc;u ch&iacute; g&igrave; cho b&agrave;n di chuột? C&aacute;ch chọn l&oacute;t chuột sao cho ph&ugrave; hợp với nhu cầu của bản th&acirc;n? H&atilde;y c&ugrave;ng <strong>TNC Store</strong> kh&aacute;m ph&aacute; qua b&agrave;i viết dưới đ&acirc;y nh&eacute;!</p>

<p>&nbsp;</p>

<h1><strong><span style="font-size:18px">1. C&aacute;c loại b&agrave;n di chuột</span></strong></h1>

<p>Những bạn chưa biết về <strong>pad chuột</strong> hẳn sẽ nghĩ rằng chỉ l&agrave; b&agrave;n di th&igrave; l&agrave;m g&igrave; m&agrave; cần chia th&agrave;nh nhiều loại kh&aacute;c nhau, miễn l&agrave; d&ugrave;ng để k&ecirc; chuột, b&agrave;n ph&iacute;m l&ecirc;n để chơi game hay l&agrave;m việc l&agrave; được. Tuy vậy, b&agrave;n di chuột tr&ecirc;n thị trường hiện nay được chia l&agrave;m 3 loại ch&iacute;nh, tuỳ thuộc v&agrave;o chất liệu v&agrave; bề mặt, gồm: Speed mouse pad, Control mouse pad v&agrave; Hard mouse pad.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Bàn di chuột/cougar-speed-ex-gaming-mousepad-extra-large-730px-v1 (1).jpg" title="speed mouse pad" /></p>

<p><strong>Speed mouse pad</strong> l&agrave; l&oacute;t chuột được sử dụng phổ biến nhất, được l&agrave;m từ vải v&agrave; c&oacute; bề mặt trơn, nhẵn, mịn. Do đ&oacute; n&ecirc;n chiếc Pad chuột n&agrave;y ph&ugrave; hợp với tất cả c&aacute;c t&aacute;c vụ phổ th&ocirc;ng v&agrave; th&iacute;ch hợp với cả người d&ugrave;ng văn ph&ograve;ng cho đến những game thủ.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Bàn di chuột/Speed-control-Version-Game-Mouse-Pad-Mat-Lock-Edge-For-Dota2-Diablo-3-CS-GO-Gaming.jpg_q50 (1).jpg" title="control mouse pad" /></p>

<p>Giống như b&agrave;n di chuột speed, <strong>Control mouse pad </strong>cũng được l&agrave;m từ vải nhưng bề mặt của n&oacute; sần v&agrave; th&ocirc; hơn, do c&aacute;ch sắp xếp c&aacute;c sợi tổng hợp. C&aacute;c loại <strong>pad control </strong>thường th&iacute;ch hợp cho người d&ugrave;ng chơi game nhờ tăng cường độ ch&iacute;nh x&aacute;c khi di chuột, gi&uacute;p bạn kiểm so&aacute;t được tốc độ di khi sử dụng tốt hơn so với speed mouse pad.&nbsp;</p>

<p>Kh&aacute;c với hai loại b&agrave;n di tr&ecirc;n, <strong>hard mouse pad </strong>(l&oacute;t chuột cứng) được l&agrave;m bằng nhiều chất liệu kh&aacute;c nhau như nh&ocirc;m, nhựa, cao su. Mặt đ&aacute;y của Hard mouse pad được phủ một lớp cao su với hệ số ma s&aacute;t cao.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Bàn di chuột/Blade-Hawks-Gaming-Mouse-Pad-1 (1).jpg" title="hard mouse pad" /></p>

<p>Bề mặt của loại pad chuột n&agrave;y được phủ một lớp tinh thể đặc biệt gi&uacute;p bạn di chuyển cực kỳ mượt m&agrave;. Điểm đặc biệt l&agrave; hard mousepad c&oacute; thể gi&uacute;p bạn đặt v&agrave; di chuột dễ d&agrave;ng ở bất kỳ đ&acirc;u. Tuy nhi&ecirc;n do cấu tạo cứng n&ecirc;n loại pad chuột n&agrave;y kh&ocirc;ng thể gập gọn g&agrave;ng như speed hay control được.</p>

<p>&gt;&gt;&gt; Tham khảo ngay c&aacute;c loại <strong><a href="https://www.tncstore.vn/ban-di-chuot.html" target="_blank">b&agrave;n di chuột</a></strong> đang rất hot tại <strong>TNC Store</strong> nh&eacute;!</p>

<p>&nbsp;</p>

<h1><strong><span style="font-size:18px">2. C&aacute;ch chọn b&agrave;n di chuột</span></strong></h1>

<p>Đối với người d&ugrave;ng phổ th&ocirc;ng, văn ph&ograve;ng th&igrave; việc lựa chọn một chiếc <strong>pad chuột</strong> dường như chỉ cần k&iacute;ch thước vừa tay v&agrave; cho cảm gi&aacute;c di chuột dễ d&agrave;ng l&agrave; được. Tuy vậy, c&aacute;ch chọn c&aacute;c pad chuột cũng c&oacute; những ti&ecirc;u ch&iacute; ri&ecirc;ng.&nbsp;</p>

<p>Việc lựa chọn<strong> b&agrave;n di chuột</strong> sao cho ph&ugrave; hợp với nhu cầu phụ thuộc&nbsp; phần lớn v&agrave;o ba loại chuột đ&atilde; n&oacute;i ở tr&ecirc;n, c&ugrave;ng với ba ti&ecirc;u ch&iacute; l&agrave; k&iacute;ch thước, độ d&agrave;y v&agrave; t&ugrave;y biến.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Bàn di chuột/cac-loai-ban-di-chuot-dang-mua-cho-game-thu-viet (1).jpg" title="kích thước bàn di chuột" /></p>

<p>T&ugrave;y từng nhu cầu v&agrave; sở th&iacute;ch của mỗi người m&agrave; y&ecirc;u cầu về k&iacute;ch thước cũng kh&aacute;c nhau. Nếu bạn di chuột với DPI cao th&igrave; chỉ cần một chiếc <strong>b&agrave;n di chuột </strong>k&iacute;ch thước vừa phải. Tuy nhi&ecirc;n với những người th&iacute;ch chơi game v&agrave; c&oacute; sở th&iacute;ch về c&ocirc;ng nghệ th&igrave; c&aacute;ch chọn pad chuột lớn lu&ocirc;n l&agrave; sự lựa chọn tuyệt vời.&nbsp;</p>

<p>Kh&ocirc;ng chỉ di chuyển chuột thoải m&aacute;i, chiếc <strong>b&agrave;n di chuột </strong>k&iacute;ch thước lớn c&ograve;n l&agrave; vật dụng trang tr&iacute; cho &ldquo;g&oacute;c học tập&rdquo; nhờ sự đa dạng về h&igrave;nh ảnh cũng như d&ugrave;ng để l&oacute;t cho cả chiếc b&agrave;n ph&iacute;m của bạn.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Bàn di chuột/1650525 (1).jpg" title="độ dày pad chuột" /></p>

<p>Một <strong>l&oacute;t chuột</strong> thường c&oacute; độ d&agrave;y phổ biến từ 2 đến 6mm. Loại l&oacute;t chuột được ưa chuộng nhiều nhất l&agrave; 3mm. C&aacute;c loại l&oacute;t chuột d&agrave;y thường c&oacute; độ d&agrave;y từ 4mm trở l&ecirc;n. Đối với những game thủ chuy&ecirc;n nghiệp, thường xuy&ecirc;n online v&agrave; tần suất sử dụng chuột nhiều th&igrave; c&aacute;ch chọn loại l&oacute;t chuột d&agrave;y thường được họ ưa chuộng.</p>

<p>Với sự ph&aacute;t triển ch&oacute;ng mặt của c&ocirc;ng nghệ th&igrave; c&aacute;c loại <strong>l&oacute;t chuột</strong> hiện nay c&ograve;n c&oacute; những khả năng t&ugrave;y biến ngo&agrave;i c&ocirc;ng năng ch&iacute;nh l&agrave; để đệm cho chuột v&agrave; b&agrave;n ph&iacute;m. C&oacute; thể kể đến những chiếc l&oacute;t chuột c&oacute; LED RGB ở dưới đ&aacute;y hay c&oacute; k&ecirc; cổ tay, đặc biệt hơn l&agrave; được t&iacute;ch hợp c&ocirc;ng nghệ sạc cho chuột.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Bàn di chuột/hx-hero-mousepad-fury-ultra-md (1).jpg" title="mouse pad rgb" /></p>

<h1>&nbsp;</h1>

<h1><strong><span style="font-size:18px">3. C&aacute;ch lựa chọn b&agrave;n di chuột ph&ugrave; hợp&nbsp;</span></strong></h1>

<p>Đối với người d&ugrave;ng l&agrave; d&acirc;n c&ocirc;ng sở, văn ph&ograve;ng với nhu cầu cơ bản lướt web, l&agrave;m việc, soạn thảo văn bản hay chơi c&aacute;c tựa game đơn giản th&igrave; kh&ocirc;ng cần ch&uacute; trọng đến<strong> b&agrave;n di chuột </strong>qu&aacute; nhiều.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Bàn di chuột/vn_file_ (5) (1).jpg" style="width:730px" /></p>

<p>C&aacute;c loại <strong>l&oacute;t chuột</strong> k&iacute;ch thước nhỏ, gi&aacute; rẻ từ 10.000 đến 50.000 đồng l&agrave; đủ, độ d&agrave;y cũng vừa phải. Nếu bạn l&agrave; người d&ugrave;ng chuột trong thời gian d&agrave;i th&igrave; n&ecirc;n t&igrave;m hiểu c&aacute;c loại l&oacute;t chuột c&oacute; phần đệm đỡ cổ tay ở ph&iacute;a dưới.&nbsp;</p>

<p>C&ograve;n đối với những game thủ ch&iacute;nh hiệu th&igrave; c&aacute;ch lựa chọn<strong> b&agrave;n di chuột </strong>trở n&ecirc;n rất quan trọng. Một chiếc b&agrave;n di ph&ugrave; hợp sẽ tối ưu h&oacute;a khả năng của cảm biến tr&ecirc;n <strong><a href="https://www.tncstore.vn/cach-lua-chon-chuot-gaming.html" target="_blank">chuột gaming</a></strong>, gi&uacute;p game thủ di chuyển v&agrave; thao t&aacute;c dễ d&agrave;ng hơn. C&aacute;c loại l&oacute;t chuột c&oacute; độ d&agrave;y lớn thường được gamer ưa chuộng hơn.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Bàn di chuột/TE8iC79pZFWN3DbkUhegHY (1).jpg" style="width:730px" /></p>

<p>Đối với game thủ chuy&ecirc;n nghiệp, phải đi lại nhiều th&igrave; một chiếc<strong> pad speed</strong> hay control sẽ th&iacute;ch hợp hơn l&agrave; một chiếc pad chuột cứng chỉ th&iacute;ch hợp với c&aacute;c game thủ chơi ở nh&agrave;. Hơn nữa, do bề mặt tinh thể cứng n&ecirc;n mouse feet dễ bị ăn m&ograve;n hơn.&nbsp;</p>

<p>Trong đ&oacute; <strong>pad chuột control</strong> ph&ugrave; hợp cho c&aacute;c tựa game MOBA, nhập vai thời gian thực v&igrave; độ ch&iacute;nh x&aacute;c cao. <strong>Pad speed</strong> sẽ th&iacute;ch hợp trong c&aacute;ch chọn b&agrave;n di chuột cho c&aacute;c game thủ chuy&ecirc;n game FPS nhờ độ l&aacute;ng mịn tr&ecirc;n bề mặt, gi&uacute;p c&aacute;c pha vẩy t&acirc;m trở n&ecirc;n tinh tế v&agrave; xuất thần.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Bàn di chuột/H547bec2473f04a799b94800c547d27c7D (1).jpg" style="width:730px" /></p>

<p>V&agrave; đ&oacute; l&agrave; tất cả những điều bạn cần biết về c&aacute;ch chọn&nbsp;<strong>b&agrave;n di chuột</strong>. H&atilde;y thường xuy&ecirc;n gh&eacute; thăm <strong><a href="https://www.tncstore.vn/" target="_blank">TNC Store</a></strong> để cập nhật những sản phẩm c&ocirc;ng nghệ mới nhất nh&eacute;!</p>

<p>&nbsp;</p>
', N'/Data/images/newses/tintucmoinhat/Avatar%20bai%20viet%20(3)%20(1).jpg', NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-06T13:39:14.890' AS DateTime), N'quang', CAST(N'2020-12-06T13:39:00.000' AS DateTime), NULL, 4, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (25, N'Top 5 màn hình đồ họa 2020 mà designer nào cũng khao khát', N'Top màn hình đồ hoạ đáng mua nhất', N'top-man-hinh-do-hoa-dang-mua-nhat', N'Một chiếc màn hình đồ hoạ tốt sẽ giúp ích rất nhiều trong công việc. Cùng TNC Store điểm qua top 5 màn hình đồ hoạ chất lượng nhất năm 2020 nhé!', N'<p><em>Một chiếc m&agrave;n h&igrave;nh đồ hoạ tốt sẽ gi&uacute;p &iacute;ch rất nhiều trong c&ocirc;ng việc. C&ugrave;ng TNC Store điểm qua top 5 m&agrave;n h&igrave;nh đồ hoạ chất lượng nhất năm 2020 nh&eacute;!</em></p>

<p>&nbsp;</p>

<p>Hiện nay, khi m&agrave; gi&aacute; th&agrave;nh của đồ c&ocirc;ng nghệ n&oacute;i chung v&agrave; những chiếc m&agrave;n h&igrave;nh n&oacute;i ri&ecirc;ng đều đ&atilde; trở n&ecirc;n &ldquo;mềm&rdquo; hơn trước rất nhiều th&igrave; việc sắm cho m&igrave;nh một chiếc m&agrave;n h&igrave;nh đồ hoạ tốt l&agrave; một sự lựa chọn khả thi hơn kh&ocirc;ng chỉ với những d&acirc;n designer, thiết kế m&agrave; c&ograve;n cả với người d&ugrave;ng th&ocirc;ng thường.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 màn hình đồ hoạ/1 (1).jpg" style="width:730px" /></p>

<p>C&oacute; thể n&oacute;i một chiếc m&agrave;n h&igrave;nh đồ hoạ sẽ c&oacute; chất lượng h&igrave;nh ảnh tốt nhờ những đ&aacute;p ứng c&aacute;c ti&ecirc;u chuẩn đặc trưng về l&agrave;m đồ hoạ như tấm nền IPS, độ bao phủ m&agrave;u, độ sai lệch m&agrave;u&hellip; Ch&iacute;nh v&igrave; vậy n&ecirc;n ngo&agrave;i d&ugrave;ng trong c&ocirc;ng việc th&igrave; <strong>m&agrave;n h&igrave;nh đồ hoạ</strong> c&ograve;n rất th&iacute;ch hợp cho c&aacute;c t&aacute;c vụ giải tr&iacute; như xem ảnh, video, xem phim&hellip;</p>

<p>Vậy c&oacute; những chiếc m&agrave;n h&igrave;nh đồ hoạ n&agrave;o tốt? Chất lượng h&igrave;nh ảnh tr&ecirc;n <strong>m&agrave;n h&igrave;nh đồ hoạ</strong> chuẩn chỉ cần đ&aacute;p ứng ti&ecirc;u ch&iacute; g&igrave;? H&atilde;y c&ugrave;ng <strong>TNC Store</strong> kh&aacute;m ph&aacute; ngay top 5 m&agrave;n h&igrave;nh đồ hoạ 2020 nh&eacute;!</p>

<p>&nbsp;</p>

<h1><strong><span style="font-size:18px">1. M&agrave;n H&igrave;nh Đồ Họa ASUS ProArt PA248QV</span></strong></h1>

<h1 style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 màn hình đồ hoạ/addf60d8593aa608d003cfec44452f6e.jpg_720x720q80.jpg_ (1).jpg" style="width:730px" /></h1>

<p>Đến với sản phẩm đầu ti&ecirc;n trong top 5 <strong><a href="https://www.tncstore.vn/man-hinh-do-hoa.html" target="_blank">m&agrave;n h&igrave;nh đồ hoạ</a></strong> ch&iacute;nh l&agrave; <strong>&nbsp;Asus ProArt PA248QV</strong>. C&oacute; mức gi&aacute; cực kỳ hợp l&yacute; với người d&ugrave;ng phổ th&ocirc;ng, chiếc m&agrave;n h&igrave;nh đồ hoạ đến từ Asus sở hữu tấm nền IPS cho g&oacute;c nh&igrave;n l&ecirc;n tới 178 độ c&ugrave;ng k&iacute;ch thước 24 inch, dải m&agrave;u cực ấn tượng với 100% sRGB cho chất lượng m&agrave;u sắc rất đẹp.</p>

<p>Kh&ocirc;ng chỉ vậy, độ sai lệch m&agrave;u Delta E nhỏ hơn 2 cũng l&agrave; điểm s&aacute;ng của chiếc<strong> m&agrave;n h&igrave;nh đồ hoạ</strong> chất lượng n&agrave;y, cho khả năng hiển thị m&agrave;u sắc ch&acirc;n thực. Những anh em mới bước ch&acirc;n v&agrave;o nghề thiết kế, l&agrave;m đồ hoạ ho&agrave;n to&agrave;n c&oacute; thể tin d&ugrave;ng chiếc m&agrave;n h&igrave;nh đồ hoạ đến từ Asus.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 màn hình đồ hoạ/4fea5bb596eab623e218a37b4f92957b (1).jpg" style="width:730px" /></p>

<p>Số lượng cổng kết nối tr&ecirc;n chiếc m&agrave;n h&igrave;nh đồ hoạ <strong>ProArt PA248QV</strong> cũng kh&aacute; đa dạng. Anh em sẽ c&oacute; c&aacute;c cổng DisplayPort, HDMI, D-sub, Audio in, Giắc cắm tai nghe cộng với bốn cổng USB 3.0. Khả năng giải tr&iacute; cũng rất tuyệt vời với tần số qu&eacute;t 75Hz.</p>

<p>L&agrave; một chiếc <strong>m&agrave;n h&igrave;nh đồ hoạ</strong> th&igrave; việc trang bị c&aacute;c t&iacute;nh năng chuy&ecirc;n cho thiết kế như ProArt Preset v&agrave; ProArt Palette độc quyền của ASUS l&agrave; rất cần thiết, cung cấp một số th&ocirc;ng số m&agrave;u sắc v&agrave; chế độ c&agrave;i đặt sẵn c&oacute; thể điều chỉnh, rất tiện lợi cho anh em d&acirc;n designer.&nbsp;</p>

<p>&gt;&gt;&gt; THAM KHẢO SẢN PHẨM TẠI LINK DƯỚI</p>

<p><strong><a href="https://www.tncstore.vn/man-hinh-do-hoa/man-hinh-do-hoa-asus-proart-pa248qv.html" target="_blank">M&agrave;n H&igrave;nh Đồ Họa ASUS ProArt PA248QV</a></strong></p>

<h1><strong><span style="font-size:18px">2. M&agrave;n h&igrave;nh Dell U2419H</span></strong></h1>

<h1 style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 màn hình đồ hoạ/OBqURbigNC5oX7f (1).jpg" style="width:730px" /></h1>

<p>C&oacute; lẽ thương hiệu Dell kh&ocirc;ng c&ograve;n xa lạ g&igrave; với những nh&agrave; thiết kế bởi chất lượng h&igrave;nh ảnh tuyệt vời m&agrave; <strong>m&agrave;n h&igrave;nh đồ hoạ </strong>Dell mang lại. Với<strong> Dell U2419H</strong>, người d&ugrave;ng sẽ sở hữu một chiếc m&agrave;n h&igrave;nh đồ hoạ k&iacute;ch thước 23,8 inch, tấm nền <strong>Ultrasharp LED IPS</strong> c&ugrave;ng thiết kế si&ecirc;u mỏng kh&aacute; ấn tượng ở c&aacute;c mẫu m&agrave;n h&igrave;nh tầm trung.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 màn hình đồ hoạ/2.jpg" style="width:730px" /></p>

<p>Điểm đặc biệt khiến Dell U2419H cực kỳ th&iacute;ch hợp với d&acirc;n thiết kế l&agrave; chiếc m&agrave;n h&igrave;nh đồ hoạ n&agrave;y được trang bị ch&acirc;n đế tiện lợi cho việc&nbsp; lật, xoay theo nhiều hướng, điều chỉnh độ cao và quản lý d&acirc;y cáp r&acirc;́t gọn gàng, tạo sự thoải m&aacute;i khi sử dụng trong thời gian d&agrave;i.</p>

<p>Chất lượng m&agrave;u sắc tr&ecirc;n chiếc <strong>m&agrave;n h&igrave;nh đồ hoạ</strong> Dell U2419H được đ&aacute;nh gi&aacute; cao với 99% sRGB, 99% REC709, 85% DCI-P3 c&ugrave;ng độ sai lệch m&agrave;u Delta E nhỏ hơn 2. C&oacute; tổng cộng 5 ph&iacute;m bấm tr&ecirc;n chiếc m&agrave;n h&igrave;nh đồ hoạ chất lượng n&agrave;y c&ugrave;ng 8 tuỳ biến cho c&aacute;c t&aacute;c vụ kh&aacute;c nhau như chơi game, xem phim, l&agrave;m đồ hoạ&hellip;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 màn hình đồ hoạ/769c729001ea10f186a9f9822d847c95 (1).jpg" style="width:730px" /></p>

<p>Về c&aacute;c cổng kết nối, Dell UltraSharp U2419H cung cấp 3 cổng xuất, nhập h&igrave;nh ảnh ở sau lưng, gồm c&oacute; HDMI/MHL, 1 cổng nhập DisplayPort, v&agrave; 1 cổng xuất DisplayPort rất th&iacute;ch hợp cho c&aacute;c t&aacute;c vụ đa nhiệm. Ngo&agrave;i ra m&agrave;n h&igrave;nh đồ hoạ n&agrave;y c&ograve;n sở hữu 4 cổng kết nối USB 3.0 v&agrave; xuất &acirc;m thanh. Hai cổng USB 3.0 kh&aacute;c cũng được trang bị th&ecirc;m ở cạnh tr&aacute;i của chiếc m&agrave;n h&igrave;nh đồ hoạ n&agrave;y.</p>

<p>&gt;&gt;&gt; THAM KHẢO SẢN PHẨM TẠI LINK DƯỚI</p>

<p><strong><a href="https://www.tncstore.vn/man-hinh-do-hoa/man-hinh-dell-238-u2419h-ultrasharp.html" target="_blank">M&agrave;n h&igrave;nh Dell U2419H</a></strong></p>

<h1><strong><span style="font-size:18px">3. M&agrave;n H&igrave;nh Đồ Họa LG 34WK650</span></strong></h1>

<h1 style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 màn hình đồ hoạ/48716002607_437e131f7f_b (1).jpg" style="width:730px" /></h1>

<p>Đến với ph&acirc;n kh&uacute;c cao cấp hơn ch&iacute;nh l&agrave; chiếc m&agrave;n h&igrave;nh đồ hoạ LG Ultrawide 34WK650. Với k&iacute;ch thước 34 inch, độ ph&acirc;n giải Full HD (2560X1080) với tỷ lệ m&agrave;n h&igrave;nh 21:9 th&igrave; đ&acirc;y thực sự l&agrave; sự lựa chọn tốt cho những nh&agrave; thiết kế đồ họa, dựng video chuy&ecirc;n nghiệp khi anh em c&oacute; thể mở nhiều cửa sổ v&agrave; xem nhiều nội dung c&ugrave;ng l&uacute;c.</p>

<p>Thiết kế của LG 34WK650 l&agrave; điểm cộng rất lớn với phần ch&acirc;n đế cong mang đến sự ổn định, m&agrave;u sắc trang nh&atilde;. Anh em c&oacute; thể điều chỉnh độ cao, độ nghi&ecirc;ng v&agrave; g&oacute;c của m&agrave;n h&igrave;nh để c&oacute; g&oacute;c nh&igrave;n tốt nhất khi l&agrave;m việc v&agrave; giải tr&iacute;.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 màn hình đồ hoạ/1-25 (1).jpg" style="width:730px" /></p>

<p>Độ bao phủ m&agrave;u sắc 99% sRGB c&ugrave;ng tấm nền IPS gi&uacute;p chiếc <strong>m&agrave;n h&igrave;nh đồ hoạ</strong> n&agrave;y xử l&yacute; tốt c&aacute;c t&aacute;c vụ l&agrave;m việc, giải tr&iacute;.Hơn nữa, c&ocirc;ng nghệ HDR (High Dynamic Range) c&ugrave;ng m&agrave;n h&igrave;nh Ultrawide v&agrave; thiết kế viền mỏng khiến trải nghiệm của người d&ugrave;ng trở n&ecirc;n ch&acirc;n thực hơn rất nhiều.&nbsp;</p>

<p>&gt;&gt;&gt; THAM KHẢO SẢN PHẨM TẠI LINK DƯỚI</p>

<p><strong><a href="https://www.tncstore.vn/man-hinh-do-hoa/man-hinh-lg-34wk650-w.html" target="_blank">M&agrave;n H&igrave;nh Đồ Họa LG 34WK650</a></strong></p>

<h1><strong><span style="font-size:18px">4. M&agrave;n h&igrave;nh Dell Ultrasharp U2720Q</span></strong></h1>

<h1 style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 màn hình đồ hoạ/440d36f5c9b99ba9f35cb17fbc4ee12e (1).jpg" style="width:730px" /></h1>

<p>Nhắc đến thương hiệu Ultrawide của LG m&agrave; kh&ocirc;ng n&oacute;i đến Ultrasharp như l&agrave; một ti&ecirc;u chuẩn m&agrave;n h&igrave;nh đồ hoạ cao cấp th&igrave; quả l&agrave; thiếu s&oacute;t lớn. Với Dell U2720Q, đ&acirc;y thực sự l&agrave; chiếc <strong>m&agrave;n h&igrave;nh đồ họa</strong> d&agrave;nh cho người d&ugrave;ng c&oacute; nhu cầu cao cấp về thiết kế, giải tr&iacute; khi sở hữu độ ph&acirc;n giải 4K (3840 x 2160), số lượng m&agrave;u sắc hiển thị l&ecirc;n tới 1,07 tỷ m&agrave;u (gấp 64 lần so với m&agrave;n h&igrave;nh ti&ecirc;u chuẩn).</p>

<p>Hơn thế nữa, chiếc <strong>m&agrave;n h&igrave;nh đồ hoạ</strong> cao cấp đến từ Dell c&oacute; độ bao phủ m&agrave;u sắc cực ấn tượng với 95% DCI-P3 (ti&ecirc;u chuẩn điện ảnh Mỹ), c&ugrave;ng 99% sRGB v&agrave; 99% REC 709&nbsp; cho trải nghiệm l&agrave;m việc v&agrave; giải tr&iacute; cực kỳ ấn tượng. Tất nhi&ecirc;n với những mẫu m&agrave;n h&igrave;nh đồ hoạ cao cấp như Dell U2720Q th&igrave; việc độ sai lệch m&agrave;u Delta E nhỏ hơn 2 l&agrave; điều bắt buộc phải c&oacute;.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 màn hình đồ hoạ/d65beb74fb65327c8f876bbaf000cdca (1).jpg" style="width:730px" /></p>

<p>Phần ch&acirc;n đế của chiếc <strong>m&agrave;n h&igrave;nh đồ hoạ</strong> n&agrave;y cũng được thiết kế để t&ugrave;y chỉnh g&oacute;c nh&igrave;n cho ph&ugrave; hợp với mọi đối tượng người d&ugrave;ng. Cổng USB Type-C được trang bị tr&ecirc;n Dell U2720Q gi&uacute;p anh em c&oacute; thể sạc nhanh c&aacute;c thiết bị điện của m&igrave;nh.&nbsp;</p>

<p>Ngo&agrave;i ra Dell cũng rất nổi tiếng với việc sản xuất c&aacute;c sản phẩm th&acirc;n thiện với m&ocirc;i trường như m&agrave;n h&igrave;nh được l&agrave;m bằng nhựa t&aacute;i chế, bao b&igrave; kh&ocirc;ng xốp v&agrave; chế độ Power Nap gi&uacute;p tiết kiệm điện khi anh em qu&ecirc;n tắt chiếc m&agrave;n h&igrave;nh đồ hoạ của m&igrave;nh.</p>

<p>&gt;&gt;&gt; THAM KHẢO SẢN PHẨM TẠI LINK DƯỚI</p>

<p><strong><a href="https://www.tncstore.vn/man-hinh-do-hoa/man-hinh-dell-ultrasharp-u2720q-27-4k-ips-60hz.html" target="_blank">M&agrave;n h&igrave;nh Dell Ultrasharp U2720Q</a></strong></p>

<h1><strong><span style="font-size:18px">5. M&agrave;n H&igrave;nh Đồ Họa LG 32UN880-B UltraFine</span></strong></h1>

<h1 style="text-align:center"><iframe class="note-video-clip" frameborder="0" height="360" src="//www.youtube.com/embed/-kvR-qmqvl4" width="640"></iframe></h1>

<p>Đến với &ldquo;tr&ugrave;m cuối&rdquo; trong b&agrave;i viết ch&iacute;nh l&agrave; chiếc m&agrave;n h&igrave;nh đồ hoạ <strong>LG 32UN880-B UltraFine</strong>. C&oacute; k&iacute;ch thước m&agrave;n h&igrave;nh kh&aacute; độc đ&aacute;o 31,5 inch, tỷ lệ m&agrave;n h&igrave;nh 16:9 c&ugrave;ng thiết kế ch&acirc;n đế c&oacute; thể t&ugrave;y chỉnh đa dạng vị tr&iacute; m&agrave;n h&igrave;nh, gi&uacute;p người d&ugrave;ng c&oacute; c&aacute;c g&oacute;c nh&igrave;n một c&aacute;ch thoải m&aacute;i nhất.</p>

<p>Nếu anh em đang c&oacute; nhu cầu sắm một chiếc <strong>m&agrave;n h&igrave;nh đồ hoạ</strong> chất lượng tốt nhất th&igrave; LG32UN880-B UltraFine chắc chắn sẽ l&agrave;m h&agrave;i l&ograve;ng anh em. Sở hữu tấm nền IPS, độ ph&acirc;n giải 4K c&ugrave;ng độ s&aacute;ng 350cd/m2 th&igrave; chất lượng h&igrave;nh ảnh tuyệt đẹp trứ danh của d&ograve;ng UltraFine cũng như m&agrave;u sắc của chiếc m&agrave;n h&igrave;nh đồ hoạ n&agrave;y đều đạt đến độ ho&agrave;n hảo.&nbsp;&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 màn hình đồ hoạ/LG-Ergo-32UN880-B-songphuong.vn_ (1).jpg" style="width:730px" /></p>

<p>Th&ecirc;m v&agrave;o đ&oacute;, Chiếc <strong>m&agrave;n h&igrave;nh đồ hoạ</strong> n&agrave;y cũng sở hữu cổng USB Type-C cho hiệu năng vượt trội v&agrave; khả năng kết nối với nhiều thiết bị kh&aacute;c nhau. Do thiết kế c&ocirc;ng th&aacute;i học n&ecirc;n sản phẩm th&iacute;ch hợp với mọi đối tượng người d&ugrave;ng, từ c&aacute;c nh&agrave; thiết kế, designer chuy&ecirc;n nghiệp cho đến những người c&oacute; nhu cầu giải tr&iacute; cao, muốn c&oacute; được trải nghiệm trọn vẹn nhất.</p>

<p>&gt;&gt;&gt; THAM KHẢO SẢN PHẨM TẠI LINK DƯỚI</p>

<p><strong><a href="https://www.tncstore.vn/man-hinh-do-hoa/man-hinh-lg-32-32un880-b-ultrafine.html" target="_blank">M&agrave;n H&igrave;nh Đồ Họa LG 32UN880-B UltraFine</a></strong></p>

<p>&nbsp;</p>

<p>V&agrave; đ&oacute; l&agrave;<strong> top 5 m&agrave;n h&igrave;nh đồ hoạ chất lượng nhất 2020</strong> cho tới thời điểm hiện tại, trải d&agrave;i từ ph&acirc;n kh&uacute;c phổ th&ocirc;ng cho tới cao cấp.&nbsp;</p>

<p>TNC hi vọng qua b&agrave;i viết n&agrave;y anh em đ&atilde; c&oacute; được c&aacute;i nh&igrave;n tổng thể về những mẫu <strong>m&agrave;n h&igrave;nh đồ hoạ</strong> tốt nhất 2020 v&agrave; đừng qu&ecirc;n gh&eacute; thăm<strong><a href="https://www.tncstore.vn/tin-tuc" target="_blank"> TNC News</a></strong> thường xuy&ecirc;n để cập nhật những sản phẩm c&ocirc;ng nghệ mới nhất nh&eacute;!</p>

<p>&nbsp;</p>
', N'/Data/images/newses/tintucmoinhat/Avatar%20bai%20viet%20copy.jpg', NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-06T13:39:33.100' AS DateTime), N'quang', CAST(N'2020-12-06T13:39:00.000' AS DateTime), NULL, 4, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (26, N'Thay vì đợi Macbook PRO 2020, Mua laptop này rẻ mà mạnh hơn nhiều', N'Laptop gaming vừa rẻ vừa mạnh', N'laptop-gaming-vua-re-vua-manh', N'Macbook Pro vừa được Apple công bố cũng hấp dẫn đấy. Nhưng những chiếc laptop dưới đây hứa hẹn sẽ mang lại hiệu năng không hề kém cạnh mà giá lại rẻ hơn so với mẫu Laptop của Apple.', N'<p><em>Macbook Pro vừa được Apple c&ocirc;ng bố cũng hấp dẫn đấy. Nhưng những chiếc laptop dưới đ&acirc;y hứa hẹn sẽ mang lại hiệu năng kh&ocirc;ng hề k&eacute;m cạnh m&agrave; gi&aacute; lại rẻ hơn so với mẫu Laptop của Apple.</em></p>

<p>&nbsp;</p>

<p>Vậy l&agrave; đầu th&aacute;ng 11 mới đ&acirc;y&nbsp; Apple đ&atilde; cho ra mắt những mẫu sản phẩm <strong>Macbook</strong> mới nhất gồm Macbook Air, Macbook Pro v&agrave; Mac Mini trong sự kiện c&ocirc;ng bố sản phẩm mới của c&ocirc;ng ty. Đ&aacute;ng ch&uacute; &yacute;, những mẫu laptop n&agrave;y đều sử dụng chip M1 - vi xử l&yacute; mang kiến tr&uacute;c ARM do ch&iacute;nh Apple nghi&ecirc;n cứu v&agrave; sản xuất.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Macbook Pro mua laptop gaming mạnh hơn/photo-1-1606291800182205298767 (1).jpg" style="width:730px" /></p>

<p>Sự kiện n&agrave;y đ&aacute;nh dấu sự khởi đầu của một kỷ nguy&ecirc;n mới cho d&ograve;ng Macbook đồng thời l&agrave; hồi kết trong sự hợp t&aacute;c giữa Apple với Intel. Tuy nhi&ecirc;n, Apple cho biết họ vẫn hỗ trợ n&acirc;ng cấp v&agrave; trợ gi&uacute;p c&aacute;c sản phẩm d&ugrave;ng CPU Intel trong thời gian kh&aacute; l&acirc;u nữa.&nbsp;</p>

<p>Theo Apple, chip M1 sở hữu 8 nh&acirc;n CPU c&ugrave;ng 8 nh&acirc;n GPU t&iacute;ch hợp, cho hiệu năng mạnh mẽ c&ugrave;ng dung lượng pin lớn: với 18 giờ xem video tr&ecirc;n Macbook Air v&agrave; 20 giờ tr&ecirc;n Macbook Pro.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Macbook Pro mua laptop gaming mạnh hơn/apple-event-one-more-thing-10 (1).jpg" style="width:730px" /></p>

<p>Với th&ocirc;ng số ấn tượng n&oacute;i tr&ecirc;n c&ugrave;ng thiết kế thanh lịch, tao nh&atilde; đ&atilde; trở th&agrave;nh thương hiệu th&igrave; <strong>Macbook Pro 2020</strong> l&agrave; sản phẩm rất đ&aacute;ng để mong đợi trong dịp cuối năm. Tuy nhi&ecirc;n, yếu tố gi&aacute; th&agrave;nh c&ugrave;ng việc chưa c&oacute; h&agrave;ng tại Việt Nam khiến nhiều anh em đang c&oacute; nhu cầu mua laptop kh&aacute; ph&acirc;n v&acirc;n.</p>

<p>Hiểu được t&acirc;m l&yacute; anh em n&ecirc;n trong b&agrave;i viết n&agrave;y, TNC Store xin giới thiệu một số mẫu laptop c&oacute; gi&aacute; th&agrave;nh rẻ hơn Macbook Pro 2020 m&agrave; hiệu năng cũng kh&ocirc;ng hề k&eacute;m cạnh, thậm ch&iacute; c&ograve;n mạnh hơn flagship đến từ nh&agrave; t&aacute;o.</p>

<p>&nbsp;</p>

<h1><strong><span style="font-size:18px">1. Laptop MSI Prestige 14 Evo</span></strong></h1>

<p>Với gi&aacute; b&aacute;n từ 1,299 đ&ocirc; cho phi&ecirc;n bản <strong>Macbook Pro 2020</strong> mới nhất, đồng nghĩa khi về Việt Nam sẽ dao động tr&ecirc;n 30 triệu đồng - mức gi&aacute; phải n&oacute;i l&agrave; kh&aacute; đắt so với c&aacute;c đối thủ c&ugrave;ng ph&acirc;n kh&uacute;c. V&agrave; thay v&igrave; đợi sản phẩm từ Apple, anh em ho&agrave;n to&agrave;n c&oacute; thể lựa chọn chiếc <strong>Laptop MSI Prestige 14 Evo 089VN</strong>.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Macbook Pro mua laptop gaming mạnh hơn/com_ (7) (1).jpg" style="width:730px" /></p>

<p>Nổi bật nhờ thiết kế thanh lịch, t&ocirc;ng m&agrave;u x&aacute;m tuyệt đẹp, chiếc <strong>laptop mỏng nhẹ</strong> n&agrave;y thực sự l&agrave; sự lựa chọn ho&agrave;n hảo cho người d&ugrave;ng hay di chuyển, l&agrave;m việc ở mọi nơi.<strong> MSI Prestige 14 Evo</strong> sở hữu CPU Intel thế hệ thứ 11 Core&trade; i7-1185G7 c&oacute; tốc độ xung nhịp boost l&ecirc;n tới 4.8 GHz (so với 3.2 GHz của chip M1 th&igrave; kh&aacute; ấn tượng) cho tốc độ xử l&yacute; cực nhanh.</p>

<p>Kh&ocirc;ng chỉ vậy, so với 8 nh&acirc;n GPU t&iacute;ch hợp tr&ecirc;n chip M1 của <strong>Macbook Pro 2020</strong> th&igrave; bộ xử l&yacute; đồ hoạ Intel Iris Xe phần n&agrave;o nhỉnh hơn nhờ hiệu năng xử l&yacute; h&igrave;nh ảnh l&ecirc;n đến 1080p 60fps. Hơn nữa, việc Apple &ldquo;một m&igrave;nh một ngựa&rdquo; bấy l&acirc;u nay sẽ g&acirc;y ra kh&ocirc;ng &iacute;t cản trở với những anh em muốn sử dụng ứng dụng chơi game hay l&agrave;m việc được đồng bộ ho&aacute; tốt hơn tr&ecirc;n nền tảng Windows.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Macbook Pro mua laptop gaming mạnh hơn/com_ (8) (1).jpg" style="width:730px" /></p>

<p>Kh&ocirc;ng chỉ chơi game tốt, chiếc laptop mỏng nhẹ <strong>MSI Prestige 14 Evo</strong> c&ograve;n c&oacute; hiệu năng mạnh mẽ khi xử l&yacute; c&aacute;c t&aacute;c vụ đồ hoạ như chỉnh sửa ảnh. Với linh hồn l&agrave; Intel Core&trade; i7-1185G7 tiến tr&igrave;nh 10nm, bộ xử l&yacute; đồ hoạ Intel Iris Xe c&ugrave;ng SSD được gắn tr&ecirc;n khe cắm PCIe 4.0 c&oacute; tốc độ l&ecirc;n tới gần 8GB/s.</p>

<p>M&agrave;n h&igrave;nh tr&ecirc;n chiếc laptop MSI Prestige 14 Evo cũng được đ&aacute;nh gi&aacute; cao với thiết kế viền mỏng thời thượng, k&iacute;ch thước 14 inch, nhỉnh hơn đ&ocirc;i ch&uacute;t so với 13 inch tr&ecirc;n Macbook Pro 2020. Tấm nền IPS c&ugrave;ng độ bao phủ m&agrave;u sắc xấp xỉ 100% sRGB cho chất lượng h&igrave;nh ảnh rất tuyệt vời.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Macbook Pro mua laptop gaming mạnh hơn/com_ (9) (1).jpg" style="width:730px" /></p>

<p>Kh&ocirc;ng chỉ mạnh về hiệu năng, <strong>MSI Prestige 14 Evo</strong> cũng nổi tiếng về độ bền đ&aacute;p ứng ti&ecirc;u chuẩn qu&acirc;n sự MIL-STD-810G. Thời lượng pin tuy ngắn hơn <strong>Macbook Pro 2020</strong> với 12 tiếng sử dụng li&ecirc;n tục nhưng nhờ trang bị cổng Thunderbolt 4 cho tốc độ sạc nhanh gấp 4 lần USB 3.2 Gen 2 th&igrave; anh em ho&agrave;n to&agrave;n c&oacute; thể y&ecirc;n t&acirc;m sử dụng cho c&ocirc;ng việc cũng như giải tr&iacute;.</p>

<p>&gt;&gt;&gt; Tham khảo ngay sản phẩm tại link dưới:</p>

<p><strong><a href="https://www.tncstore.vn/gaming-laptop/laptop-msi-prestige-14-evo-089vn.html" target="_blank">Laptop MSI Prestige 14 Evo 087VN</a></strong></p>

<p>&nbsp;</p>

<h1><strong><span style="font-size:18px">2. Laptop Gaming ASUS TUF A15 FA506IV-HN202T</span></strong></h1>

<p>Tiếp theo ch&iacute;nh l&agrave; mẫu<strong> Laptop Gaming</strong> ti&ecirc;u biểu d&agrave;nh cho anh em game thủ. Nếu chỉ x&eacute;t ri&ecirc;ng về hiệu năng chơi game th&igrave; chiếc laptop <strong>Asus TUF A15 FA506IV-HN202T</strong> ho&agrave;n to&agrave;n vượt trội so với chiếc <strong>Macbook Pro 2020</strong>.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Macbook Pro mua laptop gaming mạnh hơn/ASUS-TUF-Gaming-A15-FA506-9.jpg" style="width:730px" /></p>

<p>X&eacute;t về thiết kế, chiếc <strong>Laptop chơi game</strong> Asus TUF A15&nbsp; c&oacute; thiết kế nhỏ hơn v&agrave; nhẹ hơn so với người tiền nhiệm với Khung m&aacute;y Fortress Grey mang lại vẻ b&oacute;ng bẩy v&agrave; tinh tế. Thiết kế tổ ong tr&ecirc;n bề mặt dưới khung m&aacute;y gi&uacute;p tăng độ b&aacute;m cũng như khả năng lưu th&ocirc;ng kh&ocirc;ng kh&iacute; l&agrave;m m&aacute;t. Chiếu nghỉ tay tr&ecirc;n A15 giữ cho bề mặt lu&ocirc;n b&oacute;ng mượt v&agrave; sạch sẽ, mang lại vẻ đẹp kh&ocirc;ng k&eacute;m d&ograve;ng Macbook của nh&agrave; t&aacute;o.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Macbook Pro mua laptop gaming mạnh hơn/ASUS_TUF_A15_05-1024x683.jpg" style="width:730px" /></p>

<p>Đặc biệt phải n&oacute;i về hiệu năng gaming mạnh mẽ của chiếc<strong> laptop Asus TUF A15</strong> khi sở hữu CPU AMD Ryzen 7 4800H, card đồ hoạ RTX 2060 6GB DDR6. Với 8 nh&acirc;n 16 luồng, mức xung nhịp boost l&ecirc;n tới 4.2 GHz th&igrave; tốc độ xử l&yacute; cực nhanh của laptop chơi game n&agrave;y l&agrave; kh&ocirc;ng phải b&agrave;n c&atilde;i.</p>

<p>Thay v&igrave; d&ugrave;ng GPU t&iacute;ch hợp như tr&ecirc;n <strong>Macbook Pro 2020</strong>, Asus TUF A15 FA506IV-HN202T được trang bị RTX 2060 cho khả năng xử l&yacute; h&igrave;nh ảnh tuyệt vời. C&ocirc;ng nghệ Ray Tracing gi&uacute;p chất lượng đồ hoạ trở n&ecirc;n ch&acirc;n thực hơn, cho trải nghiệm gaming thực sự tuyệt vời.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Macbook Pro mua laptop gaming mạnh hơn/asus-tuf-gaming-a15-1_62b4c51fc3d8482f840dc428be01183c.jpg" style="width:730px" /></p>

<p>Giống như c&aacute;c<strong><a href="https://www.tncstore.vn/gaming-laptop.html" target="_blank">laptop gaming</a></strong> phổ biến hiện nay th&igrave; m&agrave;n h&igrave;nh tr&ecirc;n A15 cũng sử dụng tấm nền IPS chống l&oacute;a, k&iacute;ch thước m&agrave;n h&igrave;nh lớn hơn d&ograve;ng Macbook với 15,6 inch, tần số qu&eacute;t l&ecirc;n tới 144Hz gi&uacute;p người d&ugrave;ng c&oacute; thể sử dụng laptop trong thời gian d&agrave;i.</p>

<p>&gt;&gt;&gt; Tham khảo ngay sản phẩm tại link dưới:</p>

<p><a href="https://www.tncstore.vn/gaming-laptop/laptop-gaming-asus-tuf-a15-hn202t.html" target="_blank"><strong>Laptop Gaming ASUS TUF A15 FA506IV-HN202T</strong></a></p>

<p>&nbsp;</p>

<h1><strong><span style="font-size:18px">3. Laptop Acer Gaming Nitro 5 2020 AN515-55-55E3</span></strong></h1>

<p>Nhắc đến c&aacute;c d&ograve;ng <strong>laptop gaming</strong> vừa c&oacute; hiệu năng mạnh lại vừa c&oacute; khả năng l&agrave;m m&aacute;t tuyệt vời m&agrave; kh&ocirc;ng kể t&ecirc;n Acer Nitro 5 th&igrave; quả l&agrave; thiếu s&oacute;t lớn. Với mẫu sản phẩm mới nhất l&agrave; AN515-55-55E3, Acer thực sự đ&atilde; tạo ra một chiếc laptop gaming ho&agrave;n thiện bậc nhất.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Macbook Pro mua laptop gaming mạnh hơn/dsc02177_1280x720-800-resize.jpg" style="width:730px" /></p>

<p>Sở hữu những th&ocirc;ng số phần cứng ấn tượng như CPU Intel Core i5-10300H, VGA RTX 2060 6GB c&ugrave;ng 512GB SSD,<strong> chiếc laptop chơi game Acer Nitro 5</strong> rất ph&ugrave; hợp với c&aacute;c anh em game thủ cũng như người d&ugrave;ng phổ th&ocirc;ng.</p>

<p>Thay v&igrave; thử trải nghiệm những sản phẩm ti&ecirc;n phong trong d&ograve;ng Macbook sử dụng chip M1, anh em ho&agrave;n to&agrave;n c&oacute; thể y&ecirc;n t&acirc;m sử dụng<strong> laptop gaming </strong>Acer Nitro 5 đ&atilde; trở th&agrave;nh thương hiệu về khả năng l&agrave;m m&aacute;t, cấu h&igrave;nh tr&ecirc;n gi&aacute; tốt c&ugrave;ng hiệu năng ho&agrave;n to&agrave;n đ&aacute;p ứng những t&aacute;c vụ nặng.</p>

<p style="text-align:center"><iframe class="note-video-clip" frameborder="0" height="360" src="//www.youtube.com/embed/yWpEclWN1lw" width="640"></iframe></p>

<p>Điểm nổi bật đến từ card đồ hoạ RTX 2060 được trang bị tr&ecirc;n những chiếc<strong> laptop gaming</strong> cao cấp. Với 1920 nh&acirc;n CUDA v&agrave; 6GB VRAM, <strong>Acer Nitro 5 </strong>ho&agrave;n to&agrave;n xử l&yacute; tốt c&aacute;c tựa game bom tấn, cho mức fps cao. C&ocirc;ng nghệ d&ograve; tia s&aacute;ng Ray Tracing độc quyền của NVIDIA gi&uacute;p trải nghiệm gaming thực sự tuyệt vời.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Macbook Pro mua laptop gaming mạnh hơn/2833_man-hinh-acer-nitro-5-144hz (1).jpg" style="width:730px" /></p>

<p>Th&ecirc;m v&agrave;o đ&oacute;, điều gi&uacute;p<strong> Acer Nitro 5 2020</strong> trở th&agrave;nh sản phẩm đ&aacute;ng ch&uacute; &yacute; nhờ hệ thống tản nhiệt rất xịn s&ograve; với 2 quạt tản nhiệt c&oacute; hiệu năng l&agrave;m m&aacute;t lớn hơn 25% so với thế hệ trước. Hơn nữa, 16GB RAM, 512GB SSD tr&ecirc;n Acer Nitro 5 l&agrave; qu&aacute; tốt nếu so với 8GB RAM c&ugrave;ng 256GB SSD tr&ecirc;n Macbook Pro 2020.</p>

<p>Một điều rất th&uacute; vị chỉ c&oacute; ri&ecirc;ng cho c&aacute;c<strong> laptop gaming</strong> Acer ch&iacute;nh l&agrave; ch&iacute;nh s&aacute;ch bảo h&agrave;nh cực nhanh. Chỉ cần hơn 3 ng&agrave;y từ khi mang đến bảo h&agrave;nh nếu người d&ugrave;ng kh&ocirc;ng nhận được m&aacute;y, Acer sẽ đổi ngay một chiếc m&aacute;y mới tinh, rất ph&ugrave; hợp cho những anh em sử dụng laptop cho c&ocirc;ng việc, học tập h&agrave;ng ng&agrave;y.</p>

<p>&gt;&gt;&gt; Tham khảo ngay sản phẩm tại link dưới:</p>

<p><strong><a href="https://www.tncstore.vn/gaming-laptop/laptop-acer-gaming-nitro-5-2020-an515-55-55e3.html" target="_blank">Laptop Acer Gaming Nitro 5 2020 AN515-55-55E3</a></strong></p>

<p>&nbsp;</p>

<p>V&agrave; đ&oacute; l&agrave; 3 mẫu laptop ti&ecirc;u biểu hiện nay c&oacute; độ ho&agrave;n thiện, chất lượng build kh&aacute; tốt cũng như hiệu năng mạnh mẽ cả trong c&ocirc;ng việc cũng như giải tr&iacute; v&agrave; ho&agrave;n to&agrave;n xứng đ&aacute;ng để anh em sở hữu trong thời điểm hiện tại thay v&igrave; đợi chiếc Macbook Pro 2020 mới nhất.&nbsp;</p>

<p>H&atilde;y thường xuy&ecirc;n gh&eacute; thăm TNC Store để cập nhật những tin tức về c&ocirc;ng nghệ cũng như những sản phẩm mới nhất nh&eacute;!</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>
', N'/Data/images/newses/tintucmoinhat/Avatar%20bai%20viet%20(4)%20(4).jpg', NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-06T13:39:47.317' AS DateTime), N'quang', CAST(N'2020-12-06T13:39:00.000' AS DateTime), NULL, 4, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (27, N'Đánh giá MSI GeForce RTX 3080 SUPRIM X - Flagship đến từ Đội Rồng', N'Review graphic card RTX 3080 SUPRIM X', N'review-graphic-card-rtx-3080-suprim-x', N'Thuộc phân khúc cao cấp, hiệu năng mà chiếc card đồ họa RTX 3080 Suprim X mang lại thực sự quá tuyệt vời. Cùng TNC tìm hiểu chi tiết thông qua bài review dưới đây nhé!', N'<p><em>Thuộc ph&acirc;n kh&uacute;c cao cấp, hiệu năng m&agrave; chiếc card đồ họa RTX 3080 Suprim X mang lại thực sự qu&aacute; tuyệt vời. C&ugrave;ng TNC t&igrave;m hiểu chi tiết th&ocirc;ng qua b&agrave;i review dưới đ&acirc;y nh&eacute;!</em></p>

<p>&nbsp;</p>

<p>Được dựa tr&ecirc;n kiến tr&uacute;c Nvidia Ampere thế hệ thứ hai, <strong>RTX 3080 Suprim X</strong> l&agrave; mẫu card đồ hoạ cao cấp mới nhất đến từ MSI. Theo đ&oacute;, Đội Rồng dự kiến mở rộng thương hiệu &quot;Suprim&quot; mới của m&igrave;nh với vị tr&iacute; cao hơn d&ograve;ng card đồ họa <strong>MSI Gaming X Trio</strong> tr&ecirc;n những chiếc PC Gaming.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Review MSI RTX Suprim X/1 (2).jpg" style="width:730px" /></p>

<p>Ngo&agrave;i thiết kế c&oacute; phần &ldquo;cao cấp&rdquo; hơn Gaming X Trio, <strong>RTX 3080 Suprim X</strong> đi k&egrave;m với tốc độ xung nhịp cao hơn v&agrave; một số t&iacute;nh năng độc quyền. MSI chỉ d&agrave;nh ri&ecirc;ng c&aacute;ch xử l&yacute; Suprim X cho c&aacute;c GPU cao cấp, bắt đầu với RTX 3090, RTX 3080 v&agrave; RTX 3070. Được mệnh danh l&agrave; chiếc card đồ hoạ &ldquo;d&agrave;i nhất thế giới&rdquo;, h&atilde;y c&ugrave;ng TNC đ&aacute;nh gi&aacute; chi tiết MSI GeForce <strong>RTX 3080 Suprim X</strong> nh&eacute;!</p>

<p>&nbsp;</p>

<h1><strong><span style="font-size:18px">1. Tổng quan về thiết kế&nbsp;</span></strong></h1>

<h1>&nbsp;</h1>

<h1 style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Review MSI RTX Suprim X/2.jpg" style="width:730px" /></h1>

<p>X&eacute;t về k&iacute;ch thước, chiếc<strong> flagship mới nhất</strong> của <strong>MSI</strong> khiến<strong><a href="https://www.tncstore.vn/vga-card-man-hinh/card-man-hinh-asus-msi-geforce-rtx-3080-gaming-x-trio-10g.html" target="_blank">RTX 3080 Gaming X Trio</a></strong> bỗng trở n&ecirc;n &ldquo;nhỏ b&eacute;&rdquo; hơn. <strong>RTX 3080 Suprim X</strong> c&oacute; chiều d&agrave;i 33,5 cm v&agrave; chiều rộng l&agrave; 14 cm, rất to so với hầu hết những case m&aacute;y t&iacute;nh phổ biến hiện nay. Vậy n&ecirc;n anh em n&agrave;o c&oacute; &yacute; định sắm chiếc card đồ hoạ n&agrave;y về th&igrave; n&ecirc;n sử dụng những vỏ case từ Full Tower trở l&ecirc;n nhằm mang lại kh&ocirc;ng gian thoải m&aacute;i nhất.&nbsp;</p>

<p><strong>RTX 3080 Suprim X</strong> sở hữu một lớp vỏ bọc bằng nh&ocirc;m cao cấp với c&aacute;c đường cắt được thiết kế th&ocirc;ng minh nhằm tho&aacute;t kh&iacute; dễ hơn. Điểm nhấn được thể hiện ở một số cạnh sắc n&eacute;t v&agrave; bộ khuếch t&aacute;n đ&egrave;n LED RGB tr&ocirc;ng tinh tế v&agrave; sang trọng hơn RTX 3080 Gaming X Trio.</p>

<p>&gt;&gt;&gt; Tham khảo ngay c&aacute;c <strong><a href="https://www.tncstore.vn/vga-card-man-hinh.html" target="_blank">card đồ hoạ</a></strong> mạnh nhất hiện tại tại TNC Store nh&eacute;!</p>

<table class="table table-bordered">
	<tbody>
		<tr>
			<td>
			<p><a href="https://www.tncstore.vn/vga-card-man-hinh/card-man-hinh-asus-rog-strix-rtx3080-010g-gaming.html" target="_self"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Review MSI RTX Suprim X/anh san pham rtx3080.jpg" /></a></p>
			</td>
			<td>
			<p><a href="https://www.tncstore.vn/vga-card-man-hinh/card-man-hinh-asus-msi-geforce-rtx-3080-gaming-x-trio-10g.html" target="_self"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Review MSI RTX Suprim X/anhsanphamrtx30802.jpg" /></a></p>
			</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Review MSI RTX Suprim X/3 (1).jpg" style="width:730px" /></p>

<p><strong>Về bộ phận tản nhiệt</strong>,<strong> RTX 3080 Suprim X</strong> được trang bị quạt TORX 4.0 được li&ecirc;n kết theo cặp mỗi 2 c&aacute;nh quạt với nhau, gi&uacute;p luồng gi&oacute; tập trung v&agrave;o c&aacute;c l&aacute; nh&ocirc;m, đảm bảo hiệu năng lu&ocirc;n ổn định trong thời gian d&agrave;i. Đặc biệt, mỗi m&ocirc;-đun bộ nhớ c&oacute; phần tản nhiệt ri&ecirc;ng, cho hiệu năng l&agrave;m m&aacute;t trở n&ecirc;n cực cao. Đế tản nhiệt đồng mạ niken từ gi&uacute;p truyền nhiệt từ GPU đến ống dẫn nhiệt tốt hơn.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Review MSI RTX Suprim X/6.jpg" style="width:730px" /></p>

<p><strong>Về cổng kết nối</strong>, <strong>RTX 3080 Suprim X</strong> sẽ c&oacute; ba cổng DisplayPort 1.4a v&agrave; một HDMI 2.1. Điều th&uacute; vị l&agrave; cổng USB-C d&agrave;nh cho tai nghe VR, m&agrave; NVIDIA giới thiệu tr&ecirc;n Turing Founders Editions, đ&atilde; bị loại bỏ.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Review MSI RTX Suprim X/4.jpg" style="width:730px" /></p>

<p>Đầu ra DisplayPort 1.4a hỗ trợ C&ocirc;ng nghệ DSC (Display Stream Compression), cho ph&eacute;p anh em c&oacute; thể kết nối m&agrave;n h&igrave;nh 4K ở 120Hz v&agrave; m&agrave;n h&igrave;nh 8K ở 60 Hz. RTX 3080 Suprim X c&oacute; thể được d&ugrave;ng tr&ecirc;n hai m&agrave;n h&igrave;nh 8K ở 60Hz chỉ với một d&acirc;y c&aacute;p cho mỗi m&agrave;n h&igrave;nh. Điều đ&aacute;ng ch&uacute; &yacute; l&agrave; Kiến tr&uacute;c Ampere l&agrave; GPU đầu ti&ecirc;n hỗ trợ HDMI 2.1, gi&uacute;p tăng băng th&ocirc;ng l&ecirc;n 48 Gbps để hỗ trợ c&aacute;c độ ph&acirc;n giải cao hơn.</p>

<p>Ngo&agrave;i ra, C&ocirc;ng tắc BIOS tr&ecirc;n <strong>RTX 3080 Suprim X</strong> cho ph&eacute;p anh em chuyển đổi giữa chế độ mặc định (im lặng) v&agrave; gaming. Cả hai BIOS đều c&oacute; chế độ dừng quạt kh&ocirc;ng tải. Chế độ chơi game c&oacute; mức xung nhịp cao hơn so với mặc định.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Review MSI RTX Suprim X/biosswitch_small (1).jpg" style="width:320px" /></p>

<p>Kh&aacute;c với những card đồ hoạ NVIDIA Founders Edition c&oacute; nguồn 12 ch&acirc;n mới, MSI vẫn sử dụng đầu v&agrave;o nguồn PCIe 8 ch&acirc;n, nhưng c&oacute; tới 3 đầu v&agrave;o. Kết hợp với c&ocirc;ng suất khe cắm PCIe, RTX 3080 Suprim X được khuyến nghị sử dụng c&aacute;c bộ nguồn từ 850W trở l&ecirc;n.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Review MSI RTX Suprim X/7.jpg" style="width:730px" /></p>

<p>Một điều lưu &yacute; nhỏ l&agrave; <strong>RTX 3080 Suprim X</strong> kh&ocirc;ng hỗ trợ SLI (Scalable link Interface) cho ph&eacute;p cắm nhiều card đồ hoạ tr&ecirc;n một m&aacute;y. Tuy vậy, với k&iacute;ch thước &ldquo;big daddy&rdquo; c&ugrave;ng mức hiệu năng khủng th&igrave; việc cắm hai card đồ hoạ trở l&ecirc;n cũng kh&ocirc;ng qu&aacute; cần thiết.</p>

<p>&gt;&gt;&gt; Tham khảo ngay Card đồ hoạ MSI RTX 3080 Suprim X <a href="https://www.tncstore.vn/card-man-hinh-msi-rtx-3080-suprim-x-10g.html?fbclid=IwAR1a70LsJ7Nr7u8Rw4jduGoUPXTcra2b9e5p8OuvDMZatF3Yg_Iwz1Lu4wE" target="_blank">tại đ&acirc;y</a> nh&eacute;!</p>

<h1><strong><span style="font-size:18px">2. C&aacute;c th&ocirc;ng số nổi bật</span></strong></h1>

<h1>&nbsp;</h1>

<h1 style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Review MSI RTX Suprim X/5.jpg" style="width:730px" /></h1>

<p>Sở hữu những th&ocirc;ng số v&ocirc; c&ugrave;ng ấn tượng như GPU kiến tr&uacute;c Ampere, nh&acirc;n RT, nh&acirc;n Tensor cải thiện, nh&acirc;n SM mới nhất c&ugrave;ng v&agrave; bộ nhớ G6X th&igrave; <strong><a href="https://www.tncstore.vn/card-man-hinh-msi-rtx-3080-suprim-x-10g.html?fbclid=IwAR1a70LsJ7Nr7u8Rw4jduGoUPXTcra2b9e5p8OuvDMZatF3Yg_Iwz1Lu4wE" target="_blank">RTX 3080 Suprim X</a></strong>xứng đ&aacute;ng l&agrave; một trong số top card đồ họa mạnh nhất thời điểm hiện tại.</p>

<p>Đầu ti&ecirc;n, Kiến tr&uacute;c đồ họa GeForce &quot;Ampere&quot; mới đ&aacute;nh dấu sự ra mắt của RTX thế hệ thứ 2, kết hợp c&aacute;c l&otilde;i CUDA &quot;Ampere&quot; mới tăng gấp đ&ocirc;i băng th&ocirc;ng so với thế hệ trước bằng c&aacute;ch tận dụng c&aacute;c ph&eacute;p to&aacute;n FP32 + INT32 đồng thời tr&ecirc;n mỗi chu kỳ đồng hồ.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Review MSI RTX Suprim X/photo-1-1603507887004371259355 (1).jpg" style="width:730px" /></p>

<p>Nh&acirc;n RT thế hệ thứ 2 mới tr&ecirc;n <strong>RTX 3080 Suprim X</strong> gi&uacute;p tăng gấp đ&ocirc;i hiệu suất so với nh&acirc;n RT &quot;Turing&quot; v&agrave; bổ sung th&ecirc;m phần cứng c&oacute; chức năng mới cho ph&eacute;p l&agrave;m mờ chuyển động.</p>

<p>Nh&acirc;n Tensor thế hệ thứ 3 mới được lấy cảm hứng từ c&aacute;c l&otilde;i cung cấp năng lượng cho bộ xử l&yacute; A100 Tensor Core HPC, gi&uacute;p tăng sự &ldquo;th&ocirc;ng minh&rdquo; của AI l&ecirc;n một bậc so với thế hệ trước. NVIDIA tận dụng AI để cung cấp năng lượng cho bộ khử tia v&agrave; cho ph&eacute;p n&acirc;ng cao hiệu suất DLSS của n&oacute;. Với &quot;Ampere&quot;, NVIDIA sẽ giới thiệu 8K DLSS, cho ph&eacute;p anh em chạy ở độ ph&acirc;n giải 8K.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Review MSI RTX Suprim X/8.jpg" style="width:730px" /></p>

<p>Đ&aacute;ng ch&uacute; &yacute;, GeForce <strong>RTX 3080 Suprim X</strong> c&oacute; số nh&acirc;n CUDA gần gấp ba lần so với RTX 2080, ở mức 8.704 so với 2.944. N&oacute; cũng c&oacute; 68 l&otilde;i RT thế hệ thứ 2, 272 l&otilde;i Tensor thế hệ thứ 3, 272 TMU v&agrave; 96 ROP.&nbsp;</p>

<p>Để giữ cho tất cả số lượng &ldquo;c&ocirc;ng nh&acirc;n&rdquo; n&agrave;y được cung cấp đầy đủ &ldquo;lương thực&rdquo;, NVIDIA đ&atilde; hợp t&aacute;c với Micron Technology để đổi mới c&ocirc;ng nghệ bộ nhớ mới độc quyền, gọi l&agrave; <strong>GDDR6X</strong>, c&ocirc;ng nghệ n&agrave;y tr&ecirc;n RTX 3080 cung cấp tốc độ dữ liệu đ&aacute;ng kinh ngạc l&agrave; 19 Gbps, thay v&igrave; l&ecirc;n đến 16 Gbps như GDDR6 th&ocirc;ng thường.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Review MSI RTX Suprim X/DSC_0270-Custom-scaled (1).jpg" style="width:730px" /></p>

<p>Tiếp đến, <strong>RTX 3080 Suprim X</strong> c&oacute; bus bộ nhớ l&ecirc;n tới 320 bit v&agrave; dung lượng bộ nhớ 10 GB. RTX 3080 c&oacute; băng th&ocirc;ng bộ nhớ 760 GB/s, hỗ trợ bus PCI-Express 4.0 x16 mới nhất. Mức xung nhịp boost của card đồ hoạ n&agrave;y l&ecirc;n tới 1905 MHz - cao hơn mức 1815 MHz của RTX 3080 Gaming X Trio. Đ&acirc;y cũng l&agrave; phi&ecirc;n bản RTX 3080 đắt nhất của MSI.</p>

<p>&nbsp;</p>

<h1><strong><span style="font-size:18px">3. Kiểm nghiệm hiệu năng thực tế</span></strong></h1>

<p>Đến với phần kiểm nghiệm sức mạnh thực tế, chiếc card đồ họa <strong>RTX 3080 Suprim X </strong>được test tr&ecirc;n cấu h&igrave;nh PC Gaming dưới đ&acirc;y (Tham khảo từ Techpowerup)</p>

<p>CPU: Intel Core i9-9900K @ 5.0 GHz (Coffee Lake, 16 MB Cache)</p>

<p>Mainboard:&nbsp;EVGA Z390 DARK</p>

<p>RAM: Thermaltake TOUGHRAM, 16GB DDR4 Bus 4000 MHz 19-23-23-42</p>

<div>Hệ thống tản nhiệt: Corsair iCue H100i RGB Pro XT 240mm AIO</div>

<div>Ổ cứng:&nbsp;Crucial MX500 2 TB SSD</div>

<div>Nguồn: Seasonic Prime Ultra Titanium 850 W</div>

<div>Vỏ case:&nbsp;Dark Flash DLX22</div>

<div>Hệ điều h&agrave;nh:&nbsp;Windows 10 Professional 64-bit</div>

<div dir="ltr" style="text-align: center; margin-left: 0pt;"><br />
<strong>Test Game Assassin Creed&rsquo;s Odyssey</strong><br />
&nbsp;</div>

<p>&nbsp;</p>

<p style="text-align:center"><br />
<img src="https://www.tncstore.vn/image/catalog/BAI VIET/Review MSI RTX Suprim X/assassins-creed-odyssey (1).jpg" style="width:730px" /></p>

<p>Tuy đ&atilde; ra mắt c&aacute;ch đ&acirc;y 2 năm nhưng tựa game Assassin Creed&rsquo;s Odyssey vẫn l&agrave; sự lựa chọn tốt cho việc &ldquo;test hiệu năng&rdquo; của những linh kiện mới ra mắt. V&agrave; với 3 độ ph&acirc;n giải kh&aacute;c nhau từ Full HD, 2K v&agrave; 4K, <strong>RTX 3080 Suprim X</strong> cho thấy hiệu năng v&ocirc; c&ugrave;ng mạnh mẽ của m&igrave;nh. C&aacute;c PC Gaming sở hữu Flagship mới nhất đến từ MSI ho&agrave;n to&agrave;n c&oacute; thể chiến ngon nghẻ tựa game n&agrave;y ở độ ph&acirc;n giải 4K với mức fps trung b&igrave;nh l&agrave; 61,4.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Review MSI RTX Suprim X/assassins-creed-odyssey-1920-1080.jpg" style="width:500px" /><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Review MSI RTX Suprim X/assassins-creed-odyssey-2560-1440.jpg" style="width:500px" /><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Review MSI RTX Suprim X/assassins-creed-odyssey-3840-2160.jpg" style="width:500px" /></p>

<p style="text-align:center">&nbsp;</p>

<p><strong>Test Game Red Dead Redemption 2&nbsp;</strong></p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Review MSI RTX Suprim X/ceebccf2c046a55965e4a0483bbaf0c7490d7e16 (1).jpg" style="width:730px" /></p>

<p>L&agrave; tựa game v&ocirc; c&ugrave;ng đ&igrave;nh đ&aacute;m đến từ Rockstar, Red Dead Redemption 2 c&oacute; chất lượng đồ hoạ thực sự ở mức đỉnh cao, được debut từ phi&ecirc;n bản tr&ecirc;n console l&ecirc;n PC. Tuy nhi&ecirc;n, điều đ&oacute; vẫn kh&ocirc;ng thể l&agrave;m kh&oacute; RTX 3080 Suprim X khi mức FPS ở Full HD, 2K, 4K lần lượt đạt 115, 95 v&agrave; 68. C&oacute; thể thấy mức fps khi bật chế độ Gaming Bios kh&ocirc;ng c&oacute; sự ch&ecirc;nh lệch qu&aacute; nhiều so với chế độ mặc định.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Review MSI RTX Suprim X/red-dead-redemption-2-1920-1080.jpg" style="width:500px" /><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Review MSI RTX Suprim X/red-dead-redemption-2-2560-1440.jpg" style="width:500px" /><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Review MSI RTX Suprim X/red-dead-redemption-2-3840-2160.jpg" style="width:500px" /></p>

<p>&nbsp;</p>

<p><strong>Hiệu năng khi &eacute;p xung</strong></p>

<p>Phải c&ocirc;ng nhận khả năng &eacute;p xung của<strong> MSI RTX 3080 Suprim X</strong> l&agrave; rất ấn tượng với mức xung nhịp tối đa khi &eacute;p xung l&ecirc;n tới 2117 MHz v&agrave; mức &ldquo;ngốn điện&rdquo; của n&oacute; cũng &ldquo;ấn tượng&rdquo; kh&ocirc;ng k&eacute;m với 430W.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Review MSI RTX Suprim X/overclocked-performance.jpg" style="width:500px" /></p>

<p>V&agrave; kh&ocirc;ng qu&aacute; kh&oacute; hiểu khi mức fps ở b&agrave;i test Unigine Heaven khi &eacute;p xung của<strong> RTX 3080 Suprim X</strong> l&ecirc;n tới 251,6 - ch&ecirc;nh lệch kh&aacute; lớn so với con số 240 ở trạng th&aacute;i b&igrave;nh thường.</p>

<p>&nbsp;</p>

<h1><strong><span style="font-size:18px">4. Tổng kết</span></strong></h1>

<h1 style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Review MSI RTX Suprim X/Avatar bai viet (4).jpg" style="width:800px" /></h1>

<h1>&nbsp;</h1>

<p><strong>MSI GeForce RTX 3080 Suprim X</strong> l&agrave; một chiếc card c&oacute; k&iacute;ch thước lớn nhất thời điểm hiện tại. MSI đ&atilde; &quot;dốc hết sức&quot; để tạo ra d&ograve;ng sản phẩm mới n&agrave;y, c&oacute; k&iacute;ch thước lẫn hiệu năng vượt trội hơn cả Gaming X. Mức xung nhịp boost&nbsp; của chiếc card đồ hoạ n&agrave;y được tăng l&ecirc;n tới 1905 MHz - mức cao nhất trong số tất cả c&aacute;c card đồ họa RTX 3080, tương đương với <strong>Asus ROG Strix</strong> v&agrave; <strong>Gigabyte Extreme</strong>.</p>

<p>Qua c&aacute;c b&agrave;i test game ở độ ph&acirc;n giải 4K, <strong>RTX 3080 Suprim X</strong> c&oacute; mức fps lớn hơn 2% so với RTX 3080 Founders Edition, 3% khi anh em sử dụng chế độ Gaming. Với Suprim, MSI cũng cung cấp t&iacute;nh năng dual-bios, cho ph&eacute;p anh em chuyển đổi giữa chế độ mặc định v&agrave; gaming. So với AMD Radeon RX 6800 XT, <strong>RTX 3080 MSI Suprim X</strong> nhanh hơn 8% v&agrave; so với RX 6800 l&agrave; 19%. D&ograve;ng card RTX 3090 của NVIDIA nhanh hơn 7% so với Suprim X, kh&ocirc;ng phải l&agrave; một khoảng c&aacute;ch qu&aacute; lớn nếu so với mức gi&aacute; gần gấp đ&ocirc;i.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Review MSI RTX Suprim X/16bb42dd-70b8-4db0-abfa-bd040d7f2492 (1).jpg" style="width:730px" /></p>

<p>Nếu anh em muốn trải nghiệm những tựa game ở độ ph&acirc;n giải 2K, 4K th&igrave; <strong>RTX 3080 Suprim X </strong>ch&iacute;nh l&agrave; sự lựa chọn ho&agrave;n hảo. Tuy vậy anh em n&ecirc;n chắc chắn rằng vỏ case của anh em c&oacute; đủ kh&ocirc;ng gian v&igrave; chiếc card đồ hoạ n&agrave;y chiếm tới tận 3 slot đấy nh&eacute;. Trong hộp cũng c&oacute; một nẹp nhằm giữ cho RTX 3080 Suprim được ổn định.</p>

<p>Mức gi&aacute; của <strong>MSI RTX 3080 Suprim X</strong> được c&ocirc;ng bố l&agrave; 900 đ&ocirc; - đắt hơn 200 đ&ocirc; so với phi&ecirc;n bản Founders Edition. Mức gi&aacute; c&oacute; thể coi l&agrave; chấp nhận được để c&oacute; trải nghiệm chơi game 4K m&agrave; độ ồn từ quạt thấp v&agrave; khả năng l&agrave;m m&aacute;t cực kỳ ổn.&nbsp;</p>

<p>&nbsp;</p>

<p>V&agrave; đ&oacute; l&agrave; đ&aacute;nh gi&aacute; chi tiết về <strong>RTX 3080 Suprim X</strong> - chiếc card đồ họa chiến game tuyệt vời ở thời điểm hiện tại. Anh em đừng qu&ecirc;n theo d&otilde;i <strong><a href="https://www.tncstore.vn/tin-tuc/bai-viet-moi-nhat.html" target="_blank">TNC News</a></strong>để cập nhật những tin tức về c&ocirc;ng nghệ <strong>PC Gaming</strong> mới nhất nh&eacute;!</p>

<div>&nbsp;</div>
', N'/Data/images/newses/tintucmoinhat/Avatar%20bai%20viet%20(4)%20(5).jpg', NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-06T13:41:33.597' AS DateTime), N'quang', CAST(N'2020-12-06T13:41:00.000' AS DateTime), NULL, 4, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (28, N'Những sai lầm TAI HẠI ảnh hưởng tới tuổi thọ Gaming Laptop cần biết', N'Cách sử dụng gaming laptop đúng cách', N'cach-su-dung-gaming-laptop-dung-cach', N'Anh em muốn chiếc Laptop Gaming của mình giữ được hiệu năng, sức mạnh lâu nhất có thể? Hãy tránh ngay những sai lầm đang làm tổn hại tới tuổi thọ chiếc máy tính của mình qua bài viết dưới đây nhé!', N'<p><em>Anh em muốn chiếc Laptop Gaming của m&igrave;nh giữ được hiệu năng, sức mạnh l&acirc;u nhất c&oacute; thể? H&atilde;y tr&aacute;nh ngay những sai lầm đang l&agrave;m tổn hại tới tuổi thọ chiếc m&aacute;y t&iacute;nh của m&igrave;nh qua b&agrave;i viết dưới đ&acirc;y nh&eacute;!</em></p>

<p>&nbsp;</p>

<p>Cũng như c&aacute;c thiết bị điện tử kh&aacute;c, <strong>Laptop Gaming</strong> cũng sinh nhiệt trong qu&aacute; tr&igrave;nh hoạt động. T&ugrave;y thuộc v&agrave;o c&aacute;c t&aacute;c vụ kh&aacute;c nhau m&agrave; cường độ hoạt động của c&aacute;c linh kiện b&ecirc;n trong chiếc <strong>laptop gaming </strong>cũng kh&aacute;c nhau.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Sai lam khi su dung laptop gaming/abc.jpg" style="width:730px" /></p>

<p>Những anh em n&agrave;o thường xuy&ecirc;n chiến c&aacute;c tựa game nặng hoặc l&agrave;m đồ họa, thiết kế chắc hẳn sẽ thấy lượng nhiệt sinh ra trong qu&aacute; tr&igrave;nh sử dụng l&agrave; rất lớn. Nếu kh&ocirc;ng c&oacute; phương ph&aacute;p sử dụng đ&uacute;ng c&aacute;ch hoặc do th&oacute;i quen v&ocirc; t&igrave;nh sẽ rất dễ l&agrave;m tổn hại đến tuổi thọ của <strong>Laptop chơi game</strong>.</p>

<p>Vậy những sai lầm đ&oacute; l&agrave; g&igrave;? Tại sao n&oacute; lại g&acirc;y ảnh hưởng tới tuổi thọ của <strong>laptop gaming</strong>? H&atilde;y c&ugrave;ng <strong><a href="https://www.tncstore.vn/" target="_blank">TNC Store</a></strong> t&igrave;m ra những sai lầm cần tr&aacute;nh khi sử dụng laptop gaming nh&eacute;!</p>

<p>&nbsp;</p>

<h1><strong><span style="font-size:18px">1. Để </span><span style="font-size:18px">Laptop Gaming</span><span style="font-size:18px"> ở mọi nơi c&oacute; thể</span></strong></h1>

<p>Chắc hẳn rất nhiều anh em khi sử dụng thường v&ocirc; t&igrave;nh hoặc kh&ocirc;ng để &yacute; đặt chiếc <strong>laptop gaming</strong> tr&ecirc;n những mặt phẳng k&iacute;n như mặt b&agrave;n, giường, ghế sofa hay c&aacute;c b&agrave;n di chuột cỡ lớn&hellip; Đồng &yacute; l&agrave; do c&ocirc;ng việc bận rộn hoặc do tiện n&ecirc;n anh em thường kh&ocirc;ng ch&uacute; &yacute; tới điều n&agrave;y. Tuy nhi&ecirc;n đ&acirc;y lại l&agrave; một trong những sai lầm tai hại nhất ảnh hưởng đến<strong> tuổi thọ laptop gaming</strong>.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Sai lam khi su dung laptop gaming/V4JIUZZ5IZDUMDSNQP4D5VKUYA (1).jpg" style="width:730px" /></p>

<p>Với nhiều anh em chưa biết th&igrave; hệ thống tản nhiệt của <strong><a href="https://www.tncstore.vn/gaming-laptop.html" target="_blank">laptop gaming</a></strong> (cụ thể l&agrave; quạt) sẽ h&uacute;t gi&oacute; m&aacute;t từ b&ecirc;n ngo&agrave;i v&agrave;o v&agrave; thổi nhiệt sinh ra từ hoạt động của c&aacute;c linh kiện để l&agrave;m m&aacute;t m&aacute;y. C&aacute;c quạt tr&ecirc;n laptop gaming sẽ thường được đặt ở hai b&ecirc;n mặt đ&aacute;y, gi&uacute;p lấy gi&oacute; trực tiếp từ ph&iacute;a dưới hoặc ph&iacute;a tr&ecirc;n của chiếc laptop chơi game của anh em.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Sai lam khi su dung laptop gaming/asus-rog-strix-g-4 (1).jpg" style="width:730px" /></p>

<p>Do đ&oacute;, nếu anh em để chiếc <strong>laptop gaming</strong> của m&igrave;nh ở những nơi k&iacute;n, gi&oacute; từ b&ecirc;n ngo&agrave;i cũng như nhiệt từ b&ecirc;n trong kh&oacute; lưu th&ocirc;ng sẽ g&acirc;y n&ecirc;n hiện tượng n&oacute;ng m&aacute;y kh&ocirc;ng đ&aacute;ng c&oacute;. V&agrave; tất nhi&ecirc;n nếu kh&ocirc;ng được hạ nhiệt thường xuy&ecirc;n th&igrave; c&aacute;c linh kiện sẽ rất dễ bị hỏng v&igrave; nhiệt độ cao ch&iacute;nh l&agrave; kẻ th&ugrave; của ch&uacute;ng.&nbsp;</p>

<p>C&oacute; một th&oacute;i quen anh em rất hay mắc phải l&agrave; để chiếc laptop tr&ecirc;n đ&ugrave;i cho tiện sử dụng. Tuy nhi&ecirc;n việc n&agrave;y g&acirc;y tổn hại rất lớn tới tuổi thọ laptop gaming khi c&aacute;c hạt bụi vải sẽ bị h&uacute;t v&agrave;o m&aacute;y, l&agrave;m giảm hiệu năng cũng như tuổi thọ của bộ phận tản nhiệt.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Sai lam khi su dung laptop gaming/de_may_tinh_tren_dui_gay_vo_sinh (1).jpg" style="width:730px" /></p>

<p>&gt;&gt;&gt; Xem ngay c&aacute;c mẫu <strong><a href="https://www.tncstore.vn/laptop-gaming-vua-re-vua-manh.html" target="_blank">laptop gaming</a></strong> rẻ hơn Macbook Pro 2020 nhưng c&oacute; hiệu năng tuyệt hơn nh&eacute;!</p>

<p>Tất nhi&ecirc;n giải ph&aacute;p cho vấn đề n&agrave;y cũng rất đơn giản. Anh em n&ecirc;n để chiếc <strong>laptop gaming</strong> tr&ecirc;n những mặt phẳng tuyệt đối nhằm gi&uacute;p kh&iacute; lưu th&ocirc;ng dễ hơn. Th&ecirc;m v&agrave;o đ&oacute;, v&igrave; phần đế thường kh&ocirc;ng được cao n&ecirc;n anh em n&ecirc;n d&ugrave;ng c&aacute;c vật để k&ecirc; l&ecirc;n phần đ&aacute;y để khả năng tản nhiệt được n&acirc;ng l&ecirc;n tối đa.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Sai lam khi su dung laptop gaming/de-tan-nhiet-cooling-pad-l6-2-quat-1m4G3-051937 (1).jpg" style="width:730px" /></p>

<p>Giải ph&aacute;p hữu hiệu hơn nữa để k&eacute;o d&agrave;i tuổi thọ <strong>laptop gaming</strong> l&agrave; mua đế tản nhiệt, được l&agrave;m bằng c&aacute;c chất liệu dẫn nhiệt gi&uacute;p nhiệt tho&aacute;t ra từ m&aacute;y được đưa ra ngo&agrave;i một c&aacute;ch nhanh nhất.</p>

<h1><strong><span style="font-size:18px">2. Sử dụng pin chưa đ&uacute;ng c&aacute;ch</span></strong></h1>

<p>Đ&atilde; L&agrave; một chiếc <strong>laptop gaming</strong> th&igrave; c&aacute;c linh kiện b&ecirc;n trong bộ m&aacute;y đều phải được t&iacute;ch hợp v&agrave; lựa chọn để chiến game một c&aacute;ch hiệu quả nhất. Đ&oacute; c&oacute; lẽ l&agrave; suy nghĩ của rất nhiều anh em khi mới tậu laptop chơi game về v&agrave; nghĩ rằng pin kh&ocirc;ng đ&oacute;ng vai tr&ograve; quan trọng.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Sai lam khi su dung laptop gaming/thay-pin-laptop-duong-ly-thuong-kiet (1).jpg" style="width:730px" /></p>

<p>Việc sử dụng pin kh&ocirc;ng đ&uacute;ng c&aacute;ch l&agrave; một tai hại rất nghi&ecirc;m trọng v&igrave; tuổi thọ pin ảnh hưởng kh&aacute; nhiều đến trải nghiệm của người d&ugrave;ng. Chẳng ai lại muốn chiếc laptop của m&igrave;nh suốt ng&agrave;y phải k&egrave; k&egrave; củ sạc b&ecirc;n người. Do vậy n&ecirc;n việc để pin cạn kiệt rồi mới sạc l&agrave; điều cấm kỵ, sai lầm rất lớn khi sử dụng laptop.</p>

<p>Với những anh em chưa biết th&igrave; khi cắm sạc chiếc <strong>laptop gaming</strong> sẽ cho trải nghiệm mượt m&agrave; hơn. Anh em kh&ocirc;ng cần qu&aacute; lo lắng đến tuổi thọ của pin khi cắm sạc li&ecirc;n tục v&igrave; hầu hết c&aacute;c laptop đều sử dụng pin Li-on hoặc Li-po thay v&igrave; Ni-Cad. Hơn nữa, c&aacute;c nh&agrave; sản xuất đ&atilde; t&iacute;nh to&aacute;n v&agrave; nghi&ecirc;n cứu kỹ lưỡng chất lượng pin trước khi cho ra sản phẩm. Tuy vậy anh em cũng kh&ocirc;ng n&ecirc;n cắm sạc 24/7 v&igrave; điều n&agrave;y l&agrave; kh&ocirc;ng tốt cho m&aacute;y.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Sai lam khi su dung laptop gaming/2121749 (1).jpg" style="width:730px" /></p>

<p>Một mẹo rất hay khi anh em sử dụng laptop ngo&agrave;i l&uacute;c gaming như lướt web, đọc b&aacute;o, l&agrave;m việc th&igrave; n&ecirc;n ch&uacute; &yacute; tới chu kỳ sạc. Việc để m&aacute;y hoạt động ở mức 20% v&agrave; 80% sẽ l&agrave;m tăng tuổi thọ pin, gi&uacute;p <strong>laptop gaming</strong> &ldquo;sống&rdquo; l&acirc;u hơn. Để l&agrave;m được điều n&agrave;y anh em n&ecirc;n d&ugrave;ng những ứng dụng th&ocirc;ng b&aacute;o mức pin hiện tại để c&oacute; thể cắm sạc (khi m&aacute;y c&ograve;n 20%) cũng như r&uacute;t sạc ra (khi m&aacute;y đạt 80%).</p>

<p>Pin tr&ecirc;n c&aacute;c <strong>laptop chơi game</strong> hiện nay cũng được t&iacute;ch hợp c&aacute;c chế độ như C&acirc;n bằng, Tiết kiệm pin, Hiệu năng cao n&ecirc;n anh em cần lưu &yacute; lựa chọn chế độ sao cho ph&ugrave; hợp với nhu cầu sử dụng ở mỗi thời điểm.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Sai lam khi su dung laptop gaming/4-cach-chinh-tang-do-sang-man-hinh-may-tinh-laptop-windows-10-2 (1).jpg" style="width:730px" /></p>

<p>Anh em cũng c&oacute; thể k&eacute;o d&agrave;i tuổi thọ cho laptop bằng c&aacute;ch giảm độ s&aacute;ng m&agrave;n h&igrave;nh, tr&aacute;nh bật mức độ s&aacute;ng qu&aacute; cao kh&ocirc;ng cần thiết v&agrave; tắt c&aacute;c &ldquo;chế độ&rdquo; kh&ocirc;ng cần thiết như đ&egrave;n nền b&agrave;n ph&iacute;m, bluetooth khi kh&ocirc;ng sử dụng hay sử dụng tai nghe ngo&agrave;i. Những việc n&agrave;y kh&ocirc;ng những gi&uacute;p tiết kiệm điện m&agrave; c&ograve;n k&eacute;o d&agrave;i thời gian sử dụng của <strong>laptop gaming.</strong></p>

<h1><strong><span style="font-size:18px">3. Kh&ocirc;ng sử dụng bao đựng</span></strong></h1>

<h1 style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Sai lam khi su dung laptop gaming/xuoc.jpg" style="width:730px" /></h1>

<p>Chắc hẳn một số anh em v&igrave; tiện dụng n&ecirc;n thường xuy&ecirc;n mang laptop m&agrave; kh&ocirc;ng d&ugrave;ng bao đựng. Đ&acirc;y l&agrave; điều sai lầm khi sử dụng<strong> laptop gaming</strong> v&igrave; m&aacute;y sẽ dễ bị hư hại khi tiếp x&uacute;c với những vật sắc nhọn hay c&oacute; khả năng từ t&iacute;nh. Việc sử dụng bao đựng kh&ocirc;ng những bảo vệ m&aacute;y t&iacute;nh m&agrave; c&ograve;n gi&uacute;p chiếc laptop gaming của anh em trở n&ecirc;n &ldquo;mới hơn&rdquo; trong qu&aacute; tr&igrave;nh sử dụng.</p>

<h1><strong><span style="font-size:18px">4.Để đồ uống ở gần laptop&nbsp;</span></strong></h1>

<h1 style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Sai lam khi su dung laptop gaming/1.jpg" style="width:730px" /></h1>

<p>Đ&acirc;y l&agrave; th&oacute;i quen v&ocirc; t&igrave;nh v&agrave; cũng l&agrave; sai lầm tai hại thường thấy khi anh em sử dụng laptop gaming. Đ&atilde; chơi game trong thời gian d&agrave;i th&igrave; việc để đồ uống ở gần sẽ mang sự thuận tiện, cảm gi&aacute;c thư gi&atilde;n &ldquo;kh&oacute; cưỡng lại&rdquo;. Tuy nhi&ecirc;n, anh em n&ecirc;n để đồ uống c&aacute;ch xa tầm với nhằm tr&aacute;nh trường hợp l&agrave;m đổ nước v&agrave;o laptop. Ngo&agrave;i nhiệt th&igrave; chất lỏng cũng l&agrave; kẻ th&ugrave; của c&aacute;c bị điện tử.&nbsp;</p>

<h1><strong><span style="font-size:18px">5. Bật m&aacute;y laptop gaming li&ecirc;n tục trong thời gian d&agrave;i</span></strong></h1>

<p>Một trong những sai lầm khi sử dụng laptop kh&oacute; nhận ra l&agrave; việc thường xuy&ecirc;n để m&aacute;y laptop bật trong thời gian d&agrave;i kể cả khi kh&ocirc;ng sử dụng. C&ocirc;ng nhận l&agrave; đối với những anh em bận rộn th&igrave; sẽ tiết kiệm được thời gian bật v&agrave; khởi động m&aacute;y.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Sai lam khi su dung laptop gaming/acer-predator-helios-300-i7-9th-(1) (1).jpg" style="width:730px" /></p>

<p>Tuy nhi&ecirc;n với những mẫu <strong>laptop gaming</strong> hiện đại ng&agrave;y nay, được trang bị c&aacute;c ổ cứng SSD th&igrave; việc khởi động m&aacute;y đ&atilde; nhanh hơn trước rất nhiều. Anh em n&ecirc;n tắt m&aacute;y khi kh&ocirc;ng sử dụng, cho m&aacute;y c&oacute; thời gian &ldquo;nghỉ ngơi&rdquo; nhằm k&eacute;o d&agrave;i tuổi thọ của chiếc laptop chơi game.</p>

<p>&nbsp;</p>

<p>V&agrave; đ&oacute; l&agrave; những sai lầm phổ biến thường thấy khi sử dụng <strong>laptop gaming</strong>. Anh em h&atilde;y để &yacute; những th&oacute;i quen h&agrave;ng ng&agrave;y v&igrave; rất c&oacute; thể những h&agrave;nh động v&ocirc; t&igrave;nh th&ocirc;i cũng g&acirc;y ra những hậu quả kh&ocirc;ng đ&aacute;ng c&oacute; cho chiếc m&aacute;y t&iacute;nh của m&igrave;nh.</p>

<p>Anh em đừng qu&ecirc;n theo d&otilde;i <strong><a href="https://www.tncstore.vn/tin-tuc/bai-viet-moi-nhat.html" target="_blank">TNC News</a></strong> thường xuy&ecirc;n để cập nhật những tin tức về c&aacute;c sản phẩm c&ocirc;ng nghệ v&agrave; PC nh&eacute;!</p>

<div>&nbsp;</div>
', N'/Data/images/newses/tintucmoinhat/Avatar%20bai%20viet%20(4)%20(6).jpg', NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-06T13:41:48.227' AS DateTime), N'quang', CAST(N'2020-12-06T13:41:00.000' AS DateTime), NULL, 4, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (29, N'Top 5 Màn Hình Gaming Đáng Mua Nhất Dịp Cuối Năm', N'Top 5 Màn Hình Gaming Đáng Mua Năm 2020', N'top-5-man-hinh-gaming-dang-mua-nam-2020', N'Một chiếc PC Gaming mạnh mẽ vẫn chưa thể trở nên hoàn hảo nếu thiếu một chiếc màn hình. Hãy cùng TNC điểm qua top 5 Màn hình Gaming chất lượng nhất nhé!', N'<p><em>Một chiếc PC Gaming mạnh mẽ vẫn chưa thể trở n&ecirc;n ho&agrave;n hảo nếu thiếu một chiếc m&agrave;n h&igrave;nh. H&atilde;y c&ugrave;ng TNC điểm qua top 5 M&agrave;n h&igrave;nh Gaming chất lượng nhất nh&eacute;!</em></p>

<p>&nbsp;</p>

<p>Chắc hẳn rất nhiều anh em khi build <strong>PC Gaming</strong> đều ch&uacute; &yacute; tới những linh kiện như CPU, card đồ hoạ, RAM&hellip; m&agrave; qu&ecirc;n mất rằng m&agrave;n h&igrave;nh cũng đ&oacute;ng vai tr&ograve; rất quan trọng khi chơi game. Một chiếc m&agrave;n h&igrave;nh Gaming chất lượng sẽ mang lại cho anh em trải nghiệm mượt m&agrave;, thoải m&aacute;i khi ngồi b&ecirc;n chiếc PC y&ecirc;u dấu.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 man hinh gaming/L5L26OZPQFD7HLPSOW5AM7GOHY (1).jpg" style="width:730px" /></p>

<p>Tr&aacute;i lại, nếu anh em d&agrave;nh hầu hết số tiền cho chiếc <strong>PC Gaming</strong> m&agrave; chỉ để ra một khoản nhỏ để tậu m&agrave;n h&igrave;nh c&oacute; tần số qu&eacute;t thấp, độ trễ cao sẽ khiến kh&ocirc;ng chỉ l&atilde;ng ph&iacute; hiệu năng m&aacute;y t&iacute;nh m&agrave; c&ograve;n l&agrave;m anh em dễ bị mỏi mắt trong thời gian d&agrave;i.</p>

<p>Vậy c&oacute; những yếu tố n&agrave;o l&agrave;m n&ecirc;n một chiếc <strong>M&agrave;n h&igrave;nh Gaming</strong> tốt? Lựa chọn sao cho ph&ugrave; hợp với nhu cầu của bản th&acirc;n? Kh&aacute;m ph&aacute; ngay qua <strong>top 5 M&agrave;n h&igrave;nh Gaming đ&aacute;ng mua nhất</strong> dịp cuối năm 2020 nh&eacute;!</p>

<p>&nbsp;</p>

<h1><strong><span style="font-size:18px">1. M&agrave;n h&igrave;nh Asus TUF Gaming VG249Q1R</span></strong></h1>

<h1 style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 man hinh gaming/tuf-gaming-vg249q1r-o1 (1) (1).jpg" style="width:730px" /></h1>

<p>Đến với sản phẩm đầu ti&ecirc;n trong <strong>top 5 <a href="https://www.tncstore.vn/man-hinh-gaming.html" target="_blank">M&agrave;n h&igrave;nh Gaming</a></strong> đ&aacute;ng mua ch&iacute;nh l&agrave; chiếc m&agrave;n h&igrave;nh <strong>Asus TUF Gaming VG249Q1R</strong>. So với gi&aacute; th&agrave;nh v&agrave;i năm trước, khi anh em phải bỏ khoảng tiền xấp xỉ 10 triệu đồng để sở hữu một chiếc m&agrave;n h&igrave;nh gaming c&oacute; tấm nền IPS, tần số qu&eacute;t 144Hz c&ugrave;ng viền si&ecirc;u mỏng th&igrave; nay chỉ với chưa đầy 5 triệu, ch&uacute;ng ta đ&atilde; c&oacute; sản phẩm thậm ch&iacute; c&ograve;n mạnh hơn thế.</p>

<p>Với thiết kế &ldquo;mỏng d&iacute;nh như tờ giấy&rdquo;, <strong>Asus VG249Q1R</strong> thực sự rất xứng đ&aacute;ng cho c&aacute;c game thủ chơi game bắn s&uacute;ng, đua xe tốc độ cao với tần số qu&eacute;t l&ecirc;n tới 165Hz, thời gian phản hồi 1ms nhờ c&ocirc;ng nghệ Extreme Low Motion Blur khiến khung h&igrave;nh trở n&ecirc;n cực kỳ mượt m&agrave; v&agrave; hầu như kh&ocirc;ng c&oacute; hiện tượng b&oacute;ng mờ.&nbsp;</p>

<p style="text-align:center"><iframe class="note-video-clip" frameborder="0" height="360" src="//www.youtube.com/embed/y3MzS2TUunE" width="640"></iframe></p>

<p>Kh&ocirc;ng chỉ vậy, Asus VG249Q1R c&ograve;n sở hữu tấm nền IPS cho chất lượng h&igrave;nh ảnh v&agrave; m&agrave;u sắc ch&acirc;n thực, kh&ocirc;ng bị thay đổi kể cả khi anh em c&oacute; thay đổi g&oacute;c nh&igrave;n. Nếu anh em l&agrave; game thủ muốn hướng tới con đường chuy&ecirc;n nghiệp th&igrave; đ&acirc;y ch&iacute;nh l&agrave; <strong>m&agrave;n h&igrave;nh gaming</strong> th&iacute;ch hợp nhất với k&iacute;ch thước m&agrave;n h&igrave;nh 23.8 inch, tỷ lệ m&agrave;n h&igrave;nh 16:9 c&ugrave;ng c&ocirc;ng nghệ AMD FreeSync chống x&eacute; h&igrave;nh v&agrave; rất nhiều chế độ gaming kh&aacute;c nhau. Anh em cũng kh&ocirc;ng phải lo về cổng kết nối khi chiếc m&agrave;n h&igrave;nh gaming n&agrave;y c&oacute; đủ c&aacute;c cổng HDMI, DisplayPort v&agrave; jack 3.5mm cho tai nghe.</p>

<p>&gt;&gt;&gt; THAM KHẢO SẢN PHẨM TẠI LINK DƯỚI:</p>

<p><strong><a href="https://www.tncstore.vn/man-hinh-asus-tuf-gaming-vg249qr1r-ips.html" target="_blank">M&agrave;n h&igrave;nh Asus TUF Gaming VG249Q1R</a></strong></p>

<p>&nbsp;</p>

<h1><strong><span style="font-size:18px">2. M&agrave;n h&igrave;nh AOC 27G2</span></strong></h1>

<p>Nhắc đến <strong>top 5 M&agrave;n h&igrave;nh Gaming</strong> chất lượng m&agrave; kh&ocirc;ng nhắc đến AOC th&igrave; quả l&agrave; thiếu s&oacute;t lớn. Với AOC 27G2, anh em sẽ được trải nghiệm một sản phẩm &ldquo;cao cấp với gi&aacute; th&agrave;nh phổ th&ocirc;ng&rdquo;, điều m&agrave; h&atilde;ng sản xuất AOC lu&ocirc;n l&agrave;m rất tốt.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 man hinh gaming/20191002-105056-3909 (1).jpg" style="width:730px" /></p>

<p>Về thiết kế, c&oacute; thể n&oacute;i <strong>AOC 27G2</strong> c&oacute; chất lượng build kh&aacute; chắc chắn với ch&acirc;n đế h&igrave;nh chữ X mang lại cảm gi&aacute;c mạnh mẽ, viền m&agrave;n h&igrave;nh ba cạnh si&ecirc;u mỏng với k&iacute;ch thước 27 inch thoải m&aacute;i cho gaming cũng như c&aacute;c t&aacute;c vụ giải tr&iacute; như xem phim, xem video&hellip;</p>

<p>Ấn tượng hơn cả ch&iacute;nh l&agrave; hiệu năng của <strong>m&agrave;n h&igrave;nh AOC 27G2</strong> với tấm nền IPS với chế độ HDR, c&ocirc;ng nghệ AOC Color cho m&agrave;u sắc, chất lượng h&igrave;nh ảnh trở n&ecirc;n &ldquo;đẹp lung linh&rdquo; như trong c&aacute;c bộ phim điện ảnh. Thời gian phản hồi 1ms c&ugrave;ng tần số qu&eacute;t 144Hz ti&ecirc;u chuẩn cho gaming chuy&ecirc;n nghiệp cũng l&agrave; điểm s&aacute;ng của chiếc <strong>m&agrave;n h&igrave;nh gaming</strong> n&agrave;y.</p>

<p style="text-align:center"><iframe class="note-video-clip" frameborder="0" height="360" src="//www.youtube.com/embed/AOVvtDiEUqk" width="640"></iframe></p>

<p>Kh&ocirc;ng chỉ vậy, l&yacute; do m&agrave; AOC 27G2 được coi l&agrave; chiếc <strong>m&agrave;n h&igrave;nh gaming</strong> c&oacute; hiệu năng vượt trội so với mức gi&aacute; ch&iacute;nh nhờ c&ocirc;ng nghệ G-Sync trứ danh đến từ NVIDIA gi&uacute;p trải nghiệm gaming trở n&ecirc;n cực kỳ mượt m&agrave;. Anh em sẽ kh&ocirc;ng c&ograve;n bị &ldquo;tụt mood&rdquo; khi hiện tượng x&eacute; h&igrave;nh l&agrave; ho&agrave;n to&agrave;n kh&ocirc;ng xảy ra, gi&uacute;p tận dụng hiệu quả hiệu năng chiếc PC Gaming của m&igrave;nh.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 man hinh gaming/5126498_27g2_goc_gaming (1).jpg" style="width:730px" /></p>

<p>Một điểm đ&aacute;ng ch&uacute; nữa tr&ecirc;n AOC 27G2 l&agrave; anh em c&oacute; thể t&ugrave;y chỉnh c&aacute;c thiết lập gaming cho c&aacute;c tựa game kh&aacute;c nhau như độ s&aacute;ng, độ phản hồi v&agrave; c&oacute; thể lưu cho mỗi game cụ thể, gi&uacute;p tiết kiệm thời gian v&agrave; để c&oacute; trải nghiệm tốt nhất.</p>

<p>&gt;&gt;&gt; THAM KHẢO SẢN PHẨM TẠI LINK DƯỚI:</p>

<p><strong><a href="https://www.tncstore.vn/man-hinh-gaming/man-hinh-aoc-27g2.html" target="_blank">M&agrave;n h&igrave;nh Gaming AOC 27G2</a></strong></p>

<p>&nbsp;</p>

<h1><strong><span style="font-size:18px">3. M&agrave;n h&igrave;nh Acer Nitro VG252QX</span></strong></h1>

<h1 style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 man hinh gaming/vg252q_dzec (1).jpg" style="width:730px" /></h1>

<p>Thuộc c&aacute;c <strong>m&agrave;n h&igrave;nh Gaming</strong> chất lượng h&agrave;ng đầu trong ph&acirc;n kh&uacute;c dưới 10 triệu, chiếc m&agrave;n h&igrave;nh Acer Nitro VG252QX xứng đ&aacute;ng l&agrave; sự lựa chọn cho game thủ chuy&ecirc;n nghiệp. Với&nbsp; k&iacute;ch thước 25 inch, khả năng hiển thị chuẩn 99% dải m&agrave;u sRGB, độ s&aacute;ng 400 nits gấp đ&ocirc;i m&agrave;n h&igrave;nh b&igrave;nh thường, mang đến những khung h&igrave;nh sặc sỡ nhưng vẫn chuẩn x&aacute;c.</p>

<p>Với những mẫu <strong>m&agrave;n h&igrave;nh gaming </strong>mới nhất hiện nay th&igrave; việc sở hữu viền 3 cạnh si&ecirc;u mỏng l&agrave; điều bắt buộc phải c&oacute;. Chiếc m&agrave;n h&igrave;nh Acer Nitro VG252QX nổi bật nhờ thiết kế g&oacute;c cạnh, ch&acirc;n đế h&igrave;nh chữ V khoẻ khoắn c&ugrave;ng viền 3 cạnh mỏng mang lại cảm gi&aacute;c tr&agrave;n viền cực ấn tượng.</p>

<p style="text-align:center"><iframe class="note-video-clip" frameborder="0" height="360" src="//www.youtube.com/embed/WUgyEEN68iI" width="640"></iframe></p>

<p>Điểm ấn tượng về chiếc m&agrave;n h&igrave;nh gaming <strong>Acer Nitro VG252QX </strong>ch&iacute;nh l&agrave;&nbsp; tốc độ thuộc h&agrave;ng top đầu c&ugrave;ng c&ocirc;ng nghệ tấm nền IPS Fast Crystal Liquid mới nhất r&uacute;t ngắn thời gian phản hồi hơn 64% hơn m&agrave;n h&igrave;nh thường, v&agrave; đạt được 0.5ms Grey-to-Grey (chế độ overdrive).&nbsp;</p>

<p>Nhờ vậy m&agrave; hiện tượng b&oacute;ng mờ được loại bỏ ho&agrave;n to&agrave;n m&agrave; vẫn đảm bảo độ m&atilde;n nh&atilde;n từ mọi g&oacute;c nh&igrave;n, đảm bảo th&iacute;ch hợp cho c&aacute;c game&nbsp; như Need for Speed hay CS:GO vốn c&oacute; nhịp độ cao v&agrave; li&ecirc;n tục.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 man hinh gaming/Screen_Shot_2020_04_20_at_7_09_22_PM_HXIC (1).jpg" style="width:730px" /></p>

<p>Đặc biệt, với tần số qu&eacute;t m&agrave;n h&igrave;nh l&ecirc;n tới 240Hz th&igrave; chiếc m&agrave;n h&igrave;nh gaming n&agrave;y rất th&iacute;ch hợp cho c&aacute;c game thủ chuy&ecirc;n nghiệp, streamer, người d&ugrave;ng sử dụng m&agrave;n h&igrave;nh trong thời gian d&agrave;i v&igrave; tần số qu&eacute;t cao sẽ gi&uacute;p mắt đỡ mỏi hơn. Anh em c&oacute; thể tận dụng sức mạnh từ card đồ hoạ của m&igrave;nh để đẩy mức fps trong game l&ecirc;n mức cao nhất, mang lại trải nghiệm m&atilde;n nh&atilde;n.</p>

<p>&gt;&gt;&gt; THAM KHẢO SẢN PHẨM TẠI LINK DƯỚI:</p>

<p><strong><a href="https://www.tncstore.vn/man-hinh-gaming/man-hinh-gaming-acer-nitro-vg252qx.html" target="_blank">M&agrave;n h&igrave;nh Gaming Acer Nitro VG252QX</a></strong></p>

<h1><strong><span style="font-size:18px">4. M&agrave;n H&igrave;nh GIGABYTE M27Q</span></strong></h1>

<h1 style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 man hinh gaming/avatar_0e916381d3bb4093b12f95e38c4ae3c8 (1).jpg" style="width:730px" /></h1>

<p>Cao cấp hơn một ch&uacute;t, Gigabyte M27Q cũng rất xứng đ&aacute;ng nằm trong <strong>top 5 m&agrave;n h&igrave;nh gaming </strong>đ&aacute;ng mua nhờ những ưu điểm như tần số qu&eacute;t cao, tốc độ phản hồi thấp c&ugrave;ng khả năng t&ugrave;y biến rất ấn tượng.</p>

<p>C&oacute; thiết kế thanh lịch, tinh tế với ch&acirc;n đế h&igrave;nh chữ V khỏe khoắn, <strong>M&agrave;n h&igrave;nh gaming Gigabyte M27Q </strong>mang lại cảm gi&aacute;c sang trọng cho người d&ugrave;ng. Với k&iacute;ch thước 27 inch c&ugrave;ng tấm nền IPS, anh em ho&agrave;n to&agrave;n c&oacute; thể đắm ch&igrave;m trong những thước phim, khoảnh khắc gaming cực kỳ chất lượng.&nbsp;</p>

<p>Kh&ocirc;ng chỉ mạnh về chất lượng h&igrave;nh ảnh, <strong>Gigabyte M27Q</strong> c&ograve;n sở hữu tần số qu&eacute;t 170Hz v&agrave; tốc độ phản hồi 0.5ms rất ấn tượng. Phải n&oacute;i so với những mẫu m&agrave;n h&igrave;nh gaming kể tr&ecirc;n th&igrave; điểm hơn của M27Q ch&iacute;nh l&agrave; độ ph&acirc;n giải 2K, gi&uacute;p trải nghiệm khi chơi game trở n&ecirc;n ch&acirc;n thực v&agrave; đẹp hơn rất nhiều.&nbsp;</p>

<p style="text-align:center"><iframe class="note-video-clip" frameborder="0" height="360" src="//www.youtube.com/embed/KKkgPOz14E8" width="640"></iframe></p>

<p>Hơn nữa, chiếc m&agrave;n h&igrave;nh n&agrave;y c&ograve;n được t&iacute;ch hợp c&ocirc;ng nghệ AMD FreeSync gi&uacute;p giảm thiểu tối đa hiện tượng x&eacute; h&igrave;nh khi chơi game, khiến trải nghiệm mượt m&agrave; v&agrave; thoải m&aacute;i nhất.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 man hinh gaming/2020-11-09_234112 (1).jpg" style="width:730px" /></p>

<p>Đặc biệt nhất ch&iacute;nh l&agrave; về n&uacute;t bấm KVM của Gigabyte M27Q. Với những anh em c&oacute; nhu cầu đa nhiệm lớn, cần sử dụng m&agrave;n h&igrave;nh cho nhiều thiết bị kh&aacute;c nhau th&igrave; anh em chỉ cần cắm thiết bị đ&oacute; v&agrave;o m&agrave;n h&igrave;nh v&agrave; nhấn n&uacute;t l&agrave; m&agrave;n h&igrave;nh sẽ hiện ngay qua thiết bị đ&oacute;. Điều n&agrave;y cũng gi&uacute;p anh em kh&ocirc;ng phải chuyển đổi dữ liệu giữa c&aacute;c thiết bị cũng như phải cắm đi cắm lại nhiều lần.</p>

<p>&gt;&gt;&gt; THAM KHẢO SẢN PHẨM TẠI LINK DƯỚI:</p>

<p><strong><a href="https://www.tncstore.vn/man-hinh-gaming/man-hinh-gaming-gigabyte-m27q.html" target="_blank">M&agrave;n H&igrave;nh Gaming GIGABYTE M27Q</a></strong></p>

<h1><span style="font-size:18px"><strong>5. M&agrave;n h&igrave;nh Viewsonic Elite XG270Q</strong></span></h1>

<h1 style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 man hinh gaming/ViewSonic1 (1).jpg" style="width:730px" /></h1>

<p>Đến với sản phẩm &ldquo;ho&agrave;n hảo&rdquo; nhất trong <strong>top 5 m&agrave;n h&igrave;nh gaming</strong> đ&aacute;ng mua ch&iacute;nh l&agrave; <strong>ViewSonic Elite XG270Q</strong>. Nổi bật trong c&aacute;c mẫu m&agrave;n h&igrave;nh gaming lẫn đồ họa, XG270Q thực sự l&agrave; sản phẩm chất lượng với những anh em d&acirc;n đồ họa nhưng cũng c&oacute; nhu cầu chơi game, giải tr&iacute; cao.</p>

<p>Về thiết kế, chiếc <strong>m&agrave;n h&igrave;nh gamin</strong>g n&agrave;y sở hữu ch&acirc;n đế h&igrave;nh chữ T c&ugrave;ng khả năng xoay lật m&agrave;n h&igrave;nh dễ d&agrave;ng, gi&uacute;p thay đổi g&oacute;c nh&igrave;n đa dạng, rất th&iacute;ch hợp khi sử dụng trong thời gian d&agrave;i. Với độ ph&acirc;n giải 2K QHD, tấm nền IPS c&ugrave;ng 127% sRGB th&igrave; XG270Q cực kỳ th&iacute;ch hợp để l&agrave;m đồ họa, thiết kế m&agrave;u một c&aacute;ch chuẩn chỉ.</p>

<p style="text-align:center"><iframe class="note-video-clip" frameborder="0" height="360" src="//www.youtube.com/embed/8zB5T9a6fdk" width="640"></iframe></p>

<p>V&agrave; tất nhi&ecirc;n, điểm mạnh của một chiếc <strong>m&agrave;n h&igrave;nh gaming</strong> ch&iacute;nh l&agrave; tần số qu&eacute;t cao v&agrave; tốc độ phản hồi thấp. XG270Q đều đ&aacute;p ứng ti&ecirc;u ch&iacute; tr&ecirc;n với tần số qu&eacute;t 165Hz c&ugrave;ng tốc độ phản hồi 1ms, cho trải nghiệm gaming cực m&atilde;n nh&atilde;n.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/top 5 man hinh gaming/xg270q_lhfq (1).jpg" style="width:730px" /></p>

<p>Đối với anh em game thủ chuy&ecirc;n nghiệp n&oacute;i ri&ecirc;ng v&agrave; người d&ugrave;ng m&agrave;n h&igrave;nh n&oacute;i chung th&igrave; việc bảo vệ đ&ocirc;i mắt l&agrave; điều quan trọng ti&ecirc;n quyết. Do đ&oacute; n&ecirc;n ViewSonic đ&atilde; t&iacute;ch hợp kh&aacute; nhiều c&ocirc;ng nghệ cho XG270Q như chống nhấp nh&aacute;y, chống &aacute;nh s&aacute;ng xanh v&agrave; G-Sync của NVIDIA, gi&uacute;p giảm thiểu tối đa hiện tượng mỏi mắt khi sử dụng trong thời gian d&agrave;i.</p>

<p>&gt;&gt;&gt; THAM KHẢO NGAY SẢN PHẨM TẠI LINK DƯỚI:</p>

<p><strong><a href="https://www.tncstore.vn/man-hinh-viewsonic-elite-xg270q.html" target="_blank">M&agrave;n h&igrave;nh Viewsonic Elite XG270Q</a></strong></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>Tất nhi&ecirc;n l&agrave; vẫn c&oacute; những mẫu <strong>m&agrave;n h&igrave;nh gaming</strong> chất lượng hơn nhưng c&oacute; thể chỉ d&agrave;nh cho số &iacute;t anh em c&oacute; điều kiện hơn hoặc muốn t&igrave;m kiếm c&aacute;c mẫu sản phẩm gi&uacute;p trải nghiệm gaming trở n&ecirc;n ho&agrave;n hảo nhất. Anh em c&oacute; thể tham khảo th&ecirc;m c&aacute;c mẫu m&agrave;n h&igrave;nh cao cấp <strong><a href="https://www.tncstore.vn/man-hinh-gaming.html" target="_blank">tại đ&acirc;y</a></strong> nh&eacute;!</p>

<p>&nbsp;</p>

<p>V&agrave; đ&oacute; ch&iacute;nh l&agrave; <strong>top 5 m&agrave;n h&igrave;nh gaming</strong> đ&aacute;ng mua nhất dịp cuối năm. Ch&uacute;c anh em t&igrave;m được sản phẩm ưng &yacute; v&agrave; đừng qu&ecirc;n gh&eacute; thăm <strong><a href="https://www.tncstore.vn/tin-tuc" target="_blank">TNC News</a></strong> để cập nhật những tin tức về sản phẩm c&ocirc;ng nghệ, PC nh&eacute;!</p>

<div>&nbsp;</div>
', N'/Data/images/newses/tintucmoinhat/Avatar%20bai%20viet%20(4)%20(7).jpg', NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-06T13:42:02.667' AS DateTime), N'quang', CAST(N'2020-12-06T13:42:00.000' AS DateTime), NULL, 4, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (30, N'Bật mí cách Build PC Gaming Giá rẻ cực hữu ích cho Người mới', N'Cách build gaming pc giá rẻ hiệu quả', N'cach-build-gaming-pc-gia-re-hieu-qua', N'Anh em vẫn đang băn khoăn chưa biết build PC Gaming giá rẻ sao cho đạt được hiệu năng mạnh mẽ và ổn định nhất? Cùng TNC tìm hiểu qua bài viết dưới đây nhé!', N'<p><em>Anh em vẫn đang băn khoăn chưa biết build PC Gaming gi&aacute; rẻ sao cho đạt được hiệu năng mạnh mẽ v&agrave; ổn định nhất? C&ugrave;ng TNC t&igrave;m hiểu qua b&agrave;i viết dưới đ&acirc;y nh&eacute;!</em></p>

<p>&nbsp;</p>

<p>C&oacute; lẽ hầu hết những người mới biết về PC đều cho rằng những chiếc <strong>PC Gaming tốt</strong> thường c&oacute; gi&aacute; th&agrave;nh rất đắt, từ v&agrave;i chục triệu cho đến cả trăm triệu đồng v&agrave; sở hữu những linh kiện tối t&acirc;n nhất. Tuy nhi&ecirc;n, vẫn c&oacute; những chiếc <strong>PC Gaming gi&aacute; rẻ</strong> c&oacute; khi chỉ bằng 1% c&aacute;c bộ m&aacute;y đắt tiền nhưng vẫn đ&aacute;p ứng được rất tốt nhu cầu của game thủ.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Cach build PC Gaming Gia re/125. (1).jpg" style="width:730px" /></p>

<p>Chắc hẳn rất nhiều anh em đều kh&ocirc;ng tin tại sao một bộ<strong> PC Gaming gi&aacute; rẻ</strong> lại c&oacute; thể coi l&agrave; tốt được? C&oacute; kh&aacute; nhiều kh&iacute;a cạnh để l&agrave;m n&ecirc;n một chiếc PC Gaming tốt như chơi game mượt m&agrave; ở độ ph&acirc;n giải cao, khả năng l&agrave;m m&aacute;t ổn định trong thời gian d&agrave;i, tiết kiệm điện nhưng vẫn đ&aacute;p ứng hiệu năng tốt&hellip;&nbsp;</p>

<p>V&agrave; sau đ&acirc;y, nh&acirc;n dịp cho đợt sale cuối năm, ch&uacute;ng ta c&ugrave;ng t&igrave;m hiểu bộ m&aacute;y t&iacute;nh chơi game rẻ đặc trưng để hiểu th&ecirc;m về <strong>c&aacute;ch build PC Gaming gi&aacute; rẻ</strong> nhưng vẫn c&oacute; hiệu năng rất ổn v&agrave; đặc biệt anh em c&oacute; thể tiết kiệm được kh&aacute; nhiều đ&oacute; nh&eacute;!&nbsp;</p>

<p>&nbsp;</p>

<h1><strong><span style="font-size:18px">1. Chuẩn bị những thứ cần thiết để sẵn s&agrave;ng &ldquo;l&acirc;m trận&rdquo;</span></strong></h1>

<p>C&ocirc;ng cụ để lắp đặt <strong>PC Gaming</strong> kh&aacute; đơn giản, anh em chỉ cần một chiếc tuốc nơ v&iacute;t l&agrave; đủ. Tuy vậy, anh em cũng n&ecirc;n chuẩn bị th&ecirc;m một khay linh kiện để đựng ốc v&iacute;t v&igrave; số lượng ốc d&ugrave;ng để lắp đặt l&agrave; kh&aacute; lớn. Anh em ho&agrave;n to&agrave;n c&oacute; thể d&ugrave;ng b&aacute;t hay bất cứ g&igrave; c&oacute; thể đựng nếu kh&ocirc;ng t&igrave;m được khay, việc n&agrave;y gi&uacute;p anh em nắm được số lượng ốc, tr&aacute;nh việc bị thiếu dẫn đến nhiều hệ luỵ kh&ocirc;ng mong muốn.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Cach build PC Gaming Gia re/515YW9CJCjL (1).jpg" style="width:730px" /></p>

<p>Ngo&agrave;i ra, anh em phải đề ph&ograve;ng tĩnh điện v&igrave; việc <strong>build PC Gaming</strong> y&ecirc;u cầu phải chạm v&agrave;o rất nhiều thứ truyền điện. Giải ph&aacute;p tốt nhất l&agrave; chuẩn bị v&ograve;ng đeo tay chống tĩnh điện hay đứng tr&ecirc;n một tấm v&aacute;n gỗ khi lắp đặt. Nếu kh&ocirc;ng c&oacute; những thứ tr&ecirc;n th&igrave; anh em n&ecirc;n lắp đặt với một tay v&agrave; tay c&ograve;n lại để xuống đất nhằm đảm bảo an to&agrave;n cho bản th&acirc;n.</p>

<p style="text-align:center"><iframe class="note-video-clip" frameborder="0" height="360" src="//www.youtube.com/embed/T2J4GyLMO2c" width="640"></iframe></p>

<p>Tuy nhi&ecirc;n, việc quan trọng nhất l&agrave; chuẩn bị một kh&ocirc;ng gian tho&aacute;ng m&aacute;t, sạch sẽ v&agrave; đủ diện t&iacute;ch để build PC Gaming v&igrave; đ&acirc;y ho&agrave;n to&agrave;n l&agrave; những linh kiện mới. Nếu anh em lắp đặt ở những nơi bụi bặm, điều kiện kh&ocirc;ng tốt sẽ g&acirc;y ảnh hưởng kh&ocirc;ng nhỏ đến vẻ bề ngo&agrave;i v&agrave; hiệu năng của chiếc PC Gaming gi&aacute; rẻ.</p>

<p>&gt;&gt;&gt; Tham khảo ngay c&aacute;c bộ <strong><a href="https://www.tncstore.vn/gaming-pc.html" target="_blank">PC Gaming</a></strong> mạnh mẽ lại c&oacute; gi&aacute; th&agrave;nh rất hợp l&yacute; tại <strong>TNC Store</strong> nh&eacute;!</p>

<table class="table table-bordered">
	<tbody>
		<tr>
			<td>
			<p><a href="https://www.tncstore.vn/gaming-pc/gaming-pc-glacier-streaming-1650s.html" target="_self"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Cach build PC Gaming Gia re/san-pham-bai-viet.jpg" /></a></p>
			</td>
			<td>
			<p><a href="https://www.tncstore.vn/gaming-pc/gaming-pc-sniper-1660-super-powered-by-msi.html" target="_self"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Cach build PC Gaming Gia re/san-pham-bai-viet-2.jpg" /></a></p>
			</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;</p>

<h1><strong><span style="font-size:18px">2. C&aacute;ch chọn linh kiện PC Gaming gi&aacute; rẻ&nbsp;</span></strong></h1>

<p>Đ&acirc;y ch&iacute;nh l&agrave; vấn đề quan trọng nhất trong c&aacute;ch <strong>build PC Gaming gi&aacute; rẻ</strong>. Kh&ocirc;ng chỉ lựa chọn c&aacute;c linh kiện gi&aacute; rẻ nhất l&agrave; c&oacute; thể lắp đặt th&agrave;nh một chiếc <strong>PC Gaming</strong> ho&agrave;n chỉnh, anh em c&ograve;n phải xem x&eacute;t c&aacute;c th&ocirc;ng số như socket tr&ecirc;n CPU, giao tiếp tr&ecirc;n card đồ hoạ, mức ti&ecirc;u thụ điện năng&hellip; để c&aacute;c linh kiện c&oacute; thể l&agrave;m việc với nhau một c&aacute;ch ho&agrave;n hảo nhất.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Cach build PC Gaming Gia re/img_5a18ddc387fc9 (1).jpg" style="width:730px" /></p>

<p>Những linh kiện được đề cập trong b&agrave;i viết ho&agrave;n to&agrave;n l&agrave; những c&aacute;c sản phẩm c&oacute; gi&aacute; th&agrave;nh tr&ecirc;n hiệu năng tốt, khả năng kết nối cũng như độ ổn định cao, th&iacute;ch hợp cho anh em chiến game trong khoảng thời gian d&agrave;i. Nếu anh em chưa t&igrave;m được cấu h&igrave;nh ph&ugrave; hợp th&igrave; đ&acirc;y ch&iacute;nh l&agrave; chiếc <strong>PC Gaming gi&aacute; rẻ</strong> kh&aacute; hấp dẫn trong thời điểm hiện tại.&nbsp;</p>

<h1><strong><span style="font-size:18px">3. Cấu h&igrave;nh PC Gaming gi&aacute; rẻ&nbsp;</span></strong></h1>

<p>Ti&ecirc;u ch&iacute; đầu ti&ecirc;n cho khi <strong>build PC Gaming gi&aacute; rẻ</strong> l&agrave; c&aacute;c linh kiện được chọn đều c&oacute; mức gi&aacute; dễ tiếp cận với đa số người d&ugrave;ng v&agrave; c&oacute; hiệu năng đủ mạnh để chơi được gần như to&agrave;n bộ c&aacute;c tựa game hiện tại.&nbsp;</p>

<p>Đầu ti&ecirc;n, với CPU Ryzen&trade; 3 3100 với 4 nh&acirc;n v&agrave; 8 luồng gi&uacute;p anh em dễ d&agrave;ng xử l&yacute; những t&aacute;c vụ nặng, đa nhiệm như chỉnh sửa ảnh. Tốc độ xử l&yacute; của Ryzen&trade; 3 3100 cũng được đ&aacute;nh gi&aacute; kh&aacute; cao với mức xung nhịp cơ bản l&agrave; 3,6GHz v&agrave; bộ nhớ đệm l&agrave; 16MB. Hiện tượng nghẽn cổ chai hầu như kh&ocirc;ng xảy ra khi chiếc <strong>PC Gaming</strong> n&agrave;y.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Cach build PC Gaming Gia re/cpu-amd-ryzen-3-3300x-1-500x500 (1).jpg" style="width:730px" /></p>

<p>Tiếp đến l&agrave; mainboard, đ&acirc;y l&agrave; bộ phận rất quan trọng v&igrave; n&oacute; ch&iacute;nh l&agrave; cầu nối giữa c&aacute;c linh kiện v&agrave; việc lựa chọn kh&ocirc;ng cẩn thận sẽ dẫn đến những sự cố kh&ocirc;ng mong muốn l&agrave;m anh em phải build lại to&agrave;n bộ PC Gaming gi&aacute; rẻ.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Cach build PC Gaming Gia re/bo-mach-chu-asus-prime-a320m-e--500x500 (1).jpg" style="width:730px" /></p>

<p>Với ASUS Prime A320M-E, anh em ho&agrave;n to&agrave;n c&oacute; thể y&ecirc;n t&acirc;m khi chiếc mainboard n&agrave;y hỗ trợ tối ưu h&oacute;a c&aacute;c d&ograve;ng CPU tầm trung của AMD với đầy đủ c&aacute;c t&iacute;nh năng cần thiết. Kh&ocirc;ng chỉ ph&ugrave; hợp với c&aacute;c linh kiện của Glacier 1650, chiếc mainboard n&agrave;y c&ograve;n c&oacute; mức gi&aacute; kh&aacute; rẻ, thuộc loại m-ATX nhỏ gọn v&agrave; hỗ trợ Bus RAM từ 2133 - 3200MHz gi&uacute;p anh em dễ d&agrave;ng lắp được những thanh RAM ưa th&iacute;ch của m&igrave;nh.</p>

<p>N&oacute;i đến RAM th&igrave; sự lựa chọn Dual Channel cho cấu h&igrave;nh <strong>PC Gaming gi&aacute; rẻ</strong> thực sự rất hợp l&yacute; bởi so với việc cắm một thanh RAM 8GB th&igrave; hai thanh 4GB c&ugrave;ng l&uacute;c sẽ cho hiệu năng c&ugrave;ng tốc độ xử l&yacute; dữ liệu nhanh hơn. V&agrave; RAM Kingston với Bus 2666MHz sẽ cho anh em tốc độ v&agrave; dung lượng đủ lớn để chiến c&aacute;c tựa game online phổ biến hiện nay.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Cach build PC Gaming Gia re/ram-desktop-kingston-4gb-ddr4-2666mhz-1-500x500 (1).jpg" style="width:730px" /></p>

<p>&gt;&gt;&gt; Tham khảo ngay c&aacute;c <strong><a href="https://www.tncstore.vn/Cac-thong-so-ram-build-pc.html" target="_blank">th&ocirc;ng số RAM</a></strong> quan trọng cần biết khi <strong>build PC Gaming</strong> nh&eacute;!</p>

<p>Ổ cứng SSD 128GB nghe c&oacute; vẻ nhỏ đối với nhiều anh em nhưng với nhu cầu <strong>build PC Gaming gi&aacute; rẻ</strong> th&igrave; đ&oacute; l&agrave; điều ho&agrave;n hảo. Silicon Power A58 128GB Sata3 2.5&quot; đủ lớn để ph&ugrave; hợp với hệ điều h&agrave;nh của anh em với tốc độ đọc 560MB/s v&agrave; tốc độ ghi 530MB/s, nhanh hơn gấp 10 lần so với ổ HDD truyền thống v&agrave; quan trọng hơn cả l&agrave; c&oacute; gi&aacute; th&agrave;nh rất rẻ.&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Cach build PC Gaming Gia re/o-cung-ssd-silicon-power-a58-128gb-sata-iii-1-500x500 (1).jpg" style="height:303.37px; width:364.844px" /></p>

<p>V&agrave; cuối c&ugrave;ng, &ldquo;tr&ugrave;m cuối&rdquo; trong <strong>bộ m&aacute;y t&iacute;nh chơi game gi&aacute; rẻ</strong> ch&iacute;nh l&agrave; chiếc card đồ họa Asus Phoenix Geforce GTX 1650 mang đến chất lượng h&igrave;nh ảnh cao ở c&aacute;c tựa game Esport như LoL, CS:GO, DOTA 2 c&ugrave;ng trải nghiệm mượt m&agrave; những tựa game AAA. Kh&ocirc;ng chỉ vậy, c&ocirc;ng nghệ Axial Tech tr&ecirc;n quạt tản nhiệt gi&uacute;p lượng kh&iacute; lưu th&ocirc;ng được nhiều hơn, tăng khả năng l&agrave;m m&aacute;t cho linh kiện, gi&uacute;p mức fps ổn định trong thời gian d&agrave;i.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Cach build PC Gaming Gia re/card-man-hinh-asus-ph-gtx-1650-o4-gddr6-1-500x500 (1).jpg" style="width:730px" /></p>

<p>Với những linh kiện tr&ecirc;n, anh em kh&ocirc;ng cần một chiếc vỏ case qu&aacute; &ldquo;khủng long&rdquo;, thay v&agrave;o đ&oacute;, Aerocool Streak với dải LED RGB ở mặt trước gi&uacute;p tăng độ thẩm mỹ, tinh tế cho chiếc PC. Thuộc kiểu d&aacute;ng Mid Tower n&ecirc;n bạn ho&agrave;n to&agrave;n c&oacute; thể n&acirc;ng cấp c&aacute;c linh kiện sau n&agrave;y với 6 khe cắm mở rộng.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Cach build PC Gaming Gia re/vo-case-aerocool-streak-led-rgb-500x500 (1) (1).jpg" style="width:730px" /></p>

<p>Hầu hết&nbsp; khi anh em mới bắt tay v&agrave;o build một chiếc <strong>PC chơi game gi&aacute; rẻ </strong>th&igrave; đều đặt nhẹ vấn đề bộ nguồn. Tuy nhi&ecirc;n, những sự cố ngo&agrave;i &yacute; muốn như chập ch&aacute;y, nổ đều c&oacute; thể xảy ra nếu anh em lựa chọn một bộ nguồn kh&ocirc;ng tốt.&nbsp;</p>

<p>V&agrave; Bộ nguồn 450W đến từ ATOM&nbsp; l&agrave; ho&agrave;n to&agrave;n ph&ugrave; hợp. Tuy chỉ c&oacute; xếp hạng Plus 80, thay v&igrave; Gold, Platinum hay Bronze của c&aacute;c bộ nguồn đắt tiền hơn, nhưng n&oacute; vẫn phải đủ tốt để ho&agrave;n th&agrave;nh c&ocirc;ng việc. Anh em n&ecirc;n lưu &yacute; khi build cần giấu c&aacute;c bộ d&acirc;y đi v&igrave; bộ nguồn n&agrave;y thuộc loại Non-Modular, tức l&agrave; c&aacute;c d&acirc;y cắm được nối chặt v&agrave;o nguồn v&agrave; kh&ocirc;ng thể th&aacute;o rời.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/BAI VIET/Cach build PC Gaming Gia re/nguon-antec-atom-v450-450w-1-500x500 (1).jpg" style="width:730px" /></p>

<p style="text-align:center">&nbsp;</p>

<p>V&agrave; đ&oacute; l&agrave; tổng quan về <strong>c&aacute;ch build&nbsp;PC Gaming gi&aacute; rẻ</strong> cũng như c&aacute;ch chọn lựa v&agrave; c&aacute;c điều cần lưu &yacute; khi lắp đặt. Anh em đừng qu&ecirc;n gh&eacute; thăm <strong><a href="https://www.tncstore.vn/tin-tuc" target="_blank">TNC News</a></strong> để cập nhật những tin tức về sản phẩm c&ocirc;ng nghệ, PC nh&eacute;!&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>
', N'/Data/images/newses/tintucmoinhat/Avatar%20bai%20viet%20(4)%20(8).jpg', NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-06T13:42:15.523' AS DateTime), N'quang', CAST(N'2020-12-06T13:42:00.000' AS DateTime), NULL, 4, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (31, N'G.SKILL Trident Z Royal đạt kỷ lục thế giới DDR4-6666Mhz với ASUS ROG', N'G.SKILL Trident Z Royal đạt kỷ lục thế giới DDR4-6666Mhz với ASUS ROG', N'g-skill-trident-z-royal-dat-ky-luc-the-gioi-ddr4-6666mhz-voi-asus-rog', N'Mới đây ,G.SKILL nhà sản xuất bộ nhớ và thiết bị ngoại vi hàng đầu thế giới hợp tác với ASUS ROG đã phá kỉ lục thế giới khi ép xung thành công  RAM DDR4 lên mức bus 6666Mhz, con số này đạt được nhờ thanh RAM G.SKILL Trident Z Royal DDR4 với bộ xử lý Intel Core i9-10900K mới nhất và bo mạch chủ ASUS ROG Maximus XII APEX, dựa trên chipset Intel Z490 mới', N'<p>&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size:14px">Mới đ&acirc;y ,<strong><a href="https://www.tncstore.vn/ram.html?manufacturer_id=40" target="_blank">G.SKILL</a></strong> nh&agrave; sản xuất bộ nhớ v&agrave; thiết bị ngoại vi h&agrave;ng đầu thế giới hợp t&aacute;c với <strong>ASUS ROG</strong> đ&atilde; ph&aacute; kỉ lục thế giới khi &eacute;p xung th&agrave;nh c&ocirc;ng&nbsp; RAM DDR4 l&ecirc;n mức bus 6666Mhz, con số n&agrave;y đạt được nhờ thanh <strong>RAM <a href="https://www.tncstore.vn/ram.html?manufacturer_id=40" target="_blank">G.SKILL</a> Trident Z Royal </strong>DDR4 với bộ xử l&yacute; Intel <strong><a href="https://www.tncstore.vn/cpu-intel-core-i9-10900k-%203.7ghz-up-to5.3ghz-20mb-10cores-20%20Threads.html" target="_blank">Core i9-10900K</a></strong> mới nhất v&agrave; bo mạch chủ <strong>ASUS ROG Maximus XII APEX</strong>, dựa tr&ecirc;n chipset Intel <strong><a href="https://www.tncstore.vn/mainboard-bo-mach-chu.html?attribute_id=206" target="_blank">Z490</a></strong> mới. C&aacute;c bạn c&oacute; thể xem khoảnh khắc quyết định n&agrave;y tại : <strong><a href="https://www.youtube.com/watch?v=t-vXqT3SKUM" target="_blank">https://www.youtube.com/watch?v=t-vXqT3SKUM</a></strong></span></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-family:arial; font-size:14px">C&ugrave;ng với phi&ecirc;n bản mới nhất của nền tảng Intel thế hệ thứ 10, <strong>ASUS</strong> v&agrave; <strong><a href="https://www.tncstore.vn/ram.html?manufacturer_id=40" target="_blank">G. SKILL</a></strong> cũng đ&atilde; phối hợp để đạt được kỷ lục thế giới mới về tốc độ RAM. Sử dụng nitơ lỏng để l&agrave;m m&aacute;t hệ thống, kỷ lục thế giới được thiết lập tr&ecirc;n <strong>RAM DDR4-6666Mhz</strong>. Kỷ lục thế giới n&agrave;y đạt được với bo mạch chủ <strong>ASUS ROG Maximus XII APEX</strong>, bo mạch chủ ATX mới nhất dựa tr&ecirc;n chipset Intel <strong><a href="https://www.tncstore.vn/mainboard-bo-mach-chu.html?attribute_id=206" target="_blank">Z490</a></strong> v&agrave; bộ xử l&yacute; Intel <strong><a href="https://www.tncstore.vn/cpu-intel-core-i9-10900k-%203.7ghz-up-to5.3ghz-20mb-10cores-20%20Threads.html" target="_blank">Core i9-10900K</a></strong>. Xem b&ecirc;n dưới để xem ảnh chụp m&agrave;n h&igrave;nh c&aacute;c th&ocirc;ng số kỹ thuật. Ngo&agrave;i ra c&aacute;c bạn c&oacute; thể tham khảo c&aacute;c loại Ram kh&aacute;c<strong><a href="https://www.tncstore.vn/ram.html?manufacturer_id=40" target="_blank"> tại đ&acirc;y</a></strong> hoặc những d&ograve;ng CPU intel thế hệ 10<strong><a href="https://www.tncstore.vn/cpu.html?manufacturer_id=23" target="_blank">tại đ&acirc;y</a></strong>.</span></p>

<p><br />
<img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/News/7MUWNcMKy7DddI28.jpg" style="width:500px" /><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/News/aQ0iOP2BgUrPduAF.jpg" style="width:500px" /></p>

<p>Gskil, Asus, ROG, Asus ROG, G.SKILL Trident Z Royal, RAM, World record,kỉ lục thế giới, &eacute;p xung ram, z490, i9 10900k, intel, cpu intel thế hệ 10,&nbsp;ASUS ROG Maximus , DDR4, 6666Mhz</p>

<p><strong>Nguồn : <em><a href="https://www.techpowerup.com/267441/g-skill-trident-z-royal-achieves-new-ddr4-6666-world-record-with-asus-rog" target="_blank">TechPowerUP</a></em></strong></p>

<div style="text-align: right;"><em>/Trần Vĩ</em></div>
', N'/Data/images/newses/tintucmoinhat/28095_gold.png', NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-06T13:42:58.280' AS DateTime), N'quang', CAST(N'2020-12-06T13:42:00.000' AS DateTime), NULL, 6, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (32, N'Đập hộp dàn Mainboard Z490 siêu khủng của ASUS - Phổ cập Thunderbolt 3 đến mọi nhà', N'Đập hộp 6 chiếc mainboard z490 Asus', N'dap-hop-6-chiec-mainboard-z490-asus', N'Để đón đầu sự ra mắt của dòng CPU thế hệ thứ 10 của intel thì mới đây ASUS cũng đã tung ra hàng loạt những dòng mainboard chipset Z490 của mình cùng hàng loạt các nâng cấp về cả hiệu năng lẫn tính năng...', N'<blockquote>&nbsp; &nbsp;&nbsp;Để đ&oacute;n đầu sự ra mắt của d&ograve;ng CPU thế hệ thứ 10 của intel th&igrave; mới đ&acirc;y ASUS cũng đ&atilde; tung ra h&agrave;ng loạt những d&ograve;ng mainboard chipset Z490 của m&igrave;nh c&ugrave;ng h&agrave;ng loạt c&aacute;c n&acirc;ng cấp về cả hiệu năng lẫn t&iacute;nh năng. V&agrave; nếu để đ&aacute;nh gi&aacute; chi tiết được những chiếc bo mạch chủ n&agrave;y, c&oacute; lẽ sẽ mỗi chiếc sẽ cần một b&agrave;i viết chi tiết tốn rất nhiều c&uacute; cuộn chuột của độc giả. N&ecirc;n trong b&agrave;i viết đập hộp mainboard ASUS n&agrave;y, ch&uacute;ng ta sẽ đi thật nhanh v&agrave;o những yếu tố ấn tượng nhất nh&eacute;.</blockquote>

<h1><strong>TUF-Gaming Z490 Plus</strong></h1>

<p><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/Dap hop main Z490 Asus/_TNC1838.jpg" style="float:none; width:100%" /></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;TUF Gaming vốn l&agrave; d&ograve;ng bo mạch chủ được ASUS tập trung v&agrave;o sự bền bỉ trong một tầm gi&aacute; phải chăng, nhưng kh&ocirc;ng v&igrave; thế m&agrave; <strong>TUF-Gaming Z490 Plus</strong> mang một vẻ ngo&agrave;i cục mịch, k&eacute;m thẩm mỹ. Ngay từ c&aacute;ch đ&oacute;ng hộp cho tới những hoa văn họa tiết tr&ecirc;n bao b&igrave; cũng được thiết kế rất cẩn thận v&agrave; chi tiết, mang lại một cảm gi&aacute;c rất &ldquo;high tech&rdquo; cho người d&ugrave;ng.</p>

<p>&nbsp;</p>

<p><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/Dap hop main Z490 Asus/_TNC1836.jpg" style="float:none; width:100%" /></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;TUF-Gaming Z490 Plus trang bị 12+2 phase cấp nguồn cho CPU, 6 lớp PCB c&ugrave;ng với bộ gi&aacute;p tản nhiệt VRM nh&ocirc;m đ&uacute;c nguy&ecirc;n khối, họa tiết phay xước v&ocirc; c&ugrave;ng d&agrave;y dặn, hứa hẹn sẽ bung được tất cả sức mạnh của d&ograve;ng <strong><a href="https://www.tncstore.vn/cpu-intel-core-i9-10900x-10cores-20threads.html" target="_blank">CPU Intel thế hệ 10</a></strong>. Đặc biệt, bo mạch của <strong>TUF-Gaming Z490 Plus</strong> c&ograve;n được thiết kế một lớp đồng 2oz (oz l&agrave; đơn vị t&iacute;nh trọng lượng, 2 ounces tương đương 56.7 grams), gi&uacute;p tản nhiệt tốt hơn cho v&ugrave;ng mạch VRM.</p>

<p>&nbsp;<img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/Dap hop main Z490 Asus/_TNC1831.jpg" style="float:none; width:100%" /></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>ASUS TUF-Gaming Z490 Plus</strong> được t&iacute;ch hợp c&ocirc;ng nghệ ASUS OptiMem II, với 4 khe DIMM hỗ trợ RAM DDR4 bus OC tới 4600 MHz+, cao hơn kh&aacute; nhiều so với bus 4266 MHz tr&ecirc;n thế hệ Z390 c&ugrave;ng phi&ecirc;n bản.</p>

<p>&nbsp;</p>

<p><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/Dap hop main Z490 Asus/_TNC1833.jpg" style="float:none; width:100%" /></p>

<p>&nbsp;</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>TUF-Gaming Z490 Plus</strong> cũng được trang bị ốp tản nhiệt cho khe SSD M.2 v&agrave; chipset.</p>

<p>&nbsp;</p>

<p><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/Dap hop main Z490 Asus/_TNC1840.jpg" style="float:none; width:100%" /></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;Cổng ăn chơi của <strong>TUF-Gaming Z490 Plus</strong> kh&aacute; đầy đủ khi trang bị cho ch&uacute;ng ta 6 cổng USB trong đ&oacute; c&oacute; 1 đầu Type C 3.2 gen 2 tốc độ l&ecirc;n tới 10Gbps. Nhưng đặc biệt nhất phải kể đến đ&oacute; l&agrave; TUF-Gaming Z490 Plus cũng hỗ trợ kết nối<strong> Intel Wi-Fi 6 AX201</strong> - 2 băng tần, c&oacute; băng th&ocirc;ng l&ecirc;n tới 2.4Gbps. Đ&acirc;y l&agrave; một t&iacute;nh năng cực k&igrave; hữu dụng với người d&ugrave;ng muốn c&oacute; một kh&ocirc;ng gian gọn g&agrave;ng kh&ocirc;ng c&oacute; qu&aacute; nhiều c&aacute;c loại d&acirc;y kết nối, v&agrave; đặc biệt l&agrave; tận hưởng được tốc độ &ldquo;b&agrave;n thờ&rdquo; của chuẩn Wi-Fi 6 AX201, c&ugrave;ng với đ&oacute; l&agrave; Bluetooth&reg; 5.1 xịn x&ograve; nhất hiện nay.</p>

<p>&nbsp;<img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/Dap hop main Z490 Asus/Annotation 2020-04-30 101109.jpg" style="width:100%" /></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;Thậm ch&iacute;, đ&acirc;y c&ograve;n l&agrave; <strong>mainboard c&oacute; Thunderbolt 3</strong> header, sẵn s&agrave;ng cung cấp kết nối băng th&ocirc;ng si&ecirc;u rộng l&ecirc;n tới 40Gbps, c&ugrave;ng khả năng cung cấp tới 100W điện phục vụ cho t&iacute;nh năng sạc c&aacute;c thiết bị kh&aacute;c v&iacute; dụ như iPad, Macbook&hellip;</p>

<p>&nbsp;</p>

<h1><strong><span style="font-size:24px">ROG STRIX Z490-A Gaming</span></strong></h1>

<p><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/Dap hop main Z490 Asus/_TNC1817.jpg" style="width:100%" /></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;Chỉ cần nhắc tới c&aacute;i t&ecirc;n <strong>ROG STRIX</strong> l&agrave; đ&atilde; đủ để mọi gamer nhận ra, đ&acirc;y l&agrave; mẫu sản phẩm d&agrave;nh cho game thủ đ&iacute;ch thực. Đ&acirc;y l&agrave; phi&ecirc;n bản <strong>ROG STRIX Z490-A Gaming m&agrave;u trắng</strong> v&ocirc; c&ugrave;ng độc đ&aacute;o.</p>

<p>&nbsp;</p>

<p><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/Dap hop main Z490 Asus/_TNC1819.jpg" style="width:100%" /></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;Tấm chắn v&agrave; c&aacute;c phần gi&aacute;p cũng được l&agrave;m theo t&ocirc;ng m&agrave;u trắng bạc đề ph&ugrave; hợp với tổng thể chiếc mainboard. D&ograve;ng chữ STRIX trang bị đ&egrave;n nền RGB ph&aacute;t s&aacute;ng 16.8 triệu m&agrave;u c&oacute; thể t&ugrave;y chỉnh được l&agrave; điểm nhấn rất ấn tượng của<strong> ROG STRIX Z490-A Gaming</strong>.</p>

<p>&nbsp;</p>

<p><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/Dap hop main Z490 Asus/_TNC1826.jpg" style="width:100%" /></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;Cổng kết nối kh&ocirc;ng c&oacute; qu&aacute; nhiều điểm kh&aacute;c biệt với <strong>TUF-Gaming Z490 Plus</strong> nhưng việc được gắn sẵn tấm chắn main cũng l&agrave; một điểm cộng của chiếc <strong>mainboard ROG STRIX Z490-A Gaming</strong>. Tuy nhi&ecirc;n, phi&ecirc;n bản <strong>Z490 Strix </strong>n&agrave;y lại thiếu đi kết nối <strong>Wi-Fi 6 AX201</strong>.</p>

<p>&nbsp;<img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/Dap hop main Z490 Asus/_TNC1824.jpg" style="width:100%" /></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;Cũng giống như những người anh em trong d&ograve;ng bo mạch chủ <strong>Z490 ROG Strix</strong>, chiếc mainboard n&agrave;y được trang bị d&agrave;n &ldquo;trạm điện&rdquo; kh&aacute; khủng với 14+2 phase nguồn, với 16 cuộn choke v&agrave; c&aacute;c tụ điện chịu tải cao, đạt tới 110% hiệu năng so với ti&ecirc;u chuẩn c&ocirc;ng nghiệp hiện tại. Kết hợp với c&aacute;c t&iacute;nh năng AI Overclocking v&agrave; AI Cooling ấn tượng, hứa hẹn đ&acirc;y sẽ l&agrave; chiếc mainboard &eacute;p xung dễ d&agrave;ng với d&ograve;ng CPU Intel 10th series.</p>

<p>&nbsp;</p>

<p><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/Dap hop main Z490 Asus/_TNC1827.jpg" style="width:100%" /></p>

<p>&nbsp;&nbsp;&nbsp;<strong>&nbsp;</strong><strong>ROG STRIX Z490-A Gaming</strong> được trang bị chip giải m&atilde; &acirc;m thanh ri&ecirc;ng mang lại cho người sử dụng trải nhiệm &acirc;m thanh chất lượng hơn.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<h1><span style="font-size:24px"><strong>ASUS PRIME Z490-A</strong></span></h1>

<p>&nbsp;</p>

<p>&nbsp;<img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/Dap hop main Z490 Asus/_TNC1856.jpg" style="width:100%" /></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>ASUS PRIME</strong> vốn l&agrave; d&ograve;ng sản phẩm phổ th&ocirc;ng c&oacute; mức gi&aacute; tối ưu, tuy nhi&ecirc;n ở phi&ecirc;n bản <strong>ASUS PRIME Z490-A</strong> đ&atilde; được n&acirc;ng cấp mạnh mẽ về thiết kế khi so với đời tiền nhiệm.</p>

<p>&nbsp;</p>

<p><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/Dap hop main Z490 Asus/_TNC1848.jpg" style="width:100%" /></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;Thay v&igrave; lối thiết kế đơn giản ở c&aacute;c thế hệ chipset trước đ&acirc;y, th&igrave; nay <strong>ASUS PRIME Z490-A</strong> sở hữu vẻ ngo&agrave;i với nhiều chi tiết &ldquo;cong mềm mại&rdquo;, nổi khối hơn, nhưng vẫn kh&ocirc;ng k&eacute;m phần &ldquo;futuristic&rdquo; &ndash; hơi hướng tương lai, Hi-Tech.</p>

<p>&nbsp;</p>

<p><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/Dap hop main Z490 Asus/_TNC1847.jpg" style="width:100%" /></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;Phần tản nhiệt VRM cũng được thiết kế d&agrave;y dặn hơn hẳn hứa hẹn hiệu năng tản nhiệt cho VRM sẽ hơn hẳn so với đời tiền nhiệm. Đặc biệt, d&ugrave; kh&ocirc;ng phải d&ograve;ng mainboard cao cấp, &ldquo;nặng v&iacute;&rdquo; như <strong>ROG</strong>, nhưng <strong>Prime Z490</strong> series vẫn được thiết kế PCB 6 lớp, trang bị 12+2 DrMOS power stages, với 8+4 pin nguồn CPU v&agrave; t&iacute;nh năng AI Overclocking ấn tượng!</p>

<p>&nbsp;</p>

<p><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/Dap hop main Z490 Asus/_TNC1849.jpg" style="width:100%" /></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;<strong>Asus Prime Z490-A</strong> mang tới khả năng hỗ trợ tới <strong>128GB</strong> dung lượng ram DDR4, với tốc độ l&ecirc;n tới 4600 MHz trong điều kiện OC.</p>

<p>&nbsp;</p>

<p><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/Dap hop main Z490 Asus/_TNC1846.jpg" style="width:100%" /></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;Tấm chắn main cũng đ&atilde; được gắn sẵn chứ kh&ocirc;ng để rời như c&aacute;c thế hệ trước nữa, thể hiện sự lắng nghe người d&ugrave;ng hơn từ ASUS. <strong>Prime Z490-A</strong> vẫn được trang bị c&aacute;c chuẩn kết nối đỉnh nhất hiện nay như USB 3.2 Gen 2 tốc độ cao cho cả cổng USB Type-A v&agrave; USB Type-C, t&iacute;ch hợp Thunderbolt 3 header trực tiếp tr&ecirc;n mainboard gi&uacute;p mở rộng khả năng kết nối l&ecirc;n tới 40Gbps băng th&ocirc;ng.</p>

<p>&nbsp;</p>

<h1><span style="font-size:24px"><strong>ROG MAXIMUS XII HERO</strong></span></h1>

<p><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/Dap hop main Z490 Asus/_TNC1883.jpg" style="width:100%" /></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;Đ&acirc;y c&oacute; thể coi l&agrave; một trong những d&ograve;ng sản phẩm thuộc ph&acirc;n kh&uacute;c cao cấp nhất của ASUS ROG rồi n&ecirc;n hiển nhi&ecirc;n từ c&aacute;ch đ&oacute;ng hộp, trang tr&iacute; ngoại thất của <strong>ROG MAXIMUS XII HERO</strong> l&agrave; v&ocirc; c&ugrave;ng đẹp v&agrave; ấn tượng. Phụ kiện đi k&egrave;m trong hộp cũng rất đầy đủ nếu kh&ocirc;ng muốn n&oacute;i l&agrave; &ldquo;bội thực&rdquo; với nhu cầu sử dụng b&igrave;nh thường của người d&ugrave;ng.</p>

<p>&nbsp;</p>

<p><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/Dap hop main Z490 Asus/_TNC1898.jpg" style="width:100%" /></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;Điểm nhấn của chiếc main <strong>Asus ROG MAXIMUS XII HERO Wi-Fi </strong>n&agrave;y ch&iacute;nh l&agrave; d&agrave;n phase cấp điện 14+2 hầm hố, sử dụng kiến tr&uacute;c tầng c&ocirc;ng suất song song, c&ugrave;ng gi&aacute;p tản v&ocirc; c&ugrave;ng đồ sộ, mang đến khả năng &eacute;p xung rất tuyệt vời tr&ecirc;n những CPU c&oacute; TDP cao.</p>

<p>&nbsp;</p>

<p><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/Dap hop main Z490 Asus/_TNC1887.jpg" style="width:100%" /></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;Khả năng kết nối mở rộng cũng thuộc h&agrave;ng đầu l&agrave;ng bo mạch chủ với 3 khe PCIe 3.0 X16 v&agrave; 3 khe PCIe 3.0 X1, t&iacute;ch hợp sẵn cổng HDMI 1.4b băng th&ocirc;ng cao cho m&agrave;n h&igrave;nh c&oacute; độ ph&acirc;n giải 4K c&ugrave;ng tần số qu&eacute;t cao. K&egrave;m theo đ&oacute; l&agrave; kh&ocirc;ng thể thiếu <strong>Thunderbolt 3 header</strong> gi&uacute;p mở rộng kết nối băng th&ocirc;ng tới 40Gbps c&ugrave;ng khả năng sạc thiết bị c&oacute; d&ograve;ng sạc lớn.</p>

<p>&nbsp;</p>

<p><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/Dap hop main Z490 Asus/_TNC1896.jpg" style="width:100%" /></p>

<p><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/Dap hop main Z490 Asus/_TNC1878.jpg" style="width:100%" /></p>

<p>&nbsp;</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;V&agrave; để support tối đa cho c&aacute;c vọc thủ th&igrave; ngay tr&ecirc;n main được trang bị lu&ocirc;n c&aacute;c n&uacute;t Start,&nbsp; Restart n&oacute;ng v&agrave; bảng led Q code để hiển thị trạng th&aacute;i, b&aacute;o lỗi hệ thống. Chiếc mainboard n&agrave;y cũng hỗ trợ 4 DIMM slot cho ram DDR4 với xung nhịp bus l&ecirc;n tới 4700 Mhz+.</p>

<p>&nbsp;</p>

<p><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/Dap hop main Z490 Asus/_TNC1887.jpg" style="width:100%" /></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;Đ&acirc;u đ&acirc;u tr&ecirc;n <strong>ROG MAXIMUS XII HERO</strong> hầu như cũng đều được bọc gi&aacute;p tản, từ VRM cho tới chip cầu nam, khe M.2 hay l&agrave; cả khe PCIe cũng đều được &ldquo;l&ecirc;n đồ&rdquo; đầy đủ. Logo ROG ngay tr&ecirc;n lớp gi&aacute;p tản c&oacute; thể ph&aacute;t s&aacute;ng RGB Aura Sync gi&uacute;p tổng thể chiếc <strong>ROG MAXIMUS XII HERO</strong> lung linh hơn nữa.</p>

<p>&nbsp;</p>

<p><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/Dap hop main Z490 Asus/_TNC1890.jpg" style="width:100%" /></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;Cổng kết nối tr&ecirc;n <strong>ROG MAXIMUS XII HERO</strong> phải gọi l&agrave; tr&ecirc;n cả sự đầy đủ khi n&oacute; được trang bị tận 10 cổng usb trong đ&oacute; c&oacute; 4 cổng 3.2 gen 2 tốc độ cao, 1 cổng 2.0 chuy&ecirc;n dụng để update bios. Kh&ocirc;ng thể thiếu c&ocirc;ng nghệ Dual LAN trong đ&oacute; c&oacute; một cổng tốc độ cao 5Gb. Kh&ocirc;ng những thế <strong>ROG MAXIMUS XII HERO</strong> c&ograve;n được t&iacute;ch hợp sẵn C&ocirc;ng nghệ <strong>Wi-Fi 6 AX201</strong> mới nhất với tốc độ v&agrave; sự ổn định rất cao, c&ugrave;ng với đ&oacute; l&agrave; Bluetooth&reg; 5.1 xịn x&ograve; nhất hiện nay.</p>

<p>&nbsp;</p>

<h1><span style="font-size:24px"><strong>ROG MAXIMUS XII FORMULA</strong></span></h1>

<p><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/Dap hop main Z490 Asus/_TNC1798.jpg" style="width:100%" /></p>

<p>&nbsp; &nbsp;&nbsp;Nếu <strong>ROG MAXIMUS XII HERO</strong> d&agrave;nh cho những &ldquo;d&acirc;n chơi&rdquo; th&iacute;ch nghịch ngợm &eacute;p xung thoải m&aacute;i th&igrave; <strong>ROG MAXIMUS XII FORMULA</strong> lại l&agrave; d&agrave;nh cho những người hardcore hơn nữa khi kh&ocirc;ng chỉ c&oacute; d&agrave;n phase nguồn 16+0 si&ecirc;u khủng v&agrave; gi&aacute;p tản <strong>VRM Crosschill EK III</strong> xịn x&ograve; m&agrave; <strong>ROG MAXIMUS XII FORMULA</strong> c&ograve;n hỗ trợ sẵn block nước b&ecirc;n trong để vọc thủ c&oacute; thể đi tản nước cho VRM. Điều n&agrave;y sẽ l&agrave;m cho hiểu quả tản nhiệt của d&agrave;n VRM cao hơn bao giờ hết.</p>

<p>&nbsp;</p>

<p><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/Dap hop main Z490 Asus/_TNC1799.jpg" style="float:none; width:100%" /></p>

<p>&nbsp; &nbsp; <strong>ROG&nbsp;</strong><strong>MAXIMUS XII FORMULA</strong> được trang bị lu&ocirc;n backplate để gia tăng sự chắc chắn cũng như l&agrave; thẩm mỹ của mainboard.</p>

<p>&nbsp;</p>

<p><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/Dap hop main Z490 Asus/_TNC1800.jpg" style="width:100%" /></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;Khu vực ổng I/O th&igrave; kh&ocirc;ng c&oacute; nhiều điều để n&oacute;i khi vẫn l&agrave; <strong>Dual LAN</strong> như tr&ecirc;n HERO, chỉ l&agrave; n&acirc;ng cấp &ldquo;nhẹ&rdquo; ở cổng Lan 10Gb thay v&igrave; 5Gb như tr&ecirc;n người anh em của m&igrave;nh. Điểm n&acirc;ng cấp đ&aacute;ng kể nhất c&oacute; lẽ ch&iacute;nh l&agrave; số lượng kết nối USB cho thiết bị ngoại vi. Ch&uacute;ng ta sẽ ho&agrave;n to&agrave;n kh&ocirc;ng thấy sự xuất hiện của chuẩn USB 2.0 cũ nữa, tất cả đ&atilde; được n&acirc;ng cấp l&ecirc;n 6 cổng USB 3.2 gen 1 tốc độ 5Gbps m&agrave;u xanh dương, kế đ&oacute; l&agrave; USB 3.2 Gen 2 c&oacute; tốc độ l&ecirc;n tới 10Gbps với 4 cổng USB Type-A m&agrave;u đỏ v&agrave; 1 cổng USB Type-C. Dĩ nhi&ecirc;n l&agrave; c&oacute; cả kết nối <strong>Wi-Fi 6 AX201</strong> thời thượng nhất c&ugrave;ng Bluetooth&reg; 5.1.</p>

<p>&nbsp;</p>

<p><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/Dap hop main Z490 Asus/_TNC1813.jpg" style="width:100%" /></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;Gi&aacute;p tản gần như che phủ to&agrave;n bộ bề mặt. T&ocirc; điểm th&ecirc;m l&agrave; Logo ROG ph&aacute;t s&aacute;ng RGB Aura Sync cũng như những dải led chạy ch&eacute;o từ logo tới phần cổng IO. C&oacute; thể dễ d&agrave;ng nhận thấy, Asus đ&atilde; lược bớt đi số lượng khe PCIe 3.0 x1 xuống chỉ c&ograve;n 1 khe so vo với HERO, nhưng vẫn c&ograve;n đ&oacute; 3 khe PCIe 3.0 x16 đầy đủ cho c&aacute;c d&acirc;n chơi muốn cắm nhiều card đồ họa c&ugrave;ng l&uacute;c. V&agrave; dĩ nhi&ecirc;n, dưới c&ugrave;ng vẫn c&oacute; sự hiện diện của Thunderbolt 3 header mở rộng kết nối khủng nhất hiện nay.</p>

<p>&nbsp;</p>

<h1><span style="font-size:24px"><strong>ROG MAXIMUS XII EXTREME</strong></span></h1>

<p><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/Dap hop main Z490 Asus/_TNC1860.jpg" style="width:100%" /></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;C&oacute; thể n&oacute;i rằng <strong>ROG MAXIMUS XII Extreme</strong> l&agrave; tr&ugrave;m cuối trong những người anh em <strong>MAXIMUS XII</strong> của m&igrave;nh, khi được n&acirc;ng cấp về gần như mọi mặt. Gi&aacute;p tản ở khắp mọi nơi xung quanh VRM cũng như phần chip cầu nam, khe M.2 v&agrave; PCIe.</p>

<p>&nbsp;</p>

<p><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/Dap hop main Z490 Asus/_TNC1881.jpg" style="width:100%" /></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;Xịn x&ograve; hơn l&agrave; <strong>ROG MAXIMUS XII Extreme</strong> c&ograve;n c&oacute; cả backplate v&ocirc; c&ugrave;ng chắc chắn v&agrave; hầm hố nữa. Nh&igrave;n chung l&agrave; nếu c&oacute; lật một v&ograve;ng chiếc <strong>ROG MAXIMUS XII Extreme</strong> th&igrave; c&aacute;c bạn chắc chắn sẽ nghĩ ngay đến những si&ecirc;u Gundam mạnh mẽ, gi&aacute;p trụ k&iacute;n m&iacute;t từ đầu đến ch&acirc;n, kh&ocirc;ng c&oacute; điểm chết.</p>

<p>&nbsp;</p>

<p><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/Dap hop main Z490 Asus/_TNC1872.jpg" style="width:100%" /></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;Đ&uacute;ng l&agrave; d&ograve;ng cao cấp th&igrave; c&aacute;c h&atilde;ng lu&ocirc;n nh&eacute;t tất cả mọi thứ xịn nhất c&oacute; thể v&agrave;o v&agrave; <strong>ASUS</strong> cũng vậy. Như c&aacute;c ban thấy trong h&igrave;nh, c&oacute; tới 12 cổng USB cho c&aacute;c bạn sử dụng trực tiếp, với điểm nhấn lớn nhất ch&iacute;nh l&agrave; 1 cổng Type-C giao thức USB 3.2 gen2x2 mới nhất cho tốc độ đạt tới 20Gbs, v&agrave; th&ecirc;m khả năng mở rộng tới 10 cổng USB ra front panel nữa bằng c&aacute;c header tr&ecirc;n mainboard. Trong đ&oacute; phải kể đến khả năng mở rộng th&ecirc;m 2 cổng USB Type-C 3.2. Dual LAN với một cổng lan <strong>Marvel&reg; Aqtion AQC107 10Gb</strong> v&agrave; một cổng Intel I225-V 2.5Gb cũng l&agrave; một điểm nhấn kh&aacute;c. Đặc biệt, c&aacute;c ng&otilde; 3.5mm kết nối thiết bị &acirc;m thanh được mạ v&agrave;ng để tăng chất lượng t&iacute;n hiệu v&agrave; được ph&acirc;n biệt bằng c&aacute;c đ&egrave;n LED m&agrave;u sắc tương ứng ph&aacute;t s&aacute;ng rực rỡ từ b&ecirc;n trong, thay v&igrave; l&agrave; viền nhựa m&agrave;u tr&ecirc;n c&aacute;c mainboard th&ocirc;ng thường kh&aacute;c.</p>

<p>&nbsp;</p>

<p><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/Dap hop main Z490 Asus/_TNC1867.jpg" style="width:100%" /></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;V&agrave; dĩ nhi&ecirc;n, đ&atilde; l&agrave; tr&ugrave;m cuối th&igrave; khả năng &ldquo;bơm điện&rdquo; của <strong>ASUS ROG MAXIMUS XII Extreme</strong> cũng thuộc h&agrave;ng khủng long bạo ch&uacute;a với 16+0 phase nguồn, d&agrave;n tụ v&agrave; cuộn choke nh&igrave;n &ldquo;ch&aacute;n chẳng muốn đếm&rdquo; nữa. Với bo mạch PCB 8 lớp, 4 khe DIMM cho RAM DDR4 với bus OC l&ecirc;n tới 4700 MHz+. Dĩ nhi&ecirc;n, tr&ugrave;m cuối cũng phải được t&iacute;ch hợp Wi-Fi 6 AX201 c&ugrave;ng Bluetooth&reg; 5.1 sang chảnh, 8 cổng Sata, 4 khe M.2, trong đ&oacute; 2 khe 22110 v&agrave; 2 khe 2280, tất cả đều hỗ trợ SSD chuẩn NVMe nhanh t&oacute;e kh&oacute;i.</p>

<p>&nbsp;</p>

<p><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/Dap hop main Z490 Asus/_TNC1866.jpg" style="width:100%" /></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;Cũng giống như người anh em <strong>FOMULAR</strong> của m&igrave;nh, <strong>MAXIMUS XII EXTREME </strong>cũng được trang bị m&agrave;n h&igrave;nh OLED để hiển thị rất nhiều th&ocirc;ng tin hệ thống hữu &iacute;ch trong qu&aacute; tr&igrave;nh vận h&agrave;nh.</p>

<p>&nbsp; &nbsp;&nbsp;Để kết th&uacute;c b&agrave;i đập hộp d&agrave;n mainboard Z490 cực ấn tượng từ ASUS n&agrave;y, xin mời c&aacute;c bạn&atilde;y chi&ecirc;m ngưỡng th&ecirc;m một v&agrave;i h&igrave;nh ảnh của &ldquo;tr&ugrave;m cuối&rdquo; nh&eacute;.</p>

<p><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/Dap hop main Z490 Asus/_TNC1876.jpg" style="width:100%" /></p>

<p><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/Dap hop main Z490 Asus/_TNC1877.jpg" style="float:none; width:100%" /></p>

<p><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/Dap hop main Z490 Asus/_TNC1880.jpg" style="width:100%" /></p>

<p><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/Dap hop main Z490 Asus/_TNC1875.jpg" style="width:100%" /></p>

<p>&nbsp;</p>

<p style="text-align:right"><em>\Trần Vĩ</em></p>

<p style="text-align:right"><em>\Ảnh: Nguyễn T&acirc;n</em></p>

<p>&nbsp;</p>

<p><em>Keywords: chip intel thế hệ 10, chipset Z490, mainboard asus, main asus Z490, đập hộp mainboard Asus Z490, đập hộp main Asus Z490, TUF Gaming, đập hộp mainboard ASUS, TUF-Gaming Z490 Plus, CPU Intel thế hệ 10, ASUS TUF-Gaming Z490 Plus, Intel Wi-Fi 6 AX201, mainboard c&oacute; Thunderbolt 3, ASUS ROG STRIX Z490-A Gaming, ROG STRIX, ROG STRIX Z490-A Gaming m&agrave;u trắng, mainboard ROG STRIX Z490-A Gaming, Z490 Strix, Z490 ROG Strix, ASUS PRIME Z490-A, Prime Z490, Prime Z490-A, ROG MAXIMUS XII HERO, Asus ROG MAXIMUS XII HERO Wi-Fi , main Asus ROG MAXIMUS XII,&nbsp; Thunderbolt 3 header, ROG MAXIMUS XII FORMULA, Wi-Fi 6 AX201, ROG MAXIMUS XII EXTREME, main asus Z490, mainboard Z490 Asus, Marvel Aqtion AQC107 10Gb</em></p>

<p>&nbsp;</p>
', N'/Data/images/newses/tintucmoinhat/_TNC1876.jpg', NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-06T13:43:12.020' AS DateTime), N'quang', CAST(N'2020-12-06T13:43:00.000' AS DateTime), NULL, 6, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (33, N'Lịch Sử Các Chuẩn Kết Nối Màn Hình Trên PC | PC101', N'Lịch Sử Các Chuẩn Kết Nối Màn Hình Trên PC', N'lich-su-cac-chuan-ket-noi-man-hinh-tren-pc', N'Hiện này có lẽ khi nghe tới HDMI , VGA , hay Displayport thì có lẽ chẳng còn lạ lẫm với nó nữa rồi nhỉ ? Chúng là loại cổng phải có để có thể kết nối PC chơi game hay laptop gaming tới màn hình hay các thiết bị ngoại vi. Vậy mọi người đã bao giờ tự đặt câu hỏi nó là gì ? Và những người đàn anh đi trước các chuẩn này là gì chưa ? Cùng nhau tìm hiểu trong bài viết này nhé', N'<div class="post_content">
<blockquote><span style="font-size:14px">Hiện n&agrave;y c&oacute; lẽ khi nghe tới<strong> HDMI </strong>, <strong>VGA</strong> , hay <strong>Displayport</strong> th&igrave; c&oacute; lẽ chẳng c&ograve;n lạ lẫm với n&oacute; nữa rồi nhỉ ? Ch&uacute;ng l&agrave; loại cổng phải c&oacute; để c&oacute; thể kết nối <strong><a href="https://www.tncstore.vn/gaming-pc.html" target="_blank">PC chơi game</a></strong> hay <strong><a href="https://www.tncstore.vn/lap-top/gaming-laptop.html" target="_blank">laptop gaming</a></strong> tới <strong><a href="https://www.tncstore.vn/linh-kien-pc/monitor.html" target="_blank">m&agrave;n h&igrave;nh</a></strong> hay c&aacute;c thiết bị ngoại vi. Vậy mọi người đ&atilde; bao giờ tự đặt c&acirc;u hỏi n&oacute; l&agrave; g&igrave; ? V&agrave; những người đ&agrave;n anh đi trước c&aacute;c chuẩn n&agrave;y l&agrave; g&igrave; chưa ? C&ugrave;ng nhau t&igrave;m hiểu trong b&agrave;i viết n&agrave;y nh&eacute;</span></blockquote>

<p>&nbsp;</p>

<p><span style="font-size:36px">﻿RCA</span></p>

<p>&nbsp;</p>

<p><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/Cong ket noi man hinh/tim-hieu-rca-la-gi (1).jpg" style="width:100%" /></p>

<p>&nbsp;</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size:14px">Đầu ti&ecirc;n ch&uacute;ng ta c&oacute; loại kết nổi cổ xưa nhất <strong>RCA</strong> đ&atilde; xuất hiện từ những năm 1940. D&acirc;y <strong>RCA</strong> với ba đầu Trắng,Đỏ,V&agrave;ng c&oacute; lẽ sẽ l&agrave; thứ m&agrave; rất nhiều bạn thế hệ từ đầu 2k đổ về trước sẽ cảm thấy v&ocirc; c&ugrave;ng th&acirc;n thương quen thuộc do n&oacute; xuất hiện tr&ecirc;n hầu hết tất cả những thiết bị như đầu chảo , đầu đĩa ,TV, loa đ&agrave;i ng&agrave;y xưa thậm ch&iacute; l&agrave; cả những chiếc m&aacute;y t&iacute;nh xuất hiện sớm ở VN nữa. Ch&uacute;ng ta quen gọi n&oacute; l&agrave; <strong>RCA </strong>nhưng thực chất chữ n&agrave;y l&agrave; để chỉ kết nối kim loại nằm ở hai đầu c&aacute;p mới ch&iacute;nh x&aacute;c. Được đặt t&ecirc;n theo Radio Corporation of America, tổ chức đ&atilde; l&agrave;m cho kết nối n&agrave;y trở n&ecirc;n phổ biến. Về cấu tạo của c&aacute;p <strong>RCA</strong> rất đơn giản b&ecirc;n trong ra d&acirc;y đồng hoặc kim loại kh&aacute;c b&ecirc;n ngo&agrave;i bọc nhựa hoặc chất c&aacute;ch điện. 1 đầu sẽ phụ tr&aacute;ch truyền h&igrave;nh ảnh thường sẽ l&agrave; m&agrave;u v&agrave;ng , h&agrave;i đầu c&ograve;n lại sẽ l&agrave; &acirc;m thanh. C&aacute;p <strong>RCA</strong> c&oacute; thể truyền h&igrave;nh ảnh v&agrave; &acirc;m thanh chất lượng tối đa l&agrave; 480i hoặc 576i tức 720x480 hoặc 576x720. Loại c&aacute;p n&agrave;y giờ chắc c&ograve;n kh&aacute; &iacute;t loại thiết bị sử dụng v&igrave; hạn chế về chất lượng cũng như t&iacute;nh năng mở rộng, c&ograve;n tr&ecirc;n m&aacute;y t&iacute;nh th&igrave; tuyệt ch&uacute;ng thật sự rồi.</span></p>

<p>&nbsp;</p>

<p><span style="font-size:36px">﻿VGA</span></p>

<p>&nbsp;</p>

<p><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/Cong ket noi man hinh/71KzKmyXwrL._AC_SL1500_.jpg" style="width:100%" /></p>

<p>&nbsp;</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size:14px"><strong>VGA</strong> hay Video Graphics Array, đ&acirc;y l&agrave; một trong những chuẩn xuất h&igrave;nh ảnh cổ xưa nhất m&agrave; bạn c&ograve;n c&oacute; thể t&igrave;m thấy được tr&ecirc;n kh&aacute; nhiều thiết bị hiện nay. Được ph&aacute;t triển v&agrave; ra mắt năm 1987 bởi IBM chỉ c&oacute; thể truyền được h&igrave;nh ảnh. <strong>VGA </strong>chủ yếu được sử dụng để kết nối<strong><a href="https://www.tncstore.vn/gaming-pc.html" target="_blank"> PC</a> ,<a href="https://www.tncstore.vn/lap-top/gaming-laptop.html"> Laptop</a></strong> với <strong><a href="https://www.tncstore.vn/linh-kien-pc/monitor.html" target="_blank">m&agrave;n h&igrave;nh</a></strong> v&agrave; một số thiết bị ngoại vi như m&aacute;y chiếu,.... Ng&agrave;y nay mọi người vẫn sẽ thấy <strong>VGA </strong>xuất hiện tr&ecirc;n c&aacute;c mẫu m&agrave;n h&igrave;nh m&aacute;y t&iacute;nh chơi game v&agrave; c&aacute;c loại m&aacute;y chiếu hay l&agrave; cả những chiếc <strong>card m&agrave;n h&igrave;nh</strong> phổ th&ocirc;ng. Nhưng gần đ&acirc;y <strong>VGA </strong>đang dần dần mất đi sự phổ biến của của m&igrave;nh với nhiều l&yacute; do. Đầu ti&ecirc;n , độ ph&acirc;n giải tối đa m&agrave; <strong>VGA </strong>support l&agrave; FullHD v&agrave; 60Hz, trong khi bay giờ những m&agrave;n h&igrave;nh chơi game tần số qu&eacute;t cao c&ugrave;ng độ ph&acirc;n giải lớn c&agrave;ng ng&agrave;y c&agrave;ng nhiều th&igrave; VGA với những hạn chế về c&ocirc;ng nghệ như tr&ecirc;n kh&ocirc;ng đ&aacute;p ứng được l&agrave; chuyện dễ hiểu. Thứ hai l&agrave; do đ&atilde; c&oacute; những chuẩn xuất h&igrave;nh ảnh mới hơn tối ưu hơn <strong>VGA,</strong> những thiết bị hiện nay kh&ocirc;ng c&ograve;n phải phụ thuộc qu&aacute; nhiều v&agrave;o một loại kết nối nữa. V&agrave; cuối c&ugrave;ng l&agrave; những thiết bị di động đang ng&agrave;y c&agrave;ng mỏng nhẹ hơn kh&ocirc;ng thể t&iacute;ch hợp một cổng <strong>VGA </strong>to đ&ugrave;ng cục mịch như vậy được. N&oacute;i chung <strong>VGA </strong>đ&atilde; lỗi thời rồi, kh&ocirc;ng c&ograve;n qu&aacute; ph&ugrave; hợp với thời đại nữa.&nbsp;</span></p>

<p>&nbsp;</p>

<p><span style="font-size:36px">﻿DVI</span></p>

<p>&nbsp;</p>

<p><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/Cong ket noi man hinh/61bxcNPQn7L._AC_SL1500_.jpg" style="width:100%" /></p>

<p>&nbsp;</p>

<p><span style="font-size:14px">Năm 1999, c&oacute; một nh&oacute;m Digital Display Working Group đưa ra cổng <strong>DVI-Digital Visual Interface</strong>. Cổng n&agrave;y c&oacute; thể truyền t&iacute;n hiệu h&igrave;nh ảnh số kh&ocirc;ng n&eacute;n. C&aacute;c bạn lưu &yacute; l&agrave; t&iacute;n hiệu Kĩ thuật số chứ kh&ocirc;ng phải dạng t&iacute;n hiệu tương tự như c&aacute;ch hoạt động của <strong>RCA</strong> v&agrave; <strong>VGA</strong>. Cho nhiều người chưa biết th&igrave; t&iacute;n hiệu Kĩ thuật số l&agrave; t&iacute;n hiệu ở dạng được m&atilde; h&oacute;a 010101 c&ograve;n t&iacute;n hiệu tương tự được biểu diễn ở dạng s&oacute;ng h&igrave;nh sin. T&iacute;n hiệu kĩ thuật số c&oacute; ưu thế tuyệt đối khi so với t&iacute;n hiệu tương tự khi n&oacute; kh&ocirc;ng bị ảnh hưởng v&agrave; suy giảm t&iacute;n hiệu khi đối mặt với c&aacute;c t&aacute;c nh&acirc;n g&acirc;y nhiễu như m&ocirc;i trường ,điện &aacute;p ,..... . Quay lại với <strong>DVI</strong> ch&uacute;ng ta c&oacute; tới 3 chế độ hoạt động:&nbsp;</span></p>

<p><span style="font-size:14px"><strong>DVI-I</strong> : Kết hợp cả số lẫn tương tự trong c&ugrave;ng một cổng kết nối</span></p>

<p><span style="font-size:14px"><strong>DVI-D</strong>: chỉ hỗ trợ t&iacute;n hiệu số</span></p>

<p><span style="font-size:14px"><strong>DVI-A</strong>: chỉ hỗ trợ t&iacute;n hiệu tương tự</span></p>

<p><span style="font-size:14px">L&yacute; do m&agrave; <strong>DVI </strong>ph&acirc;n ra v&agrave; hộ trợ cả số cả tương tự l&agrave; v&igrave; thời điểm được ra mắt vẫn c&ograve;n kh&aacute; sơ khai, nhiều <strong><a href="https://www.tncstore.vn/gaming-pc.html" target="_blank">m&aacute;y t&iacute;nh chơi game</a></strong>vẫn chưa card đồ họa c&oacute; thể xuất t&iacute;n hiệu số ho&agrave;n to&agrave;n c&ograve;n ng&agrave;y nay c&aacute;c <strong>GPU</strong> từ thấp cho đến cao đều c&oacute; thể chơi được hết. Ri&ecirc;ng <strong>DVI-D</strong> v&agrave; <strong>DVI-I</strong> c&ograve;n chia ra th&agrave;nh 2 biến thể: single v&agrave; dual link. D&acirc;y single c&oacute; thể support tối đa 1920x1200 ở 60hz, c&ograve;n bản dual th&igrave; support tối đa l&ecirc;n tới 2560x1600 ở 60hz. DVI được sử dụng trong c&aacute;c <strong><a href="https://www.tncstore.vn/gaming-pc.html" target="_blank">m&aacute;y t&iacute;nh</a></strong> trong khoảng năm 2000 đến 2008 nhưng kh&ocirc;ng nhiều lắm. Apple l&agrave; một trong số những c&ocirc;ng ty c&oacute; đưa <strong>DVI</strong> l&ecirc;n <strong><a href="https://www.tncstore.vn/lap-top/gaming-laptop.html" target="_blank">laptop</a></strong> (thực chất d&ugrave;ng cổng <strong>mini DVI</strong> với k&iacute;ch thước gọn hơn), c&ograve;n c&aacute;c nh&agrave; sản xuất <strong><a href="https://www.tncstore.vn/gaming-pc.html" target="_blank">m&aacute;y t&iacute;nh chơi game</a></strong> sử dụng Windows chủ yếu theo đuổi <strong>VGA</strong> hoặc <strong>S-VGA</strong> (cổng tr&ograve;n nhỏ). L&uacute;c đ&oacute;, để nối laptop <strong>DVI </strong>với <strong><a href="https://www.tncstore.vn/linh-kien-pc/monitor.html" target="_blank">m&agrave;n h&igrave;nh</a></strong> hay m&aacute;y chiếu <strong>VGA </strong>bắt buộc bạn phải d&ugrave;ng th&ecirc;m adapter. Hạn chế của <strong>DVI</strong> l&agrave; n&oacute; vẫn rất to, d&agrave;i n&ecirc;n kh&ocirc;ng thể t&iacute;ch hợp v&agrave;o những<strong><a href="https://www.tncstore.vn/lap-top/gaming-laptop.html" target="_blank">laptop</a></strong>ng&agrave;y c&agrave;ng mỏng v&agrave; nhẹ đi. N&oacute; cũng kh&ocirc;ng phổ biến theo c&aacute;ch m&agrave; <strong>VGA</strong> hay<strong> HDM</strong>I b&ugrave;ng nổ n&ecirc;n bạn sẽ kh&ocirc;ng bắt gặp nhiều thiết bị sử dụng chuẩn n&agrave;y. Giờ đ&acirc;y rất hiếm thiết bị c&ograve;n x&agrave;i <strong>DVI</strong>, nếu c&oacute; th&igrave; chủ yếu l&agrave; card đồ họa cho m&aacute;y t&iacute;nh để b&agrave;n m&agrave; th&ocirc;i. Apple cũng đ&atilde; bỏ <strong>mini DVI</strong> từ năm 2008.</span></p>

<p>&nbsp;</p>

<p><span style="font-size:36px">﻿HDMI</span></p>

<p>&nbsp;</p>

<p><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/Cong ket noi man hinh/chon-cap-hdmi-cho-tivi-nhu-the-nao-2.jpg" style="width:100%" /></p>

<p>&nbsp;</p>

<p><span style="font-size:14px"><strong>HDMI</strong> viết tắt của High Definition Media Input, đ&acirc;y l&agrave; loại cổng kết nối phổ biến bậc nhất thời điểm hiện tại. <strong>HDMI </strong>c&oacute; thể truyền t&iacute;n hiệu video kh&ocirc;ng n&eacute;n v&agrave; audio (kh&ocirc;ng n&eacute;n hoặc n&eacute;n 8 k&ecirc;nh), v&agrave; đương nhi&ecirc;n l&agrave; chuyển sang d&ugrave;ng t&iacute;n hiệu số nhằm đảm bảo chất lượng h&igrave;nh ảnh cao nhất c&oacute; thể. Kh&ocirc;ng cần phải n&oacute;i nhiều, <strong>HDMI </strong>hiện đang l&agrave; cổng xuất h&igrave;nh ảnh phổ biến nhất v&igrave; n&oacute; kh&ocirc;ng chỉ xuất hiện tr&ecirc;n<strong><a href="https://www.tncstore.vn/lap-top/gaming-laptop.html" target="_blank">laptop chơi game</a></strong>, desktop, đầu đĩa DVD, Blu-ray v&agrave; nhiều n h&igrave;nh, TV m&agrave; c&ograve;n cho cả c&aacute;c m&aacute;y chiếu, đầu thu kĩ thuật sm&oacute;n đồ chơi c&ocirc;ng nghệ kh&aacute;c. <strong>HDMI</strong> c&oacute; c&aacute;c biến thể với k&iacute;ch thước nhỏ hơn l&agrave; <strong>mini HDMI</strong> v&agrave; <strong>micro HDMI</strong>, chủ yếu d&ugrave;ng trong điện thoại hoặc c&aacute;c <strong><a href="https://www.tncstore.vn/gaming-pc.html" target="_blank">m&aacute;y t&iacute;nh</a></strong>mỏng nhẹ với t&iacute;nh năng kh&ocirc;ng kh&aacute;c biệt mấy so với chuẩn<strong> HDMI</strong> full-size.</span></p>

<p><span style="font-size:14px">C&aacute;c phi&ecirc;n bản của <strong>HDMI</strong> th&igrave; cũng c&oacute; kh&aacute; nhiều nhưng c&oacute; lẽ độ phổ biến hiện tại th&igrave; <strong>HDMI 1.4</strong> trở l&ecirc;n sẽ nhiều hơn n&ecirc;n mọi người c&oacute; thể nh&igrave;n bảng sau để r&otilde; hơn nh&eacute;</span></p>

<p>&nbsp;</p>

<p><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/Cong ket noi man hinh/hdmi-versions.jpg" style="width:100%" /></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><span style="font-size:14px">V&agrave; mới đ&acirc;y nhất v&agrave;o th&aacute;ng 8 năm 2018 <strong>HDMI 2.1</strong> đ&atilde; ra đời với nhiều cải tiến đ&aacute;ng gi&aacute; như n&acirc;ng băng th&ocirc;ng từ 18gbs l&ecirc;n 48gbs. Hỗ trợ độ ph&acirc;n giải 10K tần số qu&eacute;t 120hz, một con số kinh khủng.</span></p>

<p>&nbsp;</p>

<p><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/Cong ket noi man hinh/hdmi-2-1-la-gi-co-gi-khac-voi-hdmi-thuong-tat-ca-nhung-gi-ban-can-biet-ve-hdmi-2-1.jpg" style="width:100%" /></p>

<p>&nbsp;</p>

<p><span style="font-size:14px">C&aacute;i m&igrave;nh th&iacute;ch ở <strong>HDMI</strong> đ&oacute; l&agrave; n&oacute; rất đơn giản, chỉ 1 sợi c&aacute;p nối giữa m&aacute;y t&iacute;nh với m&agrave;n h&igrave;nh l&agrave; đủ để truyền cả &acirc;m thanh lẫn h&igrave;nh ảnh.Do thiết kế của m&igrave;nh n&ecirc;n cổng <strong>HDMI </strong>cũng rất chắn chắn v&agrave; bền bỉ, kh&ocirc;ng dễ bị tổn thương ngay cả khi r&uacute;t ra cắm v&agrave;o nhiều lần, cũng kh&ocirc;ng dễ bị lỏng l&agrave;m ảnh hưởng đến t&iacute;n hiệu. Hơn nữa <strong>HDMI</strong> cũng c&oacute; t&iacute;nh năng CEC (Consumer Electronics Control) , gi&uacute;p cho việc điều khiển c&aacute;c thiết bị d&ugrave;ng <strong>HDMI</strong> đơn giản hơn nhiều , v&iacute; dụ như bạn c&oacute; một đầu thu v&agrave; d&ugrave;ng <strong>HDMI </strong>để kết nối với TV bạn chỉ cần dơ c&aacute;i điều khiển đầu thu thẳng v&agrave;o TV v&agrave; vẫn sẽ điều khiển được đầu thu, như thế sẽ rất tiện để mọi người c&oacute; thể giấu đầu thu đi l&agrave;m cho căn ph&ograve;ng bớt d&acirc;y dợ v&agrave; đồ đạc gọn g&agrave;ng hơn.</span></p>

<p><span style="font-size:14px">Thứ m&igrave;nh kh&ocirc;ng th&iacute;ch l&agrave; n&oacute; vẫn c&ograve;n hơi lớn so với những chiếc Ultrabook hiện tại, đ&acirc;y cũng l&agrave; l&yacute; do nhiều nh&agrave; sản xuất phải d&ugrave;ng mini <strong>HDMI </strong>nhưng b&ugrave; lại bạn phải đem theo adapter&nbsp; b&ecirc;n m&igrave;nh. Cổng <strong>HDMI </strong>cũng c&oacute; một nhược điểm l&agrave; kh&ocirc;ng truyền điện n&ecirc;n c&aacute;c m&oacute;n đồ <strong>HDMI </strong>phải c&oacute; nguồn ri&ecirc;ng.</span></p>

<p>&nbsp;</p>

<p><span style="font-size:36px">﻿Displayport</span></p>

<p>&nbsp;</p>

<p><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/Cong ket noi man hinh/61JISsq3KqL._AC_SL1500_.jpg" style="width:100%" /></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><span style="font-size:14px"><strong>DisplayPort</strong> được ph&aacute;t triển bởi hiệp hội Video Electronics Standards Association (VESA).<strong>DisplayPort </strong>cũng c&oacute; thể truyền cả &acirc;m thanh v&agrave; video n&ecirc;n dễ d&agrave;ng trở th&agrave;nh đối thủ của <strong>HDMI</strong>. C&aacute;c bạn c&oacute; thể xem qua bảng tr&ecirc;n đ&acirc;y để hiểu r&otilde; hơn nh&eacute;</span></p>

<p>&nbsp;</p>

<p><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/Cong ket noi man hinh/109503i249BA5E735ADA110.jpg" style="width:100%" /></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><span style="font-size:14px">Nếu qu&aacute; kh&oacute; hiểu th&igrave; để m&igrave;nh n&oacute;i thế n&agrave;y cho đơn giản hơn . <strong>Displayport </strong>l&agrave; cổng chủ yếu d&ugrave;ng cho <strong><a href="https://www.tncstore.vn/gaming-pc.html" target="_blank">PC chơi game</a></strong> ,<strong><a href="https://www.tncstore.vn/lap-top/gaming-laptop.html" target="_blank"> Laptop gaming</a></strong> cần xuất ra m&agrave;n h&igrave;nh với tần số qu&eacute;t cao một c&aacute;ch đơn giản kh&ocirc;ng kh&oacute; khăn v&agrave; cần nhiều điều kiện như <strong>HDMI</strong>. V&agrave; để đ&aacute;p trả lại sự ra đời của HDMI 2.1 th&igrave; v&agrave;o th&aacute;ng 7 năm 2019 phi&ecirc;n bản <strong>DP2.0 </strong>ra đời với băng th&ocirc;ng rộng tới hơn 77gbs, nhờ băng th&ocirc;ng kinh khủng tởm n&agrave;y DP2.0 c&oacute; thể g&aacute;nh được m&agrave;n h&igrave;nh 16K HDR ở 60hz, điều m&agrave; đến cả HDMI 2.1 chưa l&agrave;m được.</span></p>

<p>&nbsp;</p>

<p><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/Cong ket noi man hinh/41vD3R5ZZ0L._SR600,600_.jpg" style="width:100%" /></p>

<p>&nbsp;</p>

<p><span style="font-size:14px"><strong>DisplayPort </strong>c&oacute; một biến thể kh&aacute; phổ biến l&agrave; mini <strong>DisplayPort</strong>. Hiện n&oacute; đang được x&agrave;i cho c&aacute;c m&aacute;y MacBook từ đời Early 2016 trở về trước, nhiều thiết bị của Lenovo (nhất l&agrave; d&ograve;ng ThinkPad) cũng như HP, Dell cũng được trang bị mini <strong>DisplayPort</strong>. Cũng c&oacute; kh&aacute;c nhiều c&aacute;c mẫu<strong><a href="https://www.tncstore.vn/lap-top/gaming-laptop.html" target="_blank">laptop gaming</a></strong> hiện nay cũng c&oacute; sử dụng <strong>mini DisplayPort</strong> để xuất ra m&agrave;n h&igrave;nh chơi game tần số qu&eacute;t cao, thường sẽ l&agrave; d&acirc;y mini DP to DP. Th&ecirc;m th&ocirc;ng tin cho mọi người l&agrave; <strong>mini DP </strong>được tạo ra bởi apple rồi sau n&agrave;y được t&iacute;nh chung v&agrave;o VESA lu&ocirc;n. Tiện n&oacute;i về Apple th&igrave; ng&agrave;y xưa tr&ecirc;n c&aacute;c thiết bị ng&agrave;y xưa c&oacute; d&ugrave;ng <strong>mini DP</strong> nhưng sau n&agrave;y chuẩn Thunderbolt 3 ra đời, tất cả đ&atilde; được t&iacute;ch hợp v&agrave;o cổng USB C, lại l&agrave; c&aacute;i t&ecirc;n n&agrave;y Thunderbolt 3 sử dụng type C cho mọi thứ truyền tải điện năng dữ liệu &acirc;m thanh h&igrave;nh ảnh.</span></p>

<p><span style="font-size:18px">&nbsp;&nbsp;&nbsp;<span style="font-size:14px">&nbsp;</span></span><span style="font-size:14px">﻿Hy vọng b&agrave;i viết n&agrave;y sẽ gi&uacute;p bạn h&igrave;nh dung v&agrave; nắm được lịch sử ph&aacute;t triển của c&aacute;c cổng kết nối m&agrave;n h&igrave;nh. Th&acirc;n &aacute;i !</span></p>

<p>&nbsp;</p>

<p><span style="font-size:14px">Cổng kết nối m&agrave;n h&igrave;nh , c&oacute; những loại cổng kết nối n&agrave;o, cổng kết nối m&agrave;n h&igrave;nh tiện nhất, hdmi c&oacute; l&ecirc;n được 144hz kh&ocirc;ng, HDMI , displayport, vga, RCA, DVI, mini displayport, mini DP, m&agrave;n h&igrave;nh hỗ trợ DP, m&agrave;n h&igrave;nh chơi game, laptop gaming,laptop chơi game, m&aacute;y t&iacute;nh chơi game</span><br />
&nbsp;</p>

<p>&nbsp;</p>

<p><span style="font-size:14px">&nbsp;</span></p>

<p>&nbsp;</p>
</div>
', N'/Data/images/newses/tintucmoinhat/mqdefault%20(17).jpg', NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-06T13:43:25.100' AS DateTime), N'quang', CAST(N'2020-12-06T13:43:00.000' AS DateTime), NULL, 6, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (34, N'Trên tay Gaming Laptop ASUS ROG Strix GL553 – Thiết kế đẹp, cấu hình cao , đi kèm bàn phím RGB', N'Trên tay Gaming Laptop ASUS ROG Strix GL553', N'tren-tay-gaming-laptop-asus-rog-strix-gl553', N'Gaming Laptop ASUS ROG Strix GL553 là một trong những mẫu gaming laptop mới ra mắt của asus đánh vào phân khúc tầm trung . cùng xem qua tại sao ASUS ROG Strix GL553 lại là ngôi sao sáng nhất trong phân khúc ....', N'<div class="post_content">
<h2>&nbsp;</h2>

<h2><img src="http://www.tncstore.vn/image/catalog/gl553/gl553-tncstore-a.jpg" style="width:750px" /></h2>

<p>&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size:14px">Sự ph&aacute;t triển của c&ocirc;ng nghệ như hiện nay l&agrave; v&ocirc; c&ugrave;ng mạnh mẽ, khi m&agrave; mọi thứ trở n&ecirc;n mạnh mẽ hơn, c&ugrave;ng l&uacute;c đ&oacute; k&iacute;ch thước của m&aacute;y t&iacute;nh cũng dần trở n&ecirc;n gọn hơn. Sẽ kh&ocirc;ng c&oacute; g&igrave; ngạc nhi&ecirc;n, khi một chiếc laptop chơi game đời mới hiện nay c&oacute; hiệu năng kh&ocirc;ng thua k&eacute;m g&igrave; với những chiếc m&aacute;y t&iacute;nh desktop với cấu h&igrave;nh tương đương. C&agrave;ng c&oacute; nhiều người bắt đầu ưa chuộng hơn những chiếc laptop để c&oacute; thể đ&aacute;p ứng được nhiều c&ocirc;ng việc kh&aacute;c nhau của bản th&acirc;n m&igrave;nh.</span></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size:14px">Trong khi đ&oacute;, c&aacute;ch đ&acirc;y kh&ocirc;ng l&acirc;u, với sự xuất hiện của hai d&ograve;ng sản phẩm GPU tầm trung mới của NVIDIA, GeForce GTX 1050 v&agrave; GTX 1050 Ti, đ&atilde; tạo ra được một cơn sốt v&ocirc; c&ugrave;ng n&oacute;ng trong giới game thủ to&agrave;n cầu. Th&igrave; đến nay, những chiếc GPU n&agrave;y cuối c&ugrave;ng cũng đ&atilde; xuất hiện tr&ecirc;n mặt trận m&aacute;y t&iacute;nh x&aacute;ch tay chơi game, v&agrave; cụ thể hơn ch&iacute;nh l&agrave; d&ograve;ng <strong>laptop ROG Strix GL553</strong> ho&agrave;n to&agrave;n mới của h&atilde;ng Asus. H&atilde;y c&ugrave;ng t&igrave;m hiểu xem những điều th&uacute; vị g&igrave; đang ẩn chứa b&ecirc;n trong chiếc laptop hứa hẹn sẽ v&ocirc; c&ugrave;ng hot n&agrave;y nh&eacute; !</span></p>

<p><img src="http://www.tncstore.vn/image/catalog/BAI%20VIET/Tr%C3%AAn%20tay%20Gaming%20Laptop%20ASUS%20ROG%20Strix%20GL553%20%E2%80%93%20Thi%E1%BA%BFt%20k%E1%BA%BF%20%C4%91%E1%BA%B9p,%20c%E1%BA%A5u%20h%C3%ACnh%20cao%20,%20%C4%91i%20k%C3%A8m%20b%C3%A0n%20ph%C3%ADm%20RGB%20/gl553_2.jpg" style="color:inherit; font-family:inherit; font-size:25px; width:750px" /></p>

<p><span style="font-size:14px">Nổi bật tr&ecirc;n nắp m&aacute;y vẫn l&agrave; sắc m&agrave;u cam s&aacute;ng nổi bật của nh&atilde;n hiệu ROG Strix với logo v&agrave; hai đường viền đặt ch&eacute;o g&oacute;c, trong khi đ&oacute; t&ocirc;ng m&agrave;u đen tuyền vẫn đ&oacute;ng vai tr&ograve; ch&iacute;nh tr&ecirc;n to&agrave;n bộ laptop, một điều qu&aacute; quen thuộc đối với d&ograve;ng laptop tầm trung m&agrave; <strong>Asus</strong> vẫn đem đến cho người sử dụng.</span></p>

<p><img src="http://www.tncstore.vn/image/catalog/BAI%20VIET/Tr%C3%AAn%20tay%20Gaming%20Laptop%20ASUS%20ROG%20Strix%20GL553%20%E2%80%93%20Thi%E1%BA%BFt%20k%E1%BA%BF%20%C4%91%E1%BA%B9p,%20c%E1%BA%A5u%20h%C3%ACnh%20cao%20,%20%C4%91i%20k%C3%A8m%20b%C3%A0n%20ph%C3%ADm%20RGB%20/gl553_3.jpg" style="color:inherit; font-family:inherit; font-size:25px; width:750px" /></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size:14px">Khi mở m&aacute;y l&ecirc;n, t&ocirc;ng m&agrave;u đen chủ đạo vẫn được giữ nguy&ecirc;n, cho người d&ugrave;ng một cảm gi&aacute;c mạnh mẽ v&agrave; &ldquo;ngầu&rdquo;, rất đậm chất game thủ. C&oacute; thể thấy được nguy&ecirc;n tắc thiết kế của Asus vẫn hiện hữu r&otilde; r&agrave;ng, một sản phẩm kh&ocirc;ng m&agrave;u m&egrave; v&agrave; c&oacute; những điểm nhấn nổi bật v&agrave; dễ d&agrave;ng nhận biết được so với c&aacute;c sản phẩm của c&aacute;c thương hiệu kh&aacute;c tr&ecirc;n thị trường hiện nay .M&aacute;y c&oacute; k&iacute;ch thước 38.3 x 25.5 x 3 cm, v&agrave; c&oacute; c&acirc;n nặng 2.5 kg. Nh&igrave;n chung, m&aacute;y c&oacute; k&iacute;ch thước kh&aacute; l&agrave; ph&ugrave; hợp đối với một chiếc laptop c&oacute; k&iacute;ch thước 15.6 inch</span></p>

<p><img src="http://www.tncstore.vn/image/catalog/BAI VIET/Asus GL553/4.jpg" style="width:750px" /></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size:14px">Ph&iacute;a b&ecirc;n tr&aacute;i của laptop bao gồm những cổng: AC Power Input, Ethernet RJ-45, HDMI, USB 3.0 x2, USB 3.1, Audio combo port. C&oacute; thể n&oacute;i l&agrave; kh&aacute; đầy đủ v&agrave; đ&aacute;p ứng được nhu cầu của đa số&nbsp;</span><span style="font-size:14px">người d&ugrave;ng. C&oacute; lẽ sẽ hay hơn nếu c&oacute; th&ecirc;m DisplayPort v&agrave;/hoặc Thunderbolt cho c&aacute;c m&agrave;n h&igrave;nh đời mới hay c&aacute;c thiết bị truyền tải dữ liệu tốc độ cao. C&oacute; thể thấy rằng, vị tr&iacute; bố tr&iacute; c&aacute;c cổng kết&nbsp;</span><span style="font-size:14px">nối n&agrave;y cũng kh&aacute; thuận tiện cho người sử dụng</span></p>

<p><br />
<img src="http://www.tncstore.vn/image/catalog/BAI VIET/Asus GL553/6.jpg" style="width:750px" /></p>

<p>&nbsp;</p>

<div>&nbsp;&nbsp;&nbsp;&nbsp;<strong><span style="font-size:14px">Touchpad</span></strong><span style="font-size:14px"> của m&aacute;y được bao viền bởi m&agrave;u cam tương tự, c&oacute; k&iacute;ch thước kh&aacute; lớn, để người d&ugrave;ng c&oacute; thể sử dụng một c&aacute;ch thoải m&aacute;i. Phần trước của m&aacute;y, ta c&oacute; thể nhận thấy được 5 đ&egrave;n&nbsp;</span><span style="font-size:14px">LED m&agrave;u trắng b&aacute;o hiệu trạng th&aacute;i hệ thống, c&ugrave;ng với 1 đầu đọc thẻ nhớ SD được t&iacute;ch hợp.</span></div>

<div>&nbsp;</div>

<div>&nbsp;</div>

<div><img src="http://www.tncstore.vn/image/catalog/BAI VIET/Asus GL553/7.jpg" style="width:750px" /></div>

<div>
<div>&nbsp;</div>

<div>&nbsp;</div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size:14px">B&agrave;n ph&iacute;m của&nbsp;</span><a href="http://www.tncstore.vn/laptop-asus-rog-strix-gl553ve-fy096.html?search=gl55"><span style="font-size:14px">Laptop ASUS ROG Strix GL553VE-FY096</span></a><span style="font-size:14px">&nbsp;vẫn l&agrave; b&agrave;n ph&iacute;m dạng chicklet, k&iacute;ch thước full-size với đầy đủ cụm ph&iacute;m số. Một điều cần nhấn mạnh, rằng GL553 l&agrave; một trong&nbsp;</span><span style="font-size:14px">những laptop đầu ti&ecirc;n của Asus c&oacute; sử dụng đ&egrave;n nền RGB, gi&uacute;p cho m&aacute;y trở&nbsp;</span><span style="font-size:14px">n&ecirc;n đẹp mắt v&agrave; hấp dẫn hơn. Một điều c&oacute; lẽ l&agrave; n&ecirc;n ch&ecirc; tr&aacute;ch ở Asus nhiều hơn, khi nhiều thương hiệu laptop chơi game lớn đ&atilde; sử dụng đ&egrave;n LED RGB cho b&agrave;n ph&iacute;m c&aacute;ch đ&acirc;y đ&atilde; kh&aacute; l&acirc;u rồi,&nbsp;</span><span style="font-size:14px">nhưng &iacute;t ra l&agrave; c&oacute; c&ograve;n hơn l&agrave; kh&ocirc;ng.</span></div>

<div>&nbsp;</div>

<div>&nbsp;</div>

<div><img src="http://www.tncstore.vn/image/catalog/BAI VIET/Asus GL553/8.jpg" style="width:750px" /></div>

<div>&nbsp;</div>

<div style="text-align: left;">
<div>&nbsp;</div>

<div>&nbsp;</div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size:14px">Cụ thể hơn, đ&egrave;n b&agrave;n ph&iacute;m của <strong>ASUS ROG Strix GL553</strong> c&oacute; thể đươc t&ugrave;y biến theo 4 khu vực kh&aacute;c nhau, c&ugrave;ng với c&aacute;c m&agrave;u sắc theo &yacute; muốn người d&ugrave;ng v&agrave; hai hiệu ứng sẵn c&oacute; (static: đ&egrave;n&nbsp;</span><span style="font-size:14px">tĩnh v&agrave; breathing: đ&egrave;n nhấp nh&aacute;y theo nhịp thở), th&ocirc;ng qua chương tr&igrave;nh Asus ROG Aura đi k&egrave;m với laptop. Chương tr&igrave;nh cũng cho ph&eacute;p lưu ba profile kh&aacute;c nhau, nhằm đ&aacute;p ứng được nhu&nbsp;</span><span style="font-size:14px">cầu t&ugrave;y biến v&agrave; thay đổi đ&egrave;n LED của người d&ugrave;ng trong những trường hợp sử dụng ri&ecirc;ng biệt.&nbsp;</span></div>

<div>&nbsp;</div>

<div>&nbsp;</div>

<div><img src="http://www.tncstore.vn/image/catalog/BAI VIET/Asus GL553/10.jpg" style="width:750px" /></div>

<div>
<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong><span style="font-size:14px">Loa</span></strong><span style="font-size:14px"> của&nbsp;</span><a href="http://www.tncstore.vn/laptop-asus-rog-strix-gl553ve-fy096.html?search=gl55"><span style="font-size:14px">Laptop ASUS ROG Strix GL553VE-FY096</span></a><span style="font-size:14px">&nbsp;được đặt ở phần dưới của m&aacute;y, hướng xuống. Chất lượng của loa kh&aacute; ổn, &acirc;m lượng kh&aacute; lớn, đ&aacute;p ứng được nhu cầu của người d&ugrave;ng. <strong>Độ&nbsp;</strong></span><span style="font-size:14px"><strong>ồn tối đa</strong> c&oacute; thể đạt đến 86 87 decibel.</span></p>

<p>&nbsp;</p>

<p><img src="http://www.tncstore.vn/image/catalog/BAI VIET/Asus GL553/11.jpg" style="width:750px" /></p>

<p>&nbsp;</p>

<p><span style="font-size:14px">M&agrave;n h&igrave;nh của m&aacute;y cũng l&agrave; một điểm cộng rất đ&aacute;ng gi&aacute; tr&ecirc;n sản phẩm n&agrave;y</span></p>

<p>&nbsp;</p>

<p><img src="http://www.tncstore.vn/image/catalog/BAI VIET/Asus GL553/12.jpg" style="width:750px" /></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size:14px"><strong>M&agrave;n h&igrave;nh</strong> của&nbsp;</span><a href="http://www.tncstore.vn/laptop-asus-rog-strix-gl553ve-fy096.html?search=gl55"><span style="font-size:14px">Laptop ASUS ROG Strix GL553VE-FY096</span></a><span style="font-size:14px">&nbsp;c&oacute; k&iacute;ch thước 15.6 inch, kh&ocirc;ng thay đổi so với c&aacute;c mẫu laptop 15.6 inch c&ugrave;ng d&ograve;ng trước đ&acirc;y. M&agrave;n h&igrave;nh n&agrave;y c&oacute; độ ph&acirc;n giải Full HD&nbsp;</span><span style="font-size:14px">(1920 x 1080), c&ugrave;ng với độ s&aacute;ng m&agrave;n h&igrave;nh ổn, đạt mức 340 nits. Mức độ bao phủ m&agrave;u sắc của m&agrave;n h&igrave;nh cũng kh&aacute; tốt, khi c&oacute; thể bao tr&ugrave;m được 79% dải m&agrave;u RGB, v&agrave; 57% dải m&agrave;u Adobe&nbsp;</span><span style="font-size:14px">RGB. Ngo&agrave;i việc chơi game ra, th&igrave; c&oacute; lẽ m&agrave;n h&igrave;nh n&agrave;y cần được tối ưu hơn một ch&uacute;t nữa để c&oacute; thể đ&aacute;p ứng được c&aacute;c t&aacute;c vụ như chỉnh sửa ảnh hay dựng video. Nh&igrave;n chung, đối với một&nbsp;</span><span style="font-size:14px">laptop chơi game tầm trung, th&igrave; m&agrave;n h&igrave;nh của GL553 ho&agrave;n to&agrave;n đ&aacute;p ứng tốt nhu cầu của người d&ugrave;ng.</span></p>

<p>&nbsp;</p>

<p><img src="http://www.tncstore.vn/image/catalog/BAI VIET/Asus GL553/13.jpg" style="width:750px" /></p>

<p>&nbsp;</p>

<p><span style="font-size:14px">&nbsp;Mặc d&ugrave; l&agrave; một mẫu Gaming laptop tầm trung, nhưng cấu h&igrave;nh m&agrave; GL553 đem lại cho người d&ugrave;ng l&agrave; kh&aacute; cao. Bắt đầu với bộ vi xử l&yacute; <strong>Intel Core i7-7700HQ</strong> thế hệ Kaby Lake mới nhất hiện nay, với 4 nh&acirc;n xử l&yacute; c&ugrave;ng c&ocirc;ng nghệ ph&acirc;n luồng HyperThreading đặc th&ugrave; của Intel, đem lại 8 luồng xử l&yacute; tất cả, với tốc độ nền ban đầu đạt 2.8 GHz, Turbo Boost tối đa l&ecirc;n 3.8 GHz. K&egrave;m theo đ&oacute; l&agrave; 6Mb Intel Smart Cache, v&agrave; mức TDP chỉ 45W. GL553 c&oacute; tới 16Gb bộ nhớ hệ thống, loại DDR4 xung nhịp 2400 MHz chạy Dual Channel. Với lượng bộ nhớ lớn như vậy, th&igrave; việc chơi game hay xử l&yacute; c&aacute;c t&aacute;c vụ productivity l&agrave; ho&agrave;n to&agrave;n thoải m&aacute;i, c&oacute; thể đ&aacute;p ứng được tốt nhu cầu sử dụng trong tương lai. Điểm nhấn quan trọng của chiếc laptop ch&iacute;nh l&agrave; chip xử l&yacute; đồ họa tầm trung NVIDIA GeForce GTX 1050 Ti, với 4Gb bộ nhớ chuẩn GDDR5.</span></p>

<p><span style="font-size:14px">&nbsp; &nbsp; Th&ocirc;ng số kĩ thuật cụ thể hơn bao gồm: 768 nh&acirc;n CUDA sử dụng kiến tr&uacute;c Pascal mới nhất hiện nay, xung nhịp gốc ở mức 1493 MHz v&agrave; c&oacute; thể đạt đến 1620 MHz th&ocirc;ng qua GPU Boost; bộ nhớ GDDR5 c&oacute; độ rộng 128 bit v&agrave; hoạt động tại xung nhịp đạt 7 GHz. Khoản lưu trữ của GL553 cũng rất rộng r&atilde;i khi m&aacute;y c&oacute; trang bị 1 ổ cứng đ&oacute; l&agrave; ổ HDD dung lượng 1Tb chạy với tốc độ 5400RPM. C&oacute; lẽ l&agrave; một laptop chơi game kh&ocirc;ng n&ecirc;n c&oacute; một HDD chạy với tốc độ 5400RPM, n&ecirc;n nh&agrave; sản xuất Asus vẫn để ngỏ khả năng n&acirc;ng cấp SSD trong tương lai cho người sử dụng nhưng d&ugrave; sao th&igrave; n&oacute; cũng ho&agrave;n to&agrave;n đ&aacute;p ứng được nhu cầu lưu trữ th&ecirc;m của người sử dụng. Pin của ASUS ROG Strix GL553VE-FY096 l&agrave; loại 4-cell Lithium, v&agrave; ho&agrave;n to&agrave;n c&oacute; thể sử dụng với c&aacute;c t&aacute;c vụ th&ocirc;ng thường với thời lượng sử dụng khoảng 3-4 tiếng l&agrave; điều c&oacute; thể mong đợi được từ chiếc laptop n&agrave;y. V&agrave; như đ&atilde; đề cập ở tr&ecirc;n, chiếc laptop n&agrave;y c&oacute; m&agrave;n h&igrave;nh 15.6 inch với độ ph&acirc;n giải Full HD 1920 x 1080.</span></p>

<p>&nbsp;</p>

<p><img src="http://www.tncstore.vn/image/catalog/BAI VIET/Asus GL553/141.jpg" style="width:750px" /></p>

<p>&nbsp;</p>

<div><span style="font-size:14px">Khi mở laptop ra, c&aacute;c th&agrave;nh phần b&ecirc;n trong đều c&oacute; thể được tiếp cận một c&aacute;ch dễ d&agrave;ng, khiến cho việc n&acirc;ng cấp, thay thế, hay bảo tr&igrave; laptop trở n&ecirc;n dễ d&agrave;ng hơn.&nbsp;Để đ&aacute;nh gi&aacute; một c&aacute;ch sơ&nbsp;</span><span style="font-size:14px">bộ, th&igrave; đ&acirc;y l&agrave; một cấu h&igrave;nh kh&aacute; tốt so với mức gi&aacute; m&agrave; Asus đưa ra đối với model GL553,&nbsp;&nbsp;cấu h&igrave;nh n&agrave;y ho&agrave;n to&agrave;n đ&aacute;p ứng được nhiều nhu cầu của người d&ugrave;ng</span></div>

<div><br />
<span style="font-size:14px">Dưới đ&acirc;y l&agrave; một số benchmark của một số game tr&ecirc;n laptop GL553, cụ thể như sau:&nbsp;</span></div>

<div>&nbsp;</div>

<div>
<h1><img src="http://www.tncstore.vn/image/catalog/BAI VIET/Asus GL553/15.jpg" style="width:750px" /></h1>

<p>&nbsp;</p>

<h1><img src="http://www.tncstore.vn/image/catalog/BAI VIET/Asus GL553/16.jpg" style="width:750px" /></h1>

<p>&nbsp;</p>

<h1><img src="http://www.tncstore.vn/image/catalog/BAI VIET/Asus GL553/17.jpg" style="width:750px" /></h1>

<p>&nbsp;</p>

<h1>&nbsp;</h1>

<div><span style="font-size:14px">C&oacute; thể thấy rằng, hiệu năng của GPU&nbsp;</span><a href="http://www.tncstore.vn/vga-card-man-hinh.html?attribute_id=24"><span style="font-size:14px">GeForce GTX1050 Ti</span></a><span style="font-size:14px">&nbsp;được thể hiện tr&ecirc;n laptop l&agrave; rất tốt, với nhiều tựa game kh&aacute;c nhau th&igrave; chiếc laptop n&agrave;y ho&agrave;n to&agrave;n c&oacute; thể đ&aacute;p ứng được ở độ ph&acirc;n&nbsp;</span><span style="font-size:14px">giải Full HD c&ugrave;ng mức thiết lập đồ họa High.</span></div>

<div>&nbsp;</div>

<div>&nbsp;</div>

<div><img src="http://www.tncstore.vn/image/catalog/BAI VIET/Asus GL553/18.jpg" style="width:750px" /></div>

<div><br />
<a href="http://www.tncstore.vn/laptop-asus-rog-strix-gl553ve-fy096.html?search=gl55"><span style="font-size:14px">Laptop ASUS ROG Strix GL553VE-FY096</span></a><span style="font-size:14px">&nbsp;chỉ c&oacute; một quạt tản nhiệt, nhưng kh&ocirc;ng v&igrave; thế m&agrave; hiệu năng tản nhiệt lại bị thua hụt so với c&aacute;c model kh&aacute;c. Ở chế độ idle, m&aacute;y chỉ ph&aacute;t ra độ ồn&nbsp;</span><span style="font-size:14px">khoảng 37 decibel, ở mức chấp nhận được. V&agrave; khi full load, độ ồn tăng l&ecirc;n 53-</span><span style="font-size:14px">54 decibel.&nbsp;</span></div>

<div>
<div>
<div>&nbsp;</div>
</div>

<div>
<div><img src="http://www.tncstore.vn/image/catalog/BAI VIET/Asus GL553/19.jpg" style="width:750px" /></div>

<div>&nbsp;</div>

<div>
<p><span style="font-size:14px">Khi hoạt động ở c&ocirc;ng suất cao, nhiệt lượng tỏa ra từ ph&iacute;a quạt tản nhiệt của m&aacute;y l&agrave; kh&aacute; cao (49 độ C), cũng v&igrave; đ&oacute; n&ecirc;n phần tay tiếp x&uacute;c tr&ecirc;n b&agrave;n ph&iacute;m kh&ocirc;ng hề c&oacute; nhiệt độ qu&aacute; cao, tay c&oacute; thể đặt l&ecirc;n tr&ecirc;n đ&oacute; m&agrave; kh&ocirc;ng sợ bị n&oacute;ng (chỉ v&agrave;o khoảng 32-33 độ C).&nbsp;</span></p>

<p><span style="font-size:14px">Laptop ASUS ROG Strix GL553VE-FY096 xứng đ&aacute;ng l&agrave; một lựa chọn ho&agrave;n hảo cho một chiếc laptop chơi game tầm trung trong thời điểm hiện tại. Với cấu h&igrave;nh cao, hiệu năng tốt, thiết kế</span></p>

<p><span style="font-size:14px">bắt mắt v&agrave; hợp với những người trẻ v&agrave; l&agrave; game thủ. Thị trường laptop chơi game hiện nay sẽ th&ecirc;m phần s&ocirc;i động hơn với sự xuất hiện của model GL553 n&agrave;y c&ugrave;ng c&aacute;c mẫu laptop kh&aacute;c sử dụng GPU GeForce GTX 1050 Ti v&agrave; GeForce GTX1050. &nbsp;</span></p>

<p><span style="font-size:14px">* Hiện sản phẩm đang c&oacute; sẵn h&agrave;ng c&aacute;c m&atilde; :&nbsp;</span></p>

<p><span style="font-size:14px">- <a href="http://www.tncstore.vn/gaming-laptop/laptop-asus-rog-strix-gl553ve-fy096.html">Laptop ASUS ROG Strix GL553VE-FY096&nbsp;</a></span></p>

<p><span style="font-size:14px">- <a href="http://www.tncstore.vn/gaming-laptop/laptop-asus-rog-strix-gl553vd-fy305.html">Laptop ASUS ROG STRIX GL553VD FY305D</a></span></p>

<p><span style="font-size:14px">- <a href="http://www.tncstore.vn/gaming-laptop/laptop-asus-rog-strix-gl553vd-fy175.html">Laptop ASUS ROG Strix GL553VD-FY175</a></span></p>

<p><span style="font-size:14px">Sản phẩm hiện đang c&oacute; sẵn tại TNC Store.&nbsp;</span></p>

<p>&nbsp;</p>

<div>
<div><span style="font-size:14px">------------------------------------------------------------------------------------------------------------</span></div>

<div><span style="color:inherit; font-family:inherit; font-size:14px">* Showroom: 222 L&ecirc; Thanh Nghị - Hai B&agrave; Trưng - H&agrave; Nội</span></div>

<div><span style="color:inherit; font-family:inherit; font-size:14px">*</span><span style="color:inherit; font-family:inherit; font-size:14px">&nbsp;</span><span style="font-size:14px">Tel: (04) 36288790&nbsp;- 0983623990&nbsp;</span></div>

<div><span style="color:inherit; font-family:inherit; font-size:14px">*</span><span style="color:inherit; font-family:inherit; font-size:14px">&nbsp;</span><span style="font-size:14px">Hỗ trợ tư vấn Online 24/07</span></div>

<div><span style="color:inherit; font-family:inherit; font-size:14px">*</span><span style="color:inherit; font-family:inherit; font-size:14px">&nbsp;</span><span style="font-size:14px">Ship h&agrave;ng to&agrave;n quốc - Giao h&agrave;ng miễn ph&iacute; trong nội th&agrave;nh H&agrave; Nội</span></div>

<div><span style="color:inherit; font-family:inherit; font-size:14px">*</span><span style="color:inherit; font-family:inherit; font-size:14px">&nbsp;</span><span style="font-size:14px">Website: www.tncstore.vn&nbsp;</span></div>
</div>

<p>&nbsp;</p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
', N'/Data/images/newses/tintucmoinhat/gl553_4.jpg', NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-06T13:44:56.590' AS DateTime), N'quang', CAST(N'2020-12-06T13:44:00.000' AS DateTime), NULL, 7, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (35, N'[Motospeed CK107] Trên tay và đánh giá bàn phím cơ tốt nhất trong tầm giá dưới 1 triệu đồng', N'Trên tay và đánh giá bàn phím cơ tốt nhất trong tầm giá dưới 1 triệu đồng', N'tren-tay-va-danh-gia-ban-phim-co-tot-nhat-trong-tam-gia-duoi-1-trieu-dong', N'Motospeed CK107 RGB là một trong những mẫu bàn phím cơ tuyệt vời nhất trong phân khúc giá dưới 1 triệu . hãy cùng xem vì sao nó lại đang giá như vậy ', N'<p style="text-align:center">&nbsp;</p>

<p style="text-align:center"><img src="http://www.tncstore.vn/image/catalog/BAI VIET/phím ck107/DSC01342 copy.jpg" style="width:750px" /></p>

<p>&nbsp;</p>

<p><a href="http://www.tncstore.vn/index.php?route=product/search&amp;search=motospeed" style="background-color: rgb(255, 255, 255);">Motospeed</a> l&agrave; một h&atilde;ng chuy&ecirc;n sản xuất <a href="http://www.tncstore.vn/gaming-gear/ban-phim-gaming.html" style="background-color: rgb(255, 255, 255);">b&agrave;n ph&iacute;m gaming</a> &nbsp;gi&aacute; rẻ tới từ trung quốc . với th&acirc;m ni&ecirc;n l&agrave; &quot;Tr&ugrave;m trong ph&acirc;n kh&uacute;c gi&aacute; rẻ với những t&ecirc;n tuổi nổi đ&igrave;nh nổi đ&aacute;m gắn liền với tuổi thơ của biết bao nhi&ecirc;u thế hệ thanh ni&ecirc;n Việt Nam l&agrave; motospeed K40 . sau một thời gian chờ đợi th&igrave; cuối c&ugrave;ng motospeed cũng đ&atilde; tung ra chiếc b&agrave;n ph&iacute;m cơ với chất lượng tốt nhất trong tầm gi&aacute; dưới 1 triệu đồng đ&oacute; ch&iacute;nh l&agrave; CK107</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<div style="text-align: center;"><img src="http://www.tncstore.vn/image/catalog/BAI VIET/phím ck107/DSC01368 copy.jpg" style="width:750px" /></div>

<div style="text-align: left;">&nbsp;</div>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><a href="http://www.tncstore.vn/ban-phim-co-motospeed-ck107-black-blue-switch.html?search=motospeed">Motospeed CK107</a> l&agrave; mẫu <a href="http://www.tncstore.vn/gaming-gear/ban-phim-gaming/ban-phim-co.html">b&agrave;n ph&iacute;m cơ</a> mới nhất tới từ h&atilde;ng <strong>Motospeed</strong> . được trang bị Blueswitch gi&uacute;p tạo n&ecirc;n cảm gi&aacute;c ấn thật nhất d&agrave;nh cho những người mới trải nghiệm ph&iacute;m cơ . <a href="http://www.tncstore.vn/gaming-gear/ban-phim-gaming/ban-phim-co/ban-phim-co-motospeed-ck107-black-blue-switch.html">B</a><span style="background-color:rgb(255, 255, 255)"><a href="http://www.tncstore.vn/gaming-gear/ban-phim-gaming/ban-phim-co/ban-phim-co-motospeed-ck107-black-blue-switch.html">&agrave;n ph&iacute;m cơ</a></span>&nbsp;&nbsp;MOTOSPEED CK107 c&oacute; thiết kế mạnh mẽ, nổi bật với đ&egrave;n LED RGB nổi bật gi&uacute;p hỗ trợ người d&ugrave;ng trong việc chơi game cũng như nhập dữ liệu buổi tối . Thiết kế thuận tiện hỗ trợ chơi game, bạn c&oacute; thể g&otilde; ph&iacute;m một c&aacute;ch dễ d&agrave;ng. Ngo&agrave;i ra,&nbsp;<a href="http://www.tncstore.vn/gaming-gear/ban-phim-gaming/ban-phim-co.html" style="background-color: rgb(255, 255, 255);">b&agrave;n ph&iacute;m cơ</a>&nbsp;MOTOSPEED CK107 th&ocirc;ng qua cổng USB kết nối dễ d&agrave;ng, bạn kh&ocirc;ng cần c&agrave;i đặt th&ecirc;m bất cứ phần mềm n&agrave;o v&agrave; c&oacute; thể sử dụng ngay<span style="color:rgb(29, 33, 41); font-family:arial,sans-serif; font-size:12pt">.</span></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p style="text-align:center"><img src="http://www.tncstore.vn/image/catalog/BAI VIET/phím ck107/DSC01349 copy.jpg" style="width:750px" /></p>

<p style="text-align:center">&nbsp;</p>

<p>&nbsp;</p>

<p>B&ecirc;n cạnh đ&oacute; 1 điều kh&aacute; th&uacute; vị l&agrave; <strong>MOTOSPEED CK107</strong> cho ph&eacute;p người sử dụng c&oacute; thể t&ugrave;y chỉnh hệ thống đ&egrave;n led, bạn c&oacute; thể chọn từ 5 chế độ kh&aacute;c nhau c&oacute; sẵn, đặc biệt hơn bạn c&oacute; thể chỉnh điều chỉnh độ s&aacute;ng đi k&egrave;m l&agrave; chức năng &quot;Breath &quot; - nhịp thở kh&aacute; độc đ&aacute;o giống y như c&aacute;c d&ograve;ng ph&iacute;m cơ RGB cao cấp của Razer hay Cooler Master. C&oacute; thể đối với bạn n&oacute; l&agrave; b&igrave;nh thường, nhưng đối với t&ocirc;i n&oacute; qu&aacute; đủ, đặc biệt l&agrave; khi t&ocirc;i chỉ sử dụng LED trong kh&ocirc;ng gian tối n&oacute; tạo l&ecirc;n một kh&ocirc;ng gian lung linh v&agrave; tuyệt đẹp.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p style="text-align:center"><img src="http://www.tncstore.vn/image/catalog/BAI VIET/phím ck107/DSC01353 copy.jpg" style="width:750px" /></p>

<p style="text-align:center">&nbsp;</p>

<div style="text-align: left;">&nbsp;</div>

<p>&nbsp;</p>

<p style="text-align:left"><a href="http://www.tncstore.vn/gaming-gear/ban-phim-gaming/ban-phim-co/ban-phim-co-motospeed-ck107-black-blue-switch.html"><strong>MOTOSPEED CK107</strong></a> l&agrave; 1 b&agrave;n ph&iacute;m khi g&otilde; kh&aacute; ồn, giống như hầu hết c&aacute;c ph&iacute;m cơ sử dụng <strong>blue switch</strong> kh&aacute;c. Do đ&oacute; sản phẩm n&agrave;y chắc chắn sẽ kh&ocirc;ng ph&ugrave; hợp với 1 số bạn muốn l&agrave;m việc trong kh&ocirc;ng gian y&ecirc;n tĩnh tuy nhi&ecirc;n với game thủ th&igrave; đ&acirc;y lại l&agrave; 1 điểm cộng bởi ch&uacute;ng ta lu&ocirc;n muốn kh&ocirc;ng gian phải lu&ocirc;n s&ocirc;i động v&agrave; n&aacute;o nhiệt để tr&aacute;nh sự nh&agrave;m ch&aacute;n. &nbsp;Do đ&oacute; sẽ kh&ocirc;ng c&oacute; l&iacute; do n&agrave;o m&agrave; bạn c&oacute; thể từ chối 1 sản phẩm b&agrave;n ph&iacute;m cơ với mức gi&aacute; cực k&igrave; tốt m&agrave; lại đ&aacute;p ứng đủ c&aacute;c nhu cầu ăn chơi của mọi game thủ hiện nay theo đ&uacute;ng nghĩa : Ngon - Bổ - Rẻ&nbsp;</p>

<p style="text-align:center">&nbsp;</p>

<p style="text-align:center"><img src="http://www.tncstore.vn/image/catalog/BAI VIET/phím ck107/DSC01344 copy.jpg" style="width:750px" /></p>

<p>&nbsp;</p>

<p><span style="font-size:14px">Sản phẩm b&agrave;n ph&iacute;m&nbsp;</span><span style="color:rgb(0, 0, 0); font-family:open sans,sans-serif; font-size:12px"><a href="http://www.tncstore.vn/ban-phim-co-motospeed-ck107-black-blue-switch.html?search=107">MOTOSPEED CK107</a></span><span style="font-size:14px">&nbsp;hiện đang c&oacute; sẵn tại TNC với gi&aacute; l&agrave;: 999.000đ</span></p>

<p>&nbsp;</p>

<p><span style="font-size:14px">-----------------------------------------------------------------------------------------------------</span></p>

<p><span style="font-size:14px">* Showroom: 222 L&ecirc; Thanh Nghị - Hai B&agrave; Trưng - H&agrave; Nội</span></p>

<p><span style="font-size:14px">* Tel: (04) </span><span style="font-size:14px">36288790</span><span style="font-size:14px">&nbsp;- 0983623990&nbsp;</span></p>

<p><span style="font-size:14px">* Hỗ trợ tư vấn Online 24/07</span></p>

<p><span style="font-size:14px">* Ship h&agrave;ng to&agrave;n quốc - Giao h&agrave;ng miễn ph&iacute; trong nội th&agrave;nh H&agrave; Nội</span></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><span style="font-size:14px">* Website:&nbsp;<a href="http://www.tncstore.vn/" style="color: rgb(35, 161, 209);" target="_blank">www.tncstore.vn</a></span></p>
', N'/Data/images/newses/tintucmoinhat/DSC01344%20copy.jpg', NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-06T13:45:05.517' AS DateTime), N'quang', CAST(N'2020-12-06T13:45:00.000' AS DateTime), NULL, 7, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (36, N'Đánh giá hiệu năng CPU Intel Pentium G4560 vs Core i3 6100 vs Pentium G4600', N'Đánh giá hiệu năng CPU Intel Pentium G4560 vs Core i3 6100 vs Pentium G4600', N'danh-gia-hieu-nang-cpu-intel-pentium-g4560-vs-core-i3-6100-vs-pentium-g4600', N'Với sự ra đời của dòng sản phẩn Pentium G thế hệ Kaby Lake mới nhất, liệu mơ ước đươc "Lạc trôi" trong thế giới ảo của các game thủ sẽ trở nên gần hơn bao giờ hết ?', N'<p><img src="http://www.tncstore.vn/image/catalog/BAI VIET/so sanh chip/a.jpg" style="width:750px" title="" /></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;C&oacute; một điều hiển nhi&ecirc;n, rằng c&aacute;c d&ograve;ng <a href="http://www.tncstore.vn/linh-kien-pc/cpu.html" target="_blank">CPU</a> <a href="http://www.tncstore.vn/cpu.html?manufacturer_id=23" target="_blank">Intel</a> <a href="http://www.tncstore.vn/cpu.html?attribute_id=14" target="_blank">Core i3</a> lu&ocirc;n được phần lớn người sử dụng PC lựa chọn để phục vụ cho nhu cầu giải tr&iacute; cũng như học tập, v&igrave; những l&yacute; do như gi&aacute; th&agrave;nh hợp l&yacute; cũng như việc sử dụng c&ocirc;ng nghệ si&ecirc;u ph&acirc;n luồng (Intel HyperThreading) biến một CPU 2 nh&acirc;n thực trở th&agrave;nh 4 nh&acirc;n tổng cộng, để đi c&ugrave;ng với c&aacute;c loại card đồ họa tầm trung, khiến cho gi&aacute; th&agrave;nh phải chi kh&ocirc;ng qu&aacute; cao nhưng hiệu quả đem lại l&agrave; hiệu quả. Trong khi đ&oacute;, d&ograve;ng sản phẩm cấp thấp hơn như <a href="http://www.tncstore.vn/cpu.html?attribute_id=44" target="_blank">Pentium</a> hay <a href="http://www.tncstore.vn/cpu.html?attribute_id=45" target="_blank">Celeron</a> đều bị hụt hơi v&agrave; kh&ocirc;ng được lựa chọn nhiều nữa bởi sự hạn chế về khả năng xử l&yacute; khi chỉ c&oacute; 2 nh&acirc;n xử l&yacute;, nhất l&agrave; với bối cảnh c&aacute;c tựa game mới hiện nay đều đ&atilde; c&oacute; thể tận dụng tốt hơn c&aacute;c CPU đa nh&acirc;n.</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;C&aacute;ch đ&acirc;y kh&ocirc;ng l&acirc;u, khi c&aacute;c sản phẩm thuộc thế hệ CPU thứ 7 của Intel, với t&ecirc;n m&atilde; Kaby Lake, đ&atilde; bắt đầu đổ bộ thị trường. Sự ch&uacute; &yacute; của cộng đồng c&ocirc;ng nghệ kh&ocirc;ng hướng về c&aacute;c d&ograve;ng sản phẩm <a href="http://www.tncstore.vn/cpu.html?attribute_id=43" target="_blank">Core i7</a>, <a href="http://www.tncstore.vn/cpu.html?attribute_id=2" target="_blank">Core i5</a>, &hellip; m&agrave; thay v&agrave;o đ&oacute; l&agrave; c&aacute;c d&ograve;ng sản phẩm Pentium phổ th&ocirc;ng với t&ecirc;n m&atilde; như: G4560, G4600, G4620. Ch&uacute;ng ta đều biết Pentium l&agrave; CPU gi&aacute; rẻ, hướng đến đối tượng phổ th&ocirc;ng. Nhưng Intel đ&atilde; th&ecirc;m v&agrave;o đ&oacute; một &ldquo;gia vị&rdquo; đ&atilde; qu&aacute; quen thuộc, đ&oacute; ch&iacute;nh l&agrave; c&ocirc;ng nghệ HyperThreading, vốn chỉ hiện diện ở 2 d&ograve;ng Core i3 v&agrave; Core i7. Điều n&agrave;y đ&atilde; khiến cho d&ograve;ng Pentium thế hệ Kaby Lake lần n&agrave;y trở th&agrave;nh một lựa chọn v&ocirc; c&ugrave;ng hấp dẫn đối với những ai c&oacute; hầu bao hạn hẹp, nhưng vẫn muốn được trải nghiệm hiệu năng xử l&yacute; tốt với c&aacute;c card đồ họa tầm trung hiện đang l&agrave;m mưa l&agrave;m gi&oacute; hiện nay như NVIDIA <a href="http://www.tncstore.vn/vga-card-man-hinh.html?attribute_id=17" target="_blank">GeForce GTX 1050</a>, <a href="http://www.tncstore.vn/vga-card-man-hinh.html?attribute_id=24" target="_blank">GeForce GTX 1050 Ti</a>; <a href="http://www.tncstore.vn/vga-card-man-hinh.html?attribute_id=30" target="_blank">AMD Radeon RX 460</a>, <a href="http://www.tncstore.vn/vga-card-man-hinh.html?attribute_id=46">Radeon RX 470</a>. Liệu rằng mong muốn được &ldquo;<strong>Lạc tr&ocirc;i</strong>&rdquo; trong thế giới ảo của nhiều game thủ c&oacute; trở th&agrave;nh hiện thực hơn bao giờ hết với c&aacute;c CPU Pentium mới n&agrave;y ? H&atilde;y c&ugrave;ng TNC Store kh&aacute;m ph&aacute; trong b&agrave;i viết lần n&agrave;y nh&eacute; !</p>

<p>&nbsp;</p>

<p>Th&ocirc;ng số kỹ thuật</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;Dưới đ&acirc;y l&agrave; th&ocirc;ng số kỹ thuật chi tiết của cả 3 sản phẩm được l&ecirc;n s&agrave;n đấu trong ng&agrave;y h&ocirc;m nay:</p>

<p><img src="http://www.tncstore.vn/image/catalog/BAI VIET/so sanh chip/b.jpg" style="width:750px" title="" /></p>

<p>&nbsp; &nbsp; Chỉ với sự bổ sung c&ocirc;ng nghệ HyperThreading, c&aacute;c d&ograve;ng CPU Pentium mới thế hệ Kaby Lake lần n&agrave;y đ&atilde; trở n&ecirc;n đ&aacute;ng gờm hơn bao giờ hết. C&aacute;c th&ocirc;ng số kỹ thuật đều gần như tương đương. Như đ&atilde; nhận định ở tr&ecirc;n, gi&aacute; th&agrave;nh của d&ograve;ng CPU Pentium lu&ocirc;n l&agrave; rất tốt, hứa hẹn đ&acirc;y l&agrave; một lựa chọn v&ocirc; c&ugrave;ng hot cho những game thủ muốn mua một chiếc PC gi&aacute; rẻ nhưng hiệu năng đạt được kh&ocirc;ng hề thua k&eacute;m c&aacute;c CPU Core i3 cao cấp hơn.</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;Đến đ&acirc;y, chắc rằng tất cả ch&uacute;ng ta sẽ rất t&ograve; m&ograve; rằng hiệu năng của c&aacute;c CPU n&agrave;y, cả về mặt hiệu năng th&ocirc;ng thường lẫn việc chơi game offline mới hiện nay l&agrave; như thế n&agrave;o ? Tiếp theo sẽ l&agrave; phần benchmark ứng dụng v&agrave; c&aacute;c tựa game hot hiện nay. &nbsp;</p>

<p>&nbsp;</p>

<p>Đ&aacute;nh gi&aacute; hiệu năng</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;Trước ti&ecirc;n, sẽ l&agrave; chi tiết cấu h&igrave;nh được sử dụng cho việc đ&aacute;nh gi&aacute; hiệu năng của 3 chiếc CPU ng&agrave;y h&ocirc;m nay, cụ thể như sau:</p>

<ul>
	<li>Mainboard Asus Z170-P</li>
	<li>Ram 16Gb DDR4 2133 MHz Kingston HyperX Fury</li>
	<li>VGA <a href="http://www.tncstore.vn/vga-card-man-hinh/vga-gigabyte-gv-n105toc-4gb.html" target="_blank">Gigabyte GeForce GTX 1050 Ti 4Gb OC</a></li>
</ul>

<p>&nbsp;&nbsp;&nbsp;&nbsp;N&agrave;o, ch&uacute;ng ta c&ugrave;ng &ldquo;c&acirc;n đong đo đếm&rdquo; th&ocirc;i !&nbsp;</p>

<p><img src="http://www.tncstore.vn/image/catalog/BAI VIET/so sanh chip/c.jpg" style="width:750px" title="" /></p>

<p>&nbsp; &nbsp; H&atilde;y c&ugrave;ng khởi động với Cinebech R15, một ứng dụng chuy&ecirc;n đ&aacute;nh gi&aacute; sức mạnh xử l&yacute; của CPU th&ocirc;ng qua c&aacute;c t&aacute;c vụ dựng h&igrave;nh ảnh. Điểm số giữa 3 CPU đều kh&aacute; s&iacute;t sao, kh&ocirc;ng lấy g&igrave; l&agrave;m lạ khi 3 CPU đều c&oacute; th&ocirc;ng số gần như tương tự nhau, c&oacute; chăng chỉ l&agrave; ch&ecirc;nh lệch tốc độ xử l&yacute; 100-200 MHz chuyển biến th&agrave;nh khoảng c&aacute;ch xấp xỉ từ 10-20 điểm cho từng CPU. Đ&acirc;y l&agrave; một điều c&oacute; thể dự đo&aacute;n trước được, v&agrave; đ&uacute;ng l&agrave; n&oacute; đ&atilde; diễn tiến như vậy.</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;Kế tiếp, sẽ l&agrave; phần đo đạc hiệu năng của một số tựa game đang hot hiện nay. Với nền tảng l&agrave; chiếc card đồ họa GeForce GTX 1050 Ti đang v&ocirc; c&ugrave;ng hot hiện nay trong giới game thủ cũng như những người đam m&ecirc; c&ocirc;ng nghệ hiện nay. Cả ba CPU n&agrave;y đều l&agrave; một &ldquo;nửa c&ograve;n lại&rdquo; v&ocirc; c&ugrave;ng tương xứng đối với chiếc card đồ họa tầm trung n&agrave;y. Liệu rằng sẽ c&oacute; sự kh&aacute;c biệt n&agrave;o mang t&iacute;nh &ldquo;đột biến&rdquo; hay kh&ocirc;ng, hay mọi thứ sẽ lại ăn b&agrave;i như kịch bản ph&iacute;a tr&ecirc;n với ứng dụng đo hiệu năng th&ocirc;ng thường ?</p>

<div>&nbsp;&nbsp;&nbsp;&nbsp;V&agrave; đ&acirc;y l&agrave; c&aacute;c kết quả benchmark:</div>

<div><img src="http://www.tncstore.vn/image/catalog/BAI VIET/so sanh chip/d.jpg" style="width:750px" title="" /></div>

<div><img src="http://www.tncstore.vn/image/catalog/BAI VIET/so sanh chip/e.jpg" style="width:750px" title="" /></div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;Vậy l&agrave; kịch bản đ&atilde; lặp lại một lần nữa, CPU Pentium G4560 - với tốc độ xử l&yacute; thấp nhất, ch&iacute;nh l&agrave; th&iacute; sinh c&oacute; điểm số đạt được thấp nhất. T&ugrave;y thuộc v&agrave;o tựa game n&agrave;o được benchmark, th&igrave; khoảng c&aacute;ch ch&ecirc;nh lệch giữa 3 CPU sẽ c&oacute; những sự thay đổi nhất định, nhưng phải nhấn mạnh một điều rằng c&aacute;c khoảng c&aacute;ch đ&oacute; thực sự kh&ocirc;ng qu&aacute; đ&aacute;ng kể. Điều đ&aacute;ng n&oacute;i, ch&iacute;nh l&agrave; việc Pentium G4600 lu&ocirc;n b&aacute;m s&aacute;t sao với Core i3 6100 tại tất cả c&aacute;c tựa game được benchmark lần n&agrave;y. Một CPU Pentium c&oacute; xung nhịp cao hơn đ&atilde; c&oacute; thể su&yacute;t so&aacute;t bắt kịp CPU Core i3 cao cấp hơn v&agrave; c&oacute; gi&aacute; cao hơn kh&aacute; nhiều. V&agrave; cũng phải nhắc lại rằng, G4560 vẫn cho một hiệu năng kh&aacute; tốt, c&oacute; thể l&agrave;m h&agrave;i l&ograve;ng người sử dụng với nhiều tựa game kh&aacute;c nhau hiện nay. Từ đ&oacute;, ch&uacute;ng ta c&oacute; được kết luận, rằng d&ograve;ng sản phẩm Pentium G thế hệ Kaby Lake mới n&agrave;y ch&iacute;nh l&agrave; sự lựa chọn v&ocirc; c&ugrave;ng hấp dẫn cho những người đam m&ecirc; game c&oacute; hầu bao hạn hẹp.&nbsp;</div>

<div>&nbsp;</div>

<div>&nbsp; &nbsp; Kết luận</div>

<div>&nbsp; &nbsp; Với c&aacute;c kết quả benchmark nhận được như tr&ecirc;n, ch&uacute;ng ta c&oacute; được những nhận định như sau:</div>

<ul>
	<li>Intel Core i3 6100: Hiệu năng vẫn rất cao v&agrave; ổn định, đ&uacute;ng chất với thương hiệu v&agrave; đ&iacute;ch ngắm của d&ograve;ng sản phẩm hướng đến đối tượng tầm trung của Intel. Những ai vẫn tin tưởng v&agrave; lựa chọn d&ograve;ng sản phẩm i3 v&igrave; truyền thống của d&ograve;ng đ&oacute; vẫn ho&agrave;n to&agrave;n c&oacute; thể h&agrave;i l&ograve;ng với CPU n&agrave;y.</li>
	<li>Intel Pentium G4560: Ng&ocirc;i sao s&aacute;ng gi&aacute; mới trong ph&acirc;n kh&uacute;c phổ th&ocirc;ng, nhờ v&agrave;o sức mạnh của một &quot;gia vị&quot; tuy cũ m&agrave; mới - c&ocirc;ng nghệ si&ecirc;u ph&acirc;n luồng HyperThreading, cộng với mức gi&aacute; v&ocirc; c&ugrave;ng cạnh tranh của d&ograve;ng sản phẩm Pentium n&oacute;i chung, th&igrave; G4560 sẽ l&agrave; một c&aacute;i t&ecirc;n v&ocirc; c&ugrave;ng &quot;hot&quot; đối với những ai muốn x&acirc;y dựng một chiếc PC gi&aacute; rẻ nhưng hiệu năng vẫn đủ cao để đ&aacute;p ứng việc chơi game cũng như một số t&aacute;c vụ hằng ng&agrave;y.</li>
	<li>Intel Pentium G4600: L&agrave; kẻ đứng giữa 2 chiến binh kể tr&ecirc;n, vậy nhưng G4600 đ&atilde; thể hiện một c&aacute;ch rất ấn tượng, b&aacute;m rất s&aacute;t sản phẩm cao cấp hơn - i3 6100, trong khi đ&oacute; c&oacute; mức gi&aacute; thấp hơn tương đối so với người anh cao cấp hơn m&igrave;nh trong gia đ&igrave;nh. Nếu như cơn sốt G4560 tạo ra l&agrave; qu&aacute; lớn, v&agrave; bạn cũng kh&ocirc;ng thật sự mặn m&agrave; với d&ograve;ng Core i3 truyền thống ở ph&acirc;n kh&uacute;c phổ th&ocirc;ng nữa, th&igrave; đ&acirc;y l&agrave; một lựa chọn cực k&igrave; s&aacute;ng gi&aacute;.</li>
</ul>

<div>&nbsp;&nbsp;&nbsp;&nbsp;C&aacute;c sản phẩm đều đang được b&aacute;n tại <a href="http://tncstore.vn">TNC Store</a>, cụ thể như sau:</div>

<ul>
	<li>Intel Pentium G4560 Kaby Lake - tham khảo <a href="http://www.tncstore.vn/cpu/cpu-intel-pentium-g4560-kabylake.html" target="_blank">tại đ&acirc;y</a></li>
	<li>Intel Pentium G4600 Kaby Lake - tham khảo <a href="http://www.tncstore.vn/cpu/cpu-intel-dc-g4600.html">tại đ&acirc;y</a></li>
	<li>Intel Core i3 6100 Skylake - tham khảo <a href="http://www.tncstore.vn/cpu/cpu-intel-core-i3-6100.html" target="_blank">tại đ&acirc;y</a></li>
</ul>

<p>&nbsp;</p>

<p>-----------------------------------------------------------------------------</p>

<p>&nbsp;</p>

<p>Showroom: 222 L&ecirc; Thanh Nghị - Hai B&agrave; Trưng - H&agrave; Nội</p>

<p>Tel: (04) 36288790 - 0983623990&nbsp;</p>

<p>Hỗ trợ tư vấn Online 24/07</p>

<p>Ship h&agrave;ng to&agrave;n quốc - Giao h&agrave;ng miễn ph&iacute; trong nội th&agrave;nh H&agrave; Nội</p>

<p>Website: www.tncstore.vn&nbsp;</p>
', N'/Data/images/newses/tintucmoinhat/a.jpg', NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-06T21:33:48.793' AS DateTime), N'quang', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (37, N'Đánh Giá Hiệu Năng 3 Card Đồ Họa GTX 1050 Ti Bán Chạy Nhất Trong Năm 2017', N'Đánh Gía Hiệu Năng 3 Card Đồ Họa GTX 1050 Ti Bán Chạy Nhất Trong Năm 2017', N'danh-gia-hieu-nang-3-card-do-hoa-gtx-1050-ti-ban-chay-nhat-trong-nam-2017', N'NVIDIA GeForce GTX 1050 Ti hiện đang là lựa chọn vô cùng sáng giá tại phân khúc trung cấp hiện nay đối với người dùng máy tính ...', N'<p><img src="http://www.tncstore.vn/image/catalog/BAI VIET/so sanh GTX 1050 Ti/DSC01550 copy.jpg" style="width:750px" /></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;Sự ra mắt của kiến tr&uacute;c GPU mới nhất của NVIDIA v&agrave;o th&aacute;ng 5 năm ngo&aacute;i, mang t&ecirc;n Pascal, một lần nữa đ&atilde; tạo ra được sức h&uacute;t v&ocirc; c&ugrave;ng lớn đối với giới game thủ v&agrave; những người đam m&ecirc; c&ocirc;ng nghệ tr&ecirc;n to&agrave;n thế giới. Kiến tr&uacute;c Pascal đem lại nhiều cải tiến mới, mạnh mẽ, đưa hiệu năng xử l&yacute; đồ họa l&ecirc;n một tầm cao mới. Trong số c&aacute;c d&ograve;ng sản phẩm GPU Pascal được đưa ra, th&igrave; nổi bật nhất đ&oacute; ch&iacute;nh l&agrave; GPU <a href="http://www.tncstore.vn/vga-card-man-hinh.html?attribute_id=24" target="_blank">GeForce GTX 1050 Ti</a>, một ứng cử vi&ecirc;n s&aacute;ng gi&aacute; tại ph&acirc;n kh&uacute;c card đồ họa tầm trung, đ&aacute;p ứng được tốt nhu cầu của phần lớn c&aacute;c game thủ hiện nay v&agrave; trong tương lai.</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;H&atilde;y c&ugrave;ng xem th&ocirc;ng số kỹ thuật cơ bản m&agrave; GeForce GTX 1050 Ti đem lại cho ch&uacute;ng ta nh&eacute;:</p>

<ul>
	<li>768 nh&acirc;n CUDA - kiến tr&uacute;c Pascal, t&ecirc;n m&atilde; GP107</li>
	<li>Bộ nhớ dung lượng 4Gb GDDR5, độ rộng băng th&ocirc;ng 128 bit</li>
	<li>Base Core Clock: 1290 MHz</li>
	<li>Boost Core Clock: 1392 MHz</li>
	<li>Memory Speed: 7 GHz</li>
	<li>Hỗ trợ: DirectX 12, OpenGL 4.5, Vulkan API, NVIDIA ANSEL, NVIDIA G-Sync, NVIDIA GameStream, GPU Boost 3.0</li>
	<li>Điện năng ti&ecirc;u thụ: 75 W</li>
	<li>C&ocirc;ng suất nguồn tối thiểu: 300 W</li>
</ul>

<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Nh&igrave;n chung, những th&ocirc;ng số kỹ thuật tr&ecirc;n l&agrave; rất đ&aacute;ng gi&aacute;, chứng tỏ một sản phẩm hiệu năng cao ở ph&acirc;n kh&uacute;c tầm trung trong mảng card đồ họa hiện nay. V&agrave; như thường lệ, những t&ecirc;n tuổi lớn tr&ecirc;n thị trường ph&acirc;n kh&uacute;c linh kiện m&aacute;y t&iacute;nh lại đưa ra những sản phẩm của ri&ecirc;ng họ với những điểm nổi bật kh&aacute;c nhau nhằm đ&aacute;p ứng được nhu cầu của người ti&ecirc;u d&ugrave;ng. Ng&agrave;y h&ocirc;m nay, h&atilde;y c&ugrave;ng TNCStore t&igrave;m hiểu ba trong số rất nhiều sản phẩm GeForce GTX 1050 Ti hiện c&oacute; tr&ecirc;n thị trường, để xem ngoại h&igrave;nh v&agrave; hiệu năng của ch&uacute;ng như thế n&agrave;o nh&eacute; !&nbsp;</p>

<p>-----------------------------------------------------------</p>

<p><strong>Gigabyte GeForce GTX 1050 Ti OC 4G (GV-N105TOC-4GD)</strong></p>

<p><img src="http://www.tncstore.vn/image/catalog/BAI VIET/so sanh GTX 1050 Ti/Gigabyte OC/DSC01551 copy.jpg" style="width:750px" /></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;Ấn tượng đầu ti&ecirc;n ch&iacute;nh l&agrave; ở vỏ hộp b&ecirc;n ngo&agrave;i, c&oacute; m&agrave;u đen c&ugrave;ng v&agrave;i n&eacute;t chấm ph&aacute; m&agrave;u xanh NVIDIA quen thuộc, với k&iacute;ch thước kh&ocirc;ng hề lớn. Nổi bật nhất l&agrave; đ&ocirc;i mắt r&ocirc;-bốt hiện đại v&agrave; kh&aacute; &ldquo;ngầu&rdquo;, mang t&ocirc;ng m&agrave;u da cam/v&agrave;ng đồng chủ đạo. Thương hiệu NVIDIA GeForce GTX, t&ecirc;n GPU GeForce GTX 1050 Ti được thể hiện một c&aacute;ch r&otilde; r&agrave;ng, gi&uacute;p người d&ugrave;ng dễ nhận biết sản phẩm tr&ecirc;n hộp. Những th&ocirc;ng số nổi bật như OC Edition, tản nhiệt thương hiệu Windforce độc quyền của Gigabyte, bộ nhớ 4Gb GDDR5, c&ugrave;ng với c&aacute;c t&iacute;nh năng hỗ trợ như Game Ready Drivers, DirectX 12, NVIDIA GameWorks.&nbsp;</p>

<p><img src="http://www.tncstore.vn/image/catalog/BAI VIET/so sanh GTX 1050 Ti/Gigabyte OC/DSC01553 copy.jpg" style="width:750px" /></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;Lật sang mặt sau của hộp, sẽ l&agrave; những giới thiệu cơ bản về hệ thống tản nhiệt hai quạt mang thương hiệu WindForce độc quyền của Gigabyte. Đ&oacute; l&agrave; hệ thống tản nhiệt bao gồm 2 chiếc quạt với k&iacute;ch cỡ 80 mm, c&ugrave;ng với thiết kế c&aacute;nh quạt đặc biệt độc nhất, từ đ&oacute; đem lại hiệu năng tản nhiệt cao hơn v&agrave; nhiệt độ hoạt động thấp hơn. B&ecirc;n cạnh đ&oacute;, tiện &iacute;ch &eacute;p xung đơn giản mang t&ecirc;n XTREME Utility, cho ph&eacute;p người sử dụng c&oacute; thể dễ d&agrave;ng điều chỉnh card đồ họa theo những y&ecirc;u cầu kh&aacute;c nhau m&agrave; kh&ocirc;ng cần phải c&oacute; kiến thức về việc &eacute;p xung; hay việc phải điều chỉnh thủ c&ocirc;ng một c&aacute;ch phức tạp v&agrave; kh&oacute; khăn. C&ugrave;ng với đ&oacute; l&agrave; c&aacute;c th&ocirc;ng tin cơ bản của card được thể hiện dưới nhiều ng&ocirc;n ngữ kh&aacute;c nhau, y&ecirc;u cầu về nguồn điện, c&ocirc;ng suất ti&ecirc;u thụ, c&aacute;c cổng ra hiển thị c&oacute; tr&ecirc;n card, th&ocirc;ng tin cụ thể của nh&agrave; sản xuất, v.v &hellip;</p>

<p><img src="http://www.tncstore.vn/image/catalog/BAI VIET/so sanh GTX 1050 Ti/Gigabyte OC/DSC01567 copy.jpg" style="width:750px" /></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;Khi mở hộp ra, ch&uacute;ng ta sẽ nhận thấy được lớp xốp bảo vệ, c&ugrave;ng với chiếc card đ&atilde; được bọc sẵn trong bao giấy chống t&iacute;ch điện từ. Mọi thứ c&oacute; vẻ vẫn ổn cho đến thời điểm n&agrave;y.</p>

<p><img src="http://www.tncstore.vn/image/catalog/BAI VIET/so sanh GTX 1050 Ti/Gigabyte OC/DSC01570 copy.jpg" style="width:750px" /></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;V&agrave; kh&ocirc;ng ngo&agrave;i dự đo&aacute;n, chiếc card n&agrave;y c&oacute; k&iacute;ch thước kh&ocirc;ng qu&aacute; lớn v&agrave; hầm hố, tr&ocirc;ng rất gọn g&agrave;ng đối với một card đồ họa tầm trung hiệu năng tốt. Đ&uacute;ng với những g&igrave; đ&atilde; được giới thiệu tại mặt hộp, hệ thống tản nhiệt Windforce với t&ocirc;ng m&agrave;u đen chủ đạo c&ugrave;ng v&agrave;i đường n&eacute;t m&agrave;u da cam nổi bật l&ecirc;n ph&iacute;a tr&ecirc;n, bao gồm 2 quạt k&iacute;ch thước 80mm, c&ugrave;ng logo Gigabyte m&agrave;u trắng. Ch&acirc;n kết nối vẫn theo ti&ecirc;u chuẩn PCI-Express 3.0 x16 thịnh h&agrave;nh hiện nay. Card c&oacute; k&iacute;ch thước 229 mm x 118 mm x 40 mm (d&agrave;i x rộng x cao).&nbsp;</p>

<p><img src="http://www.tncstore.vn/image/catalog/BAI VIET/so sanh GTX 1050 Ti/Gigabyte OC/DSC01574 copy.jpg" style="width:750px" /></p>

<p>&nbsp; &nbsp; Phần tản nhiệt của card bao trọn l&ecirc;n phần tr&ecirc;n của card, v&agrave; ch&uacute;ng ta cũng c&oacute; thể nh&igrave;n thấy được phần l&otilde;i tản nhiệt bằng nh&ocirc;m m&agrave;u trắng th&ocirc;ng qua v&agrave;i khe hở. Điểm đ&aacute;ng lưu &yacute; l&agrave; kh&ocirc;ng c&oacute; cổng nguồn phụ PCI-Express 6 pin, một điểm cộng cho chiếc card n&agrave;y. Về tổng thể, chiếc card tr&ocirc;ng kh&aacute; chắc chắn v&agrave; bền vững, đ&uacute;ng chất của thương hiệu Gigabyte từ l&acirc;u.</p>

<p><img src="http://www.tncstore.vn/image/catalog/BAI VIET/so sanh GTX 1050 Ti/Gigabyte OC/DSC01580 copy.jpg" style="width:750px" /></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;Kết nối xuất m&agrave;n h&igrave;nh tr&ecirc;n model Gigabyte n&agrave;y kh&aacute; l&agrave; hiện đại v&agrave; đầy đủ, bao gồm 1 cổng DisplayPort, 1 cổng HDMI, 1 cổng Dual Link DVI-D. Bạn c&oacute; thể d&ugrave;ng bất cứ m&agrave;n h&igrave;nh n&agrave;o hiện đại với card m&agrave;n h&igrave;nh n&agrave;y.</p>

<p>-----------------------------------------------------------</p>

<div><strong>MSI GeForce GTX 1050 Ti Gaming X 4G</strong></div>

<div><img src="http://www.tncstore.vn/image/catalog/BAI VIET/so sanh GTX 1050 Ti/MSI Gaming X/DSC01560 copy.jpg" style="width:750px" /></div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;D&ograve;ng sản phẩm Gaming Series của MSI đ&atilde; g&acirc;y ấn tượng với nhiều người, với thiết kế hầm hố v&agrave; đồ sộ, mang đậm chất game thủ. Điều đ&oacute; kh&ocirc;ng l&agrave; ngoại lệ đối với phi&ecirc;n bản NVIDIA GeForce GTX 1050 Ti n&agrave;y. Vỏ hộp tổng thể l&agrave; m&agrave;u đỏ tươi đ&atilde; qu&aacute; quen thuộc của MSI Gaming Series. Nổi bật ngay giữa vỏ hộp ch&iacute;nh l&agrave; h&igrave;nh ảnh card, với t&ocirc;ng m&agrave;u đỏ đen v&agrave; hệ thống tản nhiệt độc quyền của series Gaming từ h&atilde;ng MSI. Thương hiệu Gaming X được thể hiện r&otilde; r&agrave;ng ở g&oacute;c dưới b&ecirc;n tay tr&aacute;i. C&ugrave;ng với đ&oacute;, tương tự như sản phẩm Gigabyte, c&aacute;c logo NVIDIA GeForce GTX, GeForce GTX 1050 Ti, c&aacute;c c&ocirc;ng nghệ v&agrave; t&iacute;nh năng như Game Ready Drivers, DirectX 12, NVIDIA GameWorks cũng được thể hiện tr&ecirc;n mặt trước của hộp.&nbsp;</div>

<div><img src="http://www.tncstore.vn/image/catalog/BAI VIET/so sanh GTX 1050 Ti/MSI Gaming X/DSC01564 copy.jpg" style="width:750px" /></div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mặt sau của vỏ hộp giới thiệu một c&aacute;ch chi tiết hơn về những th&ocirc;ng tin quan trọng của sản phẩm. C&oacute; 3 đặc điểm nổi bật được thể hiện. Thứ nhất, đ&oacute; l&agrave; đ&egrave;n LED c&oacute; thể điều chỉnh m&agrave;u sắc t&ugrave;y &yacute; để ph&ugrave; hợp với tổng thể của chiếc PC mỗi người. Thứ hai, v&agrave; cũng l&agrave; nổi bật nhất, ch&iacute;nh l&agrave; hệ thống tản nhiệt MSI Twin Froz thế hệ thứ 6, cung cấp vẻ ngo&agrave;i v&agrave; hiệu năng xuất ch&uacute;ng v&agrave; t&aacute;ch biệt so với c&aacute;c d&ograve;ng sản phẩm cạnh tranh kh&aacute;c tr&ecirc;n thị trường, với xung nhịp OC sẵn nhằm tăng cường hiệu năng chơi game ngay từ khi mở hộp. Cuối c&ugrave;ng, l&agrave; MSI Gaming App, gi&uacute;p t&ugrave;y chỉnh hiệu năng card tức th&igrave;, điều khiển đ&egrave;n LED c&ugrave;ng nhiều t&iacute;nh năng đặc biệt kh&aacute;c để đem đến trải nghiệm một c&aacute;ch tốt nhất cho người sử dụng. Ngo&agrave;i ra, c&aacute;c t&iacute;nh năng nổi bật được hỗ trợ, y&ecirc;u cầu cấu h&igrave;nh tối thiểu, th&ocirc;ng số kỹ thuật cơ bản, cũng được tr&igrave;nh b&agrave;y rất đầy đủ v&agrave; dễ nh&igrave;n cho người đọc. Một điểm cộng đ&aacute;ng c&oacute; d&agrave;nh cho MSI tại kh&iacute;a cạnh n&agrave;y.</div>

<div><img src="http://www.tncstore.vn/image/catalog/BAI VIET/so sanh GTX 1050 Ti/MSI Gaming X/DSC01601 copy.jpg" style="width:750px" /></div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Khi mở hộp ra, trong đ&oacute; sẽ l&agrave; một chiếc hộp nhỏ hơn, chứa card c&ugrave;ng c&aacute;c phụ kiện v&agrave; giấy tờ đi k&egrave;m cần thiết. C&aacute;c phụ kiện v&agrave; giấy tờ k&egrave;m theo được để trong một chiếc hộp vu&ocirc;ng, đặt ph&iacute;a tr&ecirc;n card. Lấy được chiếc hộp đ&oacute; ra, ch&uacute;ng ta sẽ thấy card, cũng được bọc bởi lớp giấy chống t&iacute;ch điện từ. Quả thật, MSI đ&atilde; đầu tư rất nhiều trong kh&acirc;u tr&igrave;nh b&agrave;y v&agrave; đ&oacute;ng g&oacute;i sản phẩm của m&igrave;nh, tạo ra một ấn tượng lớn đối với người sử dụng khi trải nghiệm &ldquo;mở hộp&rdquo;. Th&ecirc;m một điểm cộng nữa d&agrave;nh cho MSI.&nbsp;</div>

<div><img src="http://www.tncstore.vn/image/catalog/BAI VIET/so sanh GTX 1050 Ti/MSI Gaming X/DSC01609 copy.jpg" style="width:750px" /></div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;Ấn tượng đầu ti&ecirc;n khi tiếp x&uacute;c với phi&ecirc;n bản GTX 1050 Ti Gaming X n&agrave;y, đ&oacute; ch&iacute;nh l&agrave; truyền thống d&ograve;ng sản phẩm Gaming Series của MSI vẫn được giữ nguy&ecirc;n vẹn &ndash; t&ocirc;ng m&agrave;u đỏ đen c&ugrave;ng k&iacute;ch thước card lớn v&agrave; rất hầm hố, đem lại một cảm gi&aacute;c đẳng cấp cũng như chất lượng cao về mọi mặt từ thiết kế đến c&aacute;c linh kiện của chiếc card. Card c&oacute; k&iacute;ch thước 229 mm x 131 mm x 39 mm (d&agrave;i x rộng x cao), cũng chiếm 2 slot, to hơn kh&aacute; nhiều so với chiếc card Gigabyte. Kết nối PCI Express 3.0 x16 vẫn hiện diện. C&ugrave;ng với đ&oacute;, một chiếc ống đồng ở heatsink c&oacute; k&iacute;ch thước 3mm hiện l&ecirc;n ở ph&iacute;a tr&ecirc;n của card.</div>

<div><img src="http://www.tncstore.vn/image/catalog/BAI VIET/so sanh GTX 1050 Ti/MSI Gaming X/DSC01614 copy.jpg" style="width:750px" /></div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Logo LED MSI hiện diện tr&ecirc;n mặt tr&ecirc;n card, c&ugrave;ng với đ&oacute; l&agrave; h&igrave;nh ảnh của heatsink bằng đồng sơn m&agrave;u trắng bạc, v&agrave; cổng nguồn PCI-Express 6 pin. &nbsp;</div>

<div><img src="http://www.tncstore.vn/image/catalog/BAI VIET/so sanh GTX 1050 Ti/MSI Gaming X/DSC01621 copy.jpg" style="width:750px" /></div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;Cũng kh&ocirc;ng c&oacute; kh&aacute;c biệt g&igrave; so với card Gigabyte, phi&ecirc;n bản Gaming X của MSI cũng bao gồm 3 cổng kết nối m&agrave;n h&igrave;nh, bao gồm 1 cổng DisplayPort, 1 cổng HDMI, 1 cổng Dual Link DVI-D. C&oacute; vẻ đ&acirc;y l&agrave; xu thế chung của c&aacute;c card đồ họa tầm trung hiện nay.&nbsp;</div>

<div>-----------------------------------------------------------</div>

<div><strong>Galax GeForce GTX 1050 Ti EXOC 4G</strong></div>

<div><img src="http://www.tncstore.vn/image/catalog/BAI VIET/so sanh GTX 1050 Ti/Galax EXOC/DSC01555 copy.jpg" style="width:750px" /></div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;Kh&aacute;c với hai sản phẩm tr&ecirc;n, Galax đ&atilde; lựa chọn một thiết kế hộp sản phẩm kh&aacute; mới lạ, đ&oacute; l&agrave; chiếc hộp c&oacute; h&igrave;nh chữ nhật d&agrave;i. T&ocirc;ng m&agrave;u hộp m&agrave; m&agrave;u n&acirc;u v&agrave;ng đen, với h&igrave;nh ảnh một nh&acirc;n vật tr&ocirc;ng đậm chất &ldquo;s&aacute;t thủ&rdquo; &ndash; c&ugrave;ng với d&ograve;ng c&acirc;u hỏi kh&aacute; khi&ecirc;u kh&iacute;ch &ldquo;What&rsquo;s your game?&rdquo;. Ngo&agrave;i ra, tr&ecirc;n hộp c&ograve;n c&oacute; c&aacute;c th&ocirc;ng tin model đầy đủ - GTX 1050 Ti EXOC, c&ugrave;ng c&aacute;c th&ocirc;ng số cơ bản như bộ nhớ 4Gb GDDR5, đầu cấp nguồn PCI-Express 6 pin, khe cắm PCI-Express 3.0, c&aacute;c cổng ra m&agrave;n h&igrave;nh bao gồm 2 cổng Dual Link DVI-D, 1 cổng HDMI v&agrave; 1 cổng DisplayPort 1.4.</div>

<div><img src="http://www.tncstore.vn/image/catalog/BAI VIET/so sanh GTX 1050 Ti/Galax EXOC/DSC01559 copy.jpg" style="width:750px" /></div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ph&iacute;a đằng sau của hộp l&agrave; những phần th&ocirc;ng tin giới thiệu cụ thể hơn về sản phẩm cũng như thương hiệu. Như việc biến chiếc m&aacute;y t&iacute;nh của bạn trở th&agrave;nh một rạp h&aacute;t tại gia, Windows tận dụng card để xử l&yacute; h&igrave;nh ảnh, hỗ trợ ra nhiều m&agrave;n h&igrave;nh, hiển thị tại độ ph&acirc;n giải 4K Ultra HD. C&ugrave;ng với đ&oacute; l&agrave; c&aacute;c tiện &iacute;ch m&agrave; card đem lại. Ngo&agrave;i ra, mặt sau hộp c&ograve;n chứa c&aacute;c th&ocirc;ng tin như: th&agrave;nh phần sản phẩm trong hộp, th&ocirc;ng tin nh&agrave; sản xuất, c&aacute;c quy chuẩn, v.v&hellip;</div>

<div><img src="http://www.tncstore.vn/image/catalog/BAI VIET/so sanh GTX 1050 Ti/Galax EXOC/DSC01581 copy.jpg" style="width:750px" /></div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Th&ocirc;ng tin cụ thể hơn của sản phẩm được in rất đầy đủ v&agrave; chi tiết ở phần mặt dưới hộp &ndash; như c&aacute;c t&iacute;nh năng ch&iacute;nh quan trọng, y&ecirc;u cầu cấu h&igrave;nh tối thiểu &hellip; B&ecirc;n cạnh đ&oacute;, c&ograve;n c&oacute; c&aacute;c thương hiệu h&igrave;nh ảnh quen thuộc của NVIDIA, GeForce GTX v&agrave; GeForce Experience.</div>

<div><img src="http://www.tncstore.vn/image/catalog/BAI VIET/so sanh GTX 1050 Ti/Galax EXOC/DSC01584 copy.jpg" style="width:750px" /></div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sản phẩm của Galax được đ&oacute;ng trong hộp ri&ecirc;ng, m&agrave;u đen tuyền. B&ecirc;n trong l&agrave; chiếc card được bao bởi lớp giấy chống t&iacute;ch điện từ, v&agrave; một adapter chuyển từ cổng 4 pin Molex sang PCI-Express 6 pin, c&ugrave;ng với 1 c&aacute;i đĩa CD driver v&agrave; phần mềm (th&ocirc;i cứ l&ecirc;n mạng m&agrave; down cho n&oacute; l&agrave;nh).</div>

<div><img src="http://www.tncstore.vn/image/catalog/BAI VIET/so sanh GTX 1050 Ti/Galax EXOC/DSC01589 copy.jpg" style="width:750px" /></div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Card c&oacute; k&iacute;ch thước trung b&igrave;nh, kh&aacute; giống với card Gigabyte, kh&ocirc;ng thật sự qu&aacute; hầm hố. Tản nhiệt m&agrave;u đen c&ugrave;ng v&agrave;i đường n&eacute;t m&agrave;u xanh dương l&agrave;m nổi bật l&ecirc;n phần tản nhiệt của card. Hai quạt tản nhiệt k&iacute;ch thước 80 mm. Tấm tản nhiệt bằng nh&ocirc;m k&iacute;ch thước tương đối lớn so với bo mạch card, c&ugrave;ng một ống đồng heatpipe tản nhiệt ở ph&iacute;a tr&ecirc;n.&nbsp;</div>

<div><img src="http://www.tncstore.vn/image/catalog/BAI VIET/so sanh GTX 1050 Ti/Galax EXOC/DSC01592 copy.jpg" style="width:750px" /></div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ta c&oacute; thể nh&igrave;n thấy được phần nhựa của tản nhiệt bao l&ecirc;n ph&iacute;a tr&ecirc;n, c&ugrave;ng với ống heatpipe bằng đồng. Ngo&agrave;i ra ch&uacute;ng ta vẫn c&oacute; thể thấy đầu nguồn PCI-Express 6 pin hướng l&ecirc;n ph&iacute;a tr&ecirc;n card, tương tự như chiếc card MSI Gaming X m&agrave; ch&uacute;ng ta đang c&ugrave;ng tham khảo.</div>

<div><img src="http://www.tncstore.vn/image/catalog/BAI VIET/so sanh GTX 1050 Ti/Galax EXOC/DSC01595 copy.jpg" style="width:750px" /></div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;C&oacute; một sự thay đổi kh&aacute; th&uacute; vị ở đ&acirc;y, khi ch&uacute;ng ta c&oacute; thể thấy được c&oacute; đến 2 cổng Dual Link DVI-D, v&agrave; vẫn 1 cổng DisplayPort v&agrave; 1 cổng HDMI. Như vậy l&agrave; nhu cầu d&ugrave;ng đa m&agrave;n h&igrave;nh ở phi&ecirc;n bản Galax EXOC ho&agrave;n to&agrave;n c&oacute; thể đ&aacute;p ứng được.</div>

<div>
<p>-----------------------------------------------------------</p>

<p>So s&aacute;nh tổng quan b&ecirc;n ngo&agrave;i</p>

<p><img src="http://www.tncstore.vn/image/catalog/BAI VIET/so sanh GTX 1050 Ti/DSC01632 copy.jpg" style="width:750px" /></p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;Tựu chung, th&igrave; cả ba sản phẩm đều c&oacute; những n&eacute;t ri&ecirc;ng biệt của m&igrave;nh, đồng thờ đ&atilde; thể hiện được đặc trưng v&agrave; phong c&aacute;ch thiết kế sản phẩm của từng h&atilde;ng. T&ugrave;y v&agrave;o sở th&iacute;ch của mỗi người, m&agrave; c&oacute; thể lựa chọn một chiếc card sao cho ph&ugrave; hợp nhất với tổng thể của m&aacute;y, hay đơn giản l&agrave; muốn chiếc card l&agrave; linh kiện nổi bật nhất trong case. Tuy nhi&ecirc;n, cũng phải c&ocirc;ng nhận một điều rằng, phi&ecirc;n bản MSI Gaming X thật sự nổi trội hơn về bề ngo&agrave;i, cũng như c&aacute;ch đ&oacute;ng g&oacute;i v&agrave; tr&igrave;nh b&agrave;y sản phẩm tr&ecirc;n hộp cầu kỳ v&agrave; c&ocirc;ng phu hơn so với 2 sản phẩm c&ograve;n lại. Galax EXOC cũng c&oacute; một chiếc hộp được chăm ch&uacute;t hơn một &iacute;t đỉnh so với Gigabyte OC, đ&oacute; cũng l&agrave; một điều đủ l&agrave;m n&ecirc;n kh&aacute;c biệt. D&ugrave; sao cũng l&agrave; ph&acirc;n kh&uacute;c tầm trung rồi, tội g&igrave; kh&ocirc;ng đầu tư nhỉ ?&nbsp;</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;Chấm điểm MSI: 9/10 &ndash; Gigabyte: 8/10 &ndash; Galax 8/10</p>

<p>-----------------------------------------------------------</p>
</div>

<div>So s&aacute;nh hiệu năng</div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;Dưới đ&acirc;y l&agrave; bảng tổng kết th&ocirc;ng số kỹ thuật của cả 3 card, c&ugrave;ng với th&ocirc;ng số ti&ecirc;u chuẩn m&agrave; NVIDIA đưa ra đối với GPU GeForce GTX 1050 Ti:</div>

<div><img src="http://www.tncstore.vn/image/catalog/BAI VIET/so sanh GTX 1050 Ti/specs_1.jpg" style="width:750px" /></div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;C&oacute; 1 điều dễ d&agrave;ng nhận ra, khi m&agrave; th&ocirc;ng số kỹ thuật của cả ba card đều nhỉnh hơn so với bản gốc của h&atilde;ng sản xuất NVIDIA đưa ra. Mức Core Clock đều cao hơn kh&aacute; nhiều, đặc biệt với 2 chiếc card MSI v&agrave; Gigabyte c&ograve;n c&oacute; 2 mode kh&aacute;c nhau được định sẵn, gi&uacute;p cho người d&ugrave;ng c&oacute; thể dễ d&agrave;ng t&ugrave;y chỉnh theo nhu cầu sử dụng. Thậm ch&iacute;, với chiếc card MSI, c&ograve;n c&oacute; một mode nữa l&agrave; Silent Mode (Boost Core 1392 MHz/Base Core 1290 MHz &ndash; tr&ugrave;ng với ti&ecirc;u chuẩn của NVIDIA), với th&ocirc;ng số c&ograve;n giảm xuống nữa để c&oacute; thể hoạt động một c&aacute;ch &ecirc;m &aacute;i nhất với tốc độ quạt giảm đ&eacute;n mức tối thiểu, hoặc thậm ch&iacute; quạt kh&ocirc;ng quay nếu như mức nhiệt độ thấp xuống mức cho ph&eacute;p. Tốc độ bộ nhớ đều ở mức 7 GHz, duy chỉ với OC Mode của bản MSI Gaming X được nhận th&ecirc;m 100 MHz, c&oacute; vẻ l&agrave; kh&ocirc;ng đ&aacute;ng kể cho lắm nhưng được th&ecirc;m ch&uacute;t hiệu năng đỉnh n&agrave;o d&ugrave; sao cũng sẽ tốt. Chấm điểm Gigabyte: 8.5/10, MSI: 9/10, Galax: 8.5/10</div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;C&ograve;n b&acirc;y giờ, sẽ đến phần test hiệu năng game của ba sản phẩm GTX 1050 Ti lần n&agrave;y. Cấu h&igrave;nh m&aacute;y t&iacute;nh được d&ugrave;ng để test, cụ thể được sử dụng như sau:</div>

<div>
<div>&nbsp;&nbsp;&nbsp;&nbsp;&bull;<a href="http://www.tncstore.vn/linh-kien-pc/cpu.html" target="_blank">CPU</a> <a href="http://www.tncstore.vn/cpu.html?manufacturer_id=23" target="_blank">Intel</a> <a href="http://www.tncstore.vn/linh-kien-pc/cpu/cpu-intel-core-i5-6400.html" target="_blank">Core i5-6400 Skylake</a></div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;&bull;Mainboard Asus Z170</div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;&bull;Ram 16Gb DDR4 Kingston HyperX Fury</div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;&bull;HĐH Windows 10 Anniversary Edition 64 bit</div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;&bull;Tr&igrave;nh điều khiển NVIDIA ForceWare phi&ecirc;n bản 375.63 WHQL&nbsp;</div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;V&agrave; đ&acirc;y l&agrave; c&aacute;c kết quả thu được với ba tựa game: Battlefield 4, Rise of the Tomb Raider, Far Cry Primal:</div>

<div><img src="http://www.tncstore.vn/image/catalog/BAI VIET/so sanh GTX 1050 Ti/bench_1.jpg" style="width:750px" /></div>

<div>&nbsp;&nbsp;&nbsp;&nbsp;Với thế mạnh l&agrave; một chiếc GPU tầm trung c&oacute; hiệu năng cao, đ&aacute;p ứng được tốt nhu cầu chơi game ở độ ph&acirc;n giải Full HD 1080p, n&ecirc;n tất cả 3 card được test ng&agrave;y h&ocirc;m nay đều đem lại hiệu năng kh&aacute; tốt. Ch&ecirc;nh lệch chỉ ở mức 1 FPS quả thực l&agrave; kh&ocirc;ng đ&aacute;ng kể, v&igrave; thế c&oacute; thể kết luận rằng cả ba sản phẩm n&agrave;y đều đ&aacute;p ứng được nhu cầu chơi game tốt. Chấm điểm 9/10 cho cả ba sản phẩm. (Lưu &yacute; l&agrave; 2 card Gigabyte v&agrave; MSI được test với chế độ Gaming Mode).</div>

<div>
<p>-----------------------------------------------------------</p>

<p>Kết luận:</p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;Đ&uacute;ng với những g&igrave; m&agrave; NVIDIA đ&atilde; khẳng định, d&ograve;ng sản phẩm GeForce GTX 1050 Ti quả thực l&agrave; một lựa chọn v&ocirc; c&ugrave;ng s&aacute;ng gi&aacute; trong ph&acirc;n kh&uacute;c tầm trung. Nếu như nhu cầu chơi game của bạn chỉ g&oacute;i gọn trong m&agrave;n h&igrave;nh c&oacute; độ ph&acirc;n giải Full HD 1080p đang hết sức phổ biến hiện nay, th&igrave; GTX 1050 Ti đ&aacute;p ứng rất tốt y&ecirc;u cần đ&oacute;. C&aacute;c tựa game mới hiện nay hay c&aacute;c tựa game eSports phổ biến đều c&oacute; thể được tận hưởng một c&aacute;ch trọn vẹn. Ba sản phẩm được lựa chọn ng&agrave;y h&ocirc;m nay đều c&oacute; những điểm s&aacute;ng ri&ecirc;ng, lựa chọn ra sao l&agrave; ho&agrave;n to&agrave;n phụ thuộc v&agrave;o mức gi&aacute; cũng như y&ecirc;u cầu về từng kh&iacute;a cạnh của người d&ugrave;ng. Dưới đ&acirc;y l&agrave; nhận định tổng qu&aacute;t về từng sản phẩm:</p>

<ul>
	<li>Gigabyte OC: Thiết kế tầm trung, kh&ocirc;ng c&oacute; g&igrave; qu&aacute; nổi bật, phải chăng th&igrave; đ&oacute; l&agrave; sắc cam kh&aacute; lạ mắt v&agrave; thu h&uacute;t. Xung nhịp xử l&yacute; của card c&oacute; thấp hơn một ch&uacute;t so với hai sản phẩm c&ograve;n lại, nhưng ho&agrave;n to&agrave;n c&oacute; thể b&ugrave; đắp bằng việc OC thủ c&ocirc;ng, kh&ocirc;ng phải l&agrave; vấn đề qu&aacute; lớn. Tản nhiệt Windforce 2 quạt kh&aacute; ổn định v&agrave; đ&atilde; l&agrave; thương hiệu c&oacute; tiếng của ch&iacute;nh Gigabyte. Điểm cộng lớn nhất ch&iacute;nh l&agrave; việc kh&ocirc;ng đ&ograve;i hỏi một cổng nguồn phụ PCI-Express 6 pin. Lựa chọn hợp l&yacute; nếu bạn y&ecirc;u th&iacute;ch những g&igrave; m&agrave; Gigabyte đem lại trong thời gian qua, đ&oacute; l&agrave; độ bền v&agrave; sự ổn định.</li>
	<li>MSI Gaming X: Một lần nữa sản phẩm thuộc d&ograve;ng Gaming Series của MSI tạo được thiện cảm đối với người ti&ecirc;u d&ugrave;ng. Từ nội dung v&agrave; tr&igrave;nh b&agrave;i của vỏ hộp, cũng như mọi yếu tố m&agrave; sản phẩm mang lại, từ thiết kế đến t&iacute;nh năng v&agrave; hiệu năng. Nếu bạn kh&ocirc;ng ngần ngại chi ti&ecirc;u cho một chiếc card 1050 Ti chất lượng cao, th&igrave; phi&ecirc;n bản Gaming X n&agrave;y của MSI l&agrave; một lựa chọn kh&ocirc;ng thể b&agrave;n c&atilde;i.</li>
	<li>Galax EXOC: Với một c&aacute;ch tiếp cận sản phẩm kh&aacute; l&agrave; đặc biệt, nếu như so với những thương hiệu kh&aacute;c c&oacute; truyền thống hơn đang hiện diện tr&ecirc;n thị trường. Hệ thống tản nhiệt cũng kh&ocirc;ng c&oacute; qu&aacute; nhiều kh&aacute;c biệt với 2 sản phẩm tr&ecirc;n, hoạt động hiệu quả v&agrave; &ecirc;m &aacute;i. Nếu bạn th&iacute;ch một sản phẩm gi&aacute; rẻ, đơn giản kh&ocirc;ng phức tạp, m&agrave; hiệu năng về nhiều mặt vẫn kh&ocirc;ng thua g&igrave; c&aacute;c sản phẩm của thương hiệu lớn hơn, th&igrave; phi&ecirc;n bản EXOC của h&atilde;ng Galax l&agrave; sự lựa chọn h&agrave;ng đầu.</li>
</ul>

<p>&nbsp;&nbsp;&nbsp;&nbsp;C&aacute;c sản phẩm hiện đang được b&aacute;n tại <a href="http://tncstore.vn">TNC Store</a>, cụ thể như sau:</p>

<ul>
	<li><strong>Gigabyte GeForce GTX 1050 Ti OC 4G</strong> &ndash; tham khảo <a href="http://www.tncstore.vn/vga-card-man-hinh/vga-gigabyte-gv-n105toc-4gb.html" target="_blank">tại đ&acirc;y</a></li>
	<li><strong>MSI GeForce GTX 1050 Ti Gaming X 4G</strong> &ndash; tham khảo <a href="http://www.tncstore.vn/vga-card-man-hinh/vga-msi-geforce-gtx-1050-gaming-4g.html" target="_blank">tại đ&acirc;y</a></li>
	<li><strong>Galax GeForce GTX 1050 Ti EXOC 4G</strong> &ndash; tham khảo <a href="http://www.tncstore.vn/vga-card-man-hinh/vga-galax-geforce-gtx-1050-ti-exoc.html" target="_blank">tại đ&acirc;y</a></li>
</ul>

<p>-----------------------------------------------------------</p>
</div>
</div>

<div>
<div>Showroom: 222 L&ecirc; Thanh Nghị - Hai B&agrave; Trưng - H&agrave; Nội</div>

<div>Tel: (04) 36288790 - 0983623990&nbsp;</div>

<div>Hỗ trợ tư vấn Online 24/07</div>

<div>Ship h&agrave;ng to&agrave;n quốc - Giao h&agrave;ng miễn ph&iacute; trong nội th&agrave;nh H&agrave; Nội</div>

<div>Website: www.tncstore.vn&nbsp;</div>
</div>
', N'/Data/images/newses/tintucmoinhat/DSC01550%20copy.jpg', NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-06T13:45:39.563' AS DateTime), N'quang', CAST(N'2020-12-06T13:45:00.000' AS DateTime), NULL, 7, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (38, N'Đánh giá màn hình AGON AG322FCX : 32" inches tích hợp 144Hz / 1ms có FreeSync giá chỉ 9 triệu', N'Đánh giá màn hình AGON AG322FCX', N'danh-gia-man-hinh-agon-ag322fcx', N'Chắc hẳn các bạn sẽ thấy lạ lẫm khi nghe tới một hãng tên là Agon nhưng chắc chắn rằng khi nhắc đến AOC thì đại đa số chúng ta đều biết đến đó là một nhà sản xuất màn hình. Agon là một thương hiệu con của AOC chuyên sản xuất màn hình chơi game. Trong bài viết này, hãy cùng TNC Store đánh giá qua về chiếc màn hình cong mang mã AGON AG322FCX được tích hợp công nghệ FreeSync của AMD', N'<p>Chắc hẳn c&aacute;c bạn sẽ thấy lạ lẫm khi nghe tới một h&atilde;ng t&ecirc;n l&agrave; Agon nhưng chắc chắn rằng khi nhắc đến <strong>AOC</strong> th&igrave; đại đa số ch&uacute;ng ta đều biết đến đ&oacute; l&agrave; một nh&agrave; sản xuất m&agrave;n h&igrave;nh. Agon l&agrave; một thương hiệu con của <strong>AOC</strong> chuy&ecirc;n sản xuất m&agrave;n h&igrave;nh chơi game. Trong b&agrave;i viết n&agrave;y, h&atilde;y c&ugrave;ng TNC Store đ&aacute;nh gi&aacute; qua về chiếc m&agrave;n h&igrave;nh cong mang m&atilde; <strong>AGON AG322FCX</strong> được t&iacute;ch hợp c&ocirc;ng nghệ FreeSync của AMD<br />
<br />
<img src="http://www.tncstore.vn/image/catalog/BAI VIET/agon 322fcx/1.jpg" style="width:800px" /><br />
<br />
kh&ocirc;ng giống như nhiều mẫu m&atilde; m&agrave;n h&igrave;nh cong tr&ecirc;n thị trường, chiếc m&agrave;n h&igrave;nh<strong> AGON AG322FCX</strong> sử dụng tỉ lệ 16:9 thay v&igrave; sử dụng tỉ lệ 21:9 như bao chiếc m&agrave;n h&igrave;nh kh&aacute;c. Điều khiến chiếc m&agrave;n h&igrave;nh Full HD n&agrave;y th&ecirc;m phần hấp dẫn l&agrave; c&oacute; k&iacute;ch thước 31,5&rdquo;. Trước khi đi v&agrave;o đ&aacute;nh gi&aacute; sơ bộ, h&atilde;y c&ugrave;ng điểm qua một v&agrave;i th&ocirc;ng số của chiếc <strong>AGON AG322FCX</strong> n&agrave;y nh&eacute;<br />
&nbsp;</p>

<p>th&ocirc;ng số của <strong>AGON AG33FCX</strong> như sau:</p>

<p>&bull;K&iacute;ch thước: 31,5&quot;</p>

<p>&bull;Độ cong: 1800 R</p>

<p>&bull;C&ocirc;ng nghệ tấm nền: VA;</p>

<p>&bull;Độ ph&acirc;n giải tối đa: 1920 x 1080 @ 144 Hz;</p>

<p>&bull;Tỉ lệ: 16:9;</p>

<p>&bull;Thời gian đ&aacute;p ứng: 4 ms;</p>

<p>&bull;Độ s&aacute;ng tối đa: 250 cd/m2;</p>

<p>&bull;Độ tương phản (th&ocirc;ng thường): 3000:1;</p>

<p>&bull;G&oacute;c quan s&aacute;t: 178 độ;</p>

<p>&bull;M&agrave;u sắc: 85% NTSC.<br />
<br />
Tiếp đến, h&atilde;y c&ugrave;ng <strong>TNC Store</strong> đ&aacute;nh gi&aacute; qua về vẻ ngo&agrave;i của chiếc m&agrave;n h&igrave;nh n&agrave;y nh&eacute;. Phần khung đỡ của chiếc m&agrave;n h&igrave;nh được sơn m&agrave;u bạc nhằm n&acirc;ng cao vẻ thẩm mỹ của chiếc m&agrave;n h&igrave;nh<br />
<br />
<img src="http://www.tncstore.vn/image/catalog/BAI VIET/agon 322fcx/2.jpg" style="width:800px" /><br />
<br />
Với những người y&ecirc;u th&iacute;ch đ&egrave;n đ&oacute;m trang tr&iacute;, ở 4 đường viền ph&iacute;a sau m&agrave;n h&igrave;nh v&agrave; ở ph&iacute;a dưới m&agrave;n h&igrave;nh được trang bị dải LED với ba m&agrave;u: đỏ, xanh l&aacute; c&acirc;y, xanh nước biển. Khi sử dụng, dải LED ph&iacute;a sau m&agrave;n h&igrave;nh sẽ l&agrave;m s&aacute;ng l&ecirc;n bức tường ph&iacute;a sau tạo n&ecirc;n điểm nhấn tại g&oacute;c sử dụng<br />
<br />
<img src="http://www.tncstore.vn/image/catalog/BAI VIET/agon 322fcx/6.jpg" style="width:800px" /><br />
<br />
Về cổng kết nối, chiếc m&agrave;n h&igrave;nh <strong>AGON AG322FCX</strong> được trang bị tới 4 cổng kết nối từ hiện đại nhất l&agrave; Display Port cho tới cổng VGA v&igrave; vậy người d&ugrave;ng sẽ kh&ocirc;ng phải lo lắng rằng m&agrave;n h&igrave;nh kh&ocirc;ng hỗ trợ cổng kết nối khi mua sắm những chiếc VGA. Ngo&agrave;i ra, ph&iacute;a dưới m&agrave;n h&igrave;nh c&ograve;n c&oacute; 1 n&uacute;t D-pad d&ugrave;ng để t&ugrave;y chỉnh th&ocirc;ng số của chiếc m&agrave;n h&igrave;nh&nbsp;<br />
<img src="http://www.tncstore.vn/image/catalog/BAI VIET/agon 322fcx/5.jpg" style="width:800px" /><br />
<br />
Khi bấm D-pad, ở m&agrave;n h&igrave;nh sẽ xuất hiện 1 dải OSD cho ta thấy c&aacute;c t&ugrave;y chọn v&agrave; c&aacute;c th&ocirc;ng số c&agrave;i đặt của chiếc m&agrave;n h&igrave;nh <strong>AGON AG322FCX</strong><br />
<br />
<img src="http://www.tncstore.vn/image/catalog/BAI VIET/agon 322fcx/4.jpg" style="width:800px" /><br />
<br />
<img src="http://www.tncstore.vn/image/catalog/BAI VIET/agon 322fcx/9.jpg" style="width:800px" /><br />
<img src="http://www.tncstore.vn/image/catalog/BAI VIET/agon 322fcx/10.jpg" style="width:800px" /><br />
<br />
Mặt sau tiếp tục với chất liệu nhựa nhưng xử l&yacute; sần, mang lại cảm gi&aacute;c chắn chắn hơn v&agrave; cũng c&oacute; c&aacute;c khe tản nhiệt lớn gi&uacute;p cho việc giảm tải nhiệt độ của m&agrave;n h&igrave;nh n&agrave;y trở n&ecirc;n rất tốt v&agrave; th&ocirc;ng tho&aacute;ng .&nbsp;<br />
<br />
<img src="http://www.tncstore.vn/image/catalog/BAI VIET/agon 322fcx/8.jpg" style="width:800px" /><br />
<br />
Sau khi trải nghiệm chiếc<strong> AGON AG322FCX</strong>, điều đầu ti&ecirc;n đ&oacute; l&agrave; 31.5&rdquo; l&agrave; một k&iacute;ch thước rất lớn so với tầm phổ th&ocirc;ng được sử dụng nhiều l&agrave; từ 21,5&rdquo; đến 27&rdquo;. Khi ngồi trước chiếc m&agrave;n h&igrave;nh với k&iacute;ch cỡ 31.5&rdquo; cảm gi&aacute;c như đang ngồi trong một rạp chiếu phim vậy v&agrave; phải mất một thời gian để l&agrave;m quen với k&iacute;ch thước v&agrave; g&oacute;c nh&igrave;n của m&agrave;n h&igrave;nh. C&oacute; một điểm c&oacute; thể n&oacute;i l&agrave; điểm trừ đ&oacute; l&agrave; nếu bạn l&agrave; một người quan t&acirc;m nhiều đến độ ph&acirc;n giải th&igrave; chiếc <strong>AGON AG322FCX</strong> n&agrave;y c&oacute; thể sẽ khiến bạn c&oacute; một ch&uacute;t kh&oacute; chịu v&igrave; m&agrave;n h&igrave;nh chỉ hỗ trợ Full HD v&agrave; với k&iacute;ch thước 31.5&rdquo; th&igrave; cảm gi&aacute;c sẽ về mặt h&igrave;nh ảnh sẽ kh&ocirc;ng được sắc n&eacute;t lắm<br />
Ngo&agrave;i ra th&igrave; <strong>AGON AG322FCX</strong> c&ograve;n được trang bị một gi&aacute; đỡ tai nghe nhỏ xinh d&agrave;nh cho game thủ c&oacute; thể treo những chiếc tai nghe của m&igrave;nh l&ecirc;n .&nbsp;<br />
<br />
<img src="http://www.tncstore.vn/image/catalog/BAI VIET/agon 322fcx/7.jpg" style="width:800px" /><br />
<br />
Điều đ&aacute;ng n&oacute;i trong qu&aacute; tr&igrave;nh trải nghiệm đ&oacute; ch&iacute;nh l&agrave; độ l&agrave;m tươi 144Hz đi k&egrave;m với c&ocirc;ng nghệ AMD FreeSync cho một cảm gi&aacute;c mượt m&agrave;, giảm hiệu ứng b&oacute;ng mờ trong những cảnh h&agrave;nh động nhanh v&agrave; bắn s&uacute;ng trong những tựa game FPS. Điều đ&aacute;ng suy ngẫm nhất khi sử dụng chiếc m&agrave;n h&igrave;nh n&agrave;y đ&oacute; l&agrave; độ b&ecirc;n của chiếc D-pad, đối với những người th&iacute;ch vọc vạch hay t&ugrave;y chỉnh nhiều th&igrave; chiếc D-pad sẽ bị sử dụng li&ecirc;n tục thay v&igrave; như c&aacute;c thiết kế b&igrave;nh thường l&agrave; c&oacute; nhiều n&uacute;t chức năng để tr&aacute;nh trường hợp một n&uacute;t bị bấm qu&aacute; nhiều dẫn đến giảm tuổi thọ<br />
<br />
Kết luận<br />
T&oacute;m lại, đối với những người th&iacute;ch m&agrave;n h&igrave;nh lớn k&egrave;m thiết kế cong th&igrave; với mức gi&aacute; chỉ hơn 9 triệu đồng, sản phẩm <strong>AGON AG322FCX</strong> l&agrave; một trong những sự lựa chọn đ&aacute;ng gi&aacute; trong tầm tiền. Đồng thời người d&ugrave;ng c&ograve;n được trải nhiệm độ l&agrave;m tươi 144Hz v&agrave; đi k&egrave;m đ&oacute; l&agrave; c&ocirc;ng nghệ AMD FreeSync &ndash; rất ph&ugrave; hợp với những người sử dụng card đồ họa AMD.</p>

<p>* Sản phẩm <strong>AGON AG322FCX</strong> hiện đang c&oacute; b&aacute;n tại <strong>TNC Store</strong> với mức gi&aacute; l&agrave;: 9.390.000đ &ndash; Đi k&egrave;m với đ&oacute; l&agrave; phiếu giảm gi&aacute; 500.00đ khi mua k&egrave;m case tại cửa h&agrave;ng *</p>

<div>
<div>----------------------------------------------------------------------------------------------------</div>

<div>* Showroom: 222 L&ecirc; Thanh Nghị - Hai B&agrave; Trưng - H&agrave; Nội</div>

<div>* Tel: (04) 36288790 - 0983623990 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>

<div>* Hỗ trợ tư vấn Online 24/07</div>

<div>* Ship h&agrave;ng to&agrave;n quốc - Giao h&agrave;ng miễn ph&iacute; trong nội th&agrave;nh H&agrave; Nội</div>

<div>* Website: www.tncstore.vn &nbsp;</div>
</div>

<div>&nbsp;</div>
', N'/Data/images/newses/tintucmoinhat/1.jpg', NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-06T13:45:57.123' AS DateTime), N'quang', CAST(N'2020-12-06T13:45:00.000' AS DateTime), NULL, 7, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (39, N'AI LÀ NGƯỜI ĐẦU TIÊN SỞ HỮU Siêu CPU Intel Core i9 9900K Vịnh Bắc Bộ!', N'NGƯỜI ĐẦU TIÊN SỞ HỮU Siêu CPU Intel Core i9 9900K Vịnh Bắc Bộ!', N'nguoi-dau-tien-so-huu-sieu-cpu-intel-core-i9-9900k-vinh-bac-bo', N'Một cơn gió thần kỳ đã đưa Nhật Anh Trắng đến với TNC Store, và nhanh chóng, anh ấy đã quất ngay dàn PC có thể nói là mạnh mẽ hàng đầu hiện nay trên thị trường với CPU Intel Core i9 9900K, cùng 64GB ram và 1TB SSD M.2... Anh em hãy cùng TNC Channel gặp gỡ cũng như trò chuyện với anh về dàn PC siêu khủng này nhé!', N'<p>Một cơn gi&oacute; thần kỳ đ&atilde; đưa Nhật Anh Trắng đến với TNC Store, v&agrave; nhanh ch&oacute;ng, anh ấy đ&atilde; quất ngay d&agrave;n PC c&oacute; thể n&oacute;i l&agrave; mạnh mẽ h&agrave;ng đầu hiện nay tr&ecirc;n thị trường với CPU Intel Core i9 9900K, c&ugrave;ng 64GB ram v&agrave; 1TB SSD M.2... Anh em h&atilde;y c&ugrave;ng TNC Channel gặp gỡ cũng như tr&ograve; chuyện với anh về d&agrave;n PC si&ecirc;u khủng n&agrave;y nh&eacute;!</p>

<p style="text-align:center"><iframe class="note-video-clip" frameborder="0" height="360" src="//www.youtube.com/embed/H3tQ8zkrtsQ" width="640"></iframe></p>
', N'/Data/images/newses/tintucmoinhat/nhatanh-trang.jpg', NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-06T13:46:12.897' AS DateTime), N'quang', CAST(N'2020-12-06T13:46:00.000' AS DateTime), NULL, 7, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (40, N'Chiêm Ngưỡng Dàn PC 50 Triệu Của TUẤN TIỀN TỈ', N'Chiêm Ngưỡng Dàn PC 50 Triệu Của TUẤN TIỀN TỈ', N'chiem-nguong-dan-pc-50-trieu-cua-tuan-tien-ti', N'Chiêm Ngưỡng Dàn PC 50 Triệu Của TUẤN TIỀN TỈ - Gaming PC Sentinel Powered By MSI & AMD [Timelapse]', N'<div class="post_content">
<div>
<div>Chi&ecirc;m Ngưỡng D&agrave;n PC 50 Triệu Của TUẤN TIỀN TỈ - Gaming PC Sentinel Powered By MSI &amp; AMD [Timelapse]</div>

<div>Lại tiếp tục một video nữa trong series Cấu h&igrave;nh y&ecirc;u th&iacute;ch, với cấu h&igrave;nh PC chơi game cực chất nữa của kh&aacute;ch h&agrave;ng khi lựa chọn Build m&aacute;y t&iacute;nh chơi game tại TNC Store. V&agrave; chủ nh&acirc;n d&agrave;n PC AMD cực khủng lần n&agrave;y kh&ocirc;ng ai kh&aacute;c ch&iacute;nh l&agrave; Hot Vloger/Streamer Tuấn Tiền Tỉ, một nh&acirc;n vật đ&atilde; đi v&agrave;o l&ograve;ng biết bao anh em với những sản phẩm chất lượng như Tổ Bu&ocirc;n 247, c&ugrave;ng những vần thơ đ&atilde; đi v&agrave;o năm th&aacute;ng. Lần n&agrave;y, Tuấn Tiền Tỉ đ&atilde; tin tưởng lựa chọn cấu h&igrave;nh PC Gaming Sentinel - Powered By MSI &amp; AMD. Một cấu h&igrave;nh m&aacute;y t&iacute;nh chơi game thuộc ph&acirc;n kh&uacute;c cao cấp tại TNC Store, đạt những ti&ecirc;u chuẩn nghi&ecirc;m ngặt từ kh&acirc;u l&ecirc;n danh s&aacute;ch linh kiện bởi những bạn tư vấn vi&ecirc;n c&oacute; kinh nghiệm &iacute;t nhất 2 năm trong ng&agrave;nh sale PC, được lắp r&aacute;p bởi c&aacute;c kỹ thuật vi&ecirc;n c&oacute; kinh nghiệm từ 3 năm trở l&ecirc;n, để đảm bảo mọi chi tiết d&ugrave; l&agrave; nhỏ nhất đều phải ho&agrave;n hảo, kh&ocirc;ng c&oacute; sai s&oacute;t, c&ugrave;ng hiệu năng được tối ưu cao nhất trong mức gi&aacute; th&agrave;nh cũng như nhu cầu cụ thể của kh&aacute;ch h&agrave;ng. N&agrave;o, giờ th&igrave; xin mời anh em h&atilde;y c&ugrave;ng chi&ecirc;m ngưỡng d&agrave;n PC cực khủng của Tuần Tiền Tỉ nh&eacute;.</div>

<div style="text-align: center;"><iframe class="note-video-clip" frameborder="0" height="360" src="//www.youtube.com/embed/BUahRiRep3w" width="640"></iframe></div>
</div>
</div>
', N'/Data/images/newses/tintucmoinhat/tuantienti.jpg', NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-06T13:46:27.170' AS DateTime), N'quang', CAST(N'2020-12-06T13:46:00.000' AS DateTime), NULL, 7, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (41, N'Minh Nghi và Cấu Hình PC Chơi Liên Minh Huyền Thoại 10 NĂM', N'Minh Nghi và Cấu Hình PC Chơi Liên Minh Huyền Thoại 10 NĂM', N'minh-nghi-va-cau-hinh-pc-choi-lien-minh-huyen-thoai-10-nam', N'Cấu Hình PC Chơi Liên Minh Huyền Thoại 10 NĂM
Như vậy là Liên Minh Huyền Thoại đã được ra mắt 10 năm rồi, một chặng đường rất dài đã trôi qua. Ngày hôm nay, chúng ta đã có được không biết bao nhiêu kỷ niệm, cũng như bản thân tựa game này cũng đã đạt được nhiều thành tựu không hề nhỏ trong suốt chặng đường phát triển, cùng một cộng đồng game thủ khổng lồ. Hôm nay, xin mời anh em hãy cùng Minh Nghi, một nhân vật quen thuộc với cộng đồng game thủ Liên Minh Huyền Thoại, dưới cương vị là MC của VETV, build PC cực khủng với các linh kiện bền bỉ nhất đến từ ASUS và AMD tại TNC Store, để có thể chơi được tựa game Liên minh Huyền Thoại trên cấu hình PC Asus này ít nhất là thêm 10 năm nữa nhé!
Nào hãy cùng bắt đầu video thôi!', N'<div>
<div>Cấu H&igrave;nh PC Chơi Li&ecirc;n Minh Huyền Thoại 10 NĂM</div>

<div>Như vậy l&agrave; Li&ecirc;n Minh Huyền Thoại đ&atilde; được ra mắt 10 năm rồi, một chặng đường rất d&agrave;i đ&atilde; tr&ocirc;i qua. Ng&agrave;y h&ocirc;m nay, ch&uacute;ng ta đ&atilde; c&oacute; được kh&ocirc;ng biết bao nhi&ecirc;u kỷ niệm, cũng như bản th&acirc;n tựa game n&agrave;y cũng đ&atilde; đạt được nhiều th&agrave;nh tựu kh&ocirc;ng hề nhỏ trong suốt chặng đường ph&aacute;t triển, c&ugrave;ng một cộng đồng game thủ khổng lồ. H&ocirc;m nay, xin mời anh em h&atilde;y c&ugrave;ng Minh Nghi, một nh&acirc;n vật quen thuộc với cộng đồng game thủ Li&ecirc;n Minh Huyền Thoại, dưới cương vị l&agrave; MC của VETV, build PC cực khủng với c&aacute;c linh kiện bền bỉ nhất đến từ ASUS v&agrave; AMD tại TNC Store, để c&oacute; thể chơi được tựa game Li&ecirc;n minh Huyền Thoại tr&ecirc;n cấu h&igrave;nh PC Asus n&agrave;y &iacute;t nhất l&agrave; th&ecirc;m 10 năm nữa nh&eacute;!</div>

<div>N&agrave;o h&atilde;y c&ugrave;ng bắt đầu video th&ocirc;i!</div>

<div style="text-align: center;"><iframe class="note-video-clip" frameborder="0" height="360" src="//www.youtube.com/embed/c0wTzjjklMs" width="640"></iframe></div>
</div>

<div>&nbsp;</div>
', N'/Data/images/newses/tintucmoinhat/minhnghi.jpg', NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-06T13:46:50.400' AS DateTime), N'quang', CAST(N'2020-12-06T13:46:00.000' AS DateTime), NULL, 7, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (42, N'Mạnh Melody Búng Tay Bay Ngay 69 Triệu như thế nào?', N'Mạnh Melody Búng Tay Bay Ngay 69 Triệu như thế nào?', N'manh-melody-bung-tay-bay-ngay-69-trieu-nhu-the-nao', N'Mạnh Melody Búng Tay Bay Ngay 69 Triệu như thế nào?

Một ngày đẹp trời, như bao ngày trời đẹp khác. Mạnh Mèo đang livestream vui vẻ với anh em thì bỗng tai họa ập đến. Không phải từ ngoài vũ trụ, không phải từ Thanos, kẻ thù của Mạnh Melody lúc này có màu xanh và không kém phần hiểm ác. Nhưng thật may mắn, "biệt đội cứu net" đã có mặt kịp thời và giúp anh ấy xử lý ngay được tên ác ôn. Xin mời anh em cùng xem video vui vẻ này nhé.', N'<div>
<div>Mạnh Melody B&uacute;ng Tay Bay Ngay 69 Triệu như thế n&agrave;o?</div>

<div>&nbsp;</div>

<div>Một ng&agrave;y đẹp trời, như bao ng&agrave;y trời đẹp kh&aacute;c. Mạnh M&egrave;o đang livestream vui vẻ với anh em th&igrave; bỗng tai họa ập đến. Kh&ocirc;ng phải từ ngo&agrave;i vũ trụ, kh&ocirc;ng phải từ Thanos, kẻ th&ugrave; của Mạnh Melody l&uacute;c n&agrave;y c&oacute; m&agrave;u xanh v&agrave; kh&ocirc;ng k&eacute;m phần hiểm &aacute;c. Nhưng thật may mắn, &quot;biệt đội cứu net&quot; đ&atilde; c&oacute; mặt kịp thời v&agrave; gi&uacute;p anh ấy xử l&yacute; ngay được t&ecirc;n &aacute;c &ocirc;n. Xin mời anh em c&ugrave;ng xem video vui vẻ n&agrave;y nh&eacute;.</div>
</div>

<div style="text-align: center;"><iframe class="note-video-clip" frameborder="0" height="360" src="//www.youtube.com/embed/cZqCK_WhMUM" width="640"></iframe></div>

<div>&nbsp;</div>
', N'/Data/images/newses/tintucmoinhat/manhmeo.jpg', NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-06T13:47:02.523' AS DateTime), N'quang', CAST(N'2020-12-06T13:46:00.000' AS DateTime), NULL, 7, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (43, N'Thử Thách Lắp Cấu Hình PC 15 Triệu SIÊU KHỦNG! VẪN KHÔNG CHƠI ĐƯỢC PUBG?', N'Cấu hình pc 15 triệu chơi warzone', N'cau-hinh-pc-15-trieu-choi-warzone', N'Đây là dàn pc chơi game với các linh kiện ngon bổ rẻ nhất hiện nay,  có thể coi là một cấu hình máy tính chơi game giá rẻ tiêu biểu với CPU AMD Ryzen 5 3500, card đồ họa AMD Radeon RX 580. Thế nhưng lại không chơi PUBG! Vì sao ư! Vì PUBG "đã chết", và kẻ giết chết PUBG đó chính là Call of Duty: WARZONE!', N'<h1><strong><a href="https://www.tncstore.vn/gaming-pc-sniper-rx580.html">Gaming PC - Sniper RX580</a></strong></h1>

<p><span style="color:rgba(0, 0, 0, 0.87); font-size:15px">Xin ch&agrave;o anh em! Như ti&ecirc;u đề anh em đ&atilde; đọc, <a href="https://www.tncstore.vn/gaming-pc.html" target="_blank"><strong>cấu h&igrave;nh PC</strong></a> của ch&uacute;ng ta ng&agrave;y h&ocirc;m nay cực kỳ khủng! Đ&acirc;y l&agrave; d&agrave;n <strong><a href="https://www.tncstore.vn/gaming-pc.html" target="_blank">pc chơi game</a></strong> với c&aacute;c linh kiện ngon bổ rẻ nhất hiện nay, c&oacute; thể coi l&agrave; một cấu h&igrave;nh m&aacute;y t&iacute;nh chơi game gi&aacute; rẻ ti&ecirc;u biểu với <strong><a href="https://www.tncstore.vn/cpu-amd-ryzen-5-3500.html" target="_blank">CPU AMD Ryzen 5 3500</a></strong>, <strong><a href="https://www.tncstore.vn/linh-kien-pc/vga-card-man-hinh.html" target="_blank">card đồ họa</a></strong> <strong><a href="https://www.tncstore.vn/card-man-hinh-msi-rx-580-armor-8g-oc.html" target="_blank">AMD Radeon RX 580</a></strong>. Thế nhưng lại kh&ocirc;ng chơi PUBG! V&igrave; sao ư! V&igrave; PUBG &quot;đ&atilde; chết&quot;, v&agrave; kẻ giết chết PUBG đ&oacute; ch&iacute;nh l&agrave; Call of Duty: WARZONE! V&acirc;ng, r&otilde; r&agrave;ng Call of Duty: Modern Warfare l&agrave; tựa game mới v&agrave; đ&ograve;i hỏi cấu h&igrave;nh m&aacute;y t&iacute;nh cực kỳ cao để c&oacute; thể chơi được mượt m&agrave;, thế nhưng với cấu h&igrave;nh <strong><a href="https://www.tncstore.vn/gaming-pc-sniper-rx580.html">Sniper RX580 </a></strong>của ch&uacute;ng ta h&ocirc;m nay, chỉ với chưa tới 15 triệu đồng, c&aacute;c bạn ho&agrave;n to&agrave;n c&oacute; thể ch&eacute;m ngọt tựa game vừa mới ra mắt n&agrave;y! N&agrave;o! Xin mời anh em c&ugrave;ng theo d&otilde;i video h&ocirc;m nay nh&eacute;!</span></p>

<p><span style="font-size:18px">-</span><span style="font-size:18px">&nbsp;</span><a href="https://www.tncstore.vn/gaming-pc-sniper-rx580.html" target="_blank"><span style="font-size:18px">CLICK NGAY ĐỂ XEM CHI TIẾT CẤU H&Igrave;NH</span></a><a href="https://www.tncstore.vn/gaming-pc-sniper-rx580.html" target="_blank"><span style="font-size:18px"><strong>PC GAMING TNC SNIPER RX580</strong></span></a><a href="https://www.tncstore.vn/gaming-pc-sniper-rx580.html" target="_blank"><span style="font-size:18px"> TẠI TNC STORE</span></a><br />
<span style="color:rgba(0, 0, 0, 0.87); font-size:15px"><span style="font-size:18px">-</span><a href="https://www.tncstore.vn/gaming-pc.html" target="_blank"><span style="font-size:18px">THAM KHẢO H&Agrave;NG TRĂM </span></a><a href="https://www.tncstore.vn/gaming-pc.html" target="_blank"><span style="font-size:18px"><strong>CẤU H&Igrave;NH M&Aacute;Y T&Iacute;NH CHƠI GAME 2020</strong></span></a><a href="https://www.tncstore.vn/gaming-pc.html" target="_blank"><span style="font-size:18px"> HẤP DẪN NHẤT TNC STORE</span></a></span></p>

<p><br />
&nbsp;</p>

<p><iframe class="note-video-clip" frameborder="0" height="360" src="//www.youtube.com/embed/5zhS8uUUfvA" width="640"></iframe></p>

<p>&nbsp;</p>

<p><strong>TNC Channel, TNC Channel review, TNC Channel unboxing, TNC x&acirc;y dựng cấu h&igrave;nh, TNC gaming, TNC store gaming, x&acirc;y dựng cấu h&igrave;nh tối ưu, cấu h&igrave;nh PC tối ưu, Cấu H&igrave;nh PC, PC 15 Triệu, m&aacute;y t&iacute;nh si&ecirc;u khủng, thử th&aacute;ch lắp pc 15 triệu, pc gaming 15 triệu, thử th&aacute;ch lắp pc gaming gi&aacute; rẻ, thử th&aacute;ch lắp pc gi&aacute; rẻ, pc gaming gi&aacute; rẻ, pc gi&aacute; rẻ chơi pubg, pc 15 triệu chơi pubg, cấu h&igrave;nh pc gi&aacute; rẻ chơi pubg, cấu h&igrave;nh pc chơi pubg gi&aacute; rẻ, pc gaming gi&aacute; rẻ chơi pubg, build PC chơi warzone, cấu h&igrave;nh pc chơi warzone, cấu h&igrave;nh m&aacute;y t&iacute;nh chơi warzone, call of duty warzone, m&aacute;y t&iacute;nh chơi game gi&aacute; rẻ</strong><br />
&nbsp;</p>
', N'/Data/images/newses/tintucmoinhat/maxresdefault.jpg', NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-06T13:47:26.980' AS DateTime), N'quang', CAST(N'2020-12-06T13:47:00.000' AS DateTime), NULL, 7, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (44, N'So Sánh CPU AMD Ryzen 5 3500 và Core i5 9400F – Khó thắng nhưng vẫn đáng lựa chọn!', N'So Sánh CPU AMD Ryzen 5 3500 và Core i5 9400F', N'so-sanh-cpu-amd-ryzen-5-3500-va-core-i5-9400f', N'Như vậy là AMD đã quyết tâm CHƠI KHÔ MÁU với Intel. Khi mà tung ra mẫu CPU AMD Ryzen 5 3500, để đối chọi lại trực tiếp với CPU Intel Core i5 9400F trong phân khúc CPU tầm trung cho chơi game. ', N'<p><span style="color:rgba(0, 0, 0, 0.87); font-size:15px">Như vậy l&agrave; <strong><a href="https://www.tncstore.vn/AMD.html" target="_blank">AMD</a></strong> đ&atilde; quyết t&acirc;m CHƠI KH&Ocirc; M&Aacute;U với <strong><a href="https://www.tncstore.vn/Intel.html" target="_blank">Intel</a>.</strong> Khi m&agrave; tung ra mẫu <strong>CPU AMD</strong> <strong><a href="https://www.tncstore.vn/cpu-amd-ryzen-5-3500.html" target="_blank">Ryzen 5 3500</a></strong>, để đối chọi lại trực tiếp với <strong>CPU Intel <a href="https://www.tncstore.vn/cpu-intel-core-i5-9400f-2.9-upto-4.1ghz-6c6t-9mb.html" target="_blank">Core i5 9400F</a></strong> trong ph&acirc;n kh&uacute;c <strong>CPU tầm trung </strong>cho chơi game. Vậy với một con <strong>CPU gi&aacute; rẻ</strong> hơn 9400F như R5 3500, với những th&ocirc;ng số tr&ecirc;n l&yacute; thuyết kh&aacute; tương đồng với đối thủ của m&igrave;nh. Th&igrave; liệu khả năng thực chiến của n&oacute; sẽ đến đ&acirc;u? Liệu c&oacute; phải l&agrave; c&uacute; t&aacute;t trời gi&aacute;ng v&agrave;o mặt của Intel hay kh&ocirc;ng? V&agrave; ch&uacute;ng ta mong đợi g&igrave; ở một mẫu <strong>CPU chơi game gi&aacute; rẻ</strong> hơn đến từ AMD? Xin mời c&aacute;c bạn h&atilde;y c&ugrave;ng Sơn R&acirc;u v&agrave; TNC Channel so s&aacute;nh <a href="https://www.tncstore.vn/cpu-amd-ryzen-5-3500.html" target="_blank">CPU AMD Ryzen 5 3500</a> v&agrave; <a href="https://www.tncstore.vn/cpu-intel-core-i5-9400f-2.9-upto-4.1ghz-6c6t-9mb.html" target="_blank">Intel Core i5 9400F</a> trong video h&ocirc;m nay nh&eacute;. Dĩ nhi&ecirc;n, ch&uacute;ng ta sẽ kh&ocirc;ng chỉ so s&aacute;nh cpu Ryzen 5 3500 v&agrave; I5 9400F bằng c&ocirc;ng cụ benchmark, m&agrave; cả tr&ecirc;n những tựa game thực tế nữa. N&agrave;o! Bắt đầu video th&ocirc;i!</span></p>

<p><span style="color:rgba(0, 0, 0, 0.87); font-size:15px">*** CLICK NGAY ĐỂ THAM KHẢO <strong><a href="https://www.tncstore.vn/gaming-pc.html" target="_blank">CẤU H&Igrave;NH PC CHƠI GAME</a></strong> SI&Ecirc;U MẠNH SỬ DỤNG CPU RYZEN 5 3500 V&Agrave; CORE i5 9400F: <strong>- <a href="https://www.tncstore.vn/gaming-pc-sniper-rx580.html" target="_blank">Gaming PC - Sniper RX580 R5 3500</a> - <a href="https://www.tncstore.vn/gaming-pc/gaming-pc-vampiric-2060-super.html" target="_blank">Gaming PC - Lumen Powered by MSI - i5 9400F</a></strong></span></p>

<p>&nbsp;</p>

<p><iframe class="note-video-clip" frameborder="0" height="360" src="//www.youtube.com/embed/t5eb5zrAfiY" width="640"></iframe></p>

<p>&nbsp;</p>

<p>TNC Channel,TNC Channel review,TNC Channel unboxing,TNC x&acirc;y dựng cấu h&igrave;nh,TNC store gaming,cấu h&igrave;nh PC tối ưu,So S&aacute;nh CPU,CPU AMD,CPU AMD Ryzen 5 3500,Core i5 9400F,CPU Gi&aacute; Rẻ,Đ&aacute;ng Mua Nhất 2020,CPU chơi game gi&aacute; rẻ 2020,CPU chơi game tốt,so s&aacute;nh CPU AMD,so s&aacute;nh cpu Ryzen 5 3500 v&agrave; I5 9400F,Gaming PC,cpu comparison 2020,cpu comparison ryzen vs intel,intel vs ryzen,ryzen 5 3500 vs i5 9400F,AMD vs intel,best gaming CPU,best budget Gaming CPU 2020<br />
&nbsp;</p>
', N'/Data/images/newses/tintucmoinhat/maxresdefault-2.jpg', NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-06T13:47:38.813' AS DateTime), N'quang', CAST(N'2020-12-06T13:47:00.000' AS DateTime), NULL, 7, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (45, N'Lắp Ráp Dàn Máy Tính 10 Triệu CHUYÊN HỌC ONLINE - Kèm Màn Hình, Mua Về Là Dùng | TNC Gaming PC Alpha', N'Lắp Ráp Dàn Máy Tính 10 Triệu CHUYÊN HỌC ONLINE', N'lap-rap-dan-may-tinh-10-trieu-chuyen-hoc-online', N'Hôm trước chúng ta đã cùng nhau đánh giá chiếc laptop sinh viên giá rẻ Asus X409 có giá 14 triệu đồng để phục vụ nhu cầu học online trong dịp "nghỉ lễ" cách ly Cô-Vít-19. Tuy nhiên, nếu số tiền đó dành để mua PC thì chắc chắn bạn sẽ vẫn còn thừa kha khá để có thể nâng cấp thêm card đồ họa, vì hôm nay, chúng ta sẽ cùng nhau xây dựng cấu hình PC tối ưu với mức giá vô cùng hấp dẫn để các bạn có thể học tập và làm việc online tại nhà', N'<p><span style="color:rgba(0, 0, 0, 0.87); font-family:roboto,noto,sans-serif; font-size:15px">H&ocirc;m trước ch&uacute;ng ta đ&atilde; c&ugrave;ng nhau đ&aacute;nh gi&aacute; chiếc laptop sinh vi&ecirc;n gi&aacute; rẻ <a href="https://www.tncstore.vn/laptop-asus-x409ja-ek014t.html" target="_blank"><strong>Asus X409</strong></a> c&oacute; gi&aacute; 14 triệu đồng để phục vụ nhu cầu học online trong dịp &quot;nghỉ lễ&quot; c&aacute;ch ly C&ocirc;-V&iacute;t-19. Tuy nhi&ecirc;n, nếu số tiền đ&oacute; d&agrave;nh để mua <a href="https://www.tncstore.vn/gaming-pc.html" target="_blank"><strong>PC</strong></a> th&igrave; chắc chắn bạn sẽ vẫn c&ograve;n thừa kha kh&aacute; để c&oacute; thể n&acirc;ng cấp th&ecirc;m <a href="https://www.tncstore.vn/linh-kien-pc/vga-card-man-hinh.html" target="_blank"><strong>card đồ họa</strong></a>, v&igrave; h&ocirc;m nay, ch&uacute;ng ta sẽ c&ugrave;ng nhau x&acirc;y dựng cấu h&igrave;nh <a href="https://www.tncstore.vn/gaming-pc.html" target="_blank"><strong>PC</strong></a> tối ưu với mức gi&aacute; v&ocirc; c&ugrave;ng hấp dẫn để c&aacute;c bạn c&oacute; thể học tập v&agrave; l&agrave;m việc online tại nh&agrave;. Xin mời c&aacute;c bạn h&atilde;y c&ugrave;ng Sơn R&acirc;u v&agrave; TNC Channel đến với cấu h&igrave;nh m&aacute;y t&iacute;nh gi&aacute; rẻ <strong><a href="https://www.tncstore.vn/gaming-pc-alpha-9100-plus.html" target="_blank">TNC Gaming PC Alpha PLUS</a></strong> nh&eacute;! Đ&acirc;y l&agrave; một d&agrave;n m&aacute;y t&iacute;nh 10 triệu chuy&ecirc;n học online c&oacute; thể đ&aacute;p ứng mọi nhu cầu cơ bản nhất của c&aacute;c bạn trong m&ugrave;a dịch bệnh 2020 En-C&ocirc;-Vi n&agrave;y. #CấuH&igrave;nhM&aacute;yT&iacute;nh #HọcOnline #TNCStore *** CLICK NGAY LINK DƯỚI ĐỂ THAM KHẢO CẤU H&Igrave;NH PC HỌC ONLINE <strong><a href="https://www.tncstore.vn/gaming-pc-alpha-9100-plus.html" target="_blank">TNC GAMING PC ALPHA PLUS</a></strong>: </span><a href="https://www.tncstore.vn/gaming-pc-alpha-9100-plus.html" target="_blank"><strong><span style="font-size:14px">https://www.tncstore.vn/gaming-pc-alpha-9100-plus.html</span></strong></a><span style="color:rgba(0, 0, 0, 0.87); font-family:roboto,noto,sans-serif; font-size:15px"> *** THAM KHẢO TH&Ecirc;M C&Aacute;C CẤU H&Igrave;NH PC GI&Aacute; SI&Ecirc;U RẺ KH&Aacute;C TẠI TNC STORE: - Gi&aacute; b&aacute;n 7 triệu đồng: Gaming PC - Alpha 3200G - R3 3200G/A320M/ 8GB/ 120GB/ 450W <a href="https://www.tncstore.vn/gaming-pc/gaming-pc-alpha-3200g.html" target="_blank"><strong>https://www.tncstore.vn/gaming-pc/gaming-pc-alpha-3200g.html</strong></a> - Gi&aacute; b&aacute;n 8 triệu đồng: Gaming PC - Alpha 9100 - i3 9100/ B365M/ 8GB/ 120GB/ 450W <strong><a href="https://www.tncstore.vn/gaming-pc/gaming-pc-alpha-9100.html" target="_blank">https://www.tncstore.vn/gaming-pc/gaming-pc-alpha-9100.html</a></strong> *** C&Aacute;C CẤU H&Igrave;NH M&Aacute;Y T&Iacute;NH CHƠI GAME 2020 KH&Aacute;C: <strong><a href="https://www.tncstore.vn/gaming-pc.html" target="_blank">https://www.tncstore.vn/gaming-pc.html</a></strong></span></p>

<p>&nbsp;</p>

<p><iframe class="note-video-clip" frameborder="0" height="360" src="//www.youtube.com/embed/LRJaHvHt7GQ" width="640"></iframe></p>

<p><span style="font-size:15px">key : TNC Channel,TNC Channel review,TNC x&acirc;y dựng cấu h&igrave;nh,TNC gaming,TNC store gaming,x&acirc;y dựng cấu h&igrave;nh tối ưu,cấu h&igrave;nh PC tối ưu,lắp r&aacute;p pc,d&agrave;n m&aacute;y t&iacute;nh,d&agrave;n m&aacute;y t&iacute;nh 10 triệu,m&aacute;y t&iacute;nh học online,cấu h&igrave;nh m&aacute;y t&iacute;nh học online,m&aacute;y t&iacute;nh k&egrave;m m&agrave;n h&igrave;nh,chuy&ecirc;n học online,cấu h&igrave;nh pc gi&aacute; rẻ,cấu h&igrave;nh m&aacute;y t&iacute;nh gi&aacute; rẻ,m&aacute;y t&iacute;nh chơi game gi&aacute; rẻ,m&aacute;y t&iacute;nh chơi game 2020,gaming PC 2020,dịch bệnh,c&aacute;ch ly dịch bệnh,en c&ocirc; vi,laptop sinh vi&ecirc;n gi&aacute; rẻ 2020</span><br />
&nbsp;</p>
', N'/Data/images/newses/tintucmoinhat/mqdefault.jpg', NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-06T13:47:51.837' AS DateTime), N'quang', CAST(N'2020-12-06T13:47:00.000' AS DateTime), NULL, 7, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (46, N'Laptop HỌC ONLINE Tốt Nhất Dưới 14 Triệu - Core i5! Cách Ly En-Cô-Vi Không Khó - Laptop Asus X409J', N'Laptop HỌC ONLINE Tốt Nhất Dưới 14 Triệu', N'laptop-hoc-online-tot-nhat-duoi-14-trieu', N'Mùa dịch bệnh này, mối quan tâm hàng đầu của các bạn trẻ đang đi học cũng như những người làm công việc hành chính, văn phòng đó chính là Học Online và Làm Việc Tại Nhà (work from home). Có rất nhiều cách để có thể thực hiện được việc đó, có thể là sử dụng điện thoại, máy tính bảng, hay sử dụng PC cấu hình cao. Tuy nhiên, không thứ gì có thể tối ưu bằng một chiếc laptop học online gọn gàng và tiện dụng', N'<p><span style="color: rgba(0, 0, 0, 0.87); font-family: Roboto, Noto, sans-serif; font-size: 15px; white-space: pre-wrap;">Mùa dịch bệnh này, mối quan tâm hàng đầu của các bạn trẻ đang đi học cũng như những người làm công việc hành chính, văn phòng đó chính là Học Online và Làm Việc Tại Nhà (work from home). Có rất nhiều cách để có thể thực hiện được việc đó, có thể là sử dụng điện thoại, máy tính bảng, hay sử dụng <b><a href="https://www.tncstore.vn/gaming-pc.html" target="_blank">PC</a></b> cấu hình cao. Tuy nhiên, không thứ gì có thể tối ưu bằng một chiếc<b><a href="https://www.tncstore.vn/lap-top.html" target="_blank"> laptop</a></b> học online gọn gàng và tiện dụng. Và hôm nay, xin mời các bạn hãy cùng Sơn Râu và TNC Channel Đánh giá laptop <b><a href="https://www.tncstore.vn/laptop-asus-x409ja-ek014t.html" target="_blank">Asus X409J</a></b>, một mẫu <b><a href="https://www.tncstore.vn/lap-top.html">laptop</a></b> văn phòng, laptop sinh viên giá rẻ vô cùng hấp dẫn. Đây là một chiếc<b><a href="https://www.tncstore.vn/lap-top.html" target="_blank"> laptop</a></b> Core i5 thế hệ 10 mới nhất từ Intel, cùng bộ nhớ trong 512GB SSD vô cùng thoải mái để học tập và giải trí, chắc chắn sẽ là chiếc <b><a href="https://www.tncstore.vn/lap-top.html" target="_blank">laptop</a></b> sinh viên 2020 giá rẻ đáng quan tâm trong mùa cách ly En-Cô-Vi này! Xin mời các bạn theo dõi video nhé!
#LaptopHọcOnline #Asus #X409

*** CLICK NGAY LINK DƯỚI ĐỂ XEM CHI TIẾT LAPTOP VĂN PHÒNG GIÁ RẺ ASUS X409J:
- Laptop Asus X409JA-EK014T i5-1035G1U/ 4GB/ 512GB/ 14" FHD/ Win 10
<b><a href="https://www.tncstore.vn/laptop-asus-x409ja-ek014t.html" target="_blank">https://www.tncstore.vn/laptop-asus-x409ja-ek014t.html</a></b>

*** THAM KhẢO THÊM HÀNG TRĂM MẪU LAPTOP CHƠI GAME TỐT NHẤT 2020 VỚI GIÁ ƯU ĐÃI TẠI TNC STORE:
<b><a href="https://www.tncstore.vn/lap-top/gaming-laptop.html" target="_blank">https://www.tncstore.vn/lap-top/gaming-laptop.html</a></b></span></p><div><iframe frameborder="0" src="//www.youtube.com/embed/1XN9IA1IFEI" width="640" height="360" class="note-video-clip"></iframe><span style="color: rgba(0, 0, 0, 0.87); font-family: Roboto, Noto, sans-serif; font-size: 15px; white-space: pre-wrap;"><br></span></div><div><span style="color: rgba(0, 0, 0, 0.87); font-family: Roboto, Noto, sans-serif; font-size: 15px; white-space: pre-wrap;"><br></span></div><div><font color="#ffffff"><span style="font-family: Roboto, Noto, sans-serif; font-size: 15px; white-space: pre-wrap;">key : </span><font face="Roboto, Noto, sans-serif"><span style="font-size: 15px; white-space: pre-wrap;">TNC Channel,TNC Channel review,TNC Channel unboxing,TNC gaming,TNC store gaming,Laptop HỌC ONLINE,laptop dưới 14 triệu,laptop sinh viên,laptop văn phòng,laptop sinh viên 2020,laptop sinh viên giá rẻ,laptop văn phòng giá rẻ,laptop sinh viên 2020 giá rẻ,laptop core i5 thế hệ 10,laptop sinh viên Asus,laptop asus cho sinh viên,review laptop asus,asus X409,Laptop Asus X409J,laptop asus rẻ nhất,laptop asus 2020,Cách Ly En-Cô-Vi,dịch bệnh,dịch covit 19</span></font></font></div>', N'/Data/images/newses/tintucmoinhat/mqdefault%20(1).jpg', NULL, NULL, 1, CAST(N'2020-12-06T13:55:10.473' AS DateTime), N'quang', NULL, NULL, CAST(N'2020-12-06T13:55:00.000' AS DateTime), NULL, 7, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (47, N'Màn Hình CHUYÊN GAME BẮN SÚNG Là Thế Nào? Màn hình dưới 10 triệu NGON NHẤT 2020! - ACER VG252QX', N'Màn Hình CHUYÊN GAME BẮN SÚNG Là Thế Nào?', N'man-hinh-chuyen-game-ban-sung-la-the-nao', N'Một chiếc màn hình tốt không chỉ giúp bạn nhìn rõ được hình ảnh, hay đáp ứng được nhu cầu giải trí đa phương tiện. Mà nó còn có thể giúp bạn dễ dàng hơn trong việc giành chiến thắng trong các trận chiến online. Và màn hình ACER VG252QX trong video hôm nay chúng ta cùng đang giá chính là một chiếc màn hình như vậy', N'<p><span style="color: rgba(0, 0, 0, 0.87); font-family: Roboto, Noto, sans-serif; font-size: 15px; white-space: pre-wrap;">Một chiếc <b><a href="https://www.tncstore.vn/linh-kien-pc/monitor.html" target="_blank">màn hình</a></b> tốt không chỉ giúp bạn nhìn rõ được hình ảnh, hay đáp ứng được nhu cầu giải trí đa phương tiện. Mà nó còn có thể giúp bạn dễ dàng hơn trong việc giành chiến thắng trong các trận chiến online. Và màn hình <b><a href="https://www.tncstore.vn/man-hinh-gaming-acer-nitro-vg252qx.html" target="_blank">ACER VG252QX</a></b> trong video hôm nay chúng ta cùng đang giá chính là một chiếc màn hình như vậy. <b><a href="https://www.tncstore.vn/linh-kien-pc/monitor.html" target="_blank">Màn hình game</a></b> acer <b><a href="https://www.tncstore.vn/man-hinh-gaming-acer-nitro-vg252qx.html" target="_blank">VG252QX</a></b> không chỉ là <b><a href="https://www.tncstore.vn/linh-kien-pc/monitor.html" target="_blank">màn hình chơi game</a></b> giá tốt, tham chí là tốt nhất tầm giá dưới 10 triệu. Mà đây còn là chiếc <b><a href="https://www.tncstore.vn/linh-kien-pc/monitor.html" target="_blank">màn hình</a></b> sẽ mang lại cho chúng ta rất nhiều công nghệ tối tân nhất mà bạn chỉ có thể có được ở những chiếc <a href="https://www.tncstore.vn/linh-kien-pc/monitor.html" target="_blank"><b>màn hình</b></a> đắt tiến khác mà thôi. Nào, xin mời các bạn hãy cùng Sơn Râu và TNC Channel đánh giá màn hình <b><a href="https://www.tncstore.vn/man-hinh-gaming-acer-nitro-vg252qx.html" target="_blank">Acer VG252QX</a></b> nhé!
#ACER #VG252QX #240HzIPS

*** CLICK NGAY LINK DƯỚI ĐỂ XEM CHI TIẾT MÀN HÌNH CHƠI GAME ACER VG252QX:
- Màn hình Gaming Acer Nitro VG252QX IPS/Full HD/240Hz
<a href="https://www.tncstore.vn/man-hinh-gaming-acer-nitro-vg252qx.html" target="_blank"><b>https://www.tncstore.vn/man-hinh-gaming-acer-nitro-vg252qx.html</b></a></span></p><p><iframe frameborder="0" src="//www.youtube.com/embed/NJOiMZH3E4k" width="640" height="360" class="note-video-clip"></iframe><span style="color: rgba(0, 0, 0, 0.87); font-family: Roboto, Noto, sans-serif; font-size: 15px; white-space: pre-wrap;"><a href="https://www.tncstore.vn/man-hinh-gaming-acer-nitro-vg252qx.html" target="_blank"><b><br></b></a></span></p><p><span style="color: rgba(0, 0, 0, 0.87); font-family: Roboto, Noto, sans-serif; font-size: 15px; white-space: pre-wrap;"><a href="https://www.tncstore.vn/man-hinh-gaming-acer-nitro-vg252qx.html" target="_blank"><b><br></b></a></span></p><p><span style="color: rgba(0, 0, 0, 0.87); font-family: Roboto, Noto, sans-serif; font-size: 15px; white-space: pre-wrap;"><a href="https://www.tncstore.vn/man-hinh-gaming-acer-nitro-vg252qx.html" target="_blank"><b><br></b></a></span></p><p><font color="#ffffff"><font face="Roboto, Noto, sans-serif"><span style="font-size: 15px; white-space: pre-wrap;">TNC Channel,TNC Channel review,TNC Channel unboxing,TNC xây dựng cấu hình,TNC gaming,TNC store gaming,xây dựng cấu hình tối ưu,cấu hình PC tối ưu,màn hình game,màn hình chơi game,màn hình chơi game acer,màn hình chơi game rẻ nhất,màn hình gaming,màn hình gaming acer,acer vg252qx,đánh giá màn hình acer,màn hình gaming acer nitro,màn hình chơi game 2020,tnc store,màn hình chơi game tốt nhất,màn hình 240hz,màn hình ips 240hz</span></font><a href="https://www.tncstore.vn/man-hinh-gaming-acer-nitro-vg252qx.html" target="_blank" style="font-family: Roboto, Noto, sans-serif; font-size: 15px; white-space: pre-wrap; font-weight: bold;"><br></a></font><br></p>', N'/Data/images/newses/tintucmoinhat/mqdefault%20(2).jpg', NULL, NULL, 1, CAST(N'2020-12-06T13:56:30.610' AS DateTime), N'quang', NULL, NULL, CAST(N'2020-12-06T13:56:00.000' AS DateTime), NULL, 7, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (48, N'Khám Phá Màn Hình PC Siêu Cấp, Sạc Được Macbook, Giải Trí & Làm Việc Cực Đã! - Review LG 34WK95C', N'Khám Phá Màn Hình PC Siêu Cấp, Sạc Được Macbook, Giải Trí & Làm Việc Cực Đã!', N'kham-pha-man-hinh-pc-sieu-cap-sac-duoc-macbook-giai-tri-lam-viec-cuc-da', N'Một chiếc màn hình máy tính tốt luôn là sự ưu tiên hàng đầu khi chúng ta muốn nâng cao trải nghiệm giải trí hoặc làm việc với PC. Tuy nhiên, không phải chiếc màn hình giá rẻ nào cũng có thể làm được tốt mọi nhu cầu. Và LG, nhà sản xuất màn hình máy tính tốt nhất nhì từ Hàn Quốc luôn mang đến cho người dùng những sự lựa chọn không thể hấp dẫn hơn', N'<p><span style="color: rgba(0, 0, 0, 0.87); font-family: Roboto, Noto, sans-serif; font-size: 15px; white-space: pre-wrap;">Một chiếc <b><a href="https://www.tncstore.vn/linh-kien-pc/monitor.html" target="_blank">màn hình</a></b> máy tính tốt luôn là sự ưu tiên hàng đầu khi chúng ta muốn nâng cao trải nghiệm giải trí hoặc làm việc với PC. Tuy nhiên, không phải chiếc <b><a href="https://www.tncstore.vn/linh-kien-pc/monitor.html" target="_blank">màn hình</a></b> giá rẻ nào cũng có thể làm được tốt mọi nhu cầu. Và LG, nhà sản xuất màn hình máy tính tốt nhất nhì từ Hàn Quốc luôn mang đến cho người dùng những sự lựa chọn không thể hấp dẫn hơn. Và hôm nay, trong video này, chúng ta sẽ cùng Sơn Râu và TNC Channel đánh giá màn hình LG 34WK95C nhé. Đây là một chiếc <b><a href="https://www.tncstore.vn/linh-kien-pc/monitor.html" target="_blank">màn hình máy tính</a></b> tốt nhất dành cho những ai có nhu cầu đa dạng, từ giải trí, chơi game đến làm việc đa phương tiện. Nhờ kích thước lớn đến 34 inch, kiểu màn hình rộng, <b><a href="https://www.tncstore.vn/linh-kien-pc/monitor.html" target="_blank">màn hình</a></b> 21:9 chuẩn giải trí cũng như làm việc. Màn hình UltraWide LG 34WK95C chắc chắn sẽ mang lại không gian thoải mái trải nghiệm tuyệt vời nhất dành cho bạn.
#MànHìnhUltraWide #LG #34WK95C

*** CLICK NGAY LINK ĐỂ XEM CHI TIẾT MÀN HÌNH PC LG 34WK95C-W:
- //Mình đã nói trong video là chưa có link mà, Editor lừa anh em đấy :v
Thế nên anh em tham khảo thêm các mẫu màn hình khác bên dưới nhé =)))))

*** CLICK ĐỂ XEM NGAY MÀN HÌNH MÁY TÍNH GIÁ RẺ TỐT NHẤT 2020 TẠI TNC STORE:
- <a href="https://www.tncstore.vn/linh-kien-pc/monitor.html" target="_blank">https://www.tncstore.vn/linh-kien-pc/monitor.html</a></span></p><p><iframe frameborder="0" src="//www.youtube.com/embed/o7L2my_4xrw" width="640" height="360" class="note-video-clip"></iframe><span style="color: rgba(0, 0, 0, 0.87); font-family: Roboto, Noto, sans-serif; font-size: 15px; white-space: pre-wrap;"><br></span></p><p><span style="color: rgba(0, 0, 0, 0.87); font-family: Roboto, Noto, sans-serif; font-size: 15px; white-space: pre-wrap;"><br></span></p><p><font color="#ffffff"><font face="Roboto, Noto, sans-serif"><span style="font-size: 15px; white-space: pre-wrap;">TNC Channel,TNC Channel review,TNC Channel unboxing,TNC gaming,TNC store gaming,cấu hình PC tối ưu,Khám Phá,màn hình pc,Review LG 34WK95C,review màn hình LG,LG 34WK95C,34wk95c-w,đánh giá màn hình LG,màn hình máy tính,màn hình máy tính giá rẻ,màn hình pc giá rẻ,màn hình chơi game giá rẻ,màn hình làm việc,màn hình làm đồ hoạ,màn hình chơi game rẻ nhất,màn hình cong,màn hình ultrawide,màn hình giá rẻ,màn hình xịn nhất,màn hình xem phim trên máy tính</span></font></font></p><div><span style="color: rgba(0, 0, 0, 0.87); font-family: Roboto, Noto, sans-serif; font-size: 15px; white-space: pre-wrap;"><br></span></div>', N'/Data/images/newses/tintucmoinhat/mqdefault%20(3).jpg', NULL, NULL, 1, CAST(N'2020-12-06T13:59:23.620' AS DateTime), N'quang', NULL, NULL, CAST(N'2020-12-06T13:59:00.000' AS DateTime), NULL, 7, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (49, N'Đập Hộp Bộ Đôi Card Đồ Hoạ MSI RX 5500 XT Gaming X và 5600 XT MECH: Giá Rẻ Nhưng Cực Khoẻ', N'Đập Hộp Bộ Đôi Card Đồ Hoạ MSI RX 5500 XT Gaming X và 5600 XT MECH', N'dap-hop-bo-doi-card-do-hoa-msi-rx-5500-xt-gaming-x-va-5600-xt-mech', N'Những chiếc card đồ hoạ giá rẻ luôn là sự lựa chọn hoàn toàn phù hợp cho những cấu hình máy tính chơi game giá rẻ. Tuy nhiên, rẻ không có nghĩa là yếu, với sức mạnh đồ hoạ vượt trội từ kiến trúc RDNA 1.0, những mẫu VGA MSI RX 5500 XT Gaming X với chất lượng hoàn thiện cực tốt, tối ưu hiệu năng toàn diện, hay Card đồ hoạ MSI RX 5600 XT MECH giá cực hấp dẫn nhưng vẫn mang lại hiệu năng vô cùng đáng gờm, sẽ là các mẫu card đồ hoạ 2020 đáng để anh em tham khảo nhất', N'<p><span style="color: rgba(0, 0, 0, 0.87); font-family: Roboto, Noto, sans-serif; font-size: 15px; white-space: pre-wrap;">Những chiếc <b><a href="https://www.tncstore.vn/linh-kien-pc/vga-card-man-hinh.html" target="_blank">card đồ hoạ giá rẻ</a></b> luôn là sự lựa chọn hoàn toàn phù hợp cho những <b><a href="https://www.tncstore.vn/gaming-pc.html" target="_blank">cấu hình máy tính chơi game giá rẻ</a></b>. Tuy nhiên, rẻ không có nghĩa là yếu, với sức mạnh đồ hoạ vượt trội từ kiến trúc RDNA 1.0, những mẫu <b>VGA MSI RX 5500 XT Gaming X</b> với chất lượng hoàn thiện cực tốt, tối ưu hiệu năng toàn diện, hay Card đồ hoạ <b><a href="https://www.tncstore.vn/linh-kien-pc/vga-card-man-hinh/card-man-hinh-msi-rx-5600xt-mech-oc.html" target="_blank">MSI RX 5600 XT MECH</a></b> giá cực hấp dẫn nhưng vẫn mang lại hiệu năng vô cùng đáng gờm, sẽ là các mẫu <b><a href="https://www.tncstore.vn/linh-kien-pc/vga-card-man-hinh.html" target="_blank">card đồ hoạ</a></b> 2020 đáng để anh em tham khảo nhất. Và trong video hôm nay, xin mời các bạn hãy cùng Sơn Râu và TNC Channel đập hộp card đồ hoạ MSI cực hấp dẫn này nhé!
#MSI #AMD #5500XT #5600XT

*** CLICK NGAY LINK DƯỚI ĐỂ THAM KHẢO CÁC CẤU HÌNH MÁY TÍNH CHƠI GAME GIÁ TỐT NHẤT TẠI TNC STORE:
<b><a href="https://www.tncstore.vn/gaming-pc.html" target="_blank">https://www.tncstore.vn/gaming-pc.html</a></b>

*** CÁC CẤU HÌNH PC GAMING AMD HẤP DẪN NHẤT 2020:
<b><a href="https://www.tncstore.vn/gaming-pc.html?attribute_id=200" target="_blank">https://www.tncstore.vn/gaming-pc.html?attribute_id=200</a></b></span></p><p><span style="color: rgba(0, 0, 0, 0.87); font-family: Roboto, Noto, sans-serif; font-size: 15px; white-space: pre-wrap;"><br></span></p><p><iframe frameborder="0" src="//www.youtube.com/embed/IV39NO5LlQ4" width="640" height="360" class="note-video-clip"></iframe><span style="color: rgba(0, 0, 0, 0.87); font-family: Roboto, Noto, sans-serif; font-size: 15px; white-space: pre-wrap;"><br></span></p><p><font color="#ffffff"><font face="Roboto, Noto, sans-serif"><span style="font-size: 15px; white-space: pre-wrap;">TNC Channel,TNC Channel review,TNC Channel unboxing,TNC gaming,TNC store gaming,cấu hình PC tối ưu,Card Đồ Hoạ MSI,MSI RX 5500 XT Gaming X,MSI RX 5600 XT MECH,card đồ hoạ giá rẻ,cấu hình máy tính chơi game,máy tính chơi game giá rẻ,pc gaming giá rẻ,cấu hình pc chơi game giá rẻ,pc chơi game giá rẻ,vga giá rẻ,card đồ hoạ AMD,card đồ hoạ 2020,MÁY TÍNH CHƠI GAME GIÁ TỐT,CẤU HÌNH PC GAMING AMD,máy tính chơi game amd,tnc store,vga amd rx</span></font><br></font><br></p>', N'/Data/images/newses/tintucmoinhat/mqdefault%20(4).jpg', NULL, NULL, 1, CAST(N'2020-12-06T14:00:47.800' AS DateTime), N'quang', NULL, NULL, CAST(N'2020-12-06T14:00:00.000' AS DateTime), NULL, 7, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (50, N'TNC Channel NÂNG CẤP Dàn PC Từ i7 Lên Core i9, Giá 45 Triệu SIÊU KHỦNG Làm Video 4K | RENDA MASTER', N'TNC Channel NÂNG CẤP Dàn PC Từ i7 Lên Core i9, Giá 45 Triệu SIÊU KHỦNG Làm Video 4K', N'tnc-channel-nang-cap-dan-pc-tu-i7-len-core-i9-gia-45-trieu-sieu-khung-lam-video-4k', N'Đúng như tiêu đề, sau 3 năm bọn mình lăn lộn, TNC Channel đã từng làm những video từ xấu xí đến siêu đẹp siêu ngầu gửi tới các bạn. Và gần như tất cả những video đó đều được thực hiện bởi một dàn PC giá rẻ, cũ kỹ sử dụng CPU Core i7 8700. Và sau cả một quá trình làm việc, cũng đã đến lúc TNC Channel cần một sự nâng cấp mới, một cấu hình máy tính chuyên đồ hoạ, một dàn PC làm video chuyên nghiệp hơn rất nhiều, một workstation PC đúng chất', N'<p><span style="color: rgba(0, 0, 0, 0.87); font-family: Roboto, Noto, sans-serif; font-size: 15px; white-space: pre-wrap;">Đúng như tiêu đề, sau 3 năm bọn mình lăn lộn, TNC Channel đã từng làm những video từ xấu xí đến siêu đẹp siêu ngầu gửi tới các bạn. Và gần như tất cả những video đó đều được thực hiện bởi một dàn <b><a href="https://www.tncstore.vn/gaming-pc.html" target="_blank">PC giá rẻ</a></b>, cũ kỹ sử dụng CPU Core i7 8700. Và sau cả một quá trình làm việc, cũng đã đến lúc TNC Channel cần một sự nâng cấp mới, một <b>cấu hình máy tính chuyên đồ hoạ</b>, một dàn <b><a href="https://www.tncstore.vn/workstation-pc.html" target="_blank">PC làm video</a></b> chuyên nghiệp hơn rất nhiều, một <b><a href="https://www.tncstore.vn/workstation-pc.html" target="_blank">workstation PC</a></b> đúng chất. Và sự lựa chọn của bọn mình chính là <b><a href="https://www.tncstore.vn/workstation-pc/workstation-pc-renda-master-i9x.html" target="_blank">TNC WORKSTATION PC - Renda Master - i9 10900X</a></b>. Vâng! Đây là một cấu hình pc chuyên làm việc nặng sử dụng CPU Intel Core i9 10900X, 32GB ram cùng rất nhiều linh kiện phần cứng siêu khủng khác. Xin mời các bạn hãy cùng Sơn Râu xây dựng và lắp ráp dàn PC 45 triệu siêu khủng để làm video 4K này nhé!
#RENDAMaster #Corei9 #4Kvideorendering #WorkstationPC

*** CLICK NGAY LINK ĐỂ THAM KHẢO CẤU HÌNH WORKSTATION PC - Renda Master - i9 10900X:
<b><a href="https://www.tncstore.vn/workstation-pc/workstation-pc-renda-master-i9x.html" target="_blank">https://www.tncstore.vn/workstation-pc/workstation-pc-renda-master-i9x.html</a></b>

*** XEM NGAY HÀNG LOẠT CẤU HÌNH MÁY TÍNH WORKSTATION CHUYÊN ĐỒ HOẠ GIÁ RẺ KHÁC TẠI TNC STORE:
<b><a href="https://www.tncstore.vn/workstation-pc.html" target="_blank">https://www.tncstore.vn/workstation-pc.html</a></b></span></p><p><span style="color: rgba(0, 0, 0, 0.87); font-family: Roboto, Noto, sans-serif; font-size: 15px; white-space: pre-wrap;"><br></span></p><p><iframe frameborder="0" src="//www.youtube.com/embed/vLE2HpKvLk8" width="640" height="360" class="note-video-clip"></iframe><span style="color: rgba(0, 0, 0, 0.87); font-family: Roboto, Noto, sans-serif; font-size: 15px; white-space: pre-wrap;"><br></span></p><p><span style="color: rgba(0, 0, 0, 0.87); font-family: Roboto, Noto, sans-serif; font-size: 15px; white-space: pre-wrap;"><br></span></p><p><font face="Roboto, Noto, sans-serif" color="#ffffff"><span style="font-size: 15px; white-space: pre-wrap;">TNC Channel,TNC Channel review,TNC xây dựng cấu hình,xây dựng cấu hình tối ưu,cấu hình PC tối ưu,Dàn PC 45 Triệu SIÊU KHỦNG,dàn pc siêu khủng,cấu hình máy tính làm việc,cấu hình pc làm việc,cấu hình máy tính làm video 4k,cấu hình pc làm video 4k,renda master,PC giá rẻ,máy tính làm việc giá rẻ,workstation pc,cấu hình máy tính chuyên đồ hoạ,TNC WORKSTATION PC,PC core i9,core i9 10900X pc build,CẤU HÌNH MÁY TÍNH WORKSTATION,Máy Tính chuyên đồ hoạ</span></font><br><br></p>', N'/Data/images/newses/tintucmoinhat/mqdefault%20(5).jpg', NULL, NULL, 1, CAST(N'2020-12-06T14:02:14.517' AS DateTime), N'quang', NULL, NULL, CAST(N'2020-12-06T14:02:00.000' AS DateTime), NULL, 7, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (51, N'Bạn Sẽ Không Bị "LAG" Mắt Nếu Chơi Game Bằng Chiếc Màn Hình Này - Đánh Giá Màn Hình MSI Optix G27C4', N'Bạn Sẽ Không Bị "LAG" Mắt Nếu Chơi Game Bằng Chiếc Màn Hình Này', N'ban-se-khong-bi-lag-mat-neu-choi-game-bang-chiec-man-hinh-nay', N'Một chiếc màn hình chơi game chắc chắn sẽ là công cụ tối thiểu nhất bạn cần phải sở hữu nếu muốn có cơ hội giành chiến thắng cao hơn trong các trận game. Tuy nhiên, không phải chiếc màn hình nào cũng giúp bạn cải thiện được kỹ năng. Nhưng hôm nay, chúng ta sẽ cùng nhau khám phá chiếc màn hình chơi game MSI Optix G27C4, đây có thể coi là một chiếc màn hình chơi game giá rẻ nếu so với những gì mà nó mang lại', N'<p><span style="color: rgba(0, 0, 0, 0.87); font-family: Roboto, Noto, sans-serif; font-size: 15px; white-space: pre-wrap;">Một chiếc <b><a href="https://www.tncstore.vn/linh-kien-pc/monitor.html" target="_blank">màn hình chơi game</a></b> chắc chắn sẽ là công cụ tối thiểu nhất bạn cần phải sở hữu nếu muốn có cơ hội giành chiến thắng cao hơn trong các trận game. Tuy nhiên, không phải chiếc <a href="https://www.tncstore.vn/linh-kien-pc/monitor.html" target="_blank"><b>màn hình</b></a> nào cũng giúp bạn cải thiện được kỹ năng. Nhưng hôm nay, chúng ta sẽ cùng nhau khám phá chiếc <b><a href="https://www.tncstore.vn/linh-kien-pc/monitor.html" target="_blank">màn hình chơi game</a></b> <b><a href="https://www.tncstore.vn/man-hinh-msi-optix-g27c4.html" target="_blank">MSI Optix G27C4</a></b>, đây có thể coi là một chiếc <b><a href="https://www.tncstore.vn/linh-kien-pc/monitor.html" target="_blank">màn hình chơi game giá rẻ</a></b> nếu so với những gì mà nó mang lại! Đặc biệt là độ cong 1500R sẽ giúp người chơi thoải mái hơn, hoà mình vào các tựa game, và quan trọng nhất là CHỐNG "LAG" MẮT! Xin mời anh em Theo dõi video nhé!
#MSI #OptixG27C4 #TNCChannel

*** CLICK NGAY LINK DƯỚI ĐỂ THAM KHẢO CHI TIẾT GIÁ BÁN MÀN HÌNH GAMING MSI Optix G27C4 VA/ FullHD/ 165Hz:
<b><a href="https://www.tncstore.vn/man-hinh-msi-optix-g27c4.html" target="_blank">https://www.tncstore.vn/man-hinh-msi-optix-g27c4.html</a></b></span></p><p><span style="color: rgba(0, 0, 0, 0.87); font-family: Roboto, Noto, sans-serif; font-size: 15px; white-space: pre-wrap;"></span></p><div><iframe frameborder="0" src="//www.youtube.com/embed/llbAY0j6oJQ" width="640" height="360" class="note-video-clip"></iframe><span style="color: rgba(0, 0, 0, 0.87); font-family: Roboto, Noto, sans-serif; font-size: 15px; white-space: pre-wrap;"><br></span></div><div><font face="Roboto, Noto, sans-serif" color="#ffffff"><span style="font-size: 15px; white-space: pre-wrap;">TNC Channel,TNC Channel review,TNC Channel unboxing,TNC xây dựng cấu hình,TNC gaming,TNC store gaming,màn hình chơi game,màn hình gaming,màn hình chơi game giá rẻ,màn hinh chơi game cong,màn hình chơi game 2020,màn hình cong chơi game,màn hình gaming cong,màn hình cong giá rẻ,màn hình chơi game tốt nhất,màn hình cong tốt nhất,màn hình tốt nhất để chơi game,màn hình chơi game rẻ nhất,màn hình cong giá rẻ nhất,msi,màn hình chơi game MSI,MSI Optix G27C4</span></font><br></div>', N'/Data/images/newses/tintucmoinhat/mqdefault%20(6).jpg', NULL, NULL, 1, CAST(N'2020-12-06T14:03:33.627' AS DateTime), N'quang', NULL, NULL, CAST(N'2020-12-06T14:03:00.000' AS DateTime), NULL, 7, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (52, N'Thú Chơi RỒNG Của Giới Trẻ: Cấu Hình PC 25 Triệu Cho Fan MSI', N'Cấu Hình PC 25 Triệu Cho Fan MSI', N'cau-hinh-pc-25-trieu-cho-fan-msi', N'Một cấu hình PC chơi game mạnh mẽ không chỉ đơn giản là được xây dựng từ những linh kiện phần cứng khủng, đắt đỏ. Mà yếu tố quan trọng nhất, đó là các thành phần bên trong dàn PC gaming phải có được sự đồng bộ, các lĩnh kiện phải được tối ưu hóa cả về hiệu năng lẫn giá thành. Và hôm nay chúng ta sẽ cùng đến với một cấu hình PC như vậy', N'<p><span style="color: rgba(0, 0, 0, 0.87); font-family: Roboto, Noto, sans-serif; font-size: 15px; white-space: pre-wrap;">Một <b><a href="https://www.tncstore.vn/gaming-pc.html" target="_blank">cấu hình PC chơi game</a></b> mạnh mẽ không chỉ đơn giản là được xây dựng từ những linh kiện phần cứng khủng, đắt đỏ. Mà yếu tố quan trọng nhất, đó là các thành phần bên trong dàn <b><a href="https://www.tncstore.vn/gaming-pc.html" target="_blank">PC gaming</a></b> phải có được sự đồng bộ, các lĩnh kiện phải được tối ưu hóa cả về hiệu năng lẫn giá thành. Và hôm nay chúng ta sẽ cùng đến với một <b><a href="https://www.tncstore.vn/gaming-pc.html" target="_blank">cấu hình PC</a></b> như vậy. Xin giới thiệu với anh em cấu hình<b><a href="https://www.tncstore.vn/gaming-pc/gaming-pc-nova-rx5700.html" target="_blank">PC gaming Nova RX 5700</a></b>! Vậy nó có gì đặc biệt? sử dụng card đồ hoạ giá tốt <b><a href="https://www.tncstore.vn/card-man-hinh-msi-rx-5700-mech-oc.html" target="_blank">MSI RX 5700 MECH OC</a></b> sẽ mạnh mẽ ra sao? Mời anh em theo dõi video nhé!
#Nova5700 #MSI #RX5700MechOC

***         </span></p>', N'/Data/images/newses/tintucmoinhat/mqdefault%20(7).jpg', NULL, NULL, 1, CAST(N'2020-12-06T14:04:59.783' AS DateTime), N'quang', NULL, NULL, CAST(N'2020-12-06T14:04:00.000' AS DateTime), NULL, 7, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (53, N'Cách Dễ Nhất Để Nâng Cấp Màn Hình Lên 2K, 165Hz Vừa Đẹp Vừa Nhanh - MSI Optix G27CQ4 Review', N'Cách Dễ Nhất Để Nâng Cấp Màn Hình Lên 2K, 165Hz Vừa Đẹp Vừa Nhanh', N'cach-de-nhat-de-nang-cap-man-hinh-len-2k-165hz-vua-dep-vua-nhanh', N'Nếu bạn đã quá chán nản với chiếc màn hình cũ vừa bé, độ phân giải full HD, tần số quét chỉ 60Hz, và muốn nâng cấp nó lên để có được trải nghiệm gaming mượt mà hơn, thoả mãn hơn. Vậy thì không còn cách nào tuyệt vời hơn là "ép xung" ví và mua ngay một chiếc màn hình chơi game MSI Optix G27CQ', N'<p><span style="font-size: 14px;"><font face="Arial">Nếu bạn đã quá chán nản với chiếc <b>màn hình</b> cũ vừa bé, độ phân giải full HD, tần số quét chỉ 60Hz, và muốn nâng cấp nó lên để có được trải nghiệm gaming mượt mà hơn, thoả mãn hơn. Vậy thì không còn cách nào tuyệt vời hơn là "ép xung" ví và mua ngay một chiếc màn hình chơi game<b> MSI Optix G27CQ4</b>. Đây là một chiếc màn hình cong chơi game rất thú vị để trải nghiệm với những thông số ấn tượng. Nào, hãy cùng Sơn Râu và TNC Channel trải nghiệm cũng như đánh giá màn hình <b>MSI Optix G27CQ4</b>, để xem chiếc màn hình chơi game cong, <b>màn hình chơi game</b> 2K này có gì hay nhé!</font></span></p><p><span style="font-size: 14px;"><font face="Arial">#ÉpXungMànHình #MSI #G27CQ4&nbsp;</font></span></p><p><span style="font-size: 12px;"><font face="Arial"><br></font></span></p><p><span style="font-size: 14px;"><font face="Arial">*** CLICK NGAY LINK DƯỚI ĐỂ XEM CHI TIẾT MÀN HÌNH GAMING&nbsp; MSI OPTIX G27CQ4 - 2K - 165 Hz</font></span></p><p><span style="font-size: 14px;"><font face="Arial">- <b><a href="https://www.tncstore.vn/man-hinh-msi-optix-g27cq4.html" target="_blank">https://www.tncstore.vn/man-hinh-msi-optix-g27cq4.html</a></b></font></span></p><p><span style="font-size: 12px;"><font face="Arial"><br></font></span></p><p><span style="font-size: 14px;"><font face="Arial">*** THAM KHẢO THÊM CÁC MẪU MÀN HÌNH CHƠI GAME GIÁ RẺ 2020 TẠI TNC STORE:</font></span></p><p><span style="font-size: 14px;"><font face="Arial">- <b><a href="https://www.tncstore.vn/linh-kien-pc/monitor.html" target="_blank">https://www.tncstore.vn/linh-kien-pc/monitor.html</a></b></font></span></p><p><span style="font-size: 14px;"><font face="Arial"><b><br></b></font></span></p><p><iframe frameborder="0" src="//www.youtube.com/embed/G2gotIAQG6g" width="640" height="360" class="note-video-clip"></iframe><span style="font-size: 14px;"><font face="Arial"><b><br></b></font></span></p><p><font face="Arial"><span style="font-size: 14px;"><b><font color="#ffffff">TNC Channel,TNC Channel review,TNC Channel unboxing,TNC gaming,TNC store gaming,xây dựng cấu hình tối ưu,cấu hình PC tối ưu,nâng cấp màn hình,msi optix g27cq4,đánh giá màn hình msi,màn hình chơi game,màn hình chơi game cong,màn hình cong chơi game,màn hình chơi game 2k,màn hình 2k 165hz,màn hình chơi game màu đẹp,màn hình màu đẹp,màn hình msi,màn hình gaming msi,màn hình gaming,màn hình choqu game giá rẻ,msi g27cq4,ép xung màn hình</font></b></span><br></font></p>', N'/Data/images/newses/tintucmoinhat/mqdefault%20(11).jpg', NULL, NULL, 1, CAST(N'2020-12-06T14:06:17.880' AS DateTime), N'quang', NULL, NULL, CAST(N'2020-12-06T14:06:00.000' AS DateTime), NULL, 7, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (54, N'Lắp Ráp Dàn Máy Tính SIÊU MẠNH - GIÁ CHỈ 63 TRIỆU Có Core i9 10900X, RTX 2070Super (Không Chơi Game)', N'Lắp Ráp Dàn Máy Tính SIÊU MẠNH - GIÁ CHỈ 63 TRIỆU Có Core i9 10900X, RTX 2070Super', N'lap-rap-dan-may-tinh-sieu-manh-gia-chi-63-trieu-co-core-i9-10900x-rtx-2070super', N'Lại một lần nữa, TNC Store trở thành địa chỉ tin cậy cho những game thủ muốn xây dựng một đàn PC Gaming cấu hình cao cấp. Và trong video thuộc series CẤU HÌNH YÊU THÍCH lần này, chúng ta sẽ cùng theo dõi quá trình lắp đặt dàn Gaming PC trị giá 63 triệu đồng vô cùng ấn tượng của khách hàng tại TNC Store', N'<p><b>Cấu Hình PC</b> Chơi Liên Minh Huyền Thoại 10 NĂM</p><p>Như vậy là Liên Minh Huyền Thoại đã được ra mắt 10 năm rồi, một chặng đường rất dài đã trôi qua. Ngày hôm nay, chúng ta đã có được không biết bao nhiêu kỷ niệm, cũng như bản thân tựa game này cũng đã đạt được nhiều thành tựu không hề nhỏ trong suốt chặng đường phát triển, cùng một cộng đồng game thủ khổng lồ. Hôm nay, xin mời anh em hãy cùng Minh Nghi, một nhân vật quen thuộc với cộng đồng <b>game thủ</b> Liên Minh Huyền Thoại, dưới cương vị là MC của VETV, <b>build PC ở TNC STORE</b> cực khủng với các linh kiện bền bỉ nhất đến từ ASUS và AMD tại <b>TNC STORE</b>, để có thể chơi được tựa game Liên minh Huyền Thoại trên <b>cấu hình PC Asus </b>này ít nhất là thêm 10 năm nữa nhé!</p><p>Nào hãy cùng bắt đầu video thôi!</p><p><br></p><p style="text-align: center;"><iframe frameborder="0" src="//www.youtube.com/embed/c0wTzjjklMs" width="640" height="360" class="note-video-clip"></iframe><br></p><p>#MinhNghi #Asus #AMD #LienMinhHuyenThoai #TNCStore #TNCChannel</p><p><a href="https://www.tncstore.vn/gaming-pc.html" target="_blank">=&gt; THAM KHẢO NGAY CÁC CẤU HÌNH GAMING PC MỚI NHẤT TẠI TNC STORE</a></p><p>Tham gia ngay group Hội những người đam mê build PC để cùng chém gió tất tần tật về PC với Sơn Râu và đội ngũ TNC Channel tại đây nhé anh em: https://goo.gl/XVToc1</p><p>----------------------------------------------</p><p>Hãy để TNC gần các bạn hơn nhé:</p><p>►YouTube: https://metub.net/tncchannel</p><p>►Fanpage FB: https://www.facebook.com/tncstore/</p><p>►Website: http://www.tncstore.vn/</p><p>►Instagram: https://www.instagram.com/tncstore_vn/</p><p>----------------------------------------------</p><p></p>', N'/Data/images/newses/tintucmoinhat/mqdefault%20(8).jpg', NULL, NULL, 1, CAST(N'2020-12-06T14:08:22.953' AS DateTime), N'quang', NULL, NULL, CAST(N'2020-12-06T14:08:00.000' AS DateTime), NULL, 7, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (55, N'"LÊN ĐỒ" Cấu Hình PC 20 Triệu Chơi WARZONE MAX SETTINGS Trên 90 FPS', N'"LÊN ĐỒ" Cấu Hình PC 20 Triệu Chơi WARZONE MAX SETTINGS Trên 90 FPS', N'len-do-cau-hinh-pc-20-trieu-choi-warzone-max-settings-tren-90-fps', N'Sau sự lụi tàn của PUBG, không thể chối cãi rằng Call Of Duty: Warzone chính là tựa game mà anh em đang quan tâm nhiều nhất trong thời gian gần đây! Tuy nhiên, Warzone cũng không phải là một tựa game quá nhẹ nhàng, dễ chơi dễ trúng thưởng như Dota, Liên Minh Huyền Thoại hay CS:GO', N'<p><span style="font-size: 14px;"><font face="Arial">Sau sự lụi tàn của <b>PUBG</b>, không thể chối cãi rằng <b>Call Of Duty: Warzone</b> chính là tựa game mà anh em đang quan tâm nhiều nhất trong thời gian gần đây! Tuy nhiên, Warzone cũng không phải là một tựa game quá nhẹ nhàng, dễ chơi dễ trúng thưởng như Dota, Liên Minh Huyền Thoại hay CS:GO. Chúng ta sẽ cần một cấu hình chơi warzone đủ tầm để có thể chiến mượt mà tựa game này. Và hôm nay, <b>TNC Store</b> sẽ gửi đến các bạn cấu hình<b> PC chơi warzone Max Setting</b> với mức giá vô cùng tối ưu! Chỉ 20 triệu đồng là các bạn đã có thể thoải mái trải nghiệm tựa game bắn súng đình đám này ở mức thiết lập đồ hoạ cao nhất, mà vẫn thừa sức quẩy game ở mức khung hình cực kỳ cao. Xin mời các bạn theo dõi video cấu hình máy tính chơi warzone nhé!</font></span></p><p><span style="font-size: 14px;"><font face="Arial">#CallOfDuty #Warzone #GamingPC</font></span></p><p><span style="font-size: 12px;"><font face="Arial"><br></font></span></p><p><span style="font-size: 14px;"><font face="Arial">*** CHI TIẾT CẤU HÌNH LUMEN 2060 POWERED BY ASUS! CHƠI MAX SETTINGS WARZONE TẠI LINK DƯỚI:</font></span></p><p><span style="font-size: 14px;"><font face="Arial">- Gaming PC - Lumen 2060 Powered By Asus - i5 9400F/ B365M/ 8GB/ 256GB NVME/ RTX 2060/ 650W</font></span></p><p><span style="font-size: 14px;"><font face="Arial"><b><a href="https://www.tncstore.vn/gaming-pc-lumen-powered-by-asus.html" target="_blank">https://www.tncstore.vn/gaming-pc-lumen-powered-by-asus.html</a></b></font></span></p><p><span style="font-size: 12px;"><font face="Arial"><br></font></span></p><p><span style="font-size: 14px;"><font face="Arial">*** THAM KHẢO THÊM CÁC CẤU HÌNH MÁY TÍNH CHƠI GAME GIÁ RẺ 2020 TẠI TNC STORE:</font></span></p><p><span style="font-size: 14px;"><font face="Arial">- <b><a href="https://www.tncstore.vn/gaming-pc.html" target="_blank">https://www.tncstore.vn/gaming-pc.html</a></b></font></span></p><p><iframe frameborder="0" src="//www.youtube.com/embed/E66jpEVITyo" width="640" height="360" class="note-video-clip"></iframe><span style="font-size: 14px;"><font face="Arial"><b><br></b></font></span></p><div><span style="font-size: 12px;"><font color="#ffffff">TNC Channel,TNC Channel review,TNC Channel unboxing,TNC xây dựng cấu hình,TNC gaming,TNC store gaming,xây dựng cấu hình tối ưu,cấu hình PC tối ưu,Cấu Hình PC,PC 20 Triệu,Chơi WARZONE MAX SETTINGS,Call Of Duty: Warzone,cấu hình chơi warzone,cấu hình PC chơi warzone,cấu hình máy tính chơi warzone,Lumen 2060,máy tính chơi game giá rẻ 2020,cấu hình máy tính,cấu hình pc giá rẻ,máy tính chơi warzone,pc chơi warzone</font></span><br></div>', N'/Data/images/newses/tintucmoinhat/mqdefault%20(10).jpg', NULL, NULL, 1, CAST(N'2020-12-06T14:09:36.010' AS DateTime), N'quang', NULL, NULL, CAST(N'2020-12-06T14:09:00.000' AS DateTime), NULL, 7, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (56, N'Trên tay và đánh giá nhanh Laptop Gaming MSI Bravo 15 : Đội đỏ trỗi dậy', N'Trên tay và đánh giá nhanh Laptop Gaming MSI Bravo 15 : Đội đỏ trỗi dậy', N'tren-tay-va-danh-gia-nhanh-laptop-gaming-msi-bravo-15-doi-do-troi-day', N'Là một trong hai mẫu laptop gaming vừa được MSI ra mắt nhắm vào phân khúc laptop chơi game phổ thông. Laptop Gaming Bravo 15 A4DCR mang sứ mệnh tiếp nối và phát huy sự thành công của đời tiền nhiệm là MSI Alpha 15 ra mắt hồi năm ngoái. Ngoài việc duy trì hiệu suất từ card đồ họa của AMD, năm nay Bravo 15 cũng “làm mới bản thân” với CPU AMD Ryzen 4000 series mới nhất', N'<blockquote>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font face="Arial">Là một trong hai mẫu <b><a href="https://www.tncstore.vn/lap-top/gaming-laptop.html" target="_blank">laptop gaming</a></b> vừa được <b>MSI</b> ra mắt nhắm vào phân khúc<b><a href="https://www.tncstore.vn/lap-top/gaming-laptop.html" target="_blank">laptop chơi game</a></b> phổ thông. <b><a href="https://www.tncstore.vn/laptop-msi-bravo-15-a4dc-052vn.html" target="_blank">Laptop Gaming Bravo 15</a></b>A4DCR mang sứ mệnh tiếp nối và phát huy sự thành công của đời tiền nhiệm là <b>MSI Alpha 15</b> ra mắt hồi năm ngoái. Ngoài việc duy trì hiệu suất từ card đồ họa của <b>AMD</b>, năm nay <b><a href="https://www.tncstore.vn/laptop-msi-bravo-15-a4dc-052vn.html" target="_blank">Bravo 15</a></b> cũng “làm mới bản thân” với CPU <b>AMD Ryzen 4000 series</b> mới nhất. Các bạn hãy cũng mình đánh giá mẫu<b><a href="https://www.tncstore.vn/lap-top/gaming-laptop.html" target="_blank">laptop chơi game</a> <a href="https://www.tncstore.vn/laptop-msi-bravo-15-a4dc-052vn.html" target="_blank">MSI Bravo 15</a></b> này nhé.</font></blockquote><h1><font face="Arial">Thiết kế</font></h1><p><font face="Arial"><span style="white-space: pre;"></span></font></p><p><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/MSI Bravo 15/Bravo1.jpg" style="width: 100%;"><font face="Arial"><span style="white-space: pre;"><br></span></font></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font face="Arial"><span style="white-space: pre;"><br></span></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><a href="https://www.tncstore.vn/lap-top/gaming-laptop.html" target="_blank">&nbsp;&nbsp;</a></b><font face="Arial"><b><a href="https://www.tncstore.vn/lap-top/gaming-laptop.html" target="_blank">Laptop Gaming</a> <a href="https://www.tncstore.vn/laptop-msi-bravo-15-a4dc-052vn.html" target="_blank">MSI Bravo 15</a></b>vẫn giữ được thiết kế khá đơn giản từ các dóng <b>MSI GF</b> khác. Mặt A và mặt C của <b><a href="https://www.tncstore.vn/laptop-msi-bravo-15-a4dc-052vn.html" target="_blank">MSI Bravo 15</a></b> được gia công từ kim loại phay xước sờ vào mát lạnh và có tính thẩm mỹ cao, tuy mặt đáy vẫn làm bằng nhựa nhưng không vì thế mà làm cho <b><a href="https://www.tncstore.vn/laptop-msi-bravo-15-a4dc-052vn.html" target="_blank">Bravo 15</a></b> thiếu đi sự bền bỉ. Nhìn chung khi bạn cầm chiếc <b><a href="https://www.tncstore.vn/laptop-msi-bravo-15-a4dc-052vn.html" target="_blank">MSI Bravo 15</a></b> trên tay sẽ không hề cảm thấy sự ọp ẹp rẻ tiền như một vài sản phẩm cùng tầm giá khác.</font></p><p><font face="Arial"><span style="white-space: pre;"></span>Sau một chút “lầm lỡ” ở đời trước khi Logo của <b><a href="https://www.tncstore.vn/laptop-msi-bravo-15-a4dc-052vn.html" target="_blank">MSI Alpha 15</a></b> chỉ được gắn trên mặt A nên rất dễ bong tróc sau một thời gian sử dụng. Thì đến <b><a href="https://www.tncstore.vn/laptop-msi-bravo-15-a4dc-052vn.html" target="_blank">MSI Bravo 15</a></b><a href="https://www.tncstore.vn/laptop-msi-bravo-15-a4dc-052vn.html" target="_blank"></a>đã được khắc phục hoàn toàn khi hãng đã khắc thẳng lên luôn. Điểm khác nữa làm cho mọi người dễ dàng phân biệt được <b><a href="https://www.tncstore.vn/laptop-msi-bravo-15-a4dc-052vn.html" target="_blank">MSI Bravo 15</a></b> đó chính là Logo lôi điểu đã được chuyển sang kim loại sáng bóng thay vì màu xanh như trước.</font></p><p><font face="Arial"><span style="white-space: pre;"></span> Với kích thước 15inch , không quá to như 17inch, không quá nhỏ như 13inch. Đây là một kích thước chuẩn mực khi vừa có thể làm việc và giải trí thoái mái mà tính di động vẫn được đảm bảo. Cùng&nbsp; trọng lượng chỉ 1.86Kg thì việc mang vác chiếc <b><a href="https://www.tncstore.vn/laptop-msi-bravo-15-a4dc-052vn.html" target="_blank">MSI Bravo 15</a></b> này là một chuyện “ quá nà bình thường nuôn”.</font></p><h1><font face="Arial">Cổng kết nối và bàn phím</font></h1><p><font face="Arial"><span style="white-space: pre;"></span></font></p><p><font face="Arial"><span style="white-space: pre;"><br></span></font></p><p><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/MSI Bravo 15/Bravo6.jpg" style="width: 100%;"><font face="Arial"><span style="white-space: pre;"><br></span></font></p><p><font face="Arial"><span style="white-space: pre;"><br></span></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><a href="https://www.tncstore.vn/lap-top/gaming-laptop.html" target="_blank">&nbsp;&nbsp;</a></b><font face="Arial"><b><a href="https://www.tncstore.vn/lap-top/gaming-laptop.html" target="_blank">Laptop chơi game</a> <a href="https://www.tncstore.vn/laptop-msi-bravo-15-a4dc-052vn.html" target="_blank">MSI Bravo 15</a></b> được trang bị khá đầy đủ các cổng kết nối. Bên trái là nơi để cổng sạc và một cổng HDMI. Còn bên phải có tới tận 4 cổng USB 3.1 trong đó có 2 cổng type C và 2 cổng Type A, jack tai nghe combo được tích hợp ngay bên cạnh đó. Đây là một điều với mình là khá bất tiện vì nếu đã mua chiếc <b><a href="https://www.tncstore.vn/laptop-msi-bravo-15-a4dc-052vn.html" target="_blank">MSI Bravo 15</a></b> này thì kiểu gì cũng dung chuột rời, mà bên phải lại nối một đống dây dợ thế này thì sẽ khá là bất tiện khi dùng chuột đấy.&nbsp;</font></p><p><font face="Arial"><br></font></p><p><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/MSI Bravo 15/Bravo5.jpg" style="width: 100%;"><font face="Arial"><br></font></p><p><font face="Arial"><br></font></p><p><font face="Arial"><b><a href="https://www.tncstore.vn/laptop-msi-bravo-15-a4dc-052vn.html" target="_blank">MSI Bravo 15 gaming</a></b> sở hữu hệ thống phím Backlight với đèn Led đỏ nổi bật trên nền đen của tổng thể. Layout thân thiện với người dùng, các phím có gờ nổi lên và làm lớn hơn giúp tăng độ chính xác khi nhấn phím, đây là điểm đặc biệt hữu ích cho các gamer. Mặc dù không hỗ trợ RGB nhưng nhìn chung tổng thể bàn phím cho bạn cảm giác thích mắt, bàn kê tay thoáng giúp bạn kê tay thoải mái để chơi game tốt hơn trong thời gian dài. Trackpad chưa bao giờ là điểm mạnh của các dòng<b><a href="https://www.tncstore.vn/lap-top/gaming-laptop.html" target="_blank"> laptop chơi game</a></b> cả , nó không quá to cảm giác di cũng không được đã cho lắm , hai phím ấn cũng không quá nảy. Tuy nhiên với một chiếc<a href="https://www.tncstore.vn/lap-top/gaming-laptop.html" target="_blank"></a><b><a href="https://www.tncstore.vn/lap-top/gaming-laptop.html" target="_blank">laptop gaming</a></b> thì đây sẽ không phải vấn đề gì quá ghê gớm đúng không!</font></p><h1><font face="Arial">Màn hình</font></h1><p><font face="Arial"><b><span style="white-space: pre;"></span><a href="https://www.tncstore.vn/lap-top/gaming-laptop.html" target="_blank">Laptop gaming</a> <a href="https://www.tncstore.vn/laptop-msi-bravo-15-a4dc-052vn.html" target="_blank">MSI Bravo 15</a></b> sở hữu viền màn hình benzel siêu mỏng ở hai bên trong thiết kế 15.6 inch. Độ phân giải FHD kết hợp với tấm nền IPS góc nhìn rộng là một trong những yếu tố quan trọng mang lại chất lượng hình ảnh sắc nét, chi tiết nhất cho game thủ. Tuy tần số quét chỉ dừng lại 60Hz nhưng cũng là vừa đủ để có được một trải nhiệm mượt mà.</font></p><p><font face="Arial">Hiệu năng cải tiến với<b> CPU AMD Ryzen 4000</b> series</font></p><p><font face="Arial"><br></font></p><p><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/MSI Bravo 15/Bravo4.jpg" style="width: 100%;"><font face="Arial"><br></font></p><p><font face="Arial"><br></font></p><p><font face="Arial"><span style="white-space: pre;"></span>Là sản phẩm kế nhiệm<b> Alpha 15</b>, dòng <b>Bravo</b> vẫn thừa hưởng sức mạnh GPU đến từ <b>AMD</b> <b>RX 5300M 3GB GDDR6.</b> Tuy nhiên, CPU của <b>Bravo 15</b> được nâng cấp hơn với trang bị chip lên đến <b>AMD Ryzen 5 4600H</b>&nbsp; thay vì series 3000 như trước.</font></p><p><font face="Arial"><br></font></p><p><img src="https://www.tncstore.vn/image/catalog/BAI VIET/MEDIA TNC NEWS/MSI Bravo 15/Bravo3.jpg" style="width: 100%;"><font face="Arial"><br></font></p><p><font face="Arial"><br></font></p><p><font face="Arial"><span style="white-space: pre;"></span>Được xây dựng dựa trên tiến trình 7nm với kiến trúc Zen 2, <b>AMD Ryzen&nbsp; 4600H</b> cộng hưởng với card đồ họa <b>Radeon&nbsp; RX 5300M</b> hứa hẹn sẽ cung cấp hiệu suất máy tính để bàn trong<a href="https://www.tncstore.vn/lap-top/gaming-laptop.html" target="_blank"></a><b><a href="https://www.tncstore.vn/lap-top/gaming-laptop.html" target="_blank">laptop gaming</a></b> mỏng nhẹ, cho gamer tận hưởng trải nghiệm đa phương tiện ,chơi game và làm việc với hiệu suất cao hơn hẳn với thế hệ trước.</font></p><p><font face="Arial"><span style="white-space: pre;"></span>Hậu thuẫn cho vi xử lý là một thanh RAM 8Gb DDR4 3200Mhz và 1 khe ram trống có khả năng nâng cấp đến 64GB, 1 khe SSD MVMe PCIe Gen 3 và 1 khe SSD Combo MVMe PCIe Gen 3/SATA đảm đương khả năng xứ lý đa nhiệm mượt mà, nhanh chóng cũng như cân game tốt.</font></p><h1><font face="Arial">Công nghệ tản nhiệt độc quyền với Cooler Boost 5</font></h1><p><font face="Arial"><span style="white-space: pre;"></span>Tự hào là nhà sản xuất <b>laptop gaming</b> với công nghệ tản nhiệt hàng đầu, <b>MSI</b> luôn trang bị cho sản phẩm của mình thiết kế và các giải pháp làm mát tối ưu nhất. Với công nghệ <b>Cooler Boost 5</b>, <b><a href="https://www.tncstore.vn/laptop-msi-bravo-15-a4dc-052vn.html" target="_blank">MSI Bravo 15</a></b> sở hữu bên trong thân máy đến 6 ống đồng và 2 quạt để giải nhiệt cho cả CPU lẫn GPU. Chúng hoạt động một cách hài hòa bằng cách giảm thiểu nhiệt và tối đa hóa luồng khí để có hiệu suất chơi game mượt mà trong khung máy nhỏ gọn.</font></p><h1><font face="Arial">Thời lượng pin lên tới 7h</font></h1><p><font face="Arial"><span style="white-space: pre;"></span>Và để gánh một cấu hình như trên thì<b><a href="https://www.tncstore.vn/laptop-msi-bravo-15-a4dc-052vn.html" target="_blank">Laptop gaming MSI Bravo 15</a></b> được trang bị viên pin 51Whr mang lại thời gian onscreen lên tới 7h với những tác vụ cơ bản, đây là một thời lượng sử dụng khá ấn tượng trên một mẫu <b><a href="https://www.tncstore.vn/lap-top/gaming-laptop.html" target="_blank">laptop gaming</a></b> mỏng nhẹ như vậy.</font></p><p><font face="Arial"><span style="white-space: pre;"></span>Vậy liệu <b><a href="https://www.tncstore.vn/laptop-msi-bravo-15-a4dc-052vn.html" target="_blank">MSI Bravo 15 </a>có tốt không</b> ? <b>Giá bán laptop <a href="https://www.tncstore.vn/laptop-msi-bravo-15-a4dc-052vn.html" target="_blank">MSI Bravo 15</a></b> như vậy đã hợp lý chưa ?Với tất cả những gì chiếc <b>MSI Bravo</b> thể hiện được.<a href="https://www.tncstore.vn/laptop-msi-bravo-15-a4dc-052vn.html" target="_blank"></a><b><a href="https://www.tncstore.vn/laptop-msi-bravo-15-a4dc-052vn.html" target="_blank">MSI Bravo 15</a></b> hứa hẹn sẽ đem lại một trải nhiệm gaming tuyệt vời trong phân khúc phổ thông. Với cá nhân mình thì mình không quan trọng máy này phải là cấu hình của “đội xanh” hay “đội đỏ”, chỉ cần đáp ứng tốt tất cả các nhu cầu của mình thế là được thì chiếc<b> laptop gaming <a href="https://www.tncstore.vn/laptop-msi-bravo-15-a4dc-052vn.html" target="_blank">MSI Bravo 15</a></b> đã làm rất tốt.</font></p><p><font face="Arial"><br></font></p><p><font face="Arial">&nbsp;<font color="#ffffff">MSI Bravo 15, laptop chơi game MSI, laptop chơi game MSI, đánh giá laptop chơi game MSI,</font></font></p><p><font face="Arial" color="#ffffff">&nbsp;giá bán laptop MSI Bravo 15, MSI Bravo 15 tốt không, laptop sử AMD, nơi bán laptop MSI, giá bán laptop chơi game MSI</font></p><p><font face="Arial" color="#ffffff">&nbsp;AMD Ryzen 4000 ,MSI Alpha 15, Ryzen 5 4600H, RX 5300M , Cooler boots 5, GDDR6, MSI GF</font></p><div><br></div>', N'/Data/images/newses/tintucmoinhat/Bravo1.jpg', NULL, NULL, 1, CAST(N'2020-12-06T14:10:51.513' AS DateTime), N'quang', NULL, NULL, CAST(N'2020-12-06T14:10:00.000' AS DateTime), NULL, 7, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (57, N'Đây Là Bàn Phím Cơ 2020 Mà Mình Chọn Dùng Hàng Ngày! Xem Sẽ Biết Tại Sao | Đánh Giá Akko 3108 V2 OSA', N'Đây Là Bàn Phím Cơ 2020 Mà Mình Chọn Dùng Hàng Ngày! Xem Sẽ Biết Tại Sao', N'day-la-ban-phim-co-2020-ma-minh-chon-dung-hang-ngay-xem-se-biet-tai-sao', N'Akko, thương hiệu đến từ Đài Loan đang khẳng định được tên tuổi trên thị trường với rất nhiều mẫu bàn phím cơ giá rẻ, nhưng trang bị đầy đủ như các thương hiệu bàn phím cơ cao cấp.', N'<p><span style="font-size:14px"><strong>Akko</strong>, thương hiệu đến từ Đ&agrave;i Loan đang khẳng định được t&ecirc;n tuổi tr&ecirc;n thị trường với rất nhiều mẫu b&agrave;n ph&iacute;m cơ gi&aacute; rẻ, nhưng trang bị đầy đủ như c&aacute;c thương hiệu b&agrave;n ph&iacute;m cơ cao cấp. Kh&ocirc;ng chỉ rẻ về gi&aacute; th&agrave;nh so với chất lượng, b&agrave;n ph&iacute;m cơ <strong>Akko </strong>c&ograve;n ấn tượng cả về mẫu m&atilde; đa dạng, thiết kế đẹp mắt v&agrave; ấn tượng với thị hiếu của người d&ugrave;ng Việt Nam. V&agrave; h&ocirc;m nay, xin mời c&aacute;c bạn h&atilde;y c&ugrave;ng <strong>TNC store</strong> đập hộp v&agrave; đ&aacute;nh gi&aacute; nhanh mẫu b&agrave;n ph&iacute;m cơ <strong>Akko 3108 V2 OSA Grey Parrot</strong> mẫu b&agrave;n ph&iacute;m cơ hấp dẫn v&agrave; cực đẹp với switch gateron Yellow v&agrave; keycap profile OSA rất th&uacute; vị!</span></p>

<p><span style="font-size:14px">#Akko #3108V2 #B&agrave;nPh&iacute;mCơ</span></p>

<p>&nbsp;</p>

<p><span style="font-size:14px">*** LINK XEM NGAY B&Agrave;N PH&Iacute;M CƠ AKKO 3108 V2 OSA Ở Đ&Acirc;Y:</span></p>

<p><span style="font-size:14px">-&nbsp;</span></p>

<p><span style="font-size:14px">B&agrave;n Ph&iacute;m Cơ Akko 3108 V2 OSA &ndash; Grey Parrot Psittacus (Gateron Yellow switch)</span></p>

<p><span style="font-size:14px"><strong><a href="https://www.tncstore.vn/akko-3108-v2-osa-grey-parrot-psittacus-gateron-yellow-switch.html" target="_blank">https://www.tncstore.vn/akko-3108-v2-osa-grey-parrot-psittacus-gateron-yellow-switch.html</a></strong></span></p>

<div><iframe class="note-video-clip" frameborder="0" height="360" src="//www.youtube.com/embed/PXnuk9MCIpY" width="640"></iframe></div>

<div><span style="font-size:12px">TNC Channel,TNC Channel review,TNC Channel unboxing,TNC gaming,TNC store gaming,x&acirc;y dựng cấu h&igrave;nh tối ưu,cấu h&igrave;nh PC tối ưu,b&agrave;n ph&iacute;m cơ 2020,b&agrave;n ph&iacute;m akko,đ&aacute;nh gi&aacute; b&agrave;n ph&iacute;m akko,b&agrave;n ph&iacute;m cơ akko,b&agrave;n ph&iacute;m cơ n&agrave;o tốt,c&aacute;c loại b&agrave;n ph&iacute;m cơ,keycap 9009,mua keycap ở đ&acirc;u,nơi b&aacute;n keycap,akko 3108 v2,ph&iacute;m cơ akko 3108 v2 osa,ph&iacute;m cơ akko,keycap akko,keycap pbt 9009,keycap pbt,review ph&iacute;m cơ akko</span></div>
', N'/Data/images/newses/tintucmoinhat/mqdefault%20(15).jpg', NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-06T21:34:07.870' AS DateTime), N'quang', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (58, N'Laptop GIÁ HỜI, Gần 22 Triệu Mà Được Chip 6 Nhân 12 Luồng | Đánh Giá Laptop Chơi Game TUF-Gaming A15', N'Laptop GIÁ HỜI, Gần 22 Triệu Mà Được Chip 6 Nhân 12 Luồng', N'laptop-gia-hoi-gan-22-trieu-ma-duoc-chip-6-nhan-12-luong', N'2020 mang đến cho chúng ta nhiều tin vui lẫn tin buồn. Tin buồn là dịch bệnh hoành hành gây ảnh hưởng nặng nề về con người lẫn kinh tế. Còn tin vui là Asus đã tung ra mẫu Laptop Chơi Game TUF-Gaming A15 với rất nhiều ưu điểm trong một mức giá rẻ bất ngờ', N'<p><span style="font-size: 14px;"><font face="Arial">2020 mang đến cho chúng ta nhiều tin vui lẫn tin buồn. Tin buồn là dịch bệnh hoành hành gây ảnh hưởng nặng nề về con người lẫn kinh tế. Còn tin vui là<b> Asus</b> đã tung ra mẫu<b> Laptop Chơi Game TUF-Gaming A15</b> với rất nhiều ưu điểm trong một mức giá rẻ bất ngờ. Nếu trước đây anh em muốn mua<b> laptop chơi game giá rẻ</b>, nhưng phải có màn hình <b>144Hz</b> thì khó ngang lên trời. Nhưng với<b> Asus TUF Gaming A15</b> phiên bản sử dụng <b>Ryzen 5 4600H</b> cùng card đồ hoạ <b>GTX 1650 Ti</b>, chưa tới <b>22 triệu đồng</b> đã mang lại cho chúng ta quá nhiều điều bất ngờ. Nào, các bạn hãy cùng TNC Channel đánh giá laptop chơi game <b>Asus TUF Gaming A15</b> - một chiếc <b>laptop chơi game AMD</b> rất hấp dẫn nhé!</font></span></p><p><span style="font-size: 14px;"><font face="Arial">#ASUS #TUFGaming #A15</font></span></p><p><span style="font-size: 12px;"><font face="Arial"><br></font></span></p><p><span style="font-size: 14px;"><font face="Arial">*** LINK THAM KHẢO Laptop Gaming ASUS TUF A15 FA506II-AL012T:</font></span></p><p><span style="font-size: 14px;"><font face="Arial"><b><a href="https://www.tncstore.vn/laptop-gaming-asus-tuf-a15-fa506ll-al012t.html" target="_blank">https://www.tncstore.vn/laptop-gaming-asus-tuf-a15-fa506ll-al012t.html</a></b></font></span></p><p><span style="font-size: 12px;"><font face="Arial"><br></font></span></p><p><span style="font-size: 14px;"><font face="Arial">*** CÁC MẪU LAPTOP ASUS CHƠI GAME KHÁC TẠI TNC STORE:</font></span></p><p><span style="font-size: 14px;"><font face="Arial"><b><a href="https://bit.ly/3b8ezdv" target="_blank">https://bit.ly/3b8ezdv</a></b></font></span></p><p><iframe frameborder="0" src="//www.youtube.com/embed/ldJUvsuXP4M" width="640" height="360" class="note-video-clip"></iframe><span style="font-size: 14px;"><font face="Arial"><b><br></b></font></span></p><p><font face="Arial"><span style="font-size: 14px;"><b><font color="#ffffff">TNC Channel,TNC Channel review,TNC Channel unboxing,TNC gaming,TNC store gaming,cấu hình PC tối ưu,tuf gaming a15,TUF gaming A15 review,đánh giá laptop chơi game,laptop chơi game amd,laptop chip amd,laptop chip ryzen,laptop chơi game asus,laptop chơi game tuf gaming,laptop tuf gaming,Laptop Gaming ASUS TUF A15,laptop màn hình 144,amd ryzen 5 4600H</font></b></span><br></font></p>', N'/Data/images/newses/tintucmoinhat/mqdefault%20(14).jpg', NULL, NULL, 1, CAST(N'2020-12-06T14:13:48.307' AS DateTime), N'quang', NULL, NULL, CAST(N'2020-12-06T14:13:00.000' AS DateTime), NULL, 7, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (59, N'ĐẬP NHẸ Cái Hộp Mainboard MSI MPG Z490 Gaming Carbon - Chipset Z490 Cùng Một Rổ Công Nghệ!', N'ĐẬP NHẸ Cái Hộp Mainboard MSI MPG Z490 Gaming Carbon - Chipset Z490 Cùng Một Rổ Công Nghệ!', N'dap-nhe-cai-hop-mainboard-msi-mpg-z490-gaming-carbon-chipset-z490-cung-mot-ro-cong-nghe', N'Như vậy là những chiếc mainboard Z490 đã chính thức đồng loạt được lên sóng trên tất cả mặt trận. Và MSI cũng là một trong những nhà sản xuất đầu tiên trên thế giới tung ra những chiếc bo mạch chủ sử dụng thế hệ chipset mới nhất này', N'<p><span style="font-size:14px">Như vậy l&agrave; những chiếc <strong>mainboard Z490</strong> đ&atilde; ch&iacute;nh thức đồng loạt được l&ecirc;n s&oacute;ng tr&ecirc;n tất cả mặt trận. V&agrave; <strong>MSI </strong>cũng l&agrave; một trong những nh&agrave; sản xuất đầu ti&ecirc;n tr&ecirc;n thế giới tung ra những chiếc bo mạch chủ sử dụng thế hệ chipset mới nhất n&agrave;y. V&agrave; h&ocirc;m nay, xin mời c&aacute;c bạn h&atilde;y c&ugrave;ng <strong>TNC Channel</strong> đập hộp v&agrave; đ&aacute;nh gi&aacute; về thiết kế của chiếc mainboard <strong>MSI MPG Z490 Gaming Carbon</strong> n&agrave;y để xem, Micro Star International sẽ mang đến cho ch&uacute;ng ta một chiếc main <strong>MSI Z490</strong> như thế n&agrave;o, c&oacute; những c&ocirc;ng nghệ g&igrave; th&uacute; vị nh&eacute;!</span></p>

<p><span style="font-size:14px">#MSI #MPG #Z490</span></p>

<p>&nbsp;</p>

<p><span style="font-size:14px">*** THAM KHẢO C&Aacute;C CẤU H&Igrave;NH M&Aacute;Y T&Iacute;NH CHƠI GAME 2020 TỐT NHẤT TẠI TNC STORE:</span></p>

<p><span style="font-size:14px">- <strong><a href="https://www.tncstore.vn/gaming-pc.html" target="_blank">https://www.tncstore.vn/gaming-pc.html</a></strong></span></p>

<p><iframe class="note-video-clip" frameborder="0" height="360" src="//www.youtube.com/embed/E_BmNYqK1DU" width="640"></iframe></p>

<p><span style="font-size:14px"><strong>TNC Channel,TNC Channel review,TNC Channel unboxing,TNC x&acirc;y dựng cấu h&igrave;nh,TNC gaming,TNC store gaming,cấu h&igrave;nh PC tối ưu,Mainboard MSI MPG Z490 Gaming Carbon,MSI MPG Z490 Gaming carbon review,unboxing MSI Z490,đập hộp main Z490 MSI,main Z490,mainboard Z490,MSI Z490 Gaming Carbon,MSI MPG Z490 gaming carbon,đ&aacute;nh gi&aacute; main MSI,main MSI c&oacute; tốt kh&ocirc;ng,cấu h&igrave;nh pc MSI,Mainboard MSI Z490,main Z490 của MSI,Main cho chip intel thế hệ 10,intel 10th gen</strong></span></p>

<div>&nbsp;</div>
', N'/Data/images/newses/tintucmoinhat/mqdefault%20(13).jpg', NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-06T21:34:20.020' AS DateTime), N'quang', NULL, NULL, 7, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (60, N'Đại Gia "BÁN ĐẤT" Mua PC 13 Triệu! Nhưng NGỦ ĐÔNG Mất 2 Năm Mới Ưng Ý! - TNC Gaming PC Sniper 1660S', N'Đại Gia "BÁN ĐẤT" Mua PC 13 Triệu! Nhưng NGỦ ĐÔNG Mất 2 Năm Mới Ưng Ý!', N'dai-gia-ban-dat-mua-pc-13-trieu-nhung-ngu-dong-mat-2-nam-moi-ung-y', N'Như anh em đã biết, cấu hình PC chơi game càng ngày càng rẻ, các linh kiện máy tính càng ngày càng mạnh hơn trong một mức giả rẻ hơn rất nhiều. Ví dụ như cấu hình máy tính chơi game giá rẻ Sniper trước đây, rich kid lớp 7 phải bỏ ra tới 14 triệu mới mua được cấu hình PC với CPU Pentium Gold vào năm 2018', N'<p><span style="font-size: 14px;"><font face="Arial">Như anh em đã biết, cấu hình <b>PC chơi game</b> càng ngày càng rẻ, các linh kiện máy tính càng ngày càng mạnh hơn trong một mức giả rẻ hơn rất nhiều. Ví dụ như cấu hình máy tính chơi game giá rẻ <b>Sniper</b> trước đây, rich kid lớp 7 phải bỏ ra tới 14 triệu mới mua được cấu hình<b> PC </b>với <b>CPU Pentium Gold</b> vào năm 2018. Nhưng bây giờ, năm 2020, chỉ với 12 triệu, 13 Triệu, anh em đã có thể mua được <b>gaming PC</b> với <b>Core i3 9100F</b> và <b>GTX 1660 Super</b>. Mời anh em xem câu chuyện đại gia bán đất mua <b>PC 13 triệu</b> về chơi game nhé!</font></span></p><p><span style="font-size: 14px;"><font face="Arial">#GamingPC #Sniper1660S #RichKid</font></span></p><p><span style="font-size: 12px;"><font face="Arial"><br></font></span></p><p><span style="font-size: 14px;"><font face="Arial">*** LINK THAM KHẢO CẤU HÌNH MÁY TÍNH CHƠI GAME GIÁ RẺ TNC GAMING PC SNIPER 1660 SUPER:</font></span></p><p><span style="font-size: 14px;"><font face="Arial">- Gaming PC - Sniper 1660 Super - i3 9100f/ H310M/ Ram 16GB/ SSD 120GB/ GTX 1660 Super/ 500W</font></span></p><p><span style="font-size: 14px;"><font face="Arial"><b><a href="https://www.tncstore.vn/gaming-pc-sniper-1660-super-9100f.html" target="_blank">https://www.tncstore.vn/gaming-pc-sniper-1660-super-9100f.html</a></b></font></span></p><p><span style="font-size: 12px;"><font face="Arial"><br></font></span></p><p><span style="font-size: 14px;"><font face="Arial">*** CÁC CẤU HÌNH MÁY TÍNH CHƠI GAME GIÁ TỐT NHẤT TẠI TNC STORE:</font></span></p><p><span style="font-size: 14px;"><font face="Arial"><b><a href="https://www.tncstore.vn/gaming-pc.html" target="_blank">https://www.tncstore.vn/gaming-pc.html</a></b></font></span></p><p><iframe frameborder="0" src="//www.youtube.com/embed/OAuWu4QPuKo" width="640" height="360" class="note-video-clip"></iframe><span style="font-size: 14px;"><font face="Arial"><b><br></b></font></span></p><p><font face="Arial"><span style="font-size: 14px;"><b><font color="#ffffff">TNC Channel,TNC Channel review,TNC Channel unboxing,TNC xây dựng cấu hình,TNC gaming,TNC store gaming,xây dựng cấu hình tối ưu,cấu hình PC tối ưu,máy tính chơi game,cấu hình PC chơi game,máy tính chơi game giá rẻ,gaming pc chơi Warzone,pc chơi game giá rẻ,cấu hình pc 12 triệu,máy tính chơi game rẻ nhất,sniper 1660 super,sniper 1660,sniper 1660S,rich kid lớp 7,rich kid,đại gia bán đất,đại gia,mua pc 12 triệu,pc 12 triệu,máy tính 12 triệu</font></b></span><br></font></p>', N'/Data/images/newses/tintucmoinhat/mqdefault%20(16).jpg', NULL, NULL, 1, CAST(N'2020-12-06T14:16:26.520' AS DateTime), N'quang', NULL, NULL, CAST(N'2020-12-06T14:16:00.000' AS DateTime), NULL, 7, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (61, N'Cooler Master Làm Tai Nghe Chơi Game Có NGON NHƯ LỜI ĐỒN? | Đánh Giá Tai Nghe Gaming Cooler Master', N'Cooler Master Làm Tai Nghe Chơi Game Có NGON NHƯ LỜI ĐỒN?', N'cooler-master-lam-tai-nghe-choi-game-co-ngon-nhu-loi-don', N'Một chiếc tai nghe chơi game mang lại cảm giác đeo thoải mái nhất có thể có lẽ là một trong những tiêu chí đầu tiên mà chúng ta buộc phải quan tâm tới mỗi khi lựa chọn cho mình một chiếc tai nghe gaming', N'<p><span style="font-family: Arial; font-size: 14px;">Một chiếc<b> tai nghe chơi game</b> mang lại cảm giác đeo thoải mái nhất có thể có lẽ là một trong những tiêu chí đầu tiên mà chúng ta buộc phải quan tâm tới mỗi khi lựa chọn cho mình một <b>chiếc tai nghe gaming</b>. Bên cạnh yếu tố về chất âm cũng như các tính năng đi kèm. Và Hôm nay, các bạn hãy cùng Sơn Râu và <b>TNC Channel</b> đập hộp cũng như đánh giá chiếc tai nghe <b>Cooler Master MH650</b>, một sản phẩm gaming gear rất thú vị nằm trong bộ ba tai nghe <b>Cooler Master MH670</b>, <b>MH650 </b>và <b>MH630</b> mới được ra mắt nhé. Liệu rằng<b> tai nghe chơi game Cooler Master</b> có ấn tượng như những sản phẩm tản nhiệt mà nhà sản xuất này đã từng mang đến cho chúng ta hay không? Đây có phải là chiếc<b> tai nghe chơi game bắn súng</b> tốt, hay là <b>tai nghe chơi Warzone</b> hấp dẫn? Hay nó lại là một chiếc<b> tai nghe chơi liên minh huyền thoại</b>? Câu trả lời sẽ có trong video ngày hôm nay nhé!</span><br></p><p><span style="font-size: 14px;"><font face="Arial">#TaiNgheChơiGame #CoolerMaster #MH650</font></span></p><p><span style="font-size: 12px;"><font face="Arial"><br></font></span></p><p><span style="font-size: 14px;"><font face="Arial">*** LINK CHI TIẾT SẢN PHẨM BÊN DƯỚI:</font></span></p><p><span style="font-size: 12px;"><font face="Arial"><br></font></span></p><p><span style="font-size: 14px;"><font face="Arial">- Tai Nghe Cooler Master MH650</font></span></p><p><span style="font-size: 14px;"><font face="Arial"><b><a href="https://www.tncstore.vn/tai-nghe-coolermaster-mh650.html" target="_blank">https://www.tncstore.vn/tai-nghe-coolermaster-mh650.html</a></b></font></span></p><p><span style="font-size: 12px;"><font face="Arial"><br></font></span></p><p><span style="font-size: 14px;"><font face="Arial">*** THAM KHẢO THÊM CÁC MẪU TAI NGHE CHƠI GAME TỐT NHẤT 2020 TẠI TNC STORE</font></span></p><p><span style="font-size: 12px;"><font face="Arial"><br></font></span></p><p><span style="font-size: 14px;"><font face="Arial">- <b><a href="https://www.tncstore.vn/gaming-gear/tai-nghe-choi-game.html" target="_blank">https://www.tncstore.vn/gaming-gear/tai-nghe-choi-game.html</a></b></font></span></p><p><iframe frameborder="0" src="//www.youtube.com/embed/UmB2_0ESwDA" width="640" height="360" class="note-video-clip"></iframe><span style="font-size: 14px;"><font face="Arial"><b><br></b></font></span></p><p><font face="Arial"><span style="font-size: 14px;"><b><font color="#ffffff">TNC Channel,TNC Channel review,TNC Channel unboxing,TNC gaming,TNC store gaming,xây dựng cấu hình tối ưu,Tai Nghe Chơi Game,Cooler Master,Đánh Giá Tai Nghe Gaming,Tai Nghe Gaming,Tai Nghe Gaming Cooler Master,tai nghe Cooler Master,Cooler Master MH670,tai nghe Cooler Master MH650,MH630,MH650,tai nghe chơi Warzone,tai nghe chơi liên minh huyền thoại,tai nghe chơi game bắn súng tốt,cooler master mh650 review,TAI NGHE CHƠI GAME TỐT NHẤT 2020</font></b></span><br></font></p>', N'/Data/images/newses/tintucmoinhat/mqdefault%20(12).jpg', NULL, NULL, 1, CAST(N'2020-12-06T14:17:42.750' AS DateTime), N'quang', NULL, NULL, CAST(N'2020-12-06T14:17:00.000' AS DateTime), NULL, 7, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (62, N'Khi Độ Mixi Đi Lượn Phố Vớ Được Hàng Khủng... Màn Hình Cực Nét Thì Stream Đến Bao Giờ??', N'Độ Mixi mua màn hình tại TNC Store', N'do-mixi-mua-man-hinh-tai-tnc-store', N'Một ngày mát dời nọ, đang trên đường du ngoạn phố phường, "Tộc trưởng" của chúng ta bỗng cảm thấy long thể bất an, bụng trĩu nặng lo âu, phần vì chưa tìm được chiếc màn hình máy tính SIÊU CẤP XỊN SÒ dành cho phu  nhân, phần vì sáng làm bát bún lòng... Bỗng đằng xa, hiện ra TNC STORE. Phải chăng đây là mối duyên trời định?... anh em theo dõi xem chuyện gì đến và sẽ đến nhé ', N'<p><span style="font-size: 15px; white-space: pre-wrap;"><font face="Chakra Petch"><span style="font-size: 14px;"><span style="font-size: 14px;">Một ngày mát dời nọ, đang trên đường du ngoạn phố phường, "Tộc Trưởng" </span><b><span style="font-size: 14px;">Độ Mixi </span></b><span style="font-size: 14px;">của chúng ta bỗng cảm thấy long thể bất an, bụng trĩu nặng lo âu, phần vì tìm mãi vẫn chưa thấy chiếc màn hình máy tính SIÊU CẤP XỊN XÒ nào cho phu nhân a.k.a Chị Chủ Kênh </span><b><span style="font-size: 14px;">Mixi Gaming</span></b><span style="font-size: 14px;">. Phần vì... sáng mới làm bát bún lòng. Bỗng đằng xa, hiện ra </span></span><b><i><span style="font-size: 14px;">TNC STORE</span></i></b><span style="font-size: 14px;">. Phải chăng đây là mối duyên trời định?... anh em theo dõi xem chuyện gì đến và sẽ đến nhé </span></font></span></p><p style="text-align: center;"><iframe frameborder="0" src="//www.youtube.com/embed/CeKZBe-kFfY" width="640" height="360" class="note-video-clip"></iframe><span style="font-size: 15px; white-space: pre-wrap;"><span style="font-size: 14px;"><font face="Chakra Petch"><br></font></span></span></p><p><font face="Chakra Petch"><br></font></p><p><font face="Chakra Petch"><span style="font-size: 14px; white-space: pre-wrap;">
#độmixi #tnc #tnccomputer

<b><a href="https://www.tncstore.vn/man-hinh-asus-34-mx34vq-curved.html" target="_blank">=&gt; Màn hình Asus MX34VQ Curved</a></b></span></font></p><p><font face="Chakra Petch"><span style="font-size: 14px; white-space: pre-wrap;"><b><a href="https://www.tncstore.vn/man-hinh-gaming.html" target="_blank">=&gt; THAM KHẢO NGAY các mẫu màn hình chơi game mới nhất tại </a><i><a href="https://www.tncstore.vn/man-hinh-gaming.html" target="_blank">TNC STORE</a></i><br></b>

Tham gia ngay group Hội những người đam mê build PC để cùng chém gió tất tần tật về PC với Sơn Râu và đội ngũ TNC Channel tại đây nhé anh em: https://goo.gl/XVToc1
----------------------------------------------
Hãy để TNC gần các bạn hơn nhé:
►YouTube: http://bit.ly/2kh57Nb
►Fanpage FB: https://www.facebook.com/tncstore/
►Website: http://www.tncstore.vn/
►Instagram: https://www.instagram.com/tncstore_vn/
----------------------------------------------
        </span></font></p>', N'/Data/images/newses/tintucmoinhat/do-mixi-gaming.jpg', NULL, NULL, 1, CAST(N'2020-12-06T14:19:10.710' AS DateTime), N'quang', NULL, NULL, CAST(N'2020-12-06T14:19:00.000' AS DateTime), NULL, 7, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (63, N'KHÁNH VY ĐI MUA PC BỊ PEWPEW "THUỐC ĐỒ NGON" TẠI TNC STORE NHƯ THẾ NÀO? [REACTION]', N'Khánh Vy mua PC tại TNC Store', N'khanh-vy-mua-pc-tai-tnc-store', N'Cách đây không lâu, trên kênh Youtube Khánh Vy Official của cô nàng "hot girl ngoại ngữ" Khánh Vy, đã upload một vlog rất thú vị về hành trình đi đón cháu và mua PC dựng video tại TNC Store. Và thật tình cờ, thật sự là hết sức tình cờ luôn, ngày hôm đấy tại TNC Store cũng có sự xuất hiện của một trong những streamer hàng đầu Việt Nam.', N'<div><span style="font-size: 14px; white-space: pre-wrap;"><font face="Chakra Petch">Xin chào các bạn, cách đây không lâu, trên kênh Youtube Khánh Vy Official của cô nàng "hot girl ngoại ngữ" Khánh Vy, đã upload một vlog rất thú vị về hành trình đi đón cháu và mua PC dựng video tại TNC Store. Và thật tình cờ, thật sự là hết sức tình cờ luôn, ngày hôm đấy tại TNC Store cũng có sự xuất hiện của một trong những streamer hàng đầu Việt Nam. Đó chính là PewPew. Vậy chuyện gì đã thực sự xảy ra vào ngày hôm ấy? Dàn máy tính của PewPew định mua ra sao? Cấu hình mà Khánh Vy lựa chọn tại TNC Store như thế nào? Hãy cùng Sơn Râu và TNC Channel reaction video của Khánh Vy vlog ngày hôm nay nhé.</font></span></div><div><span style="font-size: 14px; white-space: pre-wrap;"><font face="Chakra Petch"><br></font></span></div><div style="text-align: center;"><iframe frameborder="0" src="//www.youtube.com/embed/Gd98kaAeXzA" width="640" height="360" class="note-video-clip"></iframe><span style="font-size: 14px; white-space: pre-wrap;"><font face="Chakra Petch"><br></font></span></div><div><span style="font-size: 14px; white-space: pre-wrap;"><font face="Chakra Petch">#KhánhVy #PewPew #TNCStore</font></span></div><div><span style="font-size: 15px; white-space: pre-wrap;"><font face="Chakra Petch"><br></font></span></div><div><span style="font-size: 15px; white-space: pre-wrap;"><font face="Chakra Petch"><br></font></span></div><div><span style="font-size: 15px; white-space: pre-wrap;"><font face="Chakra Petch"><br></font></span></div><div><span style="font-size: 15px; white-space: pre-wrap;"><font face="Chakra Petch"><br></font></span></div><div><span style="font-size: 14px; white-space: pre-wrap;"><font face="Chakra Petch"><b><a href="https://www.tncstore.vn/workstation-pc-renda-advanced-i5-10600k.html" target="_blank">=&gt; LINK CẤU HÌNH&nbsp; PC CỦA KHÁNH VY BUILD TẠI TNC STORE</a></b></font></span></div><div><span style="font-size: 14px; white-space: pre-wrap;"><font face="Chakra Petch"><b>=&gt; <a href="https://youtu.be/bN2Xe3JQam8" target="_blank">LINK VIDEO VLOG KHÁNH VY MUA PC TẠI TNC STORE</a></b></font></span></div><div><br></div><div><span style="font-size: 15px; white-space: pre-wrap;"><font face="Chakra Petch"><br></font></span></div><div><span style="font-size: 15px; white-space: pre-wrap;"><font face="Chakra Petch"><br></font></span></div><div><span style="font-size: 14px; white-space: pre-wrap;"><font face="Chakra Petch">Tham gia ngay group Hội những người đam mê build PC để cùng chém gió tất tần tật về PC với Sơn Râu và đội ngũ TNC Channel tại đây nhé anh em: https://goo.gl/XVToc1</font></span></div><div><span style="font-size: 14px; white-space: pre-wrap;"><font face="Chakra Petch">----------------------------------------------</font></span></div><div><span style="font-size: 14px; white-space: pre-wrap;"><font face="Chakra Petch">Hãy để TNC gần các bạn hơn nhé:</font></span></div><div><span style="font-size: 14px; white-space: pre-wrap;"><font face="Chakra Petch">►YouTube: https://metub.net/tncchannel</font></span></div><div><span style="font-size: 14px; white-space: pre-wrap;"><font face="Chakra Petch">►Fanpage FB: https://www.facebook.com/tncstore/</font></span></div><div><span style="font-size: 14px; white-space: pre-wrap;"><font face="Chakra Petch">►Website: http://www.tncstore.vn/</font></span></div><div><span style="font-size: 14px; white-space: pre-wrap;"><font face="Chakra Petch">►Instagram: https://www.instagram.com/tncstore_vn/</font></span></div><div><span style="font-size: 14px; white-space: pre-wrap;"><font face="Chakra Petch">----------------------------------------------</font></span></div><div><span style="font-size: 14px; white-space: pre-wrap;"><font face="Chakra Petch"></font></span></div><font face="Chakra Petch"><div class="post_meta_bottom"><div></div> <div class="share hidden-xs"><span>Chia sẻ bài viết:</span> <a href="https://www.youtube.com/channel/UCvLGkK-wBBaoXwV71Tgx08Q?sub_confirmation=1"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M0 0V24H24V0H0ZM20.0172 15.9276C19.8136 16.8111 19.0908 17.4635 18.2208 17.5607C16.1613 17.7903 14.0762 17.7918 11.9992 17.7903C9.92297 17.7918 7.83782 17.7903 5.77772 17.5607C4.9075 17.4636 4.18481 16.8111 3.98221 15.9276C3.69231 14.6697 3.69231 13.2955 3.69231 11.9999C3.69231 10.7044 3.69574 9.33078 3.98537 8.07291C4.18797 7.18855 4.91093 6.53702 5.78004 6.43991C7.84035 6.20967 9.9264 6.20877 12.0026 6.20967C14.0786 6.20883 16.1639 6.20967 18.224 6.43991C19.0942 6.53702 19.8169 7.18855 20.0204 8.07291C20.3103 9.33078 20.3077 10.7044 20.3077 11.9999C20.3077 13.2955 20.3068 14.6697 20.0172 15.9276Z" fill="#F9495F"></path> <path fill-rule="evenodd" clip-rule="evenodd" d="M9.85547 14.5791C11.6208 13.6637 13.3704 12.7559 15.1375 11.8398C13.3653 10.9152 11.6159 10.0031 9.85547 9.08447V14.5791Z" fill="#F9495F"></path></svg></a> <a href="http://www.facebook.com/share.php?u=https://www.tncstore.vn/khanh-vy-mua-pc-tai-TNC-Store.html&amp;title=<b>Notice</b>: Undefined variable: heading_title in <b>/var/www/html/tnc_web_product/catalog/view/theme/default/template/post/post_content.tpl</b> on line <b>77</b>" rel="me" class="ss-social-facebook"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M0 0V24H24V0H0ZM15.8771 6.60485H14.0012C13.6297 6.60485 13.2547 6.98885 13.2547 7.27453V9.18736H15.8734C15.768 10.6541 15.5515 11.9954 15.5515 11.9954H13.2413V20.3077H9.7987V11.9945H8.12287V9.19733H9.7987V6.91042C9.7987 6.49224 9.71399 3.69236 13.326 3.69236H15.8772V6.60485H15.8771Z" fill="#005EC4"></path></svg></a> <a href="https://twitter.com/intent/tweet?original_referer=https://www.tncstore.vn/khanh-vy-mua-pc-tai-TNC-Store.html&amp;text=KHÁNH VY ĐI MUA PC BỊ PEWPEW &quot;THUỐC ĐỒ NGON&quot; TẠI TNC STORE NHƯ THẾ NÀO? [REACTION]&amp;url=https://www.tncstore.vn/khanh-vy-mua-pc-tai-TNC-Store.html" target="_blank"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path d="M0 4C0 1.79086 1.79086 0 4 0H20C22.2091 0 24 1.79086 24 4V20C24 22.2091 22.2091 24 20 24H4C1.79086 24 0 22.2091 0 20V4Z" fill="white"></path> <path fill-rule="evenodd" clip-rule="evenodd" d="M0 0V24H24V0H0ZM18.6066 8.61146C18.6131 8.75773 18.6165 8.90479 18.6165 9.05243C18.6165 13.5572 15.1878 18.7514 8.91766 18.7514C6.9926 18.7514 5.20077 18.1871 3.69226 17.2198C3.95895 17.2515 4.23022 17.2676 4.50546 17.2676C6.10254 17.2676 7.57234 16.7227 8.73906 15.8082C7.24737 15.7808 5.9884 14.7952 5.55455 13.4409C5.7628 13.4808 5.97637 13.5022 6.19601 13.5022C6.5069 13.5022 6.80809 13.4604 7.09414 13.3826C5.53477 13.0693 4.35967 11.6917 4.35967 10.0401C4.35967 10.0257 4.35967 10.0114 4.35998 9.99719C4.81952 10.2525 5.34509 10.4059 5.90395 10.4236C4.9892 9.81231 4.38757 8.76886 4.38757 7.58632C4.38757 6.96153 4.55567 6.37604 4.84916 5.87246C6.53037 7.93493 9.0422 9.29196 11.8753 9.43427C11.8171 9.18467 11.7868 8.92447 11.7868 8.65735C11.7868 6.77491 13.3132 5.24867 15.1956 5.24867C16.1762 5.24867 17.0621 5.66258 17.6839 6.32503C18.4603 6.17233 19.1899 5.88849 19.8485 5.4979C19.5941 6.29396 19.0536 6.96185 18.3497 7.38382C19.0393 7.30138 19.6962 7.11808 20.3076 6.84696C19.8507 7.53051 19.2728 8.13094 18.6066 8.61146Z" fill="#68AEFA"></path></svg></a> <a href="http://pinterest.com/pin/create/bookmarklet/?url=https://www.tncstore.vn/khanh-vy-mua-pc-tai-TNC-Store.htmldescription=<b>Notice</b>: Undefined variable: heading_title in <b>/var/www/html/tnc_web_product/catalog/view/theme/default/template/post/post_content.tpl</b> on line <b>89</b>" rel="me" class="ss-social-pinterest"><svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M16.1164 5.50146H7.88475C6.57101 5.50146 5.50195 6.57045 5.50195 7.88426V16.1159C5.50195 17.4299 6.57101 18.4989 7.88475 18.4989H16.1164C17.4304 18.4989 18.4994 17.4299 18.4994 16.1159V7.88426C18.4994 6.57052 17.4304 5.50146 16.1164 5.50146ZM12.0004 16.2788C9.64136 16.2788 7.72182 14.3592 7.72182 11.9999C7.72182 9.64087 9.64136 7.72133 12.0004 7.72133C14.3597 7.72133 16.2793 9.64087 16.2793 11.9999C16.2793 14.3592 14.3597 16.2788 12.0004 16.2788ZM16.4169 8.6061C15.8584 8.6061 15.4043 8.15195 15.4043 7.59375C15.4043 7.03549 15.8584 6.58133 16.4169 6.58133C16.9751 6.58133 17.4293 7.03549 17.4293 7.59375C17.4293 8.15202 16.9751 8.6061 16.4169 8.6061Z" fill="#FF8F02"></path> <path fill-rule="evenodd" clip-rule="evenodd" d="M0 0V24H24V0H0ZM20.3066 16.1158C20.3066 18.427 18.427 20.3066 16.1159 20.3066H7.8842C5.57328 20.3066 3.69336 18.427 3.69336 16.1158V7.8842C3.69336 5.57328 5.57328 3.69336 7.8842 3.69336H16.1159C18.427 3.69336 20.3066 5.57328 20.3066 7.8842V16.1158Z" fill="#FF8F02"></path></svg></a></div></div> <div class="product_related"><div class="product"><div class="thumb"><a href="https://www.tncstore.vn/workstation-pc-renda-advanced-i5-10600k.html"><img src="image/cache/catalog/PC TNC/Renda Advanced/Renda-Advanced-gen10-gtx-228x228.jpg" alt=""></a></div> <div class="info"><a href="https://www.tncstore.vn/workstation-pc-renda-advanced-i5-10600k.html" class="title">WORKSTATION PC - Renda Advanced - i5 10600K/ Z490/ 16GB/ 256GB/ GTX 1660S/ 550W</a> <div class="price">21.216.000 đ</div> <div class="desc">- Mainboard:&nbsp;ASUS PRIME Z490-P- CPU: &nbsp;Intel Core i5-10600K Avengers Edition (4.1GHz turbo ..</div> <a href="https://www.tncstore.vn/workstation-pc-renda-advanced-i5-10600k.html" class="add-to-cart">Build ngay</a></div></div></div></font>', N'/Data/images/newses/tintucmoinhat/Pew-pew-Khanh-vy.jpg', NULL, NULL, 1, CAST(N'2020-12-06T14:20:47.620' AS DateTime), N'quang', NULL, NULL, CAST(N'2020-12-06T14:20:00.000' AS DateTime), NULL, 7, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (64, N'Cấu Hình PC Chơi Liên Minh Huyền Thoại "10 NĂM KHÔNG HỎNG" Của Nữ MC-Streamer Minh Nghi', N'Minh Nghi mua PC Gaming tại TNC Store', N'minh-nghi-mua-pc-gaming-tai-tnc-store', N'Hôm nay, xin mời anh em hãy cùng Minh Nghi, một nhân vật quen thuộc với cộng đồng game thủ Liên Minh Huyền Thoại, dưới cương vị là MC của VETV, build PC ở TNC STORE cực khủng với các linh kiện bền bỉ nhất đến từ ASUS và AMD tại TNC STORE, để có thể chơi được tựa game Liên minh Huyền Thoại trên cấu hình PC Asus này ít nhất là thêm 10 năm nữa nhé!', N'<p><b>Cấu Hình PC</b> Chơi Liên Minh Huyền Thoại 10 NĂM</p><p>Như vậy là Liên Minh Huyền Thoại đã được ra mắt 10 năm rồi, một chặng đường rất dài đã trôi qua. Ngày hôm nay, chúng ta đã có được không biết bao nhiêu kỷ niệm, cũng như bản thân tựa game này cũng đã đạt được nhiều thành tựu không hề nhỏ trong suốt chặng đường phát triển, cùng một cộng đồng game thủ khổng lồ. Hôm nay, xin mời anh em hãy cùng Minh Nghi, một nhân vật quen thuộc với cộng đồng <b>game thủ</b> Liên Minh Huyền Thoại, dưới cương vị là MC của VETV, <b>build PC ở TNC STORE</b> cực khủng với các linh kiện bền bỉ nhất đến từ ASUS và AMD tại <b>TNC STORE</b>, để có thể chơi được tựa game Liên minh Huyền Thoại trên <b>cấu hình PC Asus </b>này ít nhất là thêm 10 năm nữa nhé!</p><p>Nào hãy cùng bắt đầu video thôi!</p><p><br></p><p style="text-align: center;"><iframe frameborder="0" src="//www.youtube.com/embed/c0wTzjjklMs" width="640" height="360" class="note-video-clip"></iframe><br></p><p>#MinhNghi #Asus #AMD #LienMinhHuyenThoai #TNCStore #TNCChannel</p><p><a href="https://www.tncstore.vn/gaming-pc.html" target="_blank">=&gt; THAM KHẢO NGAY CÁC CẤU HÌNH GAMING PC MỚI NHẤT TẠI TNC STORE</a></p><p>Tham gia ngay group Hội những người đam mê build PC để cùng chém gió tất tần tật về PC với Sơn Râu và đội ngũ TNC Channel tại đây nhé anh em: https://goo.gl/XVToc1</p><p>----------------------------------------------</p><p>Hãy để TNC gần các bạn hơn nhé:</p><p>►YouTube: https://metub.net/tncchannel</p><p>►Fanpage FB: https://www.facebook.com/tncstore/</p><p>►Website: http://www.tncstore.vn/</p><p>►Instagram: https://www.instagram.com/tncstore_vn/</p><p>----------------------------------------------</p><p></p>', N'/Data/images/newses/tintucmoinhat/122678796_267492374680847_49939790622617757_n.jpg', NULL, NULL, 1, CAST(N'2020-12-06T14:22:30.683' AS DateTime), N'quang', NULL, NULL, CAST(N'2020-12-06T14:22:00.000' AS DateTime), NULL, 7, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Newses] ([ID], [Title], [ShortTitle], [MetaTitle], [Description], [ContentHtml], [Images], [MetaKeywords], [MetaDescription], [Status], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [PublishedDate], [RelatedNewes], [CategoryID], [ViewCount], [Source], [UpTopNew], [UpTopHot], [RelatedProduct]) VALUES (65, N'PEWPEW MUA PC 27 TRIỆU Và Pha Chốt Đơn Nhanh Như HACK SPEED Tại TNC Store! - Mua PC Như Mua Rau', N'PewPew mua PC tại TNC Store', N'pewpew-mua-pc-tai-tnc-store', N'Vì lý do gì mà hot streamer top đầu Việt Nam là PewPew, vốn đang sinh sống và làm việc tại TP. Hồ Chí Minh, lại thân chinh ra Hà Nội để ghé qua TNC STORE và build ngay một dàn PC cực chất? Mời các bạn cùng xem video và tìm hiểu tại sao nhé.', N'<p><font face="Chakra Petch"><span style="font-size: 14px;">Mùa tựu trường lại sắp đến rồi, nghỉ hè chưa được bao lâu. Và đây cũng là thời điểm các bạn trẻ cần sắm sửa chuẩn bị cho năm học mới. Hiểu được nhu cầu thiết yếu đó, tại <b>TNC Store</b> đang diễn ra chương trình khuyến mãi giảm giá BACK TO SCHOOL siêu lớn, siêu hấp dẫn, với hàng trăm sản phẩm từ <b><a href="https://www.tncstore.vn/gaming-gear.html" target="_blank">gaming gears</a></b> đến <b><a href="https://www.tncstore.vn/gaming-pc.html" target="_blank">Gaming PC</a></b>, <a href="https://www.tncstore.vn/lap-top.html" target="_blank"><b>laptop</b></a>, linh kiện máy tính.</span></font></p><p><font face="Chakra Petch"><span style="font-size: 14px;">Và đó cũng chính là lý do khiến <b>PewPew</b>, một trong những streamer hàng đầu tại Việt Nam, tin tưởng và lựa chọn làm địa chỉ tin cậy để sắm một dàn <b>Gaming PC</b> cho "cậu em" chuẩn bị đi học.&nbsp;</span></font></p><p><font face="Chakra Petch"><span style="font-size: 14px;">Vậy quá trình mua <b>PC chơi game</b> của PewPew như thế nào? Dàn máy tính chơi game mà PewPew lựa chọn sẽ ra sao? Cấu hình PC 27 triệu gồm có những gì? Mời các bạn theo dõi qua video hôm nay nhé!</span></font></p><p><font face="Chakra Petch"><br></font></p><p style="text-align: center;"><font face="Chakra Petch"><iframe frameborder="0" src="//www.youtube.com/embed/W6fdNkwRuLk" width="640" height="360" class="note-video-clip"></iframe><br></font></p><p><span style="font-size: 14px; font-family: &quot;Chakra Petch&quot;;">#PewPew #BackToSchool #TNCStore</span></p><p><a href="https://www.tncstore.vn/gaming-pc/gaming-pc-nova-2070-super-10100f.html" target="_blank"><font face="Chakra Petch"><span style="font-size: 14px;"><b>=&gt; LINK CHI TIẾT CẤU HÌNH PC CỦA PEWPEW: TNC GAMING PC NOVA 2070</b></span></font></a></p><p><br></p><p><font face="Chakra Petch"><br></font></p><p><font face="Chakra Petch"><span style="font-size: 14px;">Tham gia ngay group Hội những người đam mê build PC để cùng chém gió tất tần tật về PC với Sơn Râu và đội ngũ TNC Channel tại đây nhé anh em: https://goo.gl/XVToc1</span></font></p><p><font face="Chakra Petch"><span style="font-size: 14px;">----------------------------------------------</span></font></p><p><font face="Chakra Petch"><span style="font-size: 14px;">Hãy để TNC gần các bạn hơn nhé:</span></font></p><p><font face="Chakra Petch"><span style="font-size: 14px;">►YouTube: https://metub.net/tncchannel</span></font></p><p><font face="Chakra Petch"><span style="font-size: 14px;">►Fanpage FB: https://www.facebook.com/tncstore/</span></font></p><p><font face="Chakra Petch"><span style="font-size: 14px;">►Website: http://www.tncstore.vn/</span></font></p><p><font face="Chakra Petch"><span style="font-size: 14px;">►Instagram: https://www.instagram.com/tncstore_vn/</span></font></p><p><font face="Chakra Petch"><span style="font-size: 14px;">----------------------------------------------</span></font></p><p><font face="Chakra Petch"><span style="font-size: 14px;"></span></font></p>', N'/Data/images/newses/tintucmoinhat/122990088_2674929352724115_3914477182604930089_n.jpg', NULL, NULL, 1, CAST(N'2020-12-06T14:23:41.617' AS DateTime), N'quang', NULL, NULL, CAST(N'2020-12-06T14:23:00.000' AS DateTime), NULL, 7, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Newses] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipEmail], [ShipMobile], [ShipAddress], [Status], [Note], [TotalPrice]) VALUES (15, CAST(N'2021-01-07T09:28:02.633' AS DateTime), N'huyenpham', N'Phạm Lê Khánh Huyền', N'huyen123@gmail.com', N'09612723606', N'Hà Nội', N'Đã xử lý            ', N'Test xác nhận mua hàng', CAST(43490000 AS Decimal(18, 0)))
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipEmail], [ShipMobile], [ShipAddress], [Status], [Note], [TotalPrice]) VALUES (16, CAST(N'2021-06-18T17:20:18.133' AS DateTime), N'huyenpham', N'', N'', N'', N'', N'Chưa xử lý          ', N'', CAST(43490000 AS Decimal(18, 0)))
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipEmail], [ShipMobile], [ShipAddress], [Status], [Note], [TotalPrice]) VALUES (17, CAST(N'2021-06-18T17:41:48.990' AS DateTime), N'huyenpham', N'Phạm Lê Khánh Huyền', N'dangquangepu1701@gmail.com', N'0374487741', N'Hà Nội', N'Chưa xử lý          ', N'gọi theo số trên', CAST(43490000 AS Decimal(18, 0)))
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipEmail], [ShipMobile], [ShipAddress], [Status], [Note], [TotalPrice]) VALUES (18, CAST(N'2021-06-18T17:46:57.293' AS DateTime), N'huyenpham', N'Phạm Lê Khánh Huyền', N'seemonterinu1701@gmail.com', N'0374487741', N'Hà Nội', N'Chưa xử lý          ', N'thanh toán tại nhà', CAST(43490000 AS Decimal(18, 0)))
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipEmail], [ShipMobile], [ShipAddress], [Status], [Note], [TotalPrice]) VALUES (19, CAST(N'2021-06-18T17:50:17.007' AS DateTime), N'huyenpham', N'Phạm Lê Khánh Huyền', N'seemonterinu1701@gmail.com', N'0374487741', N'Hà Nội', N'Chưa xử lý          ', N'ghi chú', CAST(43490000 AS Decimal(18, 0)))
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipEmail], [ShipMobile], [ShipAddress], [Status], [Note], [TotalPrice]) VALUES (20, CAST(N'2021-06-18T17:54:57.867' AS DateTime), N'huyenpham', N'', N'', N'', N'', N'Chưa xử lý          ', N'', CAST(43490000 AS Decimal(18, 0)))
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipEmail], [ShipMobile], [ShipAddress], [Status], [Note], [TotalPrice]) VALUES (21, CAST(N'2021-06-18T17:55:12.447' AS DateTime), N'huyenpham', N'Phạm Lê Khánh Huyền', N'seemonterinu1701@gmail.com', N'0374487741', N'Hà Nội', N'Chưa xử lý          ', N'ghi chú', CAST(43490000 AS Decimal(18, 0)))
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipEmail], [ShipMobile], [ShipAddress], [Status], [Note], [TotalPrice]) VALUES (22, CAST(N'2021-06-18T21:02:08.290' AS DateTime), N'huyenpham', N'Phạm Lê Khánh Huyền', N'seemonterinu1701@gmail.com', N'0374487741', N'Hà Nội', N'Chưa xử lý          ', N'ghi chú', CAST(43490000 AS Decimal(18, 0)))
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipEmail], [ShipMobile], [ShipAddress], [Status], [Note], [TotalPrice]) VALUES (23, CAST(N'2021-06-20T12:45:54.327' AS DateTime), N'huyenpham', N'khanh huyen', N'ginginyb@gmail.com', N'0374487741', N'Hà Nội', N'cod                 ', N'ghi chú', CAST(43490000 AS Decimal(18, 0)))
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipEmail], [ShipMobile], [ShipAddress], [Status], [Note], [TotalPrice]) VALUES (24, CAST(N'2021-06-20T12:58:29.917' AS DateTime), N'huyenpham', N'khanh huyen', N'ginginyb@gmail.com', N'0374487741', N'Hà Nội', N'cod                 ', N'ghi chú', CAST(43490000 AS Decimal(18, 0)))
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipEmail], [ShipMobile], [ShipAddress], [Status], [Note], [TotalPrice]) VALUES (25, CAST(N'2021-06-20T12:59:46.677' AS DateTime), N'huyenpham', N'khanh huyen', N'ginginyb@gmail.com', N'0374487741', N'Hà Nội', N'cod                 ', N'ghi chú', CAST(43490000 AS Decimal(18, 0)))
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipEmail], [ShipMobile], [ShipAddress], [Status], [Note], [TotalPrice]) VALUES (26, CAST(N'2021-06-20T13:21:54.227' AS DateTime), N'huyenpham', N'khanh huyen', N'ginginyb@gmail.com', N'0374487741', N'Hà Nội', N'cod                 ', N'', CAST(43490000 AS Decimal(18, 0)))
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipEmail], [ShipMobile], [ShipAddress], [Status], [Note], [TotalPrice]) VALUES (28, CAST(N'2021-06-20T13:42:05.333' AS DateTime), N'huyenpham', N'khanh huyen', N'ginginyb@gmail.com', N'0374487741', N'Hà Nội', N'no paypal           ', N'ghi chú', CAST(43490000 AS Decimal(18, 0)))
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipEmail], [ShipMobile], [ShipAddress], [Status], [Note], [TotalPrice]) VALUES (29, CAST(N'2021-06-20T13:42:11.417' AS DateTime), N'huyenpham', N'khanh huyen', N'ginginyb@gmail.com', N'0374487741', N'Hà Nội', N'no paypal           ', N'ghi chú', CAST(43490000 AS Decimal(18, 0)))
INSERT [dbo].[Order] ([ID], [CreatedDate], [CustomerID], [ShipName], [ShipEmail], [ShipMobile], [ShipAddress], [Status], [Note], [TotalPrice]) VALUES (30, CAST(N'2021-06-20T13:43:28.047' AS DateTime), N'huyenpham', N'khanh huyen', N'ginginyb@gmail.com', N'0374487741', N'Hà Nội', N'no paypal           ', N'', CAST(43490000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (36, 15, 1, CAST(43490000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (36, 16, 1, CAST(43490000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (36, 17, 1, CAST(43490000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (36, 18, 1, CAST(43490000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (36, 19, 1, CAST(43490000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (36, 20, 1, CAST(43490000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (36, 21, 1, CAST(43490000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (36, 22, 1, CAST(43490000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (36, 23, 1, CAST(43490000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (36, 26, 1, CAST(43490000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (36, 28, 1, CAST(43490000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (36, 29, 1, CAST(43490000 AS Decimal(18, 0)))
INSERT [dbo].[OrderDetail] ([ProductID], [OrderID], [Quantity], [Price]) VALUES (36, 30, 1, CAST(43490000 AS Decimal(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[ProductCategories] ON 

INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (1, N'Xây dựng cấu hình PC', N'xay-dung-cau-hinh-pc', N'/Data/images/Category/gaming-workstation.png', N'/Data/images/Category/PC-a%20(1).png', NULL, NULL, N'GAMING<br>WORKSTATION<br>PC', 1, NULL, NULL, CAST(N'2020-12-01T22:28:14.507' AS DateTime), N'quang', NULL, NULL, 1, NULL, N'rgb(41, 50, 78) transparent rgb(255, 143, 2);')
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (2, N'Laptops', N'laptops', N'/Data/images/Category/gaming-laptop.png', N'/Data/images/Category/Laptop-c.png', N'/Data/images/Category/banner-danh-muclaptop.jpg', NULL, N'GAMING<br>LAPTOP', 2, NULL, NULL, CAST(N'2020-12-01T22:28:27.810' AS DateTime), N'quang', NULL, NULL, 1, NULL, N'rgb(41, 50, 78) transparent rgb(255, 242, 0);')
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (3, N'Linh kiện máy tính', N'linh-kien-may-tinh', N'/Data/images/Category/linh-kien.png', N'/Data/images/Category/linh-kien-c%20(1).png', N'/Data/images/Category/banner-danh-muclinh-kien.jpg', NULL, N'LINH KIỆN<br>MÁY TÍNH', 3, NULL, NULL, CAST(N'2020-12-01T22:29:00.350' AS DateTime), N'quang', NULL, NULL, 1, NULL, N'rgb(41, 50, 78) transparent rgb(0, 249, 201);')
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (4, N'Màn hình máy tính', N'man-hinh-may-tinh', N'/Data/images/Category/man-hinh.png', N'/Data/images/Category/man-hinh-b.png', N'/Data/images/Category/banner-danh-mucman-hinh.jpg', NULL, N'MÀN HÌNH<br>MÁY TÍNH', 4, NULL, NULL, CAST(N'2020-12-01T22:29:10.730' AS DateTime), N'quang', NULL, NULL, 1, NULL, N'rgb(41, 50, 78) transparent rgb(249, 73, 95);')
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (5, N'Gaming Gears', N'gaming-gears', N'/Data/images/Category/gaming-gear.png', N'/Data/images/Category/gear-b.png', N'/Data/images/Category/banner-danh-mucgaming-gear.jpg', NULL, N'GAMING GEAR', 5, NULL, NULL, CAST(N'2020-12-01T22:28:38.083' AS DateTime), N'quang', NULL, NULL, 1, NULL, N'rgb(41, 50, 78) transparent rgb(30, 236, 24);')
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (6, N'Phụ kiện - Tản nhiệt PC', N'phu-kien-tan-nhiet-pc', N'/Data/images/Category/phu-kien.png', N'/Data/images/Category/tan-nhiet-b.png', N'/Data/images/Category/banner-danh-mucphu-kien-tan-nhiet.jpg', NULL, N'PHỤ KIỆN<br>TẢN NHIỆT PC', 6, NULL, NULL, CAST(N'2020-12-01T22:28:47.687' AS DateTime), N'quang', NULL, NULL, 1, NULL, N'rgb(41, 50, 78) transparent rgb(142, 7, 239);')
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (7, N'Thiết bị văn phòng', N'thiet-bi-van-phong', N'/Data/images/Category/ban-ghe.png', N'/Data/images/Category/van-phong-a.png', N'/Data/images/Category/banner-danh-mucthiet-bi-vp.jpg', NULL, N'THIẾT BỊ<br>VĂN PHÒNG', 7, NULL, NULL, CAST(N'2020-12-01T22:29:36.000' AS DateTime), N'quang', NULL, NULL, 1, NULL, N'rgb(41, 50, 78) transparent rgb(102, 93, 234);')
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (8, N'Thiết bị mạng', N'thiet-bi-mang', N'/Data/images/Category/thiet-bi-mang%20(1).png', N'/Data/images/Category/thiet-bi-mang.png', N'/Data/images/Category/banner-danh-mucthiet-bi-mang.jpg', NULL, N'THIẾT BỊ MẠNG ', 8, NULL, NULL, CAST(N'2020-12-01T22:28:00.023' AS DateTime), N'quang', NULL, NULL, 1, NULL, N'rgb(41, 50, 78) transparent rgb(241, 232, 155);')
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (9, N'Balo Gaming', N'balo-gaming', N'/Data/images/Category/balo-tnc-300x300.png', NULL, NULL, NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-11T05:12:55.370' AS DateTime), N'quang', NULL, NULL, 1, 5, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (10, N'Bàn di chuột ', N'ban-di-chuot', N'/Data/images/Category/ban-di-chuot-300x300.png', NULL, NULL, NULL, NULL, 2, NULL, NULL, CAST(N'2020-12-01T17:43:29.613' AS DateTime), N'quang', NULL, NULL, 1, 5, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (11, N'Bàn phím Gaming', N'ban-phim-gaming', N'/Data/images/Category/ban-phim-co-300x300.png', NULL, NULL, NULL, NULL, 3, NULL, NULL, CAST(N'2020-12-01T17:42:49.117' AS DateTime), N'quang', NULL, NULL, 1, 5, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (12, N'Bàn, Ghế Game ', N'ban-ghe-game', N'/Data/images/Category/ghe-tnc-300x300.png', NULL, NULL, NULL, N'<div class="description">
<p>TNC Store- Chuy&ecirc;n cung cấp c&aacute;c sản phẩm ghế , b&agrave;n chơi game cao cấp. Hỗ trợ lắp đặt v&agrave; ship tận nh&agrave;.</p>
</div>
', 4, NULL, NULL, CAST(N'2020-12-01T17:43:48.753' AS DateTime), N'quang', NULL, NULL, 1, 5, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (13, N'Bộ Bàn Phím Chuột Không Dây ', N'bo-ban-phim-chuot-khong-day', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-01T17:46:55.553' AS DateTime), N'quang', NULL, NULL, 1, 7, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (14, N'Bộ Chia USB ', N'bo-chia-usb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-12-01T17:47:09.647' AS DateTime), N'quang', NULL, NULL, 1, 7, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (15, N'Card Mạng ', N'card-mang', NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, CAST(N'2020-12-01T17:48:50.563' AS DateTime), N'quang', NULL, NULL, 1, 8, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (16, N'Case - Vỏ máy tính', N'case-vo-may-tinh', N'/Data/images/Category/case-tnc-300x300.png', NULL, NULL, NULL, NULL, 7, NULL, NULL, CAST(N'2020-12-01T17:39:02.627' AS DateTime), N'quang', NULL, NULL, 1, 3, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (17, N'Chuột Gaming', N'chuot-gaming', N'/Data/images/Category/chuot-gaming-tnc-300x300.png', NULL, NULL, NULL, NULL, 5, NULL, NULL, CAST(N'2020-12-01T17:44:06.437' AS DateTime), N'quang', NULL, NULL, 1, 5, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (18, N'CPU - Bộ vi xử lý ', N'cpu-bo-vi-xu-ly', N'/Data/images/Category/cpu-tnc-300x300.png', NULL, NULL, NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-01T17:38:46.647' AS DateTime), N'quang', NULL, NULL, 1, 3, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (19, N'Dây Nối Dài - Dây Riser', N'day-noi-dai-day-riser', N'/Data/images/Category/day-riser-tnc-300x300.png', NULL, NULL, NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-01T17:45:58.030' AS DateTime), N'quang', NULL, NULL, 1, 6, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (20, N'Gaming laptop', N'gaming-laptop', N'/Data/images/Category/gaming-laptop-tnc-300x300.png', NULL, NULL, NULL, N'<div class="description">
<p>&nbsp;</p>
<img src="https://tncstore.cdn.vccloud.vn/image/catalog/banner/gaming-laptop-1.jpg" style="float:right; width:275px" />
<h2><span style="font-size:14px"><span style="font-size:18px"><strong>C&aacute;ch Chọn Mua Gaming Laptop Theo Nhu Cầu:</strong></span></span></h2>
<br />
<span style="font-size:14px"><strong>1. &nbsp;Nhu cầu phổ th&ocirc;ng/Trung cấp</strong></span>

<p>Đ&atilde; l&agrave; một game thủ, th&igrave; lu&ocirc;n phải đ&ograve;i hỏi đến sức mạnh của một chiếc m&aacute;y t&iacute;nh. Tuy nhi&ecirc;n, chuyện sẽ kh&aacute;c đối với những ai đ&ograve;i hỏi sự di động, khi hiệu năng xử l&yacute; di động của m&aacute;y t&iacute;nh l&agrave; điểm mấu chốt. Với việc được cấu tạo với đầy đủ c&aacute;c th&agrave;nh phần linh kiện kh&ocirc;ng kh&aacute;c biệt nhiều với m&aacute;y t&iacute;nh b&agrave;n desktop, th&igrave; c&oacute; lẽ rằng việc hi sinh một phần hiệu năng cho k&iacute;ch thước nhỏ gọn đ&atilde; l&agrave; một điều thuộc về qu&aacute; khứ rồi. Với v&ocirc; v&agrave;n lựa chọn <strong>Gaming Laptop </strong>đến từ những h&atilde;ng sản xuất h&agrave;ng đầu hiện nay, như <a href="http://www.tncstore.vn/ASUS.html">Asus</a>, <a href="http://www.tncstore.vn/MSI.html">MSI</a>, <a href="http://www.tncstore.vn/DELL.html">Dell</a>, <a href="http://www.tncstore.vn/GIGABYTE.html">Gigabyte</a> <a href="http://www.tncstore.vn/gaming-laptop.html?manufacturer_id=90">Lenovo</a> , <a href="http://www.tncstore.vn/gaming-laptop.html?manufacturer_id=13">Acer</a>, v.v &hellip; ; họ đều đ&atilde; vượt mọi giới hạn thiết kế v&agrave; sản xuất để tạo ra những chiếc laptop chơi game tốt nhất hiện nay. Sử dụng những c&ocirc;ng nghệ mới nhất hiện nay như bộ vi xử l&yacute; Intel Skylake v&agrave; Kaby Lake, card đồ họa NVIDIA GeForce GTX 10 Series, m&agrave;n h&igrave;nh hiển thị độ ph&acirc;n giải cao từ Full HD trở l&ecirc;n, mọi nhu cầu sức mạnh m&agrave; game thủ v&agrave; người d&ugrave;ng cần đều sẽ được đ&aacute;p ứng một c&aacute;ch tốt nhất.&nbsp;</p>

<p>Đối với những game thủ th&ocirc;ng thường, lựa chọn <strong><a href="https://www.tncstore.vn/gaming-laptop.html">Gaming Laptop</a></strong> c&oacute; sử dụng card đồ họa NVIDIA GeForce GTX 1050 với bộ nhớ đồ họa 4Gb GDDR5 sẽ đ&aacute;p ứng được tốt nhu cầu chơi game hiện nay. Th&ocirc;ng thường, c&aacute;c <strong><a href="https://www.tncstore.vn/gaming-laptop.html">laptop gaming</a></strong> đều lắp sẵn bộ nhớ hệ thống 8Gb, v&agrave; ho&agrave;n to&agrave;n c&oacute; thể n&acirc;ng cấp l&ecirc;n 16, hay thậm ch&iacute; 32Gb dung lượng bộ nhớ hỗ trợ tối đa, t&ugrave;y từng m&aacute;y; đ&aacute;p ứng được tốt nhu cầu xử l&yacute; video hay chơi game nặng.</p>

<p><br />
<span style="font-family:helvetica; font-size:14px"><strong>2. &nbsp;Nhu cầu cao cấp:</strong></span></p>

<p>Khi m&agrave; nhu cầu đ&ograve;i hỏi cao hơn, như m&agrave;n h&igrave;nh c&oacute; tốc độ qu&eacute;t cao hơn 60 Hz, chơi game với độ ph&acirc;n giải cực cao l&ecirc;n đến Ultra HD, tốc độ đọc/ghi dữ liệu cực nhanh để tất cả c&aacute;c ứng dụng c&oacute; thể hoạt động một c&aacute;ch trơn tru nhất c&oacute; thể. Đối với những ai c&oacute; niềm đam m&ecirc; m&aacute;y t&iacute;nh, hay đ&ograve;i hỏi sức mạnh xử l&yacute;, thay thế một chiếc m&aacute;y b&agrave;n th&ocirc;ng thường bằng một chiếc <strong><a href="http://www.tncstore.vn/lap-top/gaming-laptop.html">m&aacute;y t&iacute;nh x&aacute;ch tay</a></strong> c&oacute; khả năng di động c&oacute; thể bị xem như l&agrave; một điều kh&oacute; khăn, tưởng chừng như kh&ocirc;ng thể. Tuy nhi&ecirc;n, đối với mức độ ph&aacute;t triển nhanh ch&oacute;ng của c&ocirc;ng nghệ xử l&yacute; t&iacute;nh to&aacute;n di động, cũng như cải thiện hiệu năng ti&ecirc;u thụ, th&igrave; bạn kh&ocirc;ng cần phải t&igrave;m đ&acirc;u xa cho m&igrave;nh một chiếc m&aacute;y t&iacute;nh v&ocirc; c&ugrave;ng mạnh mẽ v&agrave; hoạt động hiệu quả, nhưng vẫn đủ t&iacute;nh di động để c&oacute; thể đem theo b&ecirc;n m&igrave;nh mọi l&uacute;c, mọi nơi. &nbsp;</p>

<p>Việc sử dụng một số GPU mạnh mẽ, th&iacute; dụ như NVIDIA GeForce <strong>RTX 2060</strong> v&agrave; <strong>RTX2070</strong>; c&ugrave;ng với c&aacute;c bộ vi xử l&yacute; được mở kh&oacute;a hệ số nh&acirc;n thuộc thế hệ Skylake v&agrave; Kaby Lake của Intel, th&ecirc;m v&agrave;o đ&oacute; l&agrave; m&agrave;n h&igrave;nh đ&egrave;n nền IPS cao cấp với độ ph&acirc;n giải cực cao, gấp 4 lần chuẩn Full HD th&ocirc;ng thường, hay thậm ch&iacute; mở rộng kh&ocirc;ng gian l&agrave;m việc với tối đa đến 2 m&agrave;n h&igrave;nh gắn ngo&agrave;i &ndash; tất cả đ&oacute; ho&agrave;n to&agrave;n đ&aacute;p ứng được mọi c&ocirc;ng việc nhận được, trong khi được l&agrave;m m&aacute;t tối đa v&agrave; hoạt động ổn định d&ugrave; được &eacute;p xung &ndash; mọi thứ đều được g&oacute;i gọn trong một thiết kế trang nh&atilde; v&agrave; đẳng cấp k&egrave;m với khả năng n&acirc;ng cấp mở rộng tuyệt vời.</p>

<p>C&aacute;c <strong><a href="https://www.tncstore.vn/gaming-laptop.html">laptop chơi game</a></strong> đời mới đều được trang bị bộ nhớ hệ thống chuẩn DDR4 mới nhất, v&agrave; hiệu năng cải thiện c&oacute; thể l&ecirc;n đến 30% nếu như so với chuẩn DDR3 cũ hơn &ndash; từ đ&oacute; game c&oacute; thể chạy mượt hơn, c&aacute;c ứng dụng đ&ograve;i hỏi qu&aacute; tr&igrave;nh trao đổi dữ liệu c&oacute; thể hoạt động ổn định v&agrave; nhanh ch&oacute;ng hơn &ndash; tr&aacute;nh bị hiện tượng nghẽn cổ chai (bottleneck).</p>

<div>&nbsp;</div>
</div>
', 1, NULL, NULL, CAST(N'2020-12-01T17:38:12.897' AS DateTime), N'quang', NULL, NULL, 1, 2, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (21, N'GIÁ ĐỠ VGA', N'gia-do-vga', N'/Data/images/Category/gia-do-vga-300x300.png', NULL, NULL, NULL, NULL, 2, NULL, NULL, CAST(N'2020-12-01T17:46:12.660' AS DateTime), N'quang', NULL, NULL, 1, 6, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (22, N'Keycaps', N'keycaps', N'/Data/images/Category/keycap-tnc-300x300.png', NULL, NULL, NULL, NULL, 6, NULL, NULL, CAST(N'2020-12-01T17:44:16.500' AS DateTime), N'quang', NULL, NULL, 1, 5, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (23, N'Laptop Văn Phòng ', N'laptop-van-phong', N'/Data/images/Category/laptop-vanphong-tnc-300x300.png', NULL, NULL, NULL, NULL, 2, NULL, NULL, CAST(N'2020-12-01T17:49:09.113' AS DateTime), N'quang', NULL, NULL, 1, 2, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (24, N'Loa Máy Tính', N'loa-may-tinh', N'/Data/images/Category/loa-vi-tinh-300x300.png', NULL, NULL, NULL, NULL, 3, NULL, NULL, CAST(N'2020-12-01T17:47:30.660' AS DateTime), N'quang', NULL, NULL, 1, 7, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (25, N'Mainboard - Bo mạch chủ', N'mainboard-bo-mach-chu', N'/Data/images/Category/main-tnc-300x300.png', NULL, NULL, NULL, NULL, 3, NULL, NULL, CAST(N'2020-12-01T17:39:23.400' AS DateTime), N'quang', NULL, NULL, 1, 3, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (26, N'MICROPHONE ', N'microphone', N'/Data/images/Category/microphone-tnc-300x300.png', NULL, NULL, NULL, NULL, 7, NULL, NULL, CAST(N'2020-12-01T17:44:27.467' AS DateTime), N'quang', NULL, NULL, 1, 5, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (27, N'Màn Hình Gaming ', N'man-hinh-gaming', N'/Data/images/Category/man-hinh-gaming-300x300.png', NULL, NULL, NULL, N'<div class="description">
<p><img src="https://www.tncstore.vn/image/catalog/banner/2020/T11/danh-muc-man-hinh-gaming-tnc.jpg" style="float:left; width:25%" /><strong>M&agrave;n h&igrave;nh Gaming - Người bạn đồng h&agrave;nh tri kỷ của game thủ&nbsp;</strong></p>

<p>C&oacute; thể n&oacute;i m&agrave;n h&igrave;nh ch&iacute;nh l&agrave; một trong những trợ thủ đắc lực nhất của c&aacute;c gamer. Một cấu h&igrave;nh PC Gaming hiệu năng mạnh mẽ nhưng đi k&egrave;m với n&oacute; l&agrave; <strong>m&agrave;n h&igrave;nh gaming</strong> chất lượng thấp th&igrave; trải nghiệm của anh em chắc chắn sẽ bị ảnh hưởng rất nhiều.&nbsp;</p>

<p><strong>Thiết kế</strong></p>

<p>C&aacute;c <strong>m&agrave;n h&igrave;nh gaming</strong> thường c&oacute; thiết kế kh&aacute; ri&ecirc;ng biệt, đậm c&aacute; t&iacute;nh. Tuỳ thuộc v&agrave;o g&oacute;c học tập v&agrave; sở th&iacute;ch của anh em m&agrave; c&oacute; thể lựa chọn c&aacute;c mẫu <strong>m&agrave;n h&igrave;nh gaming</strong> đến từ c&aacute;c h&atilde;ng sản xuất kh&aacute;c nhau. Đến với <strong>TNC Store</strong>, anh em sẽ c&oacute; rất nhiều lựa chọn <strong>m&agrave;n h&igrave;nh gaming</strong> kh&aacute;c nhau với đủ c&aacute;c thương hiệu lớn, uy t&iacute;n như MSI, Asus, Gigabyte, Samsung... v&agrave; tất cả sản phẩm đều ch&iacute;nh h&atilde;ng, 100% brand new, được đ&oacute;ng g&oacute;i cẩn thận từ nh&agrave; sản xuất.</p>

<p><strong>K&iacute;ch thước m&agrave;n h&igrave;nh</strong></p>

<p>T&ugrave;y thuộc v&agrave;o nhu cầu sử dụng của anh em m&agrave; sẽ c&oacute; những sự lựa chọn k&iacute;ch thước m&agrave;n h&igrave;nh kh&aacute;c nhau. Nếu anh em c&oacute; sở th&iacute;ch chơi game, muốn try hard, chơi chuy&ecirc;n nghiệp th&igrave; k&iacute;ch thước từ 30 inch đổ xuống l&agrave; ph&ugrave; hợp. C&ograve;n anh em x&aacute;c định chơi game giải tr&iacute;, thư gi&atilde;n, ngo&agrave;i ra c&ograve;n c&oacute; thể xem phim, l&agrave;m video&hellip; th&igrave; c&oacute; thể lựa chọn c&aacute;c <strong>m&agrave;n h&igrave;nh gaming</strong> k&iacute;ch thước lớn hơn.</p>

<p><strong>Tỷ lệ m&agrave;n h&igrave;nh</strong></p>

<p>Hiện nay c&oacute; hai tỷ lệ phổ biến đ&oacute; l&agrave; 16:9 v&agrave; 21:9. Trong đ&oacute; 16:9 l&agrave; tỷ lệ cơ bản nhất. Anh em game thủ muốn try hard, theo con đường chuy&ecirc;n nghiệp th&igrave; tỷ lệ 16:9 ch&iacute;nh l&agrave; b&iacute; quyết gi&agrave;nh chiến thắng tr&ecirc;n chiến trường. Tỷ lệ 21:9 ph&ugrave; hợp với c&aacute;c tựa game phi&ecirc;u lưu, cốt truyện, đậm chất cinematic. Nếu anh em muốn một chiếc m&agrave;n h&igrave;nh độc, lạ th&igrave; c&aacute;c <strong>m&agrave;n h&igrave;nh gaming</strong> tỷ lệ 32:9 ch&iacute;nh l&agrave; sản phẩm đ&aacute;ng để sở hữu.</p>

<p><strong>Độ ph&acirc;n giải.</strong></p>

<p>Những chiếc <strong>m&agrave;n h&igrave;nh gaming</strong> FULL HD hiện nay đều c&oacute; gi&aacute; th&agrave;nh rẻ hơn trước rất nhiều n&ecirc;n rất th&iacute;ch hợp với phần đ&ocirc;ng game thủ. Tuy nhi&ecirc;n, với những chiếc PC Gaming c&oacute; hiệu năng khủng, trang bị card đồ hoạ thế hệ mới nhất th&igrave; việc sắm c&aacute;c m&agrave;n h&igrave;nh độ ph&acirc;n giải 2K, 4K l&agrave; cần thiết để tận dụng hết sức mạnh của bộ Gaming PC.&nbsp;</p>

<p><strong>Tấm nền</strong></p>

<p>Với nhu cầu chơi game giải tr&iacute;, thư gi&atilde;n sau những giờ l&agrave;m việc căng thẳng th&igrave; c&aacute;c <strong>m&agrave;n h&igrave;nh gaming</strong> sử dụng tấm nền IPS c&oacute; khả năng hiển thị m&agrave;u sắc tuyệt vời sẽ mang lại trải nghiệm tốt nhất cho anh em. Song song với đ&oacute;, c&aacute;c <strong>m&agrave;n h&igrave;nh gaming</strong> tấm nền VA v&agrave; TN sẽ gi&uacute;p c&aacute;c em game thủ muốn tiến tới thi đấu chuy&ecirc;n nghiệp lợi thế lớn nhờ tốc độ phản hồi nhanh. Ngo&agrave;i ra, khi mua c&aacute;c <strong>m&agrave;n h&igrave;nh gaming</strong> tại <strong>TNC Store</strong>, anh em sẽ được hỗ trợ c&acirc;n m&agrave;u m&agrave;n h&igrave;nh ho&agrave;n to&agrave;n miễn ph&iacute;!&nbsp;</p>

<p><strong>Tần số qu&eacute;t</strong></p>

<p>Kh&aacute;c với c&aacute;c m&agrave;n h&igrave;nh th&ocirc;ng thường, c&aacute;c nh&agrave; sản xuất thường ch&uacute; &yacute; tới tần số qu&eacute;t tr&ecirc;n <strong>m&agrave;n h&igrave;nh gaming</strong>. Việc lựa chọn m&agrave;n h&igrave;nh c&oacute; tần số qu&eacute;t ph&ugrave; hợp l&agrave; rất quan trọng. C&oacute; rất nhiều anh em sử dụng m&agrave;n h&igrave;nh c&oacute; tần số qu&eacute;t kh&ocirc;ng đ&aacute;p ứng được hiệu năng từ c&aacute;c card đồ hoạ, khiến trải nghiệm gaming bị ảnh hưởng kh&aacute; nhiều. Ch&iacute;nh v&igrave; vậy n&ecirc;n c&aacute;c bộ PC Gaming tại <strong>TNC Store</strong> đều c&oacute; phần test hiệu năng chơi game thực tế nhằm gi&uacute;p anh em t&igrave;m ra được chiếc m&agrave;n h&igrave;nh gaming ưng &yacute; nhất.&nbsp;</p>

<p><strong>C&ocirc;ng nghệ t&iacute;ch hợp</strong></p>

<p>Th&ecirc;m v&agrave;o đ&oacute;, c&aacute;c <strong>m&agrave;n h&igrave;nh Gaming</strong> chuy&ecirc;n biệt được nh&agrave; sản xuất trang bị th&ecirc;m c&aacute;c t&iacute;nh năng như G-Sync, FreeSync, Motion Blur&hellip; G-Sync (của NVIDIA), FreeSync (của AMD) l&agrave; c&ocirc;ng nghệ chống x&eacute; h&igrave;nh, gi&uacute;p c&aacute;c khung h&igrave;nh được GPU xuất ra đồng bộ với tần số qu&eacute;t của <strong>m&agrave;n h&igrave;nh gaming</strong>, đem lại trải nghiệm khi chơi game tuyệt vời nhất. Một điểm lưu &yacute; đ&oacute; l&agrave; c&aacute;c <strong>m&agrave;n h&igrave;nh gaming</strong> G-Sync chỉ th&iacute;ch hợp với c&aacute;c card đồ họa NVIDIA do d&ugrave;ng module độc quyền n&ecirc;n anh em cần xem x&eacute;t kỹ lưỡng trước khi mua sắm. Do FreeSync l&agrave; c&ocirc;ng nghệ kh&ocirc;ng sử dụng module độc quyền n&ecirc;n được t&iacute;ch hợp kh&aacute; rộng r&atilde;i, ngay cả tr&ecirc;n những chiếc <strong>m&agrave;n h&igrave;nh gaming</strong> gi&aacute; rẻ. Do đ&oacute; n&ecirc;n FreeSync kh&oacute; c&oacute; thể hoạt động một c&aacute;ch ho&agrave;n hảo như G-Sync. C&ocirc;ng nghệ Motion Blur (tạo c&aacute;c vệt mờ khi chuyển động) rất th&iacute;ch hợp nến anh em chơi c&aacute;c tựa game như đua xe. Tuy nhi&ecirc;n, với game thủ bắn s&uacute;ng, cần độ ch&iacute;nh x&aacute;c cao th&igrave; c&aacute;c <strong>m&agrave;n h&igrave;nh gaming</strong> c&oacute; c&ocirc;ng nghệ Motion Blur thực sự kh&aacute; phiền to&aacute;i.</p>

<div>&nbsp;</div>
</div>
', 1, NULL, NULL, CAST(N'2020-12-01T22:06:55.537' AS DateTime), N'quang', NULL, NULL, 1, 4, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (28, N'Màn Hình Văn Phòng ', N'man-hinh-van-phong', N'/Data/images/Category/man-hinh-van-phong-300x300.png', NULL, NULL, NULL, NULL, 2, NULL, NULL, CAST(N'2020-12-01T22:07:05.037' AS DateTime), N'quang', NULL, NULL, 1, 4, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (29, N'Màn Hình Đồ Họa', N'man-hinh-do-hoa', N'/Data/images/Category/man-hinh-do-hoa-a-300x300.png', NULL, NULL, NULL, N'<div class="description">
<p><img src="https://www.tncstore.vn/image/catalog/banner/2020/T11/danh-muc-man-hinh-do-hoa-tnc.jpg" style="float:left; width:25%" /><strong>M&agrave;n h&igrave;nh Đồ hoạ - Giải ph&aacute;p tuyệt vời cho c&aacute;c nh&agrave; thiết kế</strong></p>

<p>Được coi l&agrave; c&aacute;nh tay phải đắc lực trong c&ocirc;ng việc, c&aacute;c m&agrave;n h&igrave;nh đồ hoạ c&oacute; vai tr&ograve; rất quan trọng đối với người d&ugrave;ng l&agrave; d&acirc;n thiết kế, creator, dựng phim... Kh&aacute;c với m&agrave;n h&igrave;nh th&ocirc;ng thường, m&agrave;n h&igrave;nh đồ hoạ đ&ograve;i hỏi y&ecirc;u cầu cao hơn về m&agrave;u sắc, chất lượng h&igrave;nh ảnh, độ sắc n&eacute;t cũng như độ ph&acirc;n giải.&nbsp;</p>

<p><strong>Chất lượng m&agrave;u sắc&nbsp;</strong></p>

<p>Đ&acirc;y l&agrave; yếu tố quan trọng đầu ti&ecirc;n về một chiếc m&agrave;n h&igrave;nh đồ hoạ tốt. Do đặc th&ugrave; c&ocirc;ng việc n&ecirc;n muốn c&oacute; kết quả tốt th&igrave; h&igrave;nh ảnh phải được hiển thị một c&aacute;ch ch&acirc;n thực nhất. M&agrave;u của h&igrave;nh ảnh khi in ra phải giống với m&agrave;u được hiển thị tr&ecirc;n m&agrave;n h&igrave;nh cho d&acirc;n đồ hoạ.Do đ&oacute; n&ecirc;n c&aacute;c m&agrave;n h&igrave;nh đồ hoạ tốt thường đ&aacute;p ứng ti&ecirc;u chuẩn từ 97% sRGB trở l&ecirc;n, sở hữu dải m&agrave;u rộng. Kh&ocirc;ng chỉ vậy, độ sai lệch m&agrave;u Delta E&nbsp; tr&ecirc;n những m&agrave;n h&igrave;nh đồ họa chất lượng cao thường nhỏ hơn hoặc bằng 2, cho độ ch&acirc;n thực rất cao. Kh&ocirc;ng chỉ vậy, anh em designer, nhiếp ảnh gia khi mua m&agrave;n h&igrave;nh đồ họa sẽ được c&acirc;n m&agrave;u ho&agrave;n to&agrave;n miễn ph&iacute;.</p>

<p><strong>Tấm nền</strong></p>

<p>Tiếp đến ch&iacute;nh l&agrave; tấm nền IPS sẽ mang lại khả năng hiển thị m&agrave;u sắc tuyệt vời, đồng thời gi&uacute;p m&agrave;u tr&ecirc;n m&agrave;n h&igrave;nh đồ hoạ được giữ nguy&ecirc;n khi thay đổi g&oacute;c nh&igrave;n kh&aacute;c ch&iacute;nh diện. Hơn nữa, với tấm nền IPS th&igrave; c&aacute;c hiệu ứng, độ s&aacute;ng tối được hiển thị r&otilde; n&eacute;t. Đến với TNC Store, anh em sẽ c&oacute; rất nhiều lựa chọn m&agrave;n h&igrave;nh đồ họa kh&aacute;c nhau với đủ c&aacute;c thương hiệu lớn, uy t&iacute;n như Dell, ViewSonic, Asus, LG&hellip; v&agrave; tất cả sản phẩm đều ch&iacute;nh h&atilde;ng, 100% brand new, được đ&oacute;ng g&oacute;i cẩn thận từ nh&agrave; sản xuất.</p>

<p><strong>K&iacute;ch thước m&agrave;n h&igrave;nh</strong></p>

<p>Ngo&agrave;i khả năng hiển thị m&agrave;u sắc, m&agrave;n h&igrave;nh đồ hoạ cũng cần c&oacute; k&iacute;ch thước đủ lớn nhằm mang lại kh&ocirc;ng gian l&agrave;m việc thoải m&aacute;i, gi&uacute;p tăng hiệu quả trong c&ocirc;ng việc. C&aacute;c m&agrave;n h&igrave;nh đồ hoạ tại TNC Store thường c&oacute; k&iacute;ch thước từ 27 inch trở l&ecirc;n,&nbsp; cho trải nghiệm khi sử dụng rất tuyệt vời.</p>

<p><strong>Độ ph&acirc;n giải</strong></p>

<p>Ti&ecirc;u ch&iacute; tiếp theo anh em trong nghề cần quan t&acirc;m đến ch&iacute;nh l&agrave; độ ph&acirc;n giải. Phần đ&ocirc;ng người d&ugrave;ng khi mới bắt đầu bước ch&acirc;n v&agrave;o lĩnh vực thiết kế thường lựa chọn cho m&igrave;nh c&aacute;c m&agrave;n h&igrave;nh đồ hoạ k&iacute;ch thước 27 inch c&ugrave;ng độ ph&acirc;n giải Full HD (1920x1080). Tuy vậy, với sự ph&aacute;t triển c&ocirc;ng nghệ nhanh ch&oacute;ng th&igrave; c&aacute;c m&agrave;n h&igrave;nh đồ hoạ c&oacute; độ ph&acirc;n giải 2K (2560x1440), 4K (3840x2160) đang ng&agrave;y một trở n&ecirc;n phổ biến hơn. Độ ph&acirc;n giải cao đồng nghĩa với m&agrave;n h&igrave;nh đồ hoạ sẽ c&oacute; nhiều điểm ảnh hơn, gi&uacute;p chất lượng h&igrave;nh ảnh ch&acirc;n thực v&agrave; sắc n&eacute;t hơn.</p>

<p><strong>Khả năng thay đổi g&oacute;c nh&igrave;n linh hoạt</strong></p>

<p>C&aacute;c nh&agrave; sản xuất cũng ch&uacute; &yacute; tới thiết kế c&oacute; thể xoay ngang hoặc dọc linh hoạt của m&agrave;n h&igrave;nh đồ hoạ. Do đặc th&ugrave; của c&ocirc;ng việc n&ecirc;n anh em designer đ&ocirc;i khi phải thay đổi g&oacute;c nh&igrave;n từ c&aacute;c hướng kh&aacute;c nhau để tinh chỉnh h&igrave;nh ảnh khi l&agrave;m đồ hoạ. Hơn nữa, với c&aacute;c loại m&agrave;n h&igrave;nh đồ hoạ c&oacute; ch&acirc;n đế tốt sẽ dễ d&agrave;ng t&ugrave;y biến vị tr&iacute; m&agrave;n h&igrave;nh, giảm thiểu t&igrave;nh trạng mỏi nhức khi l&agrave;m việc trong thời gian d&agrave;i. Số lượng cổng kết nối tr&ecirc;n m&agrave;n h&igrave;nh đồ hoạ cũng được ch&uacute; &yacute; tới. Anh em n&agrave;o l&agrave;m đồ họa chuy&ecirc;n nghiệp hẳn sẽ phải d&ugrave;ng nhiều hơn một m&agrave;n h&igrave;nh v&agrave; thường sản phẩm c&oacute; cổng Thunderbolt v&agrave; DisplayPort sẽ được ưa chuộng nhiều hơn.</p>

<p>&nbsp;</p>

<p><strong>C&ocirc;ng nghệ t&iacute;ch hợp</strong></p>

<p>Một chiếc m&agrave;n h&igrave;nh đồ hoạ tốt ngo&agrave;i hiệu năng v&agrave; chất lượng cao c&ograve;n được t&iacute;ch hợp c&aacute;c c&ocirc;ng nghệ gi&uacute;p bảo vệ mắt, gi&uacute;p anh em y&ecirc;n t&acirc;m l&agrave;m việc trong thời gian d&agrave;i. Do vậy n&ecirc;n&nbsp; tr&ecirc;n thị trường hiện nay, c&aacute;c nh&agrave; sản xuất phần cứng đ&atilde; bắt đầu ch&uacute; trọng t&iacute;ch hợp c&aacute;c c&ocirc;ng nghệ nhằm giảm thiểu c&aacute;c t&aacute;c hại g&acirc;y ra cho mắt như Reader Mode, LG Flicker Safe, chế độ Night light hay giảm &aacute;nh s&aacute;ng xanh&hellip;Ngo&agrave;i ra c&aacute;c m&agrave;n h&igrave;nh đồ hoạ c&oacute; những t&iacute;nh năng độc quyền, gi&uacute;p điều chỉnh c&aacute;c th&ocirc;ng số như đường cong gamma, nhiệt độ m&agrave;u, độ tương phản v&agrave; độ s&aacute;ng để ph&acirc;n phối trải nghiệm xem tối ưu h&oacute;a cho từng ho&agrave;n cảnh cụ thể như xem phim, chơi game, l&agrave;m đồ họa, thiết kế 3D...</p>
</div>
', 3, NULL, NULL, CAST(N'2020-12-01T22:07:15.803' AS DateTime), N'quang', NULL, NULL, 1, 4, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (30, N'Máy in Laser', N'may-in-laser', NULL, NULL, NULL, NULL, NULL, 6, NULL, NULL, CAST(N'2020-12-01T17:48:20.807' AS DateTime), N'quang', NULL, NULL, 1, 7, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (31, N'Phần mềm bản quyền', N'phan-mem-ban-quyen', NULL, NULL, NULL, NULL, NULL, 4, NULL, NULL, CAST(N'2020-12-01T17:47:48.330' AS DateTime), N'quang', NULL, NULL, 1, 7, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (32, N'PRO CREATOR', N'pro-creator', N'/Data/images/Category/cat-gp-graphic.png', NULL, NULL, N'PC có tính thẩm mỹ cao năng lực xử lý vượt trội cho các nhà sáng tạo nội dung.', N'<div class="description">
<p><img src="https://www.tncstore.vn/image/catalog/banner/2020/T11/pro-creator-tnc.jpg" style="float:left; width:25%" /><strong><span style="font-size:18px">PC PRO Creator - M&aacute;y t&iacute;nh d&agrave;nh cho những nh&agrave;&nbsp; s&aacute;ng tạo nội dung</span></strong></p>

<p>&nbsp;</p>

<p><span style="font-size:18px">Niềm cảm hứng bất tận mang t&ecirc;n </span><strong><span style="font-size:18px">CREATION</span></strong></p>

<p><span style="font-size:18px">Với sứ mệnh gi&uacute;p c&aacute;c nh&agrave; s&aacute;ng tạo nội dung c&oacute; được hiệu năng l&agrave;m việc tốt nhất, kh&ocirc;ng l&agrave;m gi&aacute;n đoạn mạch &yacute; tưởng s&aacute;ng tạo. D&ograve;ng </span><strong><span style="font-size:18px">PC PRO Creator - CREATION</span></strong><span style="font-size:18px"> đến từ TNC Store c&oacute; t&iacute;nh thẩm mỹ cao, năng lực xử l&yacute; vượt trội trong việc thực hiện c&aacute;c t&aacute;c vụ streaming, chỉnh sửa ảnh, video 2D, c&aacute;c kỹ xảo h&igrave;nh ảnh đặc biệt&hellip;&nbsp;</span></p>

<p><span style="font-size:18px">Hiện </span><strong><span style="font-size:18px">CREATION</span></strong><span style="font-size:18px"> tại TNC Store đang c&oacute; c&aacute;c d&ograve;ng m&aacute;y Basic, Advanced, Premium v&agrave; Master. Điều đầu ti&ecirc;n phải nhắc đến đ&oacute; ch&iacute;nh l&agrave; </span><strong><span style="font-size:18px">PC Creator</span></strong><span style="font-size:18px"> mang trong m&igrave;nh những d&ograve;ng card đồ hoạ đời mới nhất v&agrave; c&oacute; hiệu năng cao. Tiếp đến, anh em ho&agrave;n to&agrave;n c&oacute; thể y&ecirc;n t&acirc;m khi CPU của </span><strong><span style="font-size:18px">PC Creator</span></strong><span style="font-size:18px"> đều được lựa chọn từ những con chip thế hệ mới, đủ khả năng hoạt động tốt với tần suất lớn. Độ thẩm mỹ đến từ c&aacute;c linh kiện phụ trợ c&oacute; gắn LED RGB cũng l&agrave; điểm mạnh của </span><strong><span style="font-size:18px">PC Creator</span></strong><span style="font-size:18px">. Một đặc trưng nữa của </span><strong><span style="font-size:18px">PC Creator</span></strong><span style="font-size:18px"> ch&iacute;nh l&agrave; bộ case m&aacute;y t&iacute;nh sở hữu bộ nguồn c&ocirc;ng suất cao nếu anh em muốn n&acirc;ng cấp m&aacute;y sau n&agrave;y. Nếu anh em vẫn đang t&igrave;m kiếm bạn đồng h&agrave;nh tr&ecirc;n con đường ph&aacute;t triển sự nghiệp, h&atilde;y đến với TNC Store nh&eacute;!&nbsp;</span></p>

<p>&nbsp;</p>

<p><strong><span style="font-size:18px">*5 L&iacute; do m&agrave; anh em kh&ocirc;ng thể bỏ lỡ khi chọn PC Creator chỉ c&oacute; tại TNC Store:</span></strong></p>

<ul>
	<li><span style="font-size:18px">100% Linh kiện được đảm bảo bảo h&agrave;nh ch&iacute;nh h&atilde;ng, mới brand new, nguy&ecirc;n hộp.</span></li>
	<li><span style="font-size:18px">M&aacute;y được đ&oacute;ng g&oacute;i v&agrave; lắp đặt cẩn thận, chuy&ecirc;n nghiệp, đẹp.</span></li>
	<li><span style="font-size:18px">Được đổi mới ngay trong v&ograve;ng 7 ng&agrave;y nếu c&oacute; sự cố từ NSX.</span></li>
	<li><span style="font-size:18px">Hỗ trợ trả g&oacute;p 0% l&atilde;i suất, thanh to&aacute;n linh hoạt.</span></li>
	<li><span style="font-size:18px">Hỗ trợ c&agrave;i đặt c&aacute;c phần mềm c&oacute; sẵn, cơ bản trọn đời.</span></li>
</ul>

<div>&nbsp;</div>
</div>
', 3, NULL, NULL, CAST(N'2020-12-09T04:08:57.383' AS DateTime), N'quang', NULL, NULL, 1, 1, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (33, N'PRO AUDIO', N'pro-audio', N'/Data/images/Category/cat-gp-audio.png', NULL, NULL, N'Cấu hình PC tối ưu cho Studio âm nhạc, dành cho Composer/Producer', N'<div class="description">
<p><img src="https://www.tncstore.vn/image/catalog/banner/2020/T11/pro-audio-tnc.jpg" style="float:left; width:25%" /><span style="font-family:chakra petch; font-size:18px"><strong>PC PRO Audio - Khi &acirc;m nhạc l&agrave; cuộc sống</strong></span></p>

<p>&nbsp;</p>

<p><span style="font-size:18px">Những đặc trưng tạo n&ecirc;n một chiếc <strong>PC Pro Audio - STUDIO</strong> ho&agrave;n hảo!&nbsp;</span><span style="font-family:chakra petch; font-size:18px">Kh&ocirc;ng như những d&ograve;ng m&aacute;y PC Gaming, PC Workstation coi trọng việc xử l&yacute; đồ hoạ, <strong>PC Pro Audio</strong> c&oacute; c&aacute;c đặc điểm những đặc điểm ri&ecirc;ng nhằm tối ưu h&oacute;a c&ocirc;ng việc l&agrave;m nhạc, chỉnh sửa &acirc;m thanh.&nbsp;</span><span style="font-family:chakra petch; font-size:18px">Giống như Pro Creator v&agrave; Pro Workstation, <strong>PC Pro Audio</strong> cũng c&oacute; c&aacute;c d&ograve;ng m&aacute;y Basic, Advanced, Premium v&agrave; Master.</span></p>

<p><span style="font-size:18px">Kh&aacute;c với việc chỉnh sửa video, l&agrave;m đồ hoạ, chơi game&hellip; cần xử l&yacute; nhiều t&aacute;c vụ c&ugrave;ng l&uacute;c, sản xuất nhạc chủ yếu l&agrave; xử l&yacute; c&aacute;c hoạt động lần lượt, nối tiếp nhau. Do vậy, c&aacute;ch chọn CPU c&oacute; sức mạnh xử l&yacute; đơn nh&acirc;n mạnh mẽ l&agrave; điều quan trọng h&agrave;ng đầu trong d&ograve;ng <strong>PC Pro Audio</strong>.&nbsp;</span><span style="font-family:chakra petch; font-size:18px">Tiếp đến, những d&ograve;ng mainboard của STUDIO đến từ TNC Store được trang bị DAC audio chất lượng cao, gi&uacute;p cho &acirc;m thanh trong trẻo, t&iacute;n hiệu sạch sẽ v&agrave; chi tiết hơn. Những đoạn nhạc giờ đ&acirc;y sẽ trở n&ecirc;n sống động, ch&acirc;n thực, rất ph&ugrave; hợp cho c&aacute;c studio từ đơn giản tới chuy&ecirc;n nghiệp.&nbsp;</span><span style="font-family:chakra petch; font-size:18px">Vỏ case l&agrave; yếu tố kh&ocirc;ng thể thiếu do m&ocirc;i trường l&agrave;m việc của anh em cần sự tập trung tuyệt đối, tr&aacute;nh c&aacute;c tiếng ồn kh&ocirc;ng đ&aacute;ng c&oacute;. Một case m&aacute;y chuy&ecirc;n dụng của <strong>PC Pro Audio</strong> sẽ giảm thiểu tối đa độ ồn từ c&aacute;c linh kiện.</span></p>

<p><span style="font-family:chakra petch; font-size:18px"><strong>*5 L&iacute; do m&agrave; anh em&nbsp; kh&ocirc;ng thể bỏ lỡ khi chọn PC Audio chỉ c&oacute; tại TNC Store:</strong></span></p>

<ul>
	<li><span style="font-size:18px">100% Linh kiện được đảm bảo bảo h&agrave;nh ch&iacute;nh h&atilde;ng, mới brand new, nguy&ecirc;n hộp.</span></li>
	<li><span style="font-size:18px">M&aacute;y được đ&oacute;ng g&oacute;i v&agrave; lắp đặt cẩn thận, chuy&ecirc;n nghiệp, đẹp.</span></li>
	<li><span style="font-size:18px">Được đổi mới ngay trong v&ograve;ng 7 ng&agrave;y nếu c&oacute; sự cố từ NSX.</span></li>
	<li><span style="font-size:18px">Hỗ trợ trả g&oacute;p 0% l&atilde;i suất, thanh to&aacute;n linh hoạt.</span></li>
	<li><span style="font-size:18px">Hỗ trợ c&agrave;i đặt c&aacute;c phần mềm c&oacute; sẵn, cơ bản trọn đời.</span></li>
</ul>

<div>&nbsp;</div>
</div>
', 5, NULL, NULL, CAST(N'2020-12-01T17:37:34.120' AS DateTime), N'quang', NULL, NULL, 1, 1, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (34, N'PRO DUCTIVITY', N'pro-ductivity', N'/Data/images/Category/cat-gp-ductivity.png', NULL, NULL, N'PC dựng sẵn với kích thước và hiệu năng phù hợp cho công việc văn phòng và giải trí tại gia.', N'<div class="description">
<h2><span style="font-size:12px"><span style="font-size:14px"><strong>Intel NUC l&agrave; g&igrave;?</strong></span></span></h2>

<p><a href="https://www.tncstore.vn/home-pc.html" target="_blank">Intel NUC</a> (Next Unit of Computing ) c&oacute; thể được gọi đơn giản l&agrave; thế hệ m&aacute;y t&iacute;nh tiếp theo được Intel ph&aacute;t triển dựa tr&ecirc;n ti&ecirc;u ch&iacute; si&ecirc;u nhỏ gọn v&agrave; c&oacute; độ t&ugrave;y biến cao theo nhu cầu sử dụng.</p>

<h3><strong><span style="font-size:24px">1. Cấu h&igrave;nh v&agrave; hiệu năng</span></strong></h3>

<p>Về cấu h&igrave;nh th&igrave; những chiếc m&aacute;y Intel NUC thường sử dụng CPU d&ograve;ng tiết kiệm điện v&agrave; ram dạng nhỏ giống với laptop n&ecirc;n hiệu năng ở mức cơ bản đ&aacute;p ứng đầy đủ c&aacute;c nhu cầu&nbsp;phần mềm ứng dụng văn ph&ograve;ng như Office, lướt web v&agrave; giải tr&iacute; đa phương tiện. Thậm ch&iacute; Card đồ họa t&iacute;ch hợp sẽ gi&uacute;p bạn thao t&aacute;c mượt m&agrave; với c&aacute;c phần mềm nhẹ nh&agrave;ng như Photoshop, Lightroom...</p>

<h3><strong><span style="font-size:24px">2. Mang t&iacute;nh linh hoạt cao</span></strong></h3>

<p>Với k&iacute;ch thước cực kỳ nhỏ gọn, chỉ bằng ph&acirc;n nửa một bộ nguồn PC th&ocirc;ng thường n&ecirc;n NUC sẽ l&agrave; chiếc m&aacute;y t&iacute;nh l&yacute; tưởng cho cơ quan, doanh nghiệm, tr&igrave;nh chiếu hay giải tr&iacute; cơ bản tại nh&agrave; như lướt web, xem phim...</p>

<h3><span style="font-size:24px"><strong>3. Độ ổn định v&agrave; độ bền trứ danh từ Intel</strong></span></h3>

<p>Intel l&agrave; &ocirc;ng vua phần cứng đ&atilde; qu&aacute; nổi tiếng với c&aacute;c d&ograve;ng CPU c&oacute; độ ổn định v&agrave; độ bền cực kỳ cao, Intel NUC cũng kh&ocirc;ng phải l&agrave; ngoại lệ, bạn sẽ kh&ocirc;ng phải quan t&acirc;m qu&aacute; nhiều về c&aacute;c vấn đề ph&aacute;t sinh hay bảo tr&igrave; bảo h&agrave;nh khi sử dụng</p>

<h3><span style="font-size:24px"><strong>4. C&aacute;c quyền lợi v&agrave;ng khi mua Intel NUC chỉ c&oacute; tại TNC Store:</strong></span></h3>

<p><span style="font-size:12px">- 100% Linh Kiện được đảm bảo ch&iacute;nh h&atilde;ng, mới brand new, nguy&ecirc;n hộp.</span></p>

<p>- M&aacute;y được kỹ thuật lắp đặt cẩn thận nếu qu&yacute; kh&aacute;ch ph&aacute;t sinh th&ecirc;m nhu cầu n&acirc;ng cấp Ram, SSD.</p>

<p>- Được đổi mới ngay trong v&ograve;ng 7 ng&agrave;y, nếu c&oacute; sự cố từ NSX.</p>

<p>- Hỗ trợ trả g&oacute;p 0% l&atilde;i suất, thanh to&aacute;n linh hoạt.</p>

<p>- Hỗ trợ c&agrave;i đặt c&aacute;c phần mềm c&oacute; sẵn, cơ bản trọn đời.</p>

<p>H&atilde;y c&ugrave;ng với<a href="https://www.tncstore.vn/" target="_blank"> TNC Store</a> bắt tay v&agrave;o việc lựa chọn phần cứng v&agrave; tự tay cấu h&igrave;nh chiếc NUC của m&igrave;nh ngay h&ocirc;m nay !&nbsp;</p>
</div>
', 4, NULL, NULL, CAST(N'2020-12-01T17:37:37.173' AS DateTime), N'quang', NULL, NULL, 1, 1, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (35, N'PRO GAMING PC', N'pro-gaming-pc', N'/Data/images/Category/cat-gp-gaming.png', NULL, NULL, N'PC cấu hình khủng cùng linh kiện cao cấp, đem tới trải nghiệm gaming hấp dẫn nhất.', N'<div class="description">
<p><img src="https://www.tncstore.vn/image/catalog/banner/2020/122946121_2424554487838326_545626290259556588_n.jpg" style="float:left; height:317.49px; width:317.49px" /></p>

<h3><span style="font-size:18px"><strong>PRO Gaming PC - M&aacute;y T&iacute;nh Game Thủ Chuy&ecirc;n Nghiệp !!!</strong></span></h3>

<h3><span style="font-size:18px">Chắc hẳn c&aacute;c game thủ đều mong muốn chiếc</span><span style="font-size:18px"><strong>PC Gaming</strong></span><span style="font-size:18px"> của m&igrave;nh l&agrave; một con qu&aacute;i th&uacute; c&oacute; thể chinh phục bất kỳ tựa game AAA n&agrave;o.&nbsp;</span><span style="font-size:18px">Đến với TNC Store, anh em c&oacute; thể lựa chọn c&acirc;y PC cho ri&ecirc;ng m&igrave;nh trải d&agrave;i trong tầm gi&aacute; từ phổ th&ocirc;ng đến cao cấp với 6 d&ograve;ng m&aacute;y ch&iacute;nh l&agrave; Alpha, Glacier, Sniper, Lumen, Nova v&agrave; Sentinel. Điều đầu ti&ecirc;n v&agrave; quan trọng nhất cần phải x&eacute;t đến đ&oacute; ch&iacute;nh l&agrave; card đồ hoạ. Một chiếc card đồ hoạ tốt sẽ khiến cho việc xử l&yacute; chất lượng h&igrave;nh ảnh của </span><span style="color:inherit; font-size:18px"><strong>PC Gaming</strong></span><span style="color:inherit; font-size:18px"> trở n&ecirc;n mượt m&agrave;.&nbsp;</span><span style="font-size:18px">Ch&iacute;nh v&igrave; l&yacute; do đ&oacute; card đồ họa tr&ecirc;n d&ograve;ng PC Pro Gaming của TNC Store được lựa chọn kỹ c&agrave;ng. Tiếp đến l&agrave; chất lượng của CPU. Tốc độ hoạt động của m&aacute;y phụ thuộc kh&aacute; nhiều v&agrave;o CPU. Do đ&oacute; c&aacute;ch chọn CPU cũng rất quan trọng. Với d&ograve;ng </span><span style="color:inherit; font-size:18px"><strong>PC Gaming</strong></span><span style="color:inherit; font-size:18px">, TNC Store đ&atilde; build sẵn cho anh em những chip CPU đời mới nhất với hiệu năng mạnh mẽ.&nbsp;</span><span style="font-size:18px">Hơn nữa, việc lựa chọn bộ tản nhiệt CPU đẹp sẽ l&agrave;m tăng t&iacute;nh thẩm mĩ của chiếc </span><span style="color:inherit; font-size:18px"><strong>PC Gaming</strong></span><span style="color:inherit; font-size:18px">. V&igrave; vậy, h&atilde;y d&agrave;nh ra một khoảng trong ng&acirc;n s&aacute;ch của bạn để tậu chiếc tản nhiệt thật &ldquo;cool&quot; nh&eacute;!</span></h3>

<h3><span style="font-size:18px">&nbsp;&nbsp;</span><span style="font-size:18px">&nbsp;</span><span style="font-size:18px">&nbsp;</span></h3>

<h3>&nbsp;</h3>

<h3><span style="font-size:18px">Điểm danh 5 L&iacute; do m&agrave; anh em kh&ocirc;ng thể bỏ lỡ khi chọn <strong>PC Gaming</strong> chỉ c&oacute; tại TNC Store:</span></h3>

<h3><span style="font-size:18px">&nbsp;&nbsp;&nbsp;</span><span style="font-size:18px">- 100% Linh kiện được đảm bảo bảo h&agrave;nh ch&iacute;nh h&atilde;ng, mới brand new, nguy&ecirc;n hộp.</span></h3>

<h3><span style="font-size:18px">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="font-size:18px">- M&aacute;y được đ&oacute;ng g&oacute;i v&agrave; lắp đặt cẩn thận, chuy&ecirc;n nghiệp, đẹp.</span></h3>

<h3><span style="font-size:18px">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="font-size:18px">- Được đổi mới ngay trong v&ograve;ng 7 ng&agrave;y nếu c&oacute; sự cố từ NSX.</span></h3>

<h3><span style="font-size:18px">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="font-size:18px">- Hỗ trợ trả g&oacute;p 0% l&atilde;i suất, thanh to&aacute;n linh hoạt.</span></h3>

<h3><span style="font-size:18px">&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="font-size:18px">- Hỗ trợ c&agrave;i đặt c&aacute;c phần mềm c&oacute; sẵn, cơ bản trọn đời.</span></h3>

<div>&nbsp;</div>

<h3>&nbsp;</h3>

<p>&nbsp;</p>
</div>
', 1, NULL, NULL, CAST(N'2020-12-01T17:37:39.947' AS DateTime), N'quang', NULL, NULL, 1, 1, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (36, N'PRO VR', N'pro-vr', N'/Data/images/Category/cat-gp-vr.png', NULL, NULL, N'Thế giới ảo, trải nghiệm thật với cấu hình PC chuyên Virtual Reality', N'<div class="description">
<p><img src="https://www.tncstore.vn/image/catalog/banner/2020/T11/pro-vr-tnc.jpg" style="float:left; width:25%" /><span style="font-size:18px"><strong>PC PRO VR - Hướng đến tương lai</strong></span></p>

<p><span style="font-size:18px">Điều g&igrave; l&agrave;m n&ecirc;n một chiếc <strong>PC VR - VISION</strong> mạnh mẽ?&nbsp;</span><span style="font-family:chakra petch; font-size:18px">Với một diện mạo ho&agrave;n to&agrave;n mới, d&ograve;ng </span><strong>VISION</strong><span style="font-family:chakra petch; font-size:18px"> của TNC Store chắc chắn sẽ mang đến cho anh em những trải nghiệm gaming thực tế ảo ch&acirc;n thực v&agrave; sống động nhất. Cấu h&igrave;nh c&aacute;c </span><strong>PC VR</strong><span style="font-family:chakra petch; font-size:18px"> được lựa chọn kỹ c&agrave;ng, đủ sức chinh chiến c&aacute;c tựa game </span><strong>VR</strong><span style="font-family:chakra petch; font-size:18px"> đ&igrave;nh đ&aacute;m hiện nay như Half-Life: Alyx, Super Hot, No Man&#39;s Sky&hellip;&nbsp;</span></p>

<p><span style="font-size:18px">Điều đầu ti&ecirc;n phải kể đến ch&iacute;nh l&agrave; card đồ hoạ nếu anh em muốn game đạt 90 FPS (số khung h&igrave;nh tr&ecirc;n gi&acirc;y) - mức tối đa của c&aacute;c game <strong>VR</strong>. Do đ&oacute;, d&ograve;ng <strong>VISION</strong> Basic được trang bị tối thiểu card đồ họa GTX 1660 v&agrave; RTX Series với những d&ograve;ng cao cấp hơn như Advanced, Premium v&agrave; Master.</span></p>

<p><span style="font-size:18px">Giống với PC Gaming, CPU tr&ecirc;n <strong>PC VR</strong> l&agrave; những con chip d&ograve;ng cao, đa nh&acirc;n, c&oacute; xung nhịp lớn th&iacute;ch hợp xử l&yacute; c&aacute;c t&aacute;c vụ gaming.&nbsp;</span><span style="font-family:chakra petch; font-size:18px">Dung lượng RAM tối thiểu của </span><strong>PC VR</strong><span style="font-family:chakra petch; font-size:18px"> l&agrave; 8GB nhưng nếu anh em c&oacute; nhu cầu chỉnh sửa video, thiết kế đồ hoạ th&igrave; c&oacute; thể lựa chọn n&acirc;ng cấp l&ecirc;n 16GB RAM cho hiệu suất l&agrave;m việc lớn.</span></p>

<p><span style="font-size:18px">Với gi&aacute; th&agrave;nh ng&agrave;y c&agrave;ng hợp l&yacute; th&igrave; một chiếc ổ cứng SSD l&agrave; một lựa chọn kh&aacute; ph&ugrave; hợp cho chiếc <strong>PC VR</strong> của anh em. Đ&aacute;ng ch&uacute; &yacute;, mainboard tr&ecirc;n d&ograve;ng m&aacute;y <strong>VISION</strong> c&oacute; tất cả c&aacute;c cổng cần thiết cho thiết bị ngoại vi v&agrave; nhiều khe cắm RAM, card đồ hoạ đảm bảo khả năng n&acirc;ng cấp m&aacute;y sau n&agrave;y.</span></p>

<p>&nbsp;</p>

<p><strong>*5 L&iacute; do m&agrave; anh em&nbsp; kh&ocirc;ng thể bỏ lỡ khi chọn PC VR chỉ c&oacute; tại TNC Store:</strong></p>

<ul>
	<li><span style="font-size:18px">100% Linh kiện được đảm bảo bảo h&agrave;nh ch&iacute;nh h&atilde;ng, mới brand new, nguy&ecirc;n hộp.</span></li>
	<li><span style="font-size:18px">M&aacute;y được đ&oacute;ng g&oacute;i v&agrave; lắp đặt cẩn thận, chuy&ecirc;n nghiệp, đẹp.</span></li>
	<li><span style="font-size:18px">Được đổi mới ngay trong v&ograve;ng 7 ng&agrave;y nếu c&oacute; sự cố từ NSX.</span></li>
	<li><span style="font-size:18px">Hỗ trợ trả g&oacute;p 0% l&atilde;i suất, thanh to&aacute;n linh hoạt.</span></li>
	<li><span style="font-size:18px">Hỗ trợ c&agrave;i đặt c&aacute;c phần mềm c&oacute; sẵn, cơ bản trọn đời.</span></li>
</ul>

<div>&nbsp;</div>
</div>
', 6, NULL, NULL, CAST(N'2020-12-01T17:37:43.130' AS DateTime), N'quang', NULL, NULL, 1, 1, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (37, N'PRO WORKSTATION', N'pro-workstation', N'/Data/images/Category/cat-gp-video.png', NULL, NULL, N'Cấu hình PC chuyên dụng cho các công việc thiết kế, kiến trúc, đồ họa đòi hỏi hiệu suất cao.', N'<div class="description">
<p><img src="https://www.tncstore.vn/image/catalog/banner/2020/T11/pro-workstation-tnc.jpg" style="float:left; width:25%" /><strong><span style="font-size:18px">PC PRO Workstation - M&aacute;y t&iacute;nh chuy&ecirc;n dụng&nbsp;</span></strong></p>

<p><strong><span style="font-size:18px">PC PRO Workstation - RENDA: Sự lựa chọn số một cho d&acirc;n thiết kế đồ hoạ</span></strong></p>

<p><span style="font-size:18px">Giống với người anh em PC Gaming, PC Workstation mang trong m&igrave;nh những linh kiện tối t&acirc;n nhất để phục vụ c&ocirc;ng việc thiết kế, chỉnh sửa kiến tr&uacute;c 3D, đồ họa nặng. Tuy nhi&ecirc;n, điều quan trọng nhất l&agrave;m n&ecirc;n PC Workstation tốt ch&iacute;nh l&agrave; sự bảo mật v&agrave; khả năng tương th&iacute;ch cao giữa c&aacute;c linh kiện. Hiện <strong>RENDA</strong> tại TNC Store đang c&oacute; sẵn c&aacute;c d&ograve;ng m&aacute;y Basic, Advance, Premium v&agrave; Master. Với đặc điểm phải xử l&yacute; một l&uacute;c nhiều t&aacute;c vụ kh&aacute;c nhau th&igrave; CPU được coi l&agrave; nh&acirc;n tố quan trọng nhất khi lựa chọn một c&acirc;y PC Workstation. D&ograve;ng m&aacute;y <strong>RENDA</strong> đến từ TNC Store sở hữu những CPU đa nh&acirc;n, đa luồng như Intel Xeon, Intel Core i9, Threadripper series l&agrave; sự lựa chọn h&agrave;ng đầu nhờ tốc độ xử l&yacute; đa nhiệm nhanh, bộ nhớ đệm lớn th&iacute;ch hợp với việc xử l&yacute; khối lượng c&ocirc;ng việc nặng v&agrave; số lượng nhiều. GPU l&agrave; linh kiện kh&ocirc;ng thể thiếu trong việc thực hiện việc xử l&yacute; h&igrave;nh ảnh, đồ hoạ. Card đồ hoạ RTX được lắp tr&ecirc;n d&ograve;ng <strong>RENDA</strong> c&oacute; khả năng &eacute;p xung mạnh mẽ v&agrave; khối lượng VRam lớn.&nbsp;</span></p>

<p><strong><span style="font-size:18px">*5 L&iacute; do m&agrave; anh em kh&ocirc;ng thể bỏ lỡ khi chọn PC Workstation chỉ c&oacute; tại TNC Store:</span></strong></p>

<ul>
	<li><span style="font-size:18px">100% Linh kiện được đảm bảo bảo h&agrave;nh ch&iacute;nh h&atilde;ng, mới brand new, nguy&ecirc;n hộp.</span></li>
	<li><span style="font-size:18px">M&aacute;y được đ&oacute;ng g&oacute;i v&agrave; lắp đặt cẩn thận, chuy&ecirc;n nghiệp, đẹp.</span></li>
	<li><span style="font-size:18px">Được đổi mới ngay trong v&ograve;ng 7 ng&agrave;y nếu c&oacute; sự cố từ NSX.</span></li>
	<li><span style="font-size:18px">Hỗ trợ trả g&oacute;p 0% l&atilde;i suất, thanh to&aacute;n linh hoạt.</span></li>
	<li><span style="font-size:18px">Hỗ trợ c&agrave;i đặt c&aacute;c phần mềm c&oacute; sẵn, cơ bản trọn đời.</span></li>
</ul>

<div>&nbsp;</div>
</div>
', 2, NULL, NULL, CAST(N'2020-12-01T17:37:45.920' AS DateTime), N'quang', NULL, NULL, 1, 1, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (38, N'PSU - Nguồn máy tính', N'psu-nguon-may-tinh', N'/Data/images/Category/psu-tnc-300x300.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2020-12-01T17:41:30.817' AS DateTime), N'quang', NULL, NULL, 1, 3, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (39, N'Quạt Tản Nhiệt PC', N'quat-tan-nhiet-pc', N'/Data/images/Category/fan-tnc-300x300.png', NULL, NULL, NULL, NULL, 5, NULL, NULL, CAST(N'2020-12-01T17:46:33.967' AS DateTime), N'quang', NULL, NULL, 1, 6, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (40, N'RAM - Bộ nhớ trong', N'ram-bo-nho-trong', N'/Data/images/Category/ram-tnc-300x300.png', NULL, NULL, NULL, NULL, 4, NULL, NULL, CAST(N'2020-12-01T17:40:01.253' AS DateTime), N'quang', NULL, NULL, 1, 3, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (41, N'ROUTER WIFI', N'router-wifi', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, CAST(N'2020-12-01T17:48:40.117' AS DateTime), N'quang', NULL, NULL, 1, 8, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (42, N'Tai Nghe Gaming', N'tai-nghe-gaming', N'/Data/images/Category/headphone-tnc-300x300%20(1).png', NULL, NULL, NULL, N'<div class="description">
<p style="margin-left:25px"><strong><span style="font-size:14px">Tai nghe chơi game (Gaming Headset)</span></strong>&nbsp;<br />
Kh&ocirc;ng một hệ thống <em><a href="https://www.tncstore.vn/gaming-pc.html">m&aacute;y t&iacute;nh chơi game</a></em> n&agrave;o l&agrave; ho&agrave;n chỉnh nếu như kh&ocirc;ng c&oacute; sự hiện diện của một chiếc <em><a href="https://www.tncstore.vn/gaming-gear/tai-nghe-choi-game.html">tai nghe chơi game</a></em> chất lượng tốt. Với việc nhiều tr&ograve; chơi hiện nay đều đ&atilde; c&oacute; phần chơi online kết nối mạng, khi <img src="https://www.tncstore.vn/image/catalog/BAI VIET/tai nghe steelseries arctis pro + DAC/steelseries-arctis-pro-gamedac-sieu-pham-tai-nghe-dap-ung-moi-nhu-cau-tncstore-30.jpg" style="float:right; width:50%" />m&agrave; mọi người c&oacute; thể gặp gỡ v&agrave; tr&ograve; chuyện với nhau v&agrave; c&ugrave;ng trải nghiệm thế giới game, th&igrave; việc sở hữu một chiếc<em> tai nghe chơi game</em> từ một phụ kiện, giờ đ&acirc;y đ&atilde; trở th&agrave;nh một thứ kh&ocirc;ng thể thiếu. Đ&acirc;y c&ograve;n l&agrave; một th&agrave;nh phần v&ocirc; c&ugrave;ng quan trọng, gi&uacute;p cho trải nghiệm chơi game th&ecirc;m ch&igrave;m đắm v&agrave; ch&acirc;n thật hơn. Dưới đ&acirc;y l&agrave; những yếu tố nổi bật bạn cần lưu &yacute; khi chọn mua một chiếc <em>tai nghe chơi game</em> ph&ugrave; hợp:<br />
<strong><span style="font-size:14px">- Chất lượng &acirc;m thanh (Sound Quality)</span></strong><br />
Đ&acirc;y l&agrave; yếu tố quan trọng h&agrave;ng đầu được xem x&eacute;t mỗi khi chọn mua một chiếc <em>tai nghe chơi game</em>. Chất lượng &acirc;m thanh đỉnh cao kh&ocirc;ng những gi&uacute;p bạn c&oacute; thể trải nghiệm được game ở mức độ tối đa nhất c&oacute; thể, m&agrave; c&ograve;n gi&uacute;p bạn c&oacute; được lợi thế &acirc;m thanh trong những cuộc thi đấu với việc nắm bắt được c&aacute;c &acirc;m thanh tương t&aacute;c v&agrave; m&ocirc;i trường xung quanh. Thậm ch&iacute;, một số game nhất định c&ograve;n c&oacute; những loại &acirc;m thanh đặc th&ugrave; như tiếng bước ch&acirc;n, tiếng s&uacute;ng bắn &ndash; v&agrave; chỉ c&oacute; một chiếc <em>tai nghe chơi game</em> chất lượng cao mới gi&uacute;p bạn định vị được những &acirc;m thanh đ&oacute; một c&aacute;ch nhanh nhất, gi&uacute;p bạn đưa ra được phản ứng t&igrave;nh huống một c&aacute;ch kịp thời.&nbsp; &nbsp;<br />
Một số <em><a href="https://www.tncstore.vn/gaming-gear/tai-nghe-choi-game.html">tai nghe chơi game</a></em> loại mới hiện nay c&ograve;n cho ph&eacute;p bạn lựa chọn giữa &acirc;m thanh stereo truyền thống v&agrave; &acirc;m thanh v&ograve;m (surround sound) để c&oacute; thể trải nghiệm được &acirc;m thanh một c&aacute;ch đầy đủ nhất. Cụ thể, c&ocirc;ng nghệ &acirc;m thanh v&ograve;m của Dolby c&oacute; thể đem lại cho bạn cảm gi&aacute;c &acirc;m thanh như đang xem tại một rạp chiếu phim hiện đại vậy. Một số tai nghe kh&aacute;c gi&uacute;p bạn t&ugrave;y chỉnh một số thiết lập kh&aacute;c nhau nhằm tối ưu &acirc;m thanh, v&iacute; dụ c&acirc;n bằng &acirc;m thanh ph&aacute;t ra v&agrave; &acirc;m thanh thu &acirc;m v&agrave;o mic chẳng hạn. C&ocirc;ng nghệ lọc tiếng ồn b&ecirc;n ngo&agrave;i cũng được sử dụng trong phần lớn c&aacute;c tai nghe hiện nay.<br />
<strong><span style="font-size:14px">- Mic thu &acirc;m thanh (Microphone)</span></strong><br />
Đ&acirc;y c&oacute; lẽ l&agrave; yếu tố được b&agrave;n bạc v&agrave; tranh c&atilde;i rất nhiều trong cộng đồng game thủ. Một số người cho rằng họ th&iacute;ch sử dụng một chiếc mic rời b&ecirc;n ngo&agrave;i để c&oacute; được chất lượng &acirc;m thanh tối ưu v&agrave; đảm bảo nhất. Số kh&aacute;c lại th&iacute;ch sự tiện lợi của mic t&iacute;ch hợp ngay ở tr&ecirc;n <em>tai nghe chơi game</em>. Thực tế hiện nay cho rằng, những chiếc mic t&iacute;ch hợp tr&ecirc;n c&aacute;c <em>tai nghe chơi game</em> đều đ&atilde; c&oacute; cải thiện đ&aacute;ng kể, đem đến chất lượng &acirc;m thanh tương đối tốt; n&ecirc;n trừ khi bạn cần &acirc;m thanh ti&ecirc;u chuẩn studio, th&igrave; c&oacute; lẽ mic t&iacute;ch hợp l&agrave; ho&agrave;n to&agrave;n đủ sử dụng với những game thủ th&ocirc;ng thường. Một số mic c&oacute; thể điều chỉnh vị tr&iacute; sao cho ph&ugrave; hợp, gạt l&ecirc;n tr&ecirc;n để tắt nhanh ch&oacute;ng, cũng như c&oacute; khả năng tiếp thu &acirc;m thanh đơn hướng hay đa hướng kh&aacute;c nhau, lọc bớt tiếng ồn b&ecirc;n ngo&agrave;i, gi&uacute;p cho việc trao đổi th&ocirc;ng tin l&uacute;c chơi game trở n&ecirc;n hiệu quả hơn.&nbsp;<br />
<strong>- Mức độ thoải m&aacute;i (Comfort)</strong><br />
Đơn giản l&agrave; v&igrave; bạn sẽ đeo tai nghe trong một thời gian d&agrave;i khi chơi game, n&ecirc;n yếu tố thoải m&aacute;i khi sử dụng cũng l&agrave; kh&aacute; quan trọng. Những chiếc tai nghe n&agrave;y cần c&oacute; trọng lượng đủ nhẹ, cũng như cấu tạo đủ chắc chắn để c&oacute; thể &ocirc;m chặt v&agrave; thoải m&aacute;i v&agrave;o hai b&ecirc;n tai. Thậm ch&iacute;, tai nghe kh&ocirc;ng d&acirc;y cũng l&agrave; một lựa chọn kh&ocirc;ng hề tồi, đem đến cho bạn sự thoải m&aacute;i v&agrave; tiện lợi tối đa khi chơi game. Ph&iacute;a tr&ecirc;n tai nghe c&oacute; đệm xốp mềm, đến c&aacute;c phần đệm tai nghe sử dụng xốp c&oacute; khả năng nhớ (memory foam) hay đệm vải lưới nhỏ (micro fibre), t&ugrave;y v&agrave;o sở th&iacute;ch của từng người, th&igrave; bạn ho&agrave;n to&agrave;n c&oacute; thể lựa chọn được chiếc tai nghe n&agrave;o ph&ugrave; hợp nhất cho bản th&acirc;n m&igrave;nh v&agrave; đem lại sự thoải m&aacute;i tốt nhất cho h&agrave;ng giờ chơi game.</p>

<div>&nbsp;</div>
</div>
', 8, NULL, NULL, CAST(N'2020-12-01T17:44:41.167' AS DateTime), N'quang', NULL, NULL, 1, 5, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (43, N'Tay cầm chơi game', N'tay-cam-choi-game', N'/Data/images/Category/taycam-tnc-300x300.png', NULL, NULL, NULL, NULL, 9, NULL, NULL, CAST(N'2020-12-01T17:45:00.067' AS DateTime), N'quang', NULL, NULL, 1, 5, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (44, N'Thiết bị Stream', N'thiet-bi-stream', N'/Data/images/Category/stream-tnc-300x300.png', NULL, NULL, NULL, NULL, 10, NULL, NULL, CAST(N'2020-12-01T17:45:16.887' AS DateTime), N'quang', NULL, NULL, 1, 5, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (45, N'Tản nhiệt khí cho PC ', N'tan-nhiet-khi-cho-pc', N'/Data/images/Category/tan-khi-tnc-300x300.png', NULL, NULL, NULL, NULL, 3, NULL, NULL, CAST(N'2020-12-01T17:45:45.350' AS DateTime), N'quang', NULL, NULL, 1, 6, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (46, N'Tản nước ALL IN ONE', N'tan-nuoc-all-in-one', N'/Data/images/Category/tan-nuoc-tnc-300x300.png', NULL, NULL, NULL, NULL, 4, NULL, NULL, CAST(N'2020-12-01T17:46:21.583' AS DateTime), N'quang', NULL, NULL, 1, 6, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (47, N'VGA - Card màn hình', N'vga-card-man-hinh', N'/Data/images/Category/vga-tnc-300x300.png', NULL, NULL, NULL, N'<div class="description">
<div>
<h2><img src="https://tncstore.cdn.vccloud.vn/image/catalog/banner/tnc-vga-icon.jpg" style="float:right; width:250px" /><span style="font-size:18px"><strong>VGA - Card M&agrave;n H&igrave;nh (Graphics Card &ndash; GPU)</strong></span></h2>
</div>

<div>&nbsp;</div>

<div style="text-align: justify;"><span style="font-size:14px">Một chiếc <strong>card m&agrave;n h&igrave;nh</strong> (Graphics Card &ndash; GPU) l&agrave; một th&agrave;nh phần kh&ocirc;ng thể thay thế trong bất cứ m&aacute;y t&iacute;nh n&agrave;o. Th&ocirc;ng thường, <strong>card đồ họa m&aacute;y t&iacute;nh</strong> sẽ được chia th&agrave;nh hai loại. Thứ nhất, card đồ họa t&iacute;ch hợp b&ecirc;n trong bo mạch chủ hoặc trong <strong>CPU</strong>, hoạt động bằng c&aacute;ch sử dụng một phần bộ nhớ hệ thống để xử l&yacute; dữ liệu h&igrave;nh ảnh. Gần đ&acirc;y, c&oacute; sự tiến bộ r&otilde; rệt khi m&agrave; sự xuất hiện của c&aacute;c bộ vi xử l&yacute; APU (Advanced Processing Unit), t&iacute;ch hợp CPU v&agrave; GPU v&agrave;o chung một chip, c&oacute; thể t&igrave;m thấy trong c&aacute;c m&aacute;y game console hoặc tại c&aacute;c bộ vi xử l&yacute; mới trong thời gian trở lại đ&acirc;y. Tuy vậy, c&aacute;c bộ vi xử l&yacute; APU vẫn thuộc ph&acirc;n kh&uacute;c sản phẩm phổ th&ocirc;ng/gi&aacute; rẻ trong nền c&ocirc;ng nghiệp đồ họa m&aacute;y t&iacute;nh hiện nay.</span></div>

<div style="text-align: justify;"><span style="font-size:14px">Đối với c&aacute;c game thủ thực thụ, th&igrave; việc sử dụng một chiếc card đồ họa rời vẫn l&agrave; lựa chọn ph&ugrave; hợp hơn, đem lại tốc độ xử l&yacute; tốt hơn, tỉ lệ khung h&igrave;nh/gi&acirc;y cao hơn, độ ph&acirc;n giải hiển thị cao hơn, cũng như giảm tải bộ nhớ hệ thống <strong><a href="http://www.tncstore.vn/ram">RAM</a></strong> v&agrave; <strong><a href="http://www.tncstore.vn/cpu">CPU</a></strong>. C&aacute;c card đồ họa rời thường kết nối với m&aacute;y t&iacute;nh th&ocirc;ng qua cổng giao tiếp PCI-Express hoặc AGP. Thậm ch&iacute;, c&oacute; thể chạy song song nhiều card đồ họa c&ugrave;ng l&uacute;c th&ocirc;ng qua bus PCI-Express c&oacute; tr&ecirc;n bo mạch chủ hoặc qua một cầu nối dữ liệu.</span></div>

<div style="text-align: justify;"><span style="font-size:14px">Th&agrave;nh phần cơ bản của một chiếc card đồ họa bao gồm 2 phần: chip xử l&yacute; đồ họa (GPU) v&agrave; bộ nhớ đồ họa (Video RAM). Tuy nhi&ecirc;n, kh&aacute;c với card đồ họa t&iacute;ch hợp, th&igrave; c&aacute;c sản phẩm card đồ họa rời c&oacute; th&ocirc;ng số kỹ thuật vượt trội ở cả 2 phần tr&ecirc;n. Những người c&oacute; niềm đam m&ecirc; với game sẽ cần sức mạnh bổ sung đ&aacute;ng gi&aacute; n&agrave;y để c&oacute; thể theo kịp với xu hướng, khi m&agrave; những bước tiến cả về mặt phần cứng v&agrave; phần mềm đ&atilde; tăng cao nhanh ch&oacute;ng. Ngo&agrave;i ra, bạn c&oacute; thể t&igrave;m thấy tr&ecirc;n card đồ họa những th&agrave;nh phần kh&aacute;c như bộ phận tản nhiệt, bộ phận l&agrave;m m&aacute;t, RAMDAC (Random Access Memory Digital-Analogue Converter), một số cổng ra m&agrave;n h&igrave;nh, cổng giao tiếp với bo mạch chủ, chip BIOS chưa firmware của card đồ họa.</span></div>

<div style="text-align: justify;"><span style="font-size:14px">Về cơ bản, <strong>card đồ họa m&aacute;y t&iacute;nh</strong> sẽ xử l&yacute; t&iacute;n hiệu h&igrave;nh ảnh rồi sau đ&oacute; xuất ra m&agrave;n h&igrave;nh th&ocirc;ng qua c&aacute;c giao tiếp kh&aacute;c nhau. C&aacute;c cổng n&agrave;y kết nối trực tiếp với m&agrave;n h&igrave;nh của bạn, cho n&ecirc;n việc lựa chọn giao tiếp đ&uacute;ng sẽ phụ thuộc nhiều v&agrave;o chiếc m&agrave;n h&igrave;nh cũng như chất lượng bạn muốn thể hiện l&ecirc;n tr&ecirc;n m&agrave;n h&igrave;nh đ&oacute;. Một số card m&agrave;n h&igrave;nh cũng sẽ cho ph&eacute;p bạn kết nối nhiều m&agrave;n h&igrave;nh c&ugrave;ng l&uacute;c. Dưới đ&acirc;y l&agrave; những chuẩn kết nối m&agrave;n h&igrave;nh phổ biến</span></div>

<div style="text-align: justify;">&nbsp;</div>

<div style="text-align: justify;"><span style="font-size:14px"><strong>+ Video Graphics Array (VGA/D-sub):</strong> C&ocirc;ng nghệ đ&atilde; xuất hiện từ những năm 1980, tuy nhi&ecirc;n c&oacute; kh&aacute; nhiều điểm hạn chế. Chất lượng hiển thị c&oacute; thể suy giảm nhanh ch&oacute;ng v&igrave; nhiều l&yacute; do như: chất lượng v&agrave; chiều d&agrave;i của d&acirc;y t&iacute;n hiệu, mức độ nhiễu điện, hiện tượng vỡ ảnh, hiện tượng lỗi mẫu cũng c&oacute; thể xảy ra.</span></div>

<div style="text-align: justify;"><span style="font-size:14px"><strong>+ Digital Visual Interface (DVI):</strong> Được sử dụng cho m&agrave;n h&igrave;nh phẳng, như LCD, plasma, c&aacute;c m&agrave;n h&igrave;nh rộng c&oacute; độ ph&acirc;n giải cao, m&aacute;y chiếu. DVI c&oacute; một lợi thế, đ&oacute; l&agrave; tr&aacute;nh được c&aacute;c hiện tượng nh&ograve;e h&igrave;nh kĩ thuật số cũng như nhiễu điện bằng c&aacute;ch sử dụng độ ph&acirc;n giải thực để thể hiện h&igrave;nh ảnh trực tiếp từ m&aacute;y t&iacute;nh l&ecirc;n m&agrave;n h&igrave;nh.</span></div>

<div style="text-align: justify;"><span style="font-size:14px"><strong>+ High-Definition Multimedia Interface (HDMI):</strong> Giao thức audio/video gọn nhẹ d&ugrave;ng để chuyển dữ liệu h&igrave;nh ảnh đến bất cứ thiết bị n&agrave;o tương th&iacute;ch với chuẩn HDMI. Dữ liệu đ&oacute; c&oacute; thể l&agrave; kh&ocirc;ng n&eacute;n hoặc c&aacute;c chuẩn dữ liệu chưa/đ&atilde; n&eacute;n, v&agrave; đ&atilde; trở th&agrave;nh ti&ecirc;u chuẩn kỹ thuật số thay thế c&aacute;c giao tiếp analog cũ lạc hậu.</span></div>

<div style="text-align: justify;"><span style="font-size:14px"><strong>+ DisplayPort:</strong> Ti&ecirc;u chuẩn n&agrave;y được hiệp hội VESA (Video Electronics Standard Association) ph&aacute;t triển, được sử dụng chủ yếu l&agrave;m giao tiếp kết nối m&agrave;n h&igrave;nh m&aacute;y t&iacute;nh hiện nay. Mậc d&ugrave; được thiết kế để thay thế VGA, DVI v&agrave; DisplayPort ho&agrave;n to&agrave;n c&oacute; thể tương th&iacute;ch th&ocirc;ng qua việc sử dụng adapter.&nbsp;</span></div>

<div style="text-align: justify;"><span style="font-size:14px"><strong>- Giao thức với bo mạch chủ</strong></span></div>

<div style="text-align: justify;"><span style="font-size:14px">Qua rất nhiều năm, c&aacute;c kết nối giữa card đồ họa v&agrave; bo mạch chủ đ&atilde; c&oacute; những thay đổi kh&aacute; đ&aacute;ng kể. Ti&ecirc;u chuẩn kết nối đầu ti&ecirc;n xuất hiện mang t&ecirc;n S-100 v&agrave;o năm 1974. Tuy nhi&ecirc;n, phải đến khi chuẩn PCI được ra đời v&agrave;o năm 1993, l&uacute;c n&agrave;y tốc độ mới được tăng l&ecirc;n đ&aacute;ng kể, gi&uacute;p sức cho <strong>card đồ họa rời</strong> ph&aacute;t triển mạnh mẽ như những g&igrave; ch&uacute;ng ta biết ng&agrave;y h&ocirc;m nay. Một số bước ph&aacute;t triển quan trọng c&oacute; thể nhắc đến như ti&ecirc;u chuẩn AGP (Accelerated Graphics Port), c&ugrave;ng với c&aacute;c ti&ecirc;u chuẩn ra đời sau n&agrave;y của PCI, bao gồm PCI-X v&agrave; PCI-Express &ndash; ti&ecirc;u chuẩn ch&iacute;nh v&agrave; phổ biến nhất hiện tại.</span></div>

<div style="text-align: justify;"><span style="font-size:14px"><strong>- Lựa chọn một chiếc card dồ họa hợp l&yacute; ?&nbsp;</strong></span></div>

<div style="text-align: justify;"><span style="font-size:14px">L&agrave;m thế n&agrave;o để mua một card đồ họa vừa hợp l&yacute; với t&uacute;i tiền bạn đang c&oacute;, v&agrave; c&oacute; thể đ&aacute;p ứng được những ứng dụng cần thiết đ&ocirc;i khi c&oacute; thể hơi kh&oacute; khăn một ch&uacute;t. C&oacute; thể n&oacute;i nhanh như sau, việc so s&aacute;nh th&ocirc;ng số card tương ứng một c&aacute;ch sơ đẳng qua kh&ocirc;ng phải l&agrave; một c&aacute;ch thật sự hiệu quả, v&agrave; đ&ocirc;i khi th&ocirc;ng số của GPU v&agrave; VRAM c&oacute; thể đem lại cho bạn một số th&ocirc;ng tin cơ bản, nhưng ch&uacute;ng cũng c&oacute; thể g&acirc;y hiểu nhầm. Một s&oacute; th&ocirc;ng tin cho rằng lựa chọn nh&atilde;n hiệu n&agrave;o cũng mang t&iacute;nh kh&aacute; chủ quan v&agrave; kh&ocirc;ng thật sự l&agrave; th&ocirc;ng tin tin cậy để xem card đồ họa c&oacute; hiệu năng như thế n&agrave;o. V&igrave; vậy, đừng qu&aacute; bị cuốn v&agrave;o những cuộc c&atilde;i v&atilde; <strong>NVIDIA</strong> vs <strong>AMD</strong>, m&agrave; h&atilde;y xem x&eacute;t những điểm quan trọng sau khi bạn đ&atilde; sẵn s&agrave;ng bỏ tiền ra mua sản phẩm:</span></div>

<div style="text-align: justify;"><span style="font-size:14px">+ Tỉ lệ gi&aacute; th&agrave;nh/hiệu năng: Th&ocirc;ng thường, những chiếc <strong>card đồ họa</strong> mạnh nhất sử dụng c&aacute;c chip xử l&yacute; đồ họa mới nhất sẽ đem lại cho bạn khả năng chơi game tốt nhất trong việc chơi game. Tuy nhi&ecirc;n, nếu bạn chơi c&aacute;c tựa game kh&ocirc;ng đ&ograve;i hỏi qu&aacute; nhiều sức mạnh đồ họa, như Minecraft chẳng hạn, th&igrave; số tiền lớn chi cho <strong>card đồ họa</strong> mới ra đời sẽ thật sự kh&ocirc;ng hợp l&yacute; v&agrave; cần thiết. C&acirc;n bằng được tỉ lệ gi&aacute; th&agrave;nh/hiệu năng so với nhu cầu chơi game của bạn, từ đ&oacute; b&aacute;n sẽ t&igrave;m được chiếc card ph&ugrave; hợp nhất.</span></div>

<div style="text-align: justify;"><span style="font-size:14px">+ &Eacute;p xung v&agrave; tản nhiệt nước: Nếu bạn thật sự muốn gia tăng sức mạnh l&ecirc;n một mức mới, th&igrave; c&oacute; lẽ bạn n&ecirc;n xem x&eacute;t khả năng &eacute;p xung v&agrave;/hoặc d&ugrave;ng tản nhiệt nước của chiếc card đồ họa m&igrave;nh định mua. Hầu hết c&aacute;c card reference, đến từ <strong>NVIDIA</strong> hoặc <strong>AMD</strong>, sẽ c&oacute; được khả năng đ&oacute;. Điều n&agrave;y l&agrave; tr&aacute;i ngược so với những chiếc card đến từ h&atilde;ng sản xuất thứ 3, khi họ cung cấp phần cứng v&agrave; hệ thống tản nhiệt do ch&iacute;nh họ thiết kế v&agrave; tạo ra.&nbsp;</span></div>

<div style="text-align: justify;"><span style="font-size:14px"><strong>+ K&iacute;ch thước v&agrave; mức độ ti&ecirc;u thụ điện năng:</strong> Cho d&ugrave; bạn n&acirc;ng cấp chiếc m&aacute;y t&iacute;nh sẵn c&oacute;, hay x&acirc;y dựng một chiếc ho&agrave;n to&agrave;n mới, h&atilde;y chắc chắn rằng m&igrave;nh lựa chọn <strong>VGA</strong> vừa vặn với case v&agrave; kh&ocirc;ng l&agrave;m cho nguồn m&aacute;y t&iacute;nh bị qu&aacute; tải, đ&oacute; l&agrave; điều kh&aacute; dễ hiểu. Tuy nhi&ecirc;n, lu&ocirc;n l&agrave; hữu &iacute;ch khi xem x&eacute;t lại k&iacute;ch thước cũng như c&ocirc;ng suất nguồn trước khi bạn bỏ tiền ra mua một chiếc <strong>card đồ họa</strong>.</span></div>

<div style="text-align: justify;"><span style="font-size:14px"><strong>+ Độ ổn định v&agrave; độ tương th&iacute;ch:</strong> Mức độ ổn định của card m&agrave;n h&igrave;nh phụ thuộc v&agrave;o kh&aacute; nhiều yếu tố, v&agrave; cũng c&oacute; thể li&ecirc;n kết được với phần mềm m&agrave; bạn sử dụng. Mỗi thế hệ card đồ họa sẽ hỗ trợ từng phi&ecirc;n bản kh&aacute;c nhau của DirectX. Điều đ&oacute; c&oacute; nghĩa l&agrave;, nếu bạn muốn chạy game mới nhất với một chiếc <strong>VGA</strong> cũ hơn, th&igrave; đồ họa hiển thị sẽ bị hạn chế, thậm ch&iacute; trong một số trường hợp, game sẽ kh&ocirc;ng chạy được.</span></div>

<div style="text-align: justify;"><span style="font-size:14px"><strong>+ Giao thức v&agrave; kết nối m&agrave;n h&igrave;nh:</strong> Chọn một chiếc card đồ họa để ph&ugrave; hợp với khả năng hiển thị m&agrave;n h&igrave;nh thường sẽ kh&aacute; đơn giản. Tuy nhi&ecirc;n, c&ocirc;ng nghệ ph&aacute;t triển kh&aacute; nhanh, v&agrave; với sự xuất hiện c&aacute;c c&ocirc;ng nghệ như 3D, </span><span style="font-size:14px">4K, thực tế ảo VR, c&oacute; lẽ tốt hơn l&agrave; chuẩn bị trước cho tương lai sau n&agrave;y. Th&ecirc;m v&agrave;o đ&oacute;, một số card đồ họa c&ograve;n hỗ trợ việc xuất đa m&agrave;n h&igrave;nh cho một trải nghiệm chơi game đậm chất &ldquo;ngầu&rdquo;.</span></div>

<div style="text-align: justify;"><span style="font-size:14px"><strong>+ C&aacute;c ứng dụng kh&ocirc;ng phải l&agrave; game:</strong> Hầu hết c&aacute;c h&atilde;ng sản xuất lớn đều c&oacute; hỗ trợ cho c&aacute;c ứng dụng kh&ocirc;ng phải l&agrave; game như thiết kế với sự trợ gi&uacute;p của m&aacute;y t&iacute;nh (CAD &ndash; Computer Aided Design), chỉnh sửa video, thiết kế đồ họa. Những card n&agrave;y được tối ưu h&oacute;a cho từng ứng dụng, v&agrave; chọn ra sao cho hợp l&yacute; sẽ phụ thuộc v&agrave; chức năng n&agrave;o m&agrave; bạn đang cần.</span></div>

<div style="text-align: justify;">&nbsp;</div>
</div>
', 6, NULL, NULL, CAST(N'2020-12-01T17:41:05.660' AS DateTime), N'quang', NULL, NULL, 1, 3, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (48, N'Webcam', N'webcam', NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, CAST(N'2020-12-01T17:48:05.397' AS DateTime), N'quang', NULL, NULL, 1, 7, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (49, N'Ổ cứng HDD', N'o-cung-hdd', N'/Data/images/Category/hdd-tnc-300x300.png', NULL, NULL, NULL, N'<div class="description">
<h3><strong><span style="font-size:14px">Ổ cứng HDD (Hard Disk Drive &ndash; HDD)</span></strong></h3>
<img src="https://tncstore.cdn.vccloud.vn/image/catalog/HDD/Untitled-1.jpg" style="float:right; width:512px" />
<p>Bạn c&oacute; thể t&igrave;m thấy <strong>ổ cứng cơ</strong> (HDD) ở bất cứ m&aacute;y t&iacute;nh n&agrave;o. Đ&acirc;y l&agrave; loại thiết bị ch&iacute;nh được sử dụng với mục đ&iacute;ch lưu trữ. Mọi dữ liệu tr&ecirc;n m&aacute;y đều được lưu ở đ&acirc;y để phục vụ cho mục đ&iacute;ch sử dụng v&agrave; lưu trữ.&nbsp;</p>

<p>N&acirc;ng cấp <strong>ổ cứng cơ</strong> l&agrave; một c&aacute;ch đơn giản v&agrave; nhanh ch&oacute;ng để gia tăng kh&ocirc;ng gian lưu trữ cho m&aacute;y t&iacute;nh của bạn. V&agrave; một điều cần lưu &yacute;, thay một ổ cứng mới cho một ổ đ&atilde; c&oacute; dấu hiệu hỏng h&oacute;c v&agrave; xuống cấp cũng sẽ cải thiện hiệu năng đ&aacute;ng kể cho m&aacute;y t&iacute;nh của bạn.</p>

<p>Dưới đ&acirc;y l&agrave; những loại ổ cứng cơ phổ biến tr&ecirc;n thị trường:</p>

<h3><span style="font-size:14px">- </span><strong><span style="font-size:14px">Ổ cứng m&aacute;y t&iacute;nh b&agrave;n (Desktop HDD)</span></strong></h3>

<p>Đ&acirc;y l&agrave; loại <strong>ổ cứng</strong> phổ biến nhất hiện nay, hiện c&oacute; với một số k&iacute;ch thước kh&aacute;c nhau, tuy nhi&ecirc;n chiếm đa số vẫn l&agrave; k&iacute;ch thước 3.5 inch. Đ&acirc;y l&agrave; loại bộ nhớ lưu trữ thụ động (non-volatile memory), tức l&agrave; dữ liệu lưu trữ tr&ecirc;n đ&oacute; sẽ được lưu lại cho d&ugrave; thiết bị c&oacute; bật hay kh&ocirc;ng. Từ đ&oacute;, đ&acirc;y l&agrave; một h&igrave;nh thức lưu trữ an to&agrave;n v&agrave; bảo mật.</p>

<h3><span style="font-size:14px">- </span><strong><span style="font-size:14px">Ổ cứng m&aacute;y t&iacute;nh x&aacute;ch tay (Notebook HDD)</span></strong></h3>

<p>Ổ cứng d&agrave;nh cho m&aacute;y t&iacute;nh x&aacute;ch tay c&oacute; kh&aacute; nhiều điểm tương đồng với ổ cứng cho m&aacute;y t&iacute;nh để b&agrave;n đ&atilde; đề cập ở tr&ecirc;n, điểm kh&aacute;c biệt r&otilde; r&agrave;ng nhất ch&iacute;nh l&agrave; k&iacute;ch thước. Khi mua sắm. bạn cần lưu &yacute; vấn đề k&iacute;ch thước để kh&ocirc;ng bị nhầm lẫn.</p>
</div>
', 5, NULL, NULL, CAST(N'2020-12-01T17:40:49.713' AS DateTime), N'quang', NULL, NULL, 1, 3, NULL)
INSERT [dbo].[ProductCategories] ([ID], [Title], [MetaTitle], [Images], [NavImages], [BannerImages], [ShortDesc], [Description], [Order], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [MetaKeywords], [MetaDescription], [Status], [ParentID], [Style]) VALUES (50, N'Ổ cứng SSD', N'o-cung-ssd', N'/Data/images/Category/ssd-tnc-300x300.png', NULL, NULL, NULL, N'<div class="description">
<p><img src="https://tncstore.cdn.vccloud.vn/image/catalog/ssd-ocung.png" style="float:right; width:156px" /></p>

<h2 style="text-align:justify"><strong><span style="font-size:18px">Ổ Cứng SSD - Ổ cứng thể rắn (Solid State Drive )</span></strong></h2>

<p>&nbsp;</p>

<p style="text-align:justify">Trong những năm gần đ&acirc;y, dung lượng của ổ cứng thể rắn (<strong>SSD</strong> &ndash; Solid State Drives) đ&atilde; tăng l&ecirc;n kh&aacute; nhiều c&ugrave;ng với gi&aacute; th&agrave;nh đ&atilde; giảm xuống, khiến cho loại sản phẩm n&agrave;y c&oacute; thể được tiếp cận dễ d&agrave;ng hơn đối với người d&ugrave;ng hơn bao giờ hết. Hiệu năng m&agrave; những chiếc ổ thể rắn n&agrave;y đem lại l&agrave; cao hơn rất nhiều nếu so với ổ cứng cơ truyền thống, đem đến khả năng lưu trữ tin cậy cho cả m&aacute;y t&iacute;nh b&agrave;n lẫn m&aacute;y t&iacute;nh x&aacute;ch tay. Ch&uacute;ng cũng c&oacute; k&iacute;ch thước nhỏ hơn, v&agrave; kh&ocirc;ng c&oacute; th&agrave;nh phần chuyển động n&agrave;o, khiến ch&uacute;ng kh&aacute; bền vững nếu như bạn phải đem m&aacute;y đi nhiều. Đ&acirc;y l&agrave; lựa chọn ho&agrave;n hảo cho game thủ, những người d&ugrave;ng hiệu năng cao, họ đ&ograve;i hỏi thời gian khởi động m&aacute;y nhanh v&agrave; chạy game với tốc độ cực cao.&nbsp;</p>

<h3 style="text-align:justify"><strong><span style="font-size:14px">Tại sao n&ecirc;n lựa chọn SSD - ổ cứng thể rắn ?</span></strong></h3>

<p style="text-align:justify">Như đ&atilde; n&oacute;i ở tr&ecirc;n, ổ cứng thể rắn c&oacute; một số lợi thế đ&aacute;ng kể nếu như so với ổ cứng cơ truyền thống. Việc sử dụng c&aacute;c chip nhớ, thay v&igrave; c&aacute;c bộ phận chuyển động. Dữ liệu được lưu tr&ecirc;n chip nhớ một c&aacute;ch nhanh ch&oacute;ng. Việc nhận v&agrave; gửi được diễn ra với một tỉ lệ rất cao.&nbsp;</p>

<p style="text-align:justify">Bởi v&igrave; ổ thể rắn kh&ocirc;ng c&oacute; bộ phận chuyển động n&agrave;o, n&ecirc;n tốc độ sẽ cao hơn đ&aacute;ng kể so với ổ cứng cơ. Khởi động v&agrave;o hệ điều h&agrave;nh sẽ nhanh hơn rất nhiều, c&oacute; thể gần như tức th&igrave;. V&agrave; kh&ocirc;ng như <strong><a href="http://www.tncstore.vn/linh-kien-pc/ram.html">RAM</a></strong>, c&aacute;c chip nhớ trong ổ cứng thể rắn c&oacute; thể lưu trữ dữ liệu ngay cả khi kh&ocirc;ng c&ograve;n nhận được điện năng v&agrave;o.&nbsp;</p>

<p style="text-align:justify">N&acirc;ng cấp l&ecirc;n một ổ cứng thể rắn, sẽ gi&uacute;p cho hệ thống của bạn hoạt động nhanh hơn v&agrave; tạo ra &iacute;t tiếng ồn hơn. Đ&acirc;y l&agrave; một c&aacute;ch cải thiện hiệu năng m&aacute;y t&iacute;nh phổ biến, được nhiều người &aacute;p dụng hiệu quả. Th&ecirc;m v&agrave;o đ&oacute;, ổ cứng thể rắn cũng hoạt động với nhiệt độ thấp hơn đ&aacute;ng kể nếu so với ổ cứng cơ truyền thống.</p>

<h3 style="text-align:justify"><strong><span style="font-size:14px">C&aacute;c loại ổ cứng SSD</span></strong></h3>

<p style="text-align:justify">Tr&ecirc;n thị trường hiện nay, c&oacute; một số loại ổ thể rắn <strong><a href="http://www.tncstore.vn/linh-kien-pc/ssd-o-the-ran.html">SSD</a></strong> kh&aacute;c nhau, ph&ugrave; hợp với từng trường hợp sử dụng kh&aacute;c nhau. Dưới đ&acirc;y, sẽ l&agrave; liệt k&ecirc; v&agrave; giải th&iacute;ch cụ thể về từng loại ổ kh&aacute;c nhau, để bạn c&oacute; thể lựa chọn ổ cứng n&agrave;o ph&ugrave; hợp nhất với hệ thống m&aacute;y t&iacute;nh của m&igrave;nh.</p>

<p style="text-align:justify"><strong>- Ổ SSD SATA truyền thống (SATA SSD):</strong> Đ&acirc;y l&agrave; ti&ecirc;u chuẩn th&ocirc;ng thường đối với ổ cứng của laptop v&agrave; cả ổ cứng của m&aacute;y b&agrave;n. Với k&iacute;ch thước 2.5 inch, k&iacute;ch thước nhỏ hơn so với ổ cứng cơ truyền thống &ndash; 3.5 inch; v&agrave; đ&ocirc;i khi sẽ đ&ograve;i hỏi một khay chuyển đổi (caddy bay) để c&oacute; thể sử dụng được đối với một số hệ thống nhất định.&nbsp;</p>

<p style="text-align:justify"><strong>- Ổ cứng mSATA (mSATA SSD):</strong> Ti&ecirc;u chuẩn mSATA gi&uacute;p cho việc lắp đặt ổ <strong>SSD</strong> ở laptop hay c&aacute;c m&aacute;y t&iacute;nh netbook cỡ nhỏ c&oacute; thể thực hiện được, nơi m&agrave; kh&ocirc;ng gian bị hạn chế. Đ&acirc;y l&agrave; c&aacute;c ổ m&agrave; kh&ocirc;ng c&oacute; vỏ b&ecirc;n ngo&agrave;i, k&iacute;ch thước từ đ&oacute; c&ograve;n c&oacute; thể nhỏ hơn nữa. C&aacute;c ổ n&agrave;y c&oacute; thể kết nối th&ocirc;ng qua giao tiếp PCI-Express hoặc SATA, v&agrave; đ&ocirc;i khi bạn sẽ cần adapter để c&oacute; thể thực hiện chuyển đổi giữa c&aacute;c giao tiếp.</p>

<p style="text-align:justify"><strong>- Ổ cứng M.2 (M.2 SSD):</strong> Đọc như sau &ldquo;Mờ chấm 2&rdquo;. Đ&acirc;y được coi l&agrave; ti&ecirc;u chuẩn mới, ra đời để thay thế ổ mSATA. Điểm hay của chuẩn n&agrave;y, đ&oacute; l&agrave; việc c&oacute; c&aacute;c th&ocirc;ng số kỹ thuật cụ thể v&agrave; ph&ugrave; hợp hơn, từ đ&oacute; hiệu năng tăng l&ecirc;n rất đ&aacute;ng kể so với chuẩn mSATA cũ hơn. C&aacute;c ổ thể rắn chuẩn n&agrave;y c&oacute; thể được sử dụng ở cả m&aacute;y t&iacute;nh x&aacute;ch tay cũng như m&aacute;y t&iacute;nh để b&agrave;n th&ocirc;ng thường. Kết nối với m&aacute;y qua cổng giao tiếp M.2 đặc th&ugrave; v&agrave; chạy với tốc độ bus PCI-Express.</p>

<p style="text-align:justify"><strong>- Ổ cứng PCI-Express (PCI-Express SSD): </strong>C&aacute;c ổ thể rắn chuẩn PCI-Express đều v&ocirc; c&ugrave;ng mạnh mẽ với tốc độ đọc/ghi rất cao, kết nối trực tiếp th&ocirc;ng qua khe mở rộng PCI-Express. Những ổ n&agrave;y vẫn c&oacute; gi&aacute; kh&aacute; cao, nhưng đem lại hiệu năng tốt nhất cho cả m&aacute;y t&iacute;nh để b&agrave;n v&agrave; m&aacute;y t&iacute;nh x&aacute;ch tay.&nbsp;</p>

<div>&nbsp;</div>
</div>
', 2, NULL, NULL, CAST(N'2020-12-01T17:40:29.870' AS DateTime), N'quang', NULL, NULL, 1, 3, NULL)
SET IDENTITY_INSERT [dbo].[ProductCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (1, N'Bo Mạch Chủ Asus ROG STRIX B550-F GAMING', NULL, N'bo-mach-chu-asus-rog-strix-b550-f-gaming', N'<p>- K&iacute;ch thước: ATX</p>

<p>- Socket: AM4</p>

<p>- Chipset: B550</p>

<p>- Khe RAM tối đa: 4</p>

<p>- Bus RAM hỗ trợ: 2133 - 4866 Mhz (OC)</p>
', N'/Data/images/product/bo-mach-chu-asus-rog-strix-b550-f-gaming--228x228.jpg', N'<Images><Images>/Data/images/product/bo-mach-chu-asus-rog-strix-b550-f-gaming--500x500.jpg</Images><Images>/Data/images/product/bo-mach-chu-asus-rog-strix-b550-f-gaming-3-500x500.png</Images><Images>/Data/images/product/bo-mach-chu-asus-rog-strix-b550-f-gaming-4-500x500.png</Images><Images>/Data/images/product/bo-mach-chu-asus-rog-strix-b550-f-gaming-wi-fi-500x500.jpg</Images><Images>/Data/images/product/bo-mach-chu-asus-rog-strix-b550-fa-gaming-2-500x500.jpg</Images></Images>', CAST(5690000 AS Decimal(18, 0)), CAST(6690000 AS Decimal(18, 0)), NULL, NULL, 10, CAST(N'2020-12-18T02:42:02.220' AS DateTime), N'quang', NULL, NULL, 18, 0, 1011, 1, N'<div class="content-description">
<p style="text-align:center">Bo Mạch Chủ Asus ROG STRIX B550-F GAMING l&agrave; d&ograve;ng main mới nhất hỗ trợ CPU thế hệ thứ 5 mới nhất của AMD với khả năng &eacute;p xung CPU rất tốt, hiện sản phẩm đ&atilde; c&oacute; mặt tại&nbsp;<a href="http://tncstore.vn/" style="background-color: rgb(255, 255, 255);">TNC Store</a></p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/main/Asus/ROG Strix B550-F/bo-mach-chu-asus-rog-strix-b550-f-gaming-a.jpg" style="width:779px" /></p>
</div>
', 36, NULL, NULL, 15)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (2, N'Laptop MSI Bravo 15 A4DCR 270VN Ryzen 5 4600H/ 8GB/ 256GB NVMe/ RX5300M/ 15.6''''/ Windows 10 Home', NULL, N'laptop-msi-bravo-15-a4dcr-270vn-ryzen-5-4600h-8gb-256gb-nvme-rx5300m-15-6-windows-10-home', N'<p>- CPU: AMD Ryzen 5 4600H (3.00GHz upto 4.00GHz, 8MB)</p>

<p>- RAM: 8GB (8GBx1) DDR4 3200MHz ( 2 khe)</p>

<p>- Ổ cứng: 256GB NVMe PCIe SSD + 1 slot M2 PCie&lt;</p>

<p>- VGA: AMD Radeon&trade; RX5300M 3GB GDDR6</p>

<p>- M&agrave;n h&igrave;nh: 15.6 inch FHD (1920*1080), IPS-Level 144Hz</p>

<p>- Pin: 3-Cell, 51Whr</p>

<p>- C&acirc;n nặng: 1.86kg</p>

<p>- T&iacute;nh năng: Đ&egrave;n nền b&agrave;n ph&iacute;m</p>

<p>- OS: Windows 10 Home</p>
', N'/Data/images/product/Bravo%2015-228x228.jpg', N'<Images><Images>/Data/images/product/Bravo%2015-500x500.jpg</Images><Images>/Data/images/product/laptop-msi-bravo-15-a4dc-052vn-2-500x500.png</Images><Images>/Data/images/product/laptop-msi-bravo-15-a4dc-052vn-3-500x500.png</Images><Images>/Data/images/product/laptop-msi-bravo-15-a4dc-052vn-5-500x500.png</Images><Images>/Data/images/product/laptop-msi-bravo-15-a4dc-052vn-4-500x500.png</Images></Images>', CAST(18690000 AS Decimal(18, 0)), CAST(19690000 AS Decimal(18, 0)), NULL, NULL, 520, CAST(N'2020-12-18T02:28:26.927' AS DateTime), N'quang', NULL, NULL, 20, 0, 1042, 1, N'<p>Laptop MSI Bravo 15 A4DCR 270VN&nbsp;Ryzen 5 4600H/8GB/256GB NVMe/ RX5300M/15.6&#39;&#39;/Windows 10 Home l&agrave; d&ograve;ng sản phẩm cấu h&igrave;nh trung, đ&aacute;p ứng đầy đủ nhu cầu về game hay đồ họa của người d&ugrave;ng. Sản phẩm đang được b&aacute;n tại&nbsp;<a href="http://tncstore.vn/">TNC Store</a></p>

<p>&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/laptopmsi/Bravo 15 A4DC 052VN/laptop-msi-bravo-15-a4dc-052vn-b.png" style="width:776px" /></p>

<p>&nbsp;</p>
', 12, N'//www.youtube.com/embed/rpUOv2LUZuk', NULL, 5)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (3, N'Màn hình Gaming Gigabyte Aorus KD25F VA/ FullHD/ 240Hz', NULL, N'man-hinh-gaming-gigabyte-aorus-kd25f-va-fullhd-240hz', N'<p>- Loại m&agrave;n h&igrave;nh: M&agrave;n h&igrave;nh gaming</p>

<p>- Tỉ lệ: 16:9</p>

<p>- K&iacute;ch thước: 24.5 inch</p>

<p>- Tấm nền: TN</p>

<p>- Độ ph&acirc;n giải: Full HD (1920x1080)</p>

<p>- Tốc độ l&agrave;m mới: 240Hz</p>

<p>- Thời gian đ&aacute;p ứng: 0.5ms</p>

<p>- Cổng kết nối: HDMI 2.0 x2, Display port 1.2 x1</p>

<p>- C&ocirc;ng nghệ: Flicker-Free, Giảm &aacute;nh s&aacute;ng xanh</p>

<p>- Phụ kiện: C&aacute;p nguồn, C&aacute;p HDMI, C&aacute;p DP</p>
', N'/Data/images/product/man-hinh-gigabyte-aorus-kd25f-1-228x228.jpg', N'<Images><Images>/Data/images/product/man-hinh-gigabyte-aorus-kd25f-1-500x500.jpg</Images><Images>/Data/images/product/man-hinh-gigabyte-aorus-kd25f-3-500x500.jpg</Images><Images>/Data/images/product/man-hinh-gigabyte-aorus-kd25f-4-500x500.jpg</Images><Images>/Data/images/product/man-hinh-gigabyte-aorus-kd25f-2-500x500.jpg</Images><Images>/Data/images/product/man-hinh-gigabyte-aorus-kd25f-5-500x500.jpg</Images></Images>', CAST(10210000 AS Decimal(18, 0)), CAST(12150000 AS Decimal(18, 0)), NULL, NULL, 480, CAST(N'2020-12-18T02:33:24.900' AS DateTime), N'quang', NULL, NULL, 27, 1, 1028, 1, N'<p>M&agrave;n h&igrave;nh Gaming Gigabyte Aorus&nbsp;l&agrave; sản phẩm c&oacute; thiết kế chuẩn gamer c&ugrave;ng c&aacute;c th&ocirc;ng số tuyệt vời. Sản phẩm đang được b&aacute;n tại <a href="http://www.tncstore.vn">TNC Store</a></p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/màn Gigabyte/KD25F/man-hinh-gigabyte-aorus-kd25f-a.jpg" style="width:920px" /></p>
', 36, NULL, NULL, 16)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (4, N'Thiết Bị Stream Elgato Stream Deck Mini', NULL, N'thiet-bi-stream-elgato-stream-deck-mini', N'<p>- Wired USB Connection</p>

<p>- 6 Programmable LCD Keys</p>

<p>- Customizable Key Icons</p>

<p>- Ideal for Live Streaming</p>

<p>- Launch Media and Switch Scenes</p>

<p>- Adjust Audio</p>

<p>- Trigger Multiple Simultaneous Actions</p>

<p>- Turn Keys into Folders</p>

<p>- Drag-and-Drop Setup</p>

<p>- Dedicated Configuration Profiles</p>
', N'/Data/images/product/elgato-stream-deck-mini-1-228x228.jpg', N'<Images><Images>/Data/images/product/elgato-stream-deck-mini-1-500x500.jpg</Images><Images>/Data/images/product/elgato-stream-deck-mini-3-500x500.jpg</Images><Images>/Data/images/product/elgato-stream-deck-mini-4-500x500.jpg</Images><Images>/Data/images/product/elgato-stream-deck-mini-5-500x500.jpg</Images><Images>/Data/images/product/elgato-stream-deck-mini-2-500x500.jpg</Images></Images>', CAST(2590000 AS Decimal(18, 0)), CAST(2990000 AS Decimal(18, 0)), NULL, NULL, 256, CAST(N'2020-12-18T02:39:30.513' AS DateTime), N'quang', NULL, NULL, 44, 0, 1023, 1, N'<p>Elgato Stream Deck Mini l&agrave; một trợ thủ đắc lực cho c&ocirc;ng việc streaming chuy&ecirc;n nghiệp. Sản phẩm đang được b&aacute;n tại TNC Store</p>

<p><img src="https://www.tncstore.vn/image/catalog/Elgato/Stream deck mini/elgato-stream-deck-mini-a.jpg" style="width:800px" /></p>

<p>&nbsp;</p>
', 24, NULL, NULL, 13)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (5, N'Loa Logitech G560 RGB', NULL, N'loa-logitech-g560-rgb', N'<p>- C&ocirc;ng suất cực đại: 240W<br />
- Đ&egrave;n led RGB 16.8 triệu m&agrave;u c&oacute; thể đồng bộ<br />
- Hỗ trợ đa kết nối: USB, 3.5mm, Bluetooth 4.1<br />
- Độ nhạy tần số: 40Hz &ndash; 18KHz</p>
', N'/Data/images/product/loa-logitech-g560-rgb-1-228x228.png', N'<Images><Images>/Data/images/product/loa-logitech-g560-rgb-1-500x500.png</Images><Images>/Data/images/product/loa-logitech-g560-rgb-2-500x500.jpg</Images><Images>/Data/images/product/loa-logitech-g560-rgb-3-500x500.jpg</Images></Images>', CAST(3990000 AS Decimal(18, 0)), CAST(4099000 AS Decimal(18, 0)), NULL, NULL, 367, CAST(N'2020-12-18T02:31:30.253' AS DateTime), N'quang', NULL, NULL, 24, 0, 1040, 1, N'<p style="text-align:left">Loa Logitech G560 RGB l&agrave; d&ograve;ng loa cao cấp của Logitech , với thiết kế đặc biệt c&ugrave;ng chất &acirc;m cực kỳ tốt ph&ugrave; hợp cho những bạn trẻ cần 1 bộ loa để nghe nhạc v&agrave; giải tr&iacute;. Sản phẩm hiện đang được b&aacute;n tại <a href="http://tncstore.vn">TNC Store</a></p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/loa/Logitech/G560/loa-logitech-g560-rgb-a.jpg" style="width:666px" /></p>
', 12, NULL, NULL, 3)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (6, N'Card Màn Hình Asus DUAL RTX 3060 Ti O8G', NULL, N'card-man-hinh-asus-dual-rtx-3060-ti-o8g', N'<p>- Nh&acirc;n đồ họa Nvidia RTX 3060Ti</p>

<p>- Số nh&acirc;n Cuda: 4864</p>

<p>- Xung nhịp GPU tối đa:</p>

<p>- Bộ nhớ Vram: 8GB GDDR6</p>
', N'/Data/images/product/card-man-hinh-asus-dual-rtx-3060-ti-o8g-gaming-1-228x228.jpg', N'<Images><Images>/Data/images/product/card-man-hinh-asus-dual-rtx-3060-ti-o8g-gaming-1-500x500.jpg</Images><Images>/Data/images/product/card-man-hinh-asus-dual-rtx-3060-ti-o8g-gaming-2-500x500.jpg</Images><Images>/Data/images/product/card-man-hinh-asus-dual-rtx-3060-ti-o8g-gaming-3-500x500.jpg</Images><Images>/Data/images/product/card-man-hinh-asus-dual-rtx-3060-ti-o8g-gaming-4-500x500.jpg</Images><Images>/Data/images/product/card-man-hinh-asus-dual-rtx-3060-ti-o8g-gaming-5-500x500.jpg</Images></Images>', CAST(13890000 AS Decimal(18, 0)), NULL, NULL, NULL, 0, CAST(N'2020-12-18T02:55:29.553' AS DateTime), N'quang', CAST(N'2020-12-18T13:34:54.063' AS DateTime), N'quang', 47, 4, 1011, 1, N'<p>Card M&agrave;n H&igrave;nh Asus DUAL RTX 3060 Ti O8G l&agrave; d&ograve;ng card đồ họa tầm trung của Asus, sử dụng nh&acirc;n đồ họa Nvidia RTX 3060Ti. Đ&acirc;y l&agrave; card đồ họa ph&ugrave; hợp cho nhu cầu chơi game ở độ ph&acirc;n giải 2K. Sản phảm đang đucợ b&aacute;n tại <a href="http://tncstore.vn">TNC Store</a></p>

<p>&nbsp;</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/vga/asus/Dual 3060 Ti O8G/a.jpg" style="width:920px" /></p>
', 36, NULL, N'<table><tbody><tr><td colspan="2" class="group-name">Nhóm thuộc tính của VGA</td></tr> <tr><td class="att-name">
                                                                                                            Thương Hiệu                                                                                                    </td><td class="att-value"><p>ASUS</p></td></tr> <tr><td class="att-name">
                                                                                                            Dòng                                                                                                    </td><td class="att-value"><p>DUAL</p></td></tr> <tr><td class="att-name">
                                                                                                            Model                                                                                                    </td><td class="att-value"><p>DUAL RTX 3060 Ti-O8G<br></p></td></tr> <tr><td class="att-name"><a href="https://www.tncstore.vn/bat-mi-cac-thong-so-card-do-hoa.html#:~:text=1.%C2%A0PCIe" target="_blank">Chuẩn PCIe</a></td><td class="att-value"><p>PCI Express 4.0 x 16<br></p></td></tr> <tr><td class="att-name">
                                                                                                            Nhà Sản Xuất                                                                                                    </td><td class="att-value"><p>NVIDIA<br></p></td></tr> <tr><td class="att-name">
                                                                                                            Dòng GPU                                                                                                    </td><td class="att-value"><p>GeForce RTX™3060 Ti<br></p></td></tr> <tr><td class="att-name"><a href="https://www.tncstore.vn/bat-mi-cac-thong-so-card-do-hoa.html#:~:text=2.%20Vi%20x%E1%BB%AD%20l%C3%BD%20%C4%91%E1%BB%93%20h%E1%BB%8Da" target="_blank">GPU</a></td><td class="att-value"><p>DUAL RTX 3060 Ti-O8G<br></p></td></tr> <tr><td class="att-name"><a href="https://www.tncstore.vn/bat-mi-cac-thong-so-card-do-hoa.html#:~:text=Boost%20Clock%20(Xung%20nh%E1%BB%8Bp%20boost)" target="_blank">Xung Nhịp Boost</a></td><td class="att-value"><p>Gaming Mode - 1710 MHz (Boost Clock)<br></p></td></tr> <tr><td class="att-name"><a href="https://www.tncstore.vn/bat-mi-cac-thong-so-card-do-hoa.html#:~:text=4.%20Nh%C3%A2n%20CUDA%20(CUDA%20Cores)" target="_blank">Nhân CUDA</a></td><td class="att-value"><p>4864<br></p></td></tr> <tr><td class="att-name"><a href="https://www.tncstore.vn/bat-mi-cac-thong-so-card-do-hoa.html#:~:text=9.%20T%E1%BB%91c%20%C4%91%E1%BB%99%20b%E1%BB%99%20nh%E1%BB%9B" target="_blank">Tốc Độ Bộ Nhớ</a></td><td class="att-value"><p>14 Gbps<br></p></td></tr> <tr><td class="att-name"><a href="https://www.tncstore.vn/bat-mi-cac-thong-so-card-do-hoa.html#:~:text=6.%20K%C3%ADch%20th%C6%B0%E1%BB%9Bc%20b%E1%BB%99%20nh%E1%BB%9B" target="_blank">Dung Lượng Bộ Nhớ</a></td><td class="att-value"><p>8GB<br></p></td></tr> <tr><td class="att-name"><a href="https://www.tncstore.vn/bat-mi-cac-thong-so-card-do-hoa.html#:~:text=7.%20Giao%20di%E1%BB%87n%20b%E1%BB%99%20nh%E1%BB%9B%20" target="_blank">Giao Diện Bộ Nhớ</a></td><td class="att-value"><p>GDDR6<br></p></td></tr> <tr><td class="att-name"><a href="https://www.tncstore.vn/bat-mi-cac-thong-so-card-do-hoa.html#:~:text=8.%20Lo%E1%BA%A1i%20b%E1%BB%99%20nh%E1%BB%9B" target="_blank">Loại Bộ Nhớ</a></td><td class="att-value"><p>256-Bit<br></p></td></tr> <tr><td class="att-name"><a href="https://www.tncstore.vn/bat-mi-cac-thong-so-card-do-hoa.html#:~:text=10.%20Th%C6%B0%20vi%E1%BB%87n%20%C4%91%E1%BB%93%20h%E1%BB%8Da%20DirectX" target="_blank">Thư Viện Đồ Hoạ DirectX</a></td><td class="att-value"><p>12<br></p></td></tr> <tr><td class="att-name"><a href="https://www.tncstore.vn/bat-mi-cac-thong-so-card-do-hoa.html#:~:text=11.%C2%A0Th%C6%B0%20vi%E1%BB%87n%20%C4%91%E1%BB%93%20h%E1%BB%8Da%C2%A0OpenGL" target="_blank">Thư Viện Đồ Hoạ OpenGL</a></td><td class="att-value"><p>4.6<br></p></td></tr> <tr><td class="att-name"><a href="https://www.tncstore.vn/bat-mi-cac-thong-so-card-do-hoa.html#:~:text=12.%20C%E1%BB%95ng%20HDMI" target="_blank">HDMI</a></td><td class="att-value"><p>HDMI 2.1 x 2<br></p></td></tr> <tr><td class="att-name">
                                                                                                            Số Màn Hình Hỗ Trợ                                                                                                    </td><td class="att-value"><p>5</p></td></tr> <tr><td class="att-name"><a href="https://www.tncstore.vn/bat-mi-cac-thong-so-card-do-hoa.html#:~:text=13.%20C%E1%BB%95ng%20DisplayPort%C2%A0" target="_blank">DisplayPort </a></td><td class="att-value"><p>DisplayPort 1.4a x 3<br></p></td></tr> <tr><td class="att-name">
                                                                                                            Độ Phân Giải Tối Đa                                                                                                    </td><td class="att-value"><p>7680x4320<br></p></td></tr> <tr><td class="att-name">
                                                                                                            Hỗ Trợ Công Nghệ Thực Tế Ảo                                                                                                    </td><td class="att-value"><p>Có</p></td></tr> <tr><td class="att-name">
                                                                                                            Hệ Thống Làm Mát                                                                                                    </td><td class="att-value"><p>2 Fan</p></td></tr> <tr><td class="att-name"><a href="https://www.tncstore.vn/bat-mi-cac-thong-so-card-do-hoa.html#:~:text=15.%20C%C3%B4ng%20su%E1%BA%A5t%20thi%E1%BA%BFt%20k%E1%BA%BF%20nhi%E1%BB%87t%20(TDP)" target="_blank">Công Suất Thiết Kế Nhiệt</a></td><td class="att-value"><p><br></p></td></tr> <tr><td class="att-name">
                                                                                                            Nguồn Điện Khuyến Nghị                                                                                                    </td><td class="att-value"><p>750W<br></p></td></tr> <tr><td class="att-name">
                                                                                                            Đầu Nối Nguồn                                                                                                    </td><td class="att-value"><p>8-pin<br></p></td></tr> <tr><td class="att-name">
                                                                                                            Chiều Dài Tối Đa                                                                                                    </td><td class="att-value"><p>269 mm<br></p></td></tr> <tr><td class="att-name">
                                                                                                            Kích Thước                                                                                                    </td><td class="att-value"><p>26.9 x 13.6 x 5.2 Centimeter<br></p></td></tr></tbody></table>', 0)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (7, N'Ổ cứng SSD Silicon Power A60 M.2 NVME 256GB', NULL, N'o-cung-ssd-silicon-power-a60-m-2-nvme-256gb', N'<p>- Dung lượng: 256GB</p>

<p>- Chuẩn:SSD M.2</p>

<p>- Tốc độ đọc tối đa đến 2,200 MB/s</p>

<p>- Tốc độ viết tối đa đến 1,600 MB/s</p>
', N'/Data/images/product/o-cung-ssd-silicon-power-a60-m2-nvme-256gb-1-228x228.jpg', N'<Images><Images>/Data/images/product/o-cung-ssd-silicon-power-a60-m2-nvme-256gb-1-500x500.jpg</Images><Images>/Data/images/product/o-cung-ssd-silicon-power-a60-m2-nvme-256gb-2-500x500.png</Images></Images>', CAST(1190000 AS Decimal(18, 0)), NULL, NULL, NULL, 1000, CAST(N'2020-12-18T02:40:29.733' AS DateTime), N'quang', NULL, NULL, 50, 10, 1054, 1, N'<p>Ổ cứng SSD Silicon Power A60 M.2 NVME 256GB&nbsp; l&agrave; d&ograve;ng SSD gi&aacute; rẻ của silicon nhưng vẫn đem lại sự ổn định c&ugrave;ng tốc độ đọc ghi kh&aacute; cao. Sản phẩm đang được b&aacute;n tại TNC Store.</p>

<p><img src="https://www.tncstore.vn/image/catalog/ssd/Silicon Power/A60/o-cung-ssd-silicon-power-a60-m2-nvme-256gb-a.jpg" style="width:920px" /></p>
', 90, NULL, NULL, 0)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (8, N'Bàn phím Cơ Razer Pokemon Pikachu Limited', NULL, N'ban-phim-co-razer-pokemon-pikachu-limited', N'<p>- Bàn phím Razer Pokemon Pikachu</p>

<p>- Model : Razer Ornata Expert</p>

<p>- Switch : Giả cơ</p>

<p>- Đ&egrave;n led : V&agrave;ng</p>

<p>- Đi k&egrave;m k&ecirc; tay in hoạ tiết Pikachu cực đẹp</p>
', N'/Data/images/product/ban-phim-razer-pokemon-pikachu-limited-1-228x228.jpg', N'<Images><Images>/Data/images/product/ban-phim-razer-pokemon-pikachu-limited-1-500x500.jpg</Images><Images>/Data/images/product/ban-phim-razer-pokemon-pikachu-limited-2-500x500.jpg</Images><Images>/Data/images/product/ban-phim-razer-pokemon-pikachu-limited-4-500x500.jpg</Images><Images>/Data/images/product/ban-phim-razer-pokemon-pikachu-limited-3-500x500.jpg</Images><Images>/Data/images/product/ban-phim-razer-pokemon-pikachu-limited-5-500x500.jpg</Images></Images>', CAST(2899000 AS Decimal(18, 0)), CAST(3189000 AS Decimal(18, 0)), NULL, NULL, 0, CAST(N'2020-12-18T02:41:07.777' AS DateTime), N'quang', CAST(N'2020-12-22T19:49:03.727' AS DateTime), N'quang', 11, 0, 1050, 1, N'<p>Bàn phím Cơ Razer Pokemon Pikachu Limited l&agrave; kết quả của sự hợp t&aacute;c giữa Razer v&agrave; bộ phim hoạt h&igrave;nh nổi tiếng Pok&eacute;mon đ&atilde; xuy&ecirc;n suốt tuổi thơ của mỗi ch&uacute;ng ta.&nbsp;Sản phẩm đang được ph&acirc;n phối ch&iacute;nh h&atilde;ng tại <a href="http://tncstore.vn">TNC Store</a></p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/razer/Phím Pikachu /ban-phim-razer-pokemon-pikachu-limited-a.jpg" style="width:920px" /></p>
', 24, NULL, NULL, 9)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (9, N'Bàn Phím AKKO 3068 World Tour Tokyo - Orange Switch', NULL, N'ban-phim-akko-3068-world-tour-tokyo-orange-switch', N'<p>- Dạng LED: Kh&ocirc;ng Led</p>

<p>- Dạng b&agrave;n ph&iacute;m: Ph&iacute;m cơ</p>

<p>- Loại Switch: Akko Orange Switch</p>

<p>- K&iacute;ch thuớc ph&iacute;m: 68 Ph&iacute;m</p>

<p>- K&ecirc; Tay: Kh&ocirc;ng</p>
', N'/Data/images/product/ban-phim-co-akko-3068-world-tour-tokyo-228x228.jpg', N'<Images><Images>/Data/images/product/ban-phim-co-akko-3068-world-tour-tokyo-500x500.jpg</Images><Images>/Data/images/product/ban-phim-co-akko-3068-world-tour-tokyo-3-500x500.jpg</Images><Images>/Data/images/product/ban-phim-co-akko-3068-world-tour-tokyo-2-500x500.jpg</Images><Images>/Data/images/product/ban-phim-co-akko-3068-world-tour-tokyo-1-500x500.jpg</Images></Images>', CAST(1199000 AS Decimal(18, 0)), NULL, NULL, NULL, 1253, CAST(N'2020-12-18T02:48:50.337' AS DateTime), N'quang', NULL, NULL, 11, 9, 1005, 1, N'<p>B&agrave;n Ph&iacute;m AKKO 3068 World Tour Tokyo l&agrave; ph&iacute;m tiếp theo rất đ&aacute;ng mong chờ của d&ograve;ng AKKO Tokyo với keycap đặc trưng trước đ&oacute;. Sản phẩm đang được b&aacute;n tại TNC Store</p>

<p><img src="https://www.tncstore.vn/image/catalog/bàn phím cơ/AKKO/3068 Tokyo/ban-phim-co-akko-3068-world-tour-tokyo-3.jpg" style="width:510px" /></p>
', 12, NULL, NULL, 0)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (10, N'Bàn phím cơ Bluetooth Akko 3084 Silent - Pink Switch Led White', NULL, N'ban-phim-co-bluetooth-akko-3084-silent-pink-switch-led-white', N'<p>- Dạng LED: Trắng</p>

<p>- Dạng b&agrave;n ph&iacute;m: Ph&iacute;m cơ Bluetooth</p>

<p>- Loại Switch: Gateron Orange Switch</p>

<p>- K&iacute;ch thuớc ph&iacute;m: 84 Ph&iacute;m</p>

<p>- K&ecirc; tay: Kh&ocirc;ng</p>

<p>- Pin: 1800 mah</p>

<p>- HĐH tương th&iacute;ch:Windows / MacOS / Linux / IOS / ANDROID</p>
', N'/Data/images/product/ban-phim-co-akko-3084-silent%E2%80%93bluetooth-1-228x228.jpg', N'<Images><Images>/Data/images/product/ban-phim-co-akko-3084-silent%E2%80%93bluetooth-1-500x500.jpg</Images><Images>/Data/images/product/ban-phim-co-akko-3084-silent%E2%80%93bluetooth-2-500x500.jpg</Images><Images>/Data/images/product/ban-phim-co-akko-3084-silent%E2%80%93bluetooth-3-500x500.jpg</Images></Images>', CAST(1799000 AS Decimal(18, 0)), NULL, NULL, NULL, 1200, CAST(N'2020-12-18T02:52:39.790' AS DateTime), N'quang', NULL, NULL, 11, 1, 1005, 1, N'<p style="text-align:center">B&agrave;n ph&iacute;m cơ 3084 Silent - Bluetooth l&agrave; d&ograve;ng ph&iacute;m cơ bluetooth đến từ AKKO với độ ho&agrave;n thiện c&ugrave;ng khả năng kết nối 4 thiết bị v&agrave; dung lượng pin cho thời lượng sử dụng đến 200 giờ hoạt động. Hiện sản phẩm đang được b&aacute;n tại <a href="http://tncstore.vn">TNC Store</a>.</p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/bàn phím cơ/AKKO/3084 silent BT/ban-phim-co-akko-3084-silent–bluetooth.jpg" style="width:856px" /></p>
', 12, NULL, NULL, 0)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (11, N'Bàn phím cơ Akko 3108 v2 Honkai Impact 3rd – Yae Sakura - Pink switch', NULL, N'ban-phim-co-akko-3108-v2-honkai-impact-3rd-yae-sakura-pink-switch', N'<p>- Dạng LED: Kh&ocirc;ng Led</p>

<p>- Dạng b&agrave;n ph&iacute;m: Ph&iacute;m cơ</p>

<p>- Loại Switch: Akko Pink Switch</p>

<p>- K&iacute;ch thuớc ph&iacute;m: Full Size</p>

<p>- K&ecirc; tay: Kh&ocirc;ng</p>
', N'/Data/images/product/ban-phim-co-akko-3108-honkai-impact-3rd-yae-sakura-pink-switch-1-228x228.jpg', N'<Images><Images>/Data/images/product/ban-phim-co-akko-3108-honkai-impact-3rd-yae-sakura-blue-switch-3-500x500.jpg</Images><Images>/Data/images/product/ban-phim-co-akko-3108-honkai-impact-3rd-yae-sakura-blue-switch-4-500x500.jpg</Images><Images>/Data/images/product/ban-phim-co-akko-3108-honkai-impact-3rd-yae-sakura-pink-switch-1-500x500.jpg</Images><Images>/Data/images/product/ban-phim-co-akko-3108-honkai-impact-3rd-yae-sakura-blue-switch-2-500x500.jpg</Images><Images>/Data/images/product/ban-phim-co-akko-3108-honkai-impact-3rd-yae-sakura-blue-switch-5-500x500.jpg</Images></Images>', CAST(2099000 AS Decimal(18, 0)), NULL, NULL, NULL, 1500, CAST(N'2020-12-18T02:52:19.427' AS DateTime), N'quang', NULL, NULL, 11, 0, 1005, 1, N'<h2>&nbsp;</h2>

<p>B&agrave;n ph&iacute;m cơ Akko 3108 v2 Honkai Impact 3rd &ndash; Yae Sakura l&agrave;&nbsp;d&ograve;ng ph&iacute;m cơ với keycap được phối m&agrave;u v&ocirc; c&ugrave;ng t&igrave;nh tế. Sản phẩm đang được b&aacute;n tại&nbsp;<a href="http://tncstore.vn/" style="color: rgb(35, 161, 209);">TNC Store</a></p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/b%C3%A0n%20ph%C3%ADm%20c%C6%A1/AKKO/3108S%20Black/ban-phim-akko-3108s-black-led-white-cherry-mx-blue-a.jpg" style="max-width:100%; width:800px" /></p>
', 12, NULL, NULL, 0)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (12, N'Bàn Phím Corsair K95 RGB Platinum XT Cherry MX Speed', NULL, N'ban-phim-corsair-k95-rgb-platinum-xt-cherry-mx-speed', N'<p>- Dạng LED:&nbsp; RGB&nbsp;</p>

<p>- Dạng b&agrave;n ph&iacute;m: B&agrave;n ph&iacute;m cơ</p>

<p>- Loại Switch: Cherry speed</p>

<p>- K&iacute;ch thước ph&iacute;m: Fullsize</p>

<p>- K&ecirc; tay: C&oacute;&nbsp;</p>
', N'/Data/images/product/ban-phim-co-corsair-k95-rgb-platinum-xt-1-228x228.jpg', N'<Images><Images>/Data/images/product/ban-phim-co-corsair-k95-rgb-platinum-xt-1-500x500%20-%20Copy.jpg</Images><Images>/Data/images/product/ban-phim-co-corsair-k95-rgb-platinum-xt-2-500x500.jpg</Images><Images>/Data/images/product/ban-phim-co-corsair-k95-rgb-platinum-xt-3-500x500.jpg</Images><Images>/Data/images/product/ban-phim-co-corsair-k95-rgb-platinum-xt-4-500x500.jpg</Images></Images>', CAST(4299000 AS Decimal(18, 0)), NULL, NULL, NULL, 1623, CAST(N'2020-12-18T02:51:59.157' AS DateTime), N'quang', NULL, NULL, 11, 0, 1014, 1, N'<p>B&agrave;n Ph&iacute;m Corsair K95 RGB Platinum XT Cherry MX Speed l&agrave; d&ograve;ng ph&iacute;m cơ cao cấp của Corsair hướng tới ph&acirc;n kh&uacute;c kh&aacute;ch h&agrave;ng cao cấp cần sự ho&agrave;n hảo trong cả thiết kế v&agrave; trong qu&aacute; tr&igrave;nh sử dụng. Sản phẩm hiện đang được b&aacute;n tại&nbsp;<a href="http://tncstore.vn/" style="background-color: rgb(255, 255, 255);">TNC Store&nbsp;</a></p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/bàn phím cơ/Corsair/K95 Platinum XT/ban-phim-co-corsair-k95-rgb-platinum-xt.png" style="width:665px" /></p>
', 24, N'//www.youtube.com/embed/9pCi9Oag8SQ', NULL, 0)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (13, N'Bàn phím Cơ Rapoo V500SE Rainbow Blue Switch', NULL, N'ban-phim-co-rapoo-v500se-rainbow-blue-switch', N'<p>- Brand: Rapoo</p>

<p>- Model: V500SE&nbsp;</p>

<p>- Loại&nbsp;switch: Rapoo Switch</p>

<p>- Chiều d&agrave;i c&aacute;p: 1.8m</p>

<p>- Số ph&iacute;m: 87 key</p>

<p>- Keyboard Color: Black</p>

<p>- Trọng lượng: 863 g</p>

<p>- Độ bền :50 triệu lần ấn</p>

<p>- Lực nhấn: 50 + / &ndash; 5g</p>
', N'/Data/images/product/ban-phim-co-rapoo-v500se-rainbow-backlit-1-228x228.jpg', N'<Images><Images>/Data/images/product/ban-phim-co-rapoo-v500se-rainbow-backlit-1-500x500.jpg</Images><Images>/Data/images/product/ban-phim-co-rapoo-v500se-rainbow-backlit-2-500x500.jpg</Images><Images>/Data/images/product/ban-phim-co-rapoo-v500se-rainbow-backlit-4-500x500.jpg</Images><Images>/Data/images/product/ban-phim-co-rapoo-v500se-rainbow-backlit-3-500x500.jpg</Images><Images>/Data/images/product/ban-phim-co-rapoo-v500se-rainbow-backlit-5-500x500.jpg</Images></Images>', CAST(690000 AS Decimal(18, 0)), CAST(1290000 AS Decimal(18, 0)), NULL, NULL, 1200, CAST(N'2020-12-18T02:54:32.397' AS DateTime), N'quang', NULL, NULL, 11, 8, 1049, 1, N'<p style="text-align:left">B&agrave;n ph&iacute;m Cơ Rapoo V500SE Rainbow Blue Switch l&agrave; b&agrave;n ph&iacute;m cơ mới đến từ thương hiệu Rapoo nhắm v&agrave;o ph&acirc;n kh&uacute;c gi&aacute; rẻ,. Với chất lượng build ngon v&agrave; cảm gi&aacute;c g&otilde; tốt, Rapoo V500SE hứa hẹn sẽ l&agrave;m mưa l&agrave;m gi&oacute; ở ph&acirc;n kh&uacute;c b&agrave;n ph&iacute;m cơ gi&aacute; rẻ. Sản phẩm đang được b&aacute;n tại <a href="http://tncstore.vn">TNC Store</a></p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/bàn phím cơ/Rapoo/V500SE/ban-phim-co-rapoo-v500se-rainbow-backlit-2.jpg" style="width:779px" /><img src="https://www.tncstore.vn/image/catalog/bàn phím cơ/Rapoo/V500SE/ban-phim-co-rapoo-v500se-rainbow-backlit-1.jpg" style="width:779px" /></p>

<p style="text-align:center">&nbsp;</p>

<p>&nbsp;</p>
', 24, NULL, NULL, 47)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (14, N'Bàn phím cơ Bluetooth Keychron K2 Aluminum RGB - Blue Switch (C2)', NULL, N'ban-phim-co-bluetooth-keychron-k2-aluminum-rgb-blue-switch-c2', N'<p>- M&agrave;u: Đen</p>

<p>- Số ph&iacute;m: 84 ph&iacute;m</p>

<p>- Switches: Gateron Blue Switch</p>

<p>- Vật liệu th&acirc;n: Nh&ocirc;m cao cấp&nbsp;</p>

<p>- Vật liệu ph&iacute;m: ABS&nbsp;</p>

<p>- Hệ ĐH: Win/Mac/iOS/Andriod</p>

<p>- Pin: 4000mAh</p>

<p>- Kết nối: Bluetooth hoặc Type &ndash; C</p>

<p>- Bluetooth ver 3.0</p>
', N'/Data/images/product/ban-phim-co-bluetooth-keychron-k2-metal-rgb-brown-switch-2-228x228.jpg', N'<Images><Images>/Data/images/product/ban-phim-co-bluetooth-keychron-k2-metal-rgb-brown-switch-2-500x500%20(1).jpg</Images><Images>/Data/images/product/ban-phim-co-bluetooth-keychron-k2-metal-rgb-brown-switch-2-500x500.jpg</Images></Images>', CAST(1880000 AS Decimal(18, 0)), CAST(2090000 AS Decimal(18, 0)), NULL, NULL, 823, CAST(N'2020-12-18T02:53:04.303' AS DateTime), N'quang', NULL, NULL, 11, 0, 1033, 1, N'<p>B&agrave;n ph&iacute;m cơ Bluetooth Keychron K2 Aluminum RGB - Blue Switch (C2) sử dụng bluetooth ver.3 c&oacute; thể kết n&oacute;i với MacOS, Window, iOS. Sản phẩm đang được b&aacute;n tại&nbsp;<a href="http://tncstore.vn/" style="color: rgb(35, 161, 209);">TNC Store&nbsp;</a></p>

<p><img src="https://www.tncstore.vn/image/catalog/bàn phím cơ/Keychorn/K2 RGB Metal BrownSw/ban-phim-co-bluetooth-keychron-k2-metal-rgb-brown-switch-a.jpg" style="width:800px" /></p>

<p><img src="https://www.tncstore.vn/image/catalog/bàn phím cơ/Keychorn/K2 RGB Metal BrownSw/ban-phim-co-bluetooth-keychron-k2-metal-rgb-brown-switch-b.jpg" style="width:803px" /></p>
', 12, N'//www.youtube.com/embed/Q5pVC0zNI_k', NULL, 10)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (15, N'Giá đỡ VGA Cooler Master Universal VGA Holder', NULL, N'gia-do-vga-cooler-master-universal-vga-holder', N'<p>- H&atilde;ng sản xuất: Cooler Master</p>

<p>- Vật liệu: Th&eacute;p, ABS</p>

<p>- M&agrave;u: Đen</p>

<p>- Size:&nbsp;154 x 32 x 144mm</p>

<p>- Tương th&iacute;ch: Tất cả loại VGA</p>
', N'/Data/images/product/gia-do-vga-cooler-master-universal-vga-holder-a-228x228.jpg', N'<Images><Images>/Data/images/product/gia-do-vga-cooler-master-universal-vga-holder-a-500x500.jpg</Images><Images>/Data/images/product/gia-do-vga-cooler-master-universal-vga-holder-b-500x500.jpg</Images><Images>/Data/images/product/gia-do-vga-cooler-master-universal-vga-holder-c-500x500.jpg</Images><Images>/Data/images/product/gia-do-vga-cooler-master-universal-vga-holder-d-500x500.jpg</Images></Images>', CAST(330000 AS Decimal(18, 0)), NULL, NULL, NULL, 2330, CAST(N'2020-12-18T02:55:51.417' AS DateTime), N'quang', NULL, NULL, 21, 0, 1013, 1, N'<p>Gi&aacute; đỡ VGA Cooler Master Universal VGA Holder l&agrave; sản phẩm mới của Cooler Master, hỗ trợ khi sử dụng 2 VGA c&ugrave;ng l&uacute;c. Sản phẩm hiện đang b&aacute;n tại <a href="https://tncstore.vn">TNC Store</a></p>

<p><img src="https://www.tncstore.vn/image/catalog/phukien/Gia do VGA/Cooler Master/Universal VGA Holder/gia-do-vga-cooler-master-universal-vga-holder-1.jpg" style="width:800px" /></p>
', NULL, NULL, NULL, 0)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (16, N'Giá đỡ VGA Cooler Master VGA Holder Vertical', NULL, N'gia-do-vga-cooler-master-vga-holder-vertical', N'<p>- H&atilde;ng sản xuất: Cooler Master</p>

<p>- Vật liệu: Th&eacute;p&nbsp;SGCC&nbsp;</p>

<p>- K&iacute;ch thước:&nbsp;145(W) x 120(H) x 170(D) mm</p>

<p>- Trọng lượng: 0,23kg</p>

<p>- M&agrave;u: Đen x&aacute;m kim loại</p>
', N'/Data/images/product/gia-do-vga-cooler-master-vga-holder-vertical-a-228x228.jpg', N'<Images><Images>/Data/images/product/gia-do-vga-cooler-master-vga-holder-vertical-a-500x500.jpg</Images><Images>/Data/images/product/gia-do-vga-cooler-master-vga-holder-vertical-c-500x500.jpg</Images><Images>/Data/images/product/gia-do-vga-cooler-master-vga-holder-vertical-f-500x500.jpg</Images><Images>/Data/images/product/gia-do-vga-cooler-master-vga-holder-vertical-e-500x500.jpg</Images><Images>/Data/images/product/gia-do-vga-cooler-master-vga-holder-vertical-b-500x500.jpg</Images><Images>/Data/images/product/gia-do-vga-cooler-master-vga-holder-vertical-d-500x500.jpg</Images></Images>', CAST(1169000 AS Decimal(18, 0)), NULL, NULL, NULL, 1230, CAST(N'2020-12-18T02:56:14.113' AS DateTime), N'quang', NULL, NULL, 21, 1, 1013, 1, N'<p>Gi&aacute; đỡ VGA Cooler Master VGA Holder Vertical&nbsp; l&agrave; d&ograve;ng gi&aacute; đỡ VGA cao cấp của h&atilde;ng Cooler Master, hỗ trợ người d&ugrave;ng khi muốn dựng đứng VGA. Sản phẩm hiện đang được b&aacute;n tại <a href="https://tncstore.vn">TNC Store</a></p>

<p><img src="https://www.tncstore.vn/image/catalog/phukien/Gia do VGA/Cooler Master/VGA Holder Vertical/gia-do-vga-cooler-master-vga-holder-vertical-1.jpg" style="width:800px" /><img src="https://www.tncstore.vn/image/catalog/phukien/Gia do VGA/Cooler Master/VGA Holder Vertical/gia-do-vga-cooler-master-vga-holder-vertical-2.jpg" style="width:800px" /></p>
', NULL, NULL, NULL, 0)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (17, N'Giá Đỡ VGA DeepCool GH-01 A-RGB', NULL, N'gia-do-vga-deepcool-gh-01-a-rgb', N'<p>- Thiết kế th&ocirc;ng minh</p>

<p>- Led RGB</p>

<p>- Trang tr&iacute; case v&agrave; gi&aacute; đỡ VGA</p>
', N'/Data/images/product/gia-do-vga-deepcool-gh01-a-rgb-1-228x228.jpg', N'<Images><Images>/Data/images/product/gia-do-vga-deepcool-gh01-a-rgb-1-500x500.jpg</Images><Images>/Data/images/product/gia-do-vga-deepcool-gh01-a-rgb-2-500x500.jpg</Images><Images>/Data/images/product/gia-do-vga-deepcool-gh01-a-rgb-3-500x500.jpg</Images><Images>/Data/images/product/gia-do-vga-deepcool-gh01-a-rgb-4-500x500.jpg</Images></Images>', CAST(425000 AS Decimal(18, 0)), CAST(499000 AS Decimal(18, 0)), NULL, NULL, 1230, CAST(N'2020-12-18T02:56:32.287' AS DateTime), N'quang', NULL, NULL, 21, 3, 1018, 1, N'<p>Gi&aacute; Đỡ VGA DeepCool GH-01 A-RGB l&agrave; d&ograve;ng sản phẩm thiết kế ri&ecirc;ng cho những người d&ugrave;ng d&ograve;ng main Z390. Sản phẩm đang được b&aacute;n tại <a href="http://tncstore.vn">TNC Store</a></p>

<p><img src="https://www.tncstore.vn/image/catalog/Giá đỡ VGA/Deepcool GH-01/gia-do-vga-deepcool-gh01-a-rgb.jpg" style="width:1854px" /></p>
', NULL, NULL, NULL, 15)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (18, N'Bộ Chuột Pad Razer x Pikachu Limited Edition Mouse + Mat Bundle', NULL, N'bo-chuot-pad-razer-x-pikachu-limited-edition-mouse-mat-bundle', N'<p>- Chuột Razer DeathAdder Essential Pikachu :</p>

<p>- Độ ph&acirc;n giải : 6400 DPI</p>

<p>&nbsp;</p>

<p>- IPS : 220</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>- Click chuột với độ bền 10 triệu lần nhấn</p>

<p>&nbsp;</p>

<p>- Led v&agrave;ng</p>

<p>- Mousepad Razer Goliathus Pikachu :</p>

<p>&nbsp;</p>

<p>- K&iacute;ch thước : 355mm x 254mm x 3mm</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>- Bề mặt : Vải</p>

<p>&nbsp;</p>
', N'/Data/images/product/bo-chuot-pad-razer-pikachu-limited-edition-mouse-mat-bundle-1-228x228.jpg', N'<Images><Images>/Data/images/product/bo-chuot-pad-razer-pikachu-limited-edition-mouse-mat-bundle-1-500x500.jpg</Images><Images>/Data/images/product/bo-chuot-pad-razer-pikachu-limited-edition-mouse-mat-bundle-2-500x500.jpg</Images></Images>', CAST(1589000 AS Decimal(18, 0)), NULL, NULL, NULL, 1220, CAST(N'2020-12-18T02:55:09.990' AS DateTime), N'quang', NULL, NULL, 10, 1, 1050, 1, N'<p>Bộ Chuột Pad Razer x Pikachu Limited Edition Mouse + Mat Bundle được trang bị cảm biến quang học 6.400 DPI cho độ ch&iacute;nh x&aacute;c đ&aacute;ng kinh ngạc, h&igrave;nh d&aacute;ng c&ocirc;ng th&aacute;i học của chuột mang lại cảm gi&aacute;c vừa vặn thoải m&aacute;i cho b&agrave;n tay của bạn v&agrave; c&oacute; biểu tượng đ&egrave;n nền đu&ocirc;i Pikachu ngộ nghĩnh v&agrave; độc đ&aacute;o. Sản phẩm đang đucợ b&aacute;n tại <a href="http://tncstore.vn">TNC Store</a></p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/razer/Phím Pikachu /ban-phim-razer-pokemon-pikachu-limited-a.jpg" style="width:779px" /></p>
', NULL, NULL, NULL, 0)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (19, N'Bàn di chuột PADEx Shortcut Key', NULL, N'ban-di-chuot-padex-shortcut-key', N'<p>- K&iacute;ch thước: 90 x 40 x 3 mm</p>

<p>-&nbsp; Tổ hợp ph&iacute;m tắt d&agrave;nh cho d&acirc;n văn ph&ograve;ng</p>

<p>-&nbsp; Tổng hợp c&aacute;c ph&iacute;m tắt PS, AI,...&nbsp;</p>
', N'/Data/images/product/ban-di-chuot-padex-shortcut-key-2-228x228.jpg', N'<Images><Images>/Data/images/product/ban-di-chuot-padex-shortcut-key-2-500x500.jpg</Images></Images>', CAST(199000 AS Decimal(18, 0)), NULL, NULL, NULL, 300, CAST(N'2020-12-18T02:46:09.737' AS DateTime), N'quang', NULL, NULL, 10, 0, 1047, 1, N'<p>B&agrave;n di chuột PADEx Shortcut Key với thiết kế d&agrave;nh cho d&acirc;n văn ph&ograve;ng, thiết kế với c&aacute;c ph&iacute;m tắt khi sử dụng Office, PS, AI,.... Sản phẩm đang được b&aacute;n tại <a href="http://tncstore.vn">TNC Store</a></p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/bàn di/Padex/ban-di-chuot-padex-shortcut-key-2.jpg" style="width:776px" /></p>
', NULL, NULL, NULL, 0)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (20, N'Bàn di chuột AKKO Dragon Ball Super – Battle of Gods', NULL, N'ban-di-chuot-akko-dragon-ball-super-battle-of-gods', N'<p>- K&iacute;ch thước: 900*300*4mm</p>

<p>- Bề mặt: Control</p>

<p>- Họa tiết Dragon Ball độc đ&aacute;o</p>
', N'/Data/images/product/ban-di-chuot-akko-dragon-ball-super-batte-of-gods-228x228.jpg', N'<Images><Images>/Data/images/product/ban-di-chuot-akko-dragon-ball-super-batte-of-gods-1-500x500.jpg</Images><Images>/Data/images/product/ban-di-chuot-akko-dragon-ball-super-batte-of-gods-3-500x500.jpg</Images><Images>/Data/images/product/ban-di-chuot-akko-dragon-ball-super-batte-of-gods-500x500.jpg</Images><Images>/Data/images/product/ban-di-chuot-akko-dragon-ball-super-batte-of-gods-2-500x500.jpg</Images></Images>', CAST(399000 AS Decimal(18, 0)), NULL, NULL, NULL, 389, CAST(N'2020-12-18T02:43:30.990' AS DateTime), N'quang', NULL, NULL, 10, 0, 1005, 1, NULL, 12, NULL, NULL, 0)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (21, N'Bàn di chuột DAREU ESP101 QUEEN (350 x 300 x 5mm)', NULL, N'ban-di-chuot-dareu-esp101-queen-350-x-300-x-5mm', N'<p>- K&iacute;ch thước 350 x 300 x 5mm</p>

<p>- C&oacute; bo viền chống b&ocirc;ng tr&oacute;c</p>

<p>- M&agrave;u sắc: Hồng phấn</p>

<p>- Ph&ugrave; hợp cho nhiều loại chuột m&aacute;y t&iacute;nh như chuột quang, chuột bi v&agrave; hầu hết c&aacute;c loại chuột laser th&ocirc;ng dụng.</p>
', N'/Data/images/product/ban-di-chuot-dareu-esp108-queen-1-228x228.jpg', N'<Images><Images>/Data/images/product/ban-di-chuot-dareu-esp108-queen-1-500x500.jpg</Images></Images>', CAST(99000 AS Decimal(18, 0)), NULL, NULL, NULL, 389, CAST(N'2020-12-18T02:44:37.537' AS DateTime), N'quang', NULL, NULL, 10, 0, 1017, 1, N'<p>B&agrave;n di chuột DAREU ESP101 QUEEN&nbsp;c&oacute; thiết kế cao cấp, mang một m&agrave;u cam rất ph&ugrave; hợp cho những bạn nữ. H&atilde;y trang bị một miếng l&oacute;t chuột m&agrave;u hồng cho bộ sưu tập của m&igrave;nh n&agrave;o. Sản phẩm đang được b&aacute;n tại <a href="http://tncstore.vn">TNC Store</a></p>

<p><img src="https://www.tncstore.vn/image/catalog/bàn di/Dareu/ESP108 QUEEN/ban-di-chuot-dareu-esp108-queen-1.jpg" style="width:800px" /></p>
', NULL, NULL, NULL, 0)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (22, N'Bàn di chuột DAREU ESP108 QUEEN (450 x 400 x 5mm)', NULL, N'ban-di-chuot-dareu-esp108-queen-450-x-400-x-5mm', N'<p>- K&iacute;ch thước 450 x 400 x 5mm</p>

<p>- C&oacute; bo viền chống b&ocirc;ng tr&oacute;c</p>

<p>- M&agrave;u sắc: Hồng phấn</p>

<p>- Ph&ugrave; hợp cho nhiều loại chuột m&aacute;y t&iacute;nh như chuột quang, chuột bi v&agrave; hầu hết c&aacute;c loại chuột laser th&ocirc;ng dụng.</p>
', N'/Data/images/product/ban-di-chuot-dareu-esp108-queen-1-228x228%20(1).jpg', N'<Images><Images>/Data/images/product/ban-di-chuot-dareu-esp108-queen-1-500x500.jpg</Images><Images>/Data/images/product/ban-di-chuot-dareu-esp108-queen-4-500x500.jpg</Images><Images>/Data/images/product/ban-di-chuot-dareu-esp108-queen-2-500x500.jpg</Images><Images>/Data/images/product/ban-di-chuot-dareu-esp108-queen-3-500x500.jpg</Images></Images>', CAST(249000 AS Decimal(18, 0)), NULL, NULL, NULL, 249, CAST(N'2020-12-18T02:45:53.843' AS DateTime), N'quang', NULL, NULL, 10, 0, 1017, 1, N'<p>B&agrave;n di chuột DAREU ESP108 QUEEN&nbsp;c&oacute; thiết kế cao cấp, mang một m&agrave;u cam rất ph&ugrave; hợp cho những bạn nữ. H&atilde;y trang bị một miếng l&oacute;t chuột m&agrave;u cam cho bộ sưu tập của m&igrave;nh n&agrave;o. Sản phẩm đang được b&aacute;n tại <a href="http://tncstore.vn">TNC Store</a></p>

<p><img src="https://www.tncstore.vn/image/catalog/bàn di/Dareu/ESP108 QUEEN/ban-di-chuot-dareu-esp108-queen-1.jpg" style="width:800px" /></p>

<p><img src="https://www.tncstore.vn/image/catalog/bàn di/Dareu/ESP108 QUEEN/ban-di-chuot-dareu-esp108-queen-2.jpg" style="width:800px" /></p>
', NULL, NULL, NULL, 0)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (23, N'Bàn di chuột DAREU ESP108 CORAL (450 x 400 x 5mm)    ', NULL, N'ban-di-chuot-dareu-esp108-coral-450-x-400-x-5mm', N'<p>- K&iacute;ch thước 450 x 400 x 5mm</p>

<p>- C&oacute; bo viền chống b&ocirc;ng tr&oacute;c</p>

<p>- M&agrave;u sắc đỏ cam</p>

<p>- Ph&ugrave; hợp cho nhiều loại chuột m&aacute;y t&iacute;nh như chuột quang, chuột bi v&agrave; hầu hết c&aacute;c loại chuột laser th&ocirc;ng dụng.</p>
', N'/Data/images/product/ban-di-chuot-dareu-esp108-coral-1-228x228.jpg', N'<Images><Images>/Data/images/product/ban-di-chuot-dareu-esp108-coral-1-500x500.jpg</Images><Images>/Data/images/product/ban-di-chuot-dareu-esp108-coral-2-500x500.jpg</Images><Images>/Data/images/product/ban-di-chuot-dareu-esp108-coral-3-500x500.jpg</Images></Images>', CAST(249000 AS Decimal(18, 0)), NULL, NULL, NULL, 712, CAST(N'2020-12-18T02:45:09.953' AS DateTime), N'quang', NULL, NULL, 10, 0, 1017, 1, N'<p>B&agrave;n di chuột DAREU ESP108 CORAL&nbsp;c&oacute; thiết kế cao cấp, mang một m&agrave;u cam rất ph&ugrave; hợp cho những bạn nữ. H&atilde;y trang bị một miếng l&oacute;t chuột m&agrave;u cam cho bộ sưu tập của m&igrave;nh n&agrave;o. Sản phẩm đang được b&aacute;n tại <a href="http://tncstore.vn">TNC Store</a></p>

<p><img src="https://www.tncstore.vn/image/catalog/bàn di/Dareu/ESP108 CORAL/ban-di-chuot-dareu-esp108-coral-1.jpg" style="width:800px" /><img src="https://www.tncstore.vn/image/catalog/bàn di/Dareu/ESP108 CORAL/ban-di-chuot-dareu-esp108-coral-2.jpg" style="width:800px" /><img src="https://www.tncstore.vn/image/catalog/bàn di/Dareu/ESP108 CORAL/ban-di-chuot-dareu-esp108-coral-3.jpg" style="width:800px" /></p>
', NULL, NULL, NULL, 0)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (24, N'Bàn di chuột Steelseries QCK Prism Cloth Dota 2 TI9 Edition', NULL, N'ban-di-chuot-steelseries-qck-prism-cloth-dota-2-ti9-edition', N'<p>- Led: RGB</p>

<p>- K&iacute;ch thước:&nbsp;320mm x 270mm x 4mm</p>

<p>- Bề mặt vải cao cấp.</p>
', N'/Data/images/product/ban-di-chuot-steelseries-qck-prism-cloth-dota-2-edition-1-228x228.jpg', N'<Images><Images>/Data/images/product/ban-di-chuot-steelseries-qck-prism-cloth-dota-2-edition-1-500x500.jpg</Images><Images>/Data/images/product/ban-di-chuot-steelseries-qck-prism-cloth-dota-2-edition-2-500x500.jpg</Images></Images>', CAST(1190000 AS Decimal(18, 0)), NULL, NULL, NULL, 1220, CAST(N'2020-12-18T02:48:11.083' AS DateTime), N'quang', NULL, NULL, 10, 0, 1055, 1, N'<p>B&agrave;n di chuột Steelseries QCK&nbsp; Prism Cloth Dota 2 Edition l&agrave; bản giới hạn d&agrave;nh ri&ecirc;ng cho fan Dota 2. Sản phẩm đ&atilde; c&oacute; mặt tại&nbsp;<a href="http://tncstore.vn/" style="background-color: rgb(255, 255, 255);">TNC Store</a></p>

<p><img src="https://www.tncstore.vn/image/catalog/bàn di/Steelseries/QCK Prism Cloth Dota 2/ban-di-chuot-steelseries-qck-prism-cloth-dota-2-edition-a.jpg" style="width:1895px" /></p>

<p>&nbsp;</p>
', NULL, NULL, NULL, 0)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (25, N'Bàn di chuột TNC Premium', NULL, N'ban-di-chuot-tnc-premium', N'<p>- K&iacute;ch thước: 900x300x4 mm</p>

<p>- Bo viền: c&oacute;</p>

<p>- Bề mặt vải cao cấp</p>

<p>- Dạng: Speed</p>
', N'/Data/images/product/ban-di-chuot-tnc-premium-1a-228x228.jpg', N'<Images><Images>/Data/images/product/ban-di-chuot-tnc-premium-1a-500x500.jpg</Images><Images>/Data/images/product/ban-di-chuot-tnc-premium-2-a-500x500.jpg</Images><Images>/Data/images/product/ban-di-chuot-tnc-premium-3-500x500.jpg</Images></Images>', CAST(399000 AS Decimal(18, 0)), CAST(499000 AS Decimal(18, 0)), NULL, NULL, 520, CAST(N'2020-12-18T02:48:29.510' AS DateTime), N'quang', NULL, NULL, 10, 0, 1058, 1, N'<p>B&agrave;n di chuột TNC Premium l&agrave; b&agrave;n di chuột mới của TNC Store với chất lượng tuyệt vời, cho khả năng di chuột v&ocirc; c&ugrave;ng mượt m&agrave;. Sản phẩm đang được b&aacute;n tại <a href="http://tncstore.vn">TNC Store</a></p>

<p><img src="https://www.tncstore.vn/image/catalog/bàn di/TNC Pre/ban-di-chuot-tnc-premium-1a.jpg" style="width:800px" /><img src="https://www.tncstore.vn/image/catalog/bàn di/TNC Pre/ban-di-chuot-tnc-premium-2-a.jpg" style="width:800px" /></p>
', NULL, NULL, NULL, 20)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (26, N'Bàn Di Chuột Asus TUF Gaming P3', NULL, N'ban-di-chuot-asus-tuf-gaming-p3', N'<p>- K&iacute;ch cỡ:&nbsp;280 x 350 x 2 mm</p>

<p>- Độ Nặng: 132 g</p>
', N'/Data/images/product/ban-di-chuot-asus-tuf-gaming-p3-228x228.jpg', N'<Images><Images>/Data/images/product/ban-di-chuot-asus-tuf-gaming-p3-500x500.jpg</Images></Images>', CAST(590000 AS Decimal(18, 0)), NULL, NULL, NULL, 360, CAST(N'2020-12-18T02:43:53.393' AS DateTime), N'quang', NULL, NULL, 10, 0, 1011, 1, N'<p>B&agrave;n Di Chuột Asus TUF Gaming P3 đ&atilde; bo viền gi&uacute;p tăng trải nghiệm chơi game v&ocirc; c&ugrave;ng chuẩn x&aacute;c. Sản phẩm đang được ph&acirc;n phối ch&iacute;nh h&atilde;ng tại <a href="http://tncstore.vn">TNC Store</a></p>

<p><img src="https://www.tncstore.vn/image/catalog/bàn di/tuf p3/ban-di-chuot-asus-tuf-gaming-p3-a.jpg" style="width:800px" /></p>
', NULL, NULL, NULL, 0)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (27, N'Pad chuột Steelseries QCK EDGE XL', NULL, N'pad-chuot-steelseries-qck-edge-xl', N'<p>- K&iacute;ch Thước : 900x300x2 mm</p>

<p>- Bề mặt Speed</p>

<p>- Kh&acirc;u viền</p>
', N'/Data/images/product/pad-chuot-steelseries-qck-edge-xl-2-228x228.jpg', N'<Images><Images>/Data/images/product/pad-chuot-steelseries-qck-edge-xl-2-500x500.jpg</Images><Images>/Data/images/product/pad-chuot-steelseries-qck-edge-xl-1-500x500.jpg</Images></Images>', CAST(699000 AS Decimal(18, 0)), NULL, NULL, NULL, 362, CAST(N'2020-12-18T02:37:24.903' AS DateTime), N'quang', NULL, NULL, 10, 1, 1055, 1, N'<p><span style="font-family:roboto-r,sans-serif; font-size:13px">Pad chuột Steelseries QCK EDGE l&agrave; sản phẩm cao cấp đến từ h&atilde;ng Gaming Gear nổi tiếng đến từ Đan Mạch. Sản phẩm đang được b&aacute;n tại&nbsp;</span><a href="http://tncstore.vn/" style="background-color: rgb(255, 255, 255); color: rgb(35, 161, 209); font-family: roboto-r, sans-serif; font-size: 13px;">TNC Store</a></p>

<p><img src="https://www.tncstore.vn/image/catalog/bàn di/Steelseries QCK EDGE Large/pad-chuot-steelseries-qck-edge-large-a.jpg" style="width:1023px" /></p>
', NULL, NULL, NULL, 0)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (28, N'Bàn di chuột Razer Goliathus Chroma Extended', NULL, N'ban-di-chuot-razer-goliathus-chroma-extended', N'<p>- K&iacute;ch Thước: 294 mm / 11.57 in (Length) X 920 mm / 36.22 in (Width) X 3 mm / 0.12 in (Height)</p>

<p>- Trọng lượng: 560 g / 1.23 lbs</p>

<p>- Cable D&agrave;i: 2.1 m / 6.89 ft</p>
', N'/Data/images/product/ban-di-chuot-razer-goliathus-chroma-exterded-1-228x228.jpg', N'<Images><Images>/Data/images/product/ban-di-chuot-razer-goliathus-chroma-exterded-1-500x500.jpg</Images></Images>', CAST(1299000 AS Decimal(18, 0)), CAST(1799000 AS Decimal(18, 0)), NULL, NULL, 359, CAST(N'2020-12-18T02:47:10.873' AS DateTime), N'quang', NULL, NULL, 10, 2, 1050, 1, N'<p>B&agrave;n di chuột Razer Goliathus Chroma Extended đang được ph&acirc;n phối ch&iacute;nh h&atilde;ng tại <a href="http://tncstore.vn">TNC Store</a></p>

<p><img src="https://www.tncstore.vn/image/catalog/bàn phím razer/GOLIATHUS CHROMA/ban-di-chuot-razer-goliathus-chroma-exterded-a.jpg" style="width:800px" /></p>
', 12, NULL, NULL, 28)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (29, N'Bàn di chuột Razer Goliathus Chroma', NULL, N'ban-di-chuot-razer-goliathus-chroma', N'<p>- K&iacute;ch Thước:&nbsp;255 mm&nbsp; (Length) X 355 mm&nbsp; (Width) X 3 mm ( Height )</p>

<p>- Led RGB hỗ trợ Synapse</p>

<p>- Bề mặt vải cao cấp</p>
', N'/Data/images/product/ban-di-chuot-razer-goliathus-chroma-1-228x228.jpg', N'<Images><Images>/Data/images/product/ban-di-chuot-razer-goliathus-chroma-1-500x500.jpg</Images><Images>/Data/images/product/ban-di-chuot-razer-goliathus-chroma-2-500x500.jpg</Images></Images>', CAST(799000 AS Decimal(18, 0)), CAST(1299000 AS Decimal(18, 0)), NULL, NULL, 321, CAST(N'2020-12-18T02:46:56.347' AS DateTime), N'quang', NULL, NULL, 10, 10, 1050, 1, N'<p>B&agrave;n di chuột Razer Goliathus Chroma l&agrave; d&ograve;ng pad cao cấp d&agrave;nh cho c&aacute;c c&aacute;c fan của Razer với bề mặt cao cấp c&ugrave;ng Led RGB độc đ&aacute;o. Sản phẩm đang được b&aacute;n tại&nbsp;<a href="http://tncstore.vn/" style="background-color: rgb(255, 255, 255);">TNC Store</a></p>

<p><img src="https://www.tncstore.vn/image/catalog/bàn di/razer /Goliathus Chroma/ban-di-chuot-razer-goliathus-chroma-a.jpg" style="width:1854px" /></p>
', NULL, NULL, NULL, 38)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (30, N'Pad chuột Steelseries QCK EDGE Medium', NULL, N'pad-chuot-steelseries-qck-edge-medium', N'<p>- K&iacute;ch Thước : 320mm x 270 mm x 2 mm</p>

<p>- Bề mặt Speed</p>

<p>- Kh&acirc;u viền</p>
', N'/Data/images/product/pad-chuot-steelseries-qck-edge-large-1-228x228%20(2).jpg', N'<Images><Images>/Data/images/product/pad-chuot-steelseries-qck-edge-large-1-500x500.jpg</Images><Images>/Data/images/product/pad-chuot-steelseries-qck-edge-large-2-500x500.jpg</Images><Images>/Data/images/product/pad-chuot-steelseries-qck-edge-large-3-500x500.jpg</Images></Images>', CAST(345000 AS Decimal(18, 0)), NULL, NULL, NULL, 345, CAST(N'2020-12-18T02:35:51.440' AS DateTime), N'quang', NULL, NULL, 10, 0, 1055, 1, N'<p><span style="font-family:roboto-r,sans-serif; font-size:13px">Pad chuột Steelseries QCK EDGE l&agrave; sản phẩm cao cấp đến từ h&atilde;ng Gaming Gear nổi tiếng đến từ Đan Mạch. Sản phẩm đang được b&aacute;n tại&nbsp;</span><a href="http://tncstore.vn/" style="background-color: rgb(255, 255, 255); color: rgb(35, 161, 209); font-family: roboto-r, sans-serif; font-size: 13px;">TNC Store</a></p>

<p><img src="https://www.tncstore.vn/image/catalog/bàn di/Steelseries QCK EDGE Large/pad-chuot-steelseries-qck-edge-large-a.jpg" style="width:1023px" /></p>
', NULL, NULL, NULL, 0)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (31, N'Bàn di chuột DareU 05 L (ESP 100)', NULL, N'ban-di-chuot-dareu-05-l-esp-100', N'<p>- Bề mặt speed</p>

<p>- C&oacute; kh&acirc;u viền</p>

<p>- Size : 350x255x4mm</p>
', N'/Data/images/product/ban-di-chuot-dareu-05-l-228x228.jpg', N'<Images><Images>/Data/images/product/ban-di-chuot-dareu-05-l-500x500.jpg</Images></Images>', CAST(99000 AS Decimal(18, 0)), NULL, NULL, NULL, 99, CAST(N'2020-12-18T02:44:12.790' AS DateTime), N'quang', NULL, NULL, 10, 0, 1017, 1, N'<p>B&agrave;n di chuột DareU l&agrave; sản phẩm gi&aacute; rẻ d&agrave;nh cho những người ưa chuộng gear của DareU. Sản phẩm đang được b&aacute;n tại TNC Store</p>

<p><img src="https://www.tncstore.vn/image/catalog/bàn di/Dareu/ban-di-chuot-dareu-05-l.jpg" style="width:512px" /></p>

<p>&nbsp;</p>
', NULL, NULL, NULL, 0)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (32, N'Pad chuột Steelseries QCK Prism XL', NULL, N'pad-chuot-steelseries-qck-prism-xl', N'<p>- K&iacute;ch Thước : 900x300x4 mm</p>

<p>- Bề mặt Speed</p>

<p>- Kh&acirc;u viền + Led RGB</p>
', N'/Data/images/product/pad-chuot-steelseries-qck-prism-xl-1-228x228.jpg', N'<Images><Images>/Data/images/product/pad-chuot-steelseries-qck-prism-xl-1-500x500.jpg</Images><Images>/Data/images/product/pad-chuot-steelseries-qck-prism-xl-2-500x500.jpg</Images><Images>/Data/images/product/pad-chuot-steelseries-qck-prism-xl-3-500x500%20(1).jpg</Images><Images>/Data/images/product/pad-chuot-steelseries-qck-prism-xl-4-500x500.jpg</Images></Images>', CAST(1399000 AS Decimal(18, 0)), CAST(1699000 AS Decimal(18, 0)), NULL, NULL, 1652, CAST(N'2020-12-18T02:38:08.330' AS DateTime), N'quang', NULL, NULL, 10, 1, 1055, 1, N'<p><span style="font-family:roboto-r,sans-serif; font-size:13px">Pad chuột Steelseries QCK Prism XL l&agrave; sản phẩm cao cấp đến từ h&atilde;ng Gaming Gear nổi tiếng đến từ Đan Mạch. Sản phẩm đang được b&aacute;n tại&nbsp;</span><a href="http://tncstore.vn/" style="background-color: rgb(255, 255, 255); color: rgb(35, 161, 209); font-family: roboto-r, sans-serif; font-size: 13px;">TNC Store</a></p>

<p><img src="https://www.tncstore.vn/image/catalog/bàn di/Steelseries QCK Prism XL/pad-chuot-steelseries-qck-prism-xl-a.jpg" style="width:1303px" /></p>
', NULL, NULL, NULL, 18)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (33, N'Pad chuột Steelseries QCK EDGE Large', NULL, N'pad-chuot-steelseries-qck-edge-large', N'<p>- K&iacute;ch Thước : 450x400x2 mm</p>

<p>- Bề mặt Speed</p>

<p>- Kh&acirc;u viền</p>
', N'/Data/images/product/pad-chuot-steelseries-qck-edge-large-1-228x228%20(1).jpg', N'<Images><Images>/Data/images/product/pad-chuot-steelseries-qck-edge-large-1-500x500.jpg</Images><Images>/Data/images/product/pad-chuot-steelseries-qck-edge-large-2-500x500.jpg</Images><Images>/Data/images/product/pad-chuot-steelseries-qck-edge-large-3-500x500.jpg</Images></Images>', CAST(389000 AS Decimal(18, 0)), CAST(459000 AS Decimal(18, 0)), NULL, NULL, 382, CAST(N'2020-12-18T02:34:37.390' AS DateTime), N'quang', NULL, NULL, 10, 0, 1055, 1, N'<p><span style="font-family:roboto-r,sans-serif; font-size:13px">Pad chuột Steelseries QCK EDGE l&agrave; sản phẩm cao cấp đến từ h&atilde;ng Gaming Gear nổi tiếng đến từ Đan Mạch. Sản phẩm đang được b&aacute;n tại&nbsp;</span><a href="http://tncstore.vn/" style="background-color: rgb(255, 255, 255); color: rgb(35, 161, 209); font-family: roboto-r, sans-serif; font-size: 13px;">TNC Store</a></p>

<p><img src="https://www.tncstore.vn/image/catalog/bàn di/Steelseries QCK EDGE Large/pad-chuot-steelseries-qck-edge-large-a.jpg" style="width:1023px" /></p>
', NULL, NULL, NULL, 15)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (34, N'Bàn Di Asus ROG Sheath - Gaming', NULL, N'ban-di-asus-rog-sheath-gaming', N'<ul>
	<li>Tối ưu cho khả năng di chuột mượt m&agrave;</li>
	<li>K&iacute;ch cỡ khổng lồ cho tất cả c&aacute;c thiết bị chơi game của bạn</li>
	<li>Đế cao su m&agrave;u đỏ ROG chống trượt</li>
	<li>Đường kh&acirc;u bền, chống r&aacute;ch.</li>
</ul>
', N'/Data/images/product/ban-di-rog-sheath-gaming-tncstore-d-228x228.jpg', N'<Images><Images>/Data/images/product/ban-di-rog-sheath-gaming-tncstore-e-500x500.jpg</Images><Images>/Data/images/product/ban-di-rog-sheath-gaming-tncstore-c-500x500.jpg</Images><Images>/Data/images/product/ban-di-rog-sheath-gaming-tncstore-d-500x500.jpg</Images><Images>/Data/images/product/ban-di-rog-sheath-gaming-tncstore-a-500x500.jpg</Images></Images>', CAST(699000 AS Decimal(18, 0)), CAST(899000 AS Decimal(18, 0)), NULL, NULL, 789, CAST(N'2020-12-18T02:42:37.743' AS DateTime), N'quang', NULL, NULL, 10, 0, 1011, 1, N'<p><a href="https://www.tncstore.vn/ban-di-chuot/ban-di-rog-sheath-gaming.html">B&agrave;n Di ROG Sheath - Gaming</a>&nbsp;được tối ưu cho mọi kiểu chuột chơi game, với một bề mặt mượt m&agrave; đảm bảo khả năng di chuột ch&iacute;nh x&aacute;c từng điểm ảnh, cho sự ch&iacute;nh x&aacute;c tuyệt đối khi điều khiển v&agrave; ra lệnh. ROG Sheath được thiết kế cho sự thoải m&aacute;i của bạn, v&agrave; c&oacute; đế cao su m&agrave;u đỏ chống trượt đặc trưng của ROG lu&ocirc;n giữ tấm l&oacute;t chuột ở nguy&ecirc;n vị tr&iacute;, c&ugrave;ng với c&aacute;c cạnh được kh&acirc;u chống r&aacute;ch. Sản phẩm hiện c&oacute; b&aacute;n tại <a href="https://www.tncstore.vn/">TNC Store.</a></p>

<p><img src="https://www.tncstore.vn/image/catalog/bàn di/Asus/Rog Sheath/ban-di-rog-sheath-gaming-tncstore-f.jpg" style="width:960px" /><img src="https://www.tncstore.vn/image/catalog/bàn di/Asus/Rog Sheath/ban-di-rog-sheath-gaming-tncstore-h.jpg" style="font-size:12px; width:960px" /></p>
', NULL, NULL, NULL, 22)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (35, N'Bàn di chuột SteelSeries QcK Mini', NULL, N'ban-di-chuot-steelseries-qck-mini', N'<ul>
	<li>K&iacute;ch cỡ: 250mm x 210mm&nbsp;</li>
	<li>Độ d&agrave;y: 2mm&nbsp;</li>
	<li>Chất liệu: Cao su tổng hợp, b&ecirc;n tr&ecirc;n phủ vải cao cấp&nbsp;</li>
	<li>Bề mặt tối ưu ho&aacute; độ chuẩn x&aacute;c của mắt đọc, tr&aacute;nh t&igrave;nh trạng loss khi di chuột tốc độ cao&nbsp;</li>
	<li>Sử dụng cao su cao cấp, kh&ocirc;ng độc hại</li>
</ul>
', N'/Data/images/product/steelseries-qck-mini-1-228x228.jpg', N'<Images><Images>/Data/images/product/steelseries-qck-mini-1-500x500.jpg</Images><Images>/Data/images/product/steelseries-qck-mini-2-500x500.jpg</Images><Images>/Data/images/product/steelseries-qck-mini-3-500x500.jpg</Images></Images>', CAST(199000 AS Decimal(18, 0)), NULL, NULL, NULL, 759, CAST(N'2020-12-18T02:47:48.987' AS DateTime), N'quang', NULL, NULL, 10, 0, 1055, 1, N'<p><strong><span style="font-size:14px"><a href="https://www.tncstore.vn/index.php?route=product/search&amp;search=SteelSeries%20QcK" target="_blank">SteelSeries QcK</a>&nbsp;Mini</span></strong><span style="font-family:arial; font-size:14px">&nbsp;đ&atilde; được tối ưu h&oacute;a v&agrave; được những game thủ chuy&ecirc;n nghiệp trải nghiệm trong nhiều năm qua v&agrave; khẳng định một gi&aacute; trị đ&iacute;ch thực. Sản phẩm mang lại cho bạn nhiều trải nghiệm tuyệt vời trong những pha di chuột nhanh, mạnh mẽ v&agrave; ch&iacute;nh x&aacute;c đ&atilde; được tối ưu h&oacute;a v&agrave; được những game thủ chuy&ecirc;n nghiệp trải nghiệm trong nhiều năm qua v&agrave; khẳng định một gi&aacute; trị đ&iacute;ch thực. Sản phẩm mang lại cho bạn nhiều trải nghiệm tuyệt vời trong những pha di chuột nhanh, mạnh mẽ v&agrave; ch&iacute;nh x&aacute;c.</span></p>

<p>&nbsp;</p>

<p><img src="https://www.tncstore.vn/image/catalog/gamegears/Steelseries Qck Mini/steelseries-qck-mini-4.jpg" style="width:850px" /></p>
', NULL, NULL, NULL, 0)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (36, N'LAPTOP ACER PREDATOR HELIOS 300 PH315-53-70U6 I7 10750H/RTX2060 6GB/16GB/512GB/15.6″/FHD/IPS/240HZ/WIN10', NULL, N'laptop-acer-predator-helios-300-ph315-53-70u6-i7-10750h-rtx2060-6gb-16gb-512gb-15-6-fhd-ips-240hz-win10', N'<p>- CPU: Intel&reg; Core&trade; i7-10750H (2.60GHz upto 5.00GHz, 12MB)</p>

<p>- RAM: 16GB(8GB x 2) DDR4 2933MHz (2 khe ram, n&acirc;ng cấp tối 32GB)</p>

<p>- Ổ cứng: 512GB PCIe NVMe SSD (n&acirc;ng cấp tối đa 4TB SSD PCIe NVMe v&agrave; 2TB HDD 2.5-inch 5400 RPM)</p>

<p>- VGA: NVIDIA&reg; GeForce RTX&trade; 2060 6GB GDDR6</p>

<p>- M&agrave;n h&igrave;nh: 15.6 inch display with IPS (In-Plane Switching) technology, FHD 1920 x 1080, high-brightness (300 nits) Acer ComfyViewTM LED-backlit TFT LCD, supporting 240 Hz,3 ms Overdrive</p>

<p>- Pin: 4-cell, 59 Wh</p>

<p>- C&acirc;n nặng: 2.2 kg</p>

<p>- M&agrave;u sắc: Abyssal Black</p>

<p>- OS: Windows 10 Home</p>
', N'/Data/images/product/laptop-acer-predator-helios-300-ph315-53-70u6-6-228x228.jpg', N'<Images><Images>/Data/images/product/laptop-acer-predator-helios-300-ph315-53-70u6-6-500x500(1).jpg</Images><Images>/Data/images/product/laptop-acer-predator-helios-300-ph315-53-70u6-3-500x500.jpg</Images><Images>/Data/images/product/laptop-acer-predator-helios-300-ph315-53-70u6-2-500x500.jpg</Images><Images>/Data/images/product/laptop-acer-predator-helios-300-ph315-53-70u6-1-500x500.jpg</Images><Images>/Data/images/product/laptop-acer-predator-helios-300-ph315-53-70u6-5-500x500.jpg</Images><Images>/Data/images/product/laptop-acer-predator-helios-300-ph315-53-70u6-4-500x500.jpg</Images></Images>', CAST(43490000 AS Decimal(18, 0)), NULL, NULL, NULL, 988, CAST(N'2020-12-18T02:57:33.067' AS DateTime), N'quang', NULL, NULL, 20, 39, 1002, 1, N'<p>LAPTOP ACER PREDATOR HELIOS 300 PH315-53-70U6 I7 10750H/RTX2060 6GB/16GB/512GB/15.6&Prime;/FHD/IPS/240HZ/WIN10 giờ đ&acirc;y đ&atilde; chuyển sang t&ocirc;ng m&agrave;u xanh electric blue. Mang lại năng lượng chiến game tuyệt vời cho game thủ. B&agrave;n ph&iacute;m RGB 4 v&ugrave;ng được điều chỉnh dễ d&agrave;ng th&ocirc;ng qua ứng dụng Predator tr&ecirc;n điện thoại. Ứng dụng n&agrave;y cho ph&eacute;p điều chỉnh đ&egrave;n b&agrave;n ph&iacute;m, tốc độ quạt, tản nhiệt một c&aacute;ch dễ d&agrave;ng ngay tr&ecirc;n điện thoại. Sản phẩm đang được b&aacute;n tại <a href="http://tncstore.vn">TNC Store</a></p>

<p>&nbsp;</p>

<p><img src="https://www.tncstore.vn/image/catalog/laptop/laptop acer/Helios 300/laptop-acer-predator-helios-300-ph315-53-70u6-a.jpg" style="width:776px" /></p>
', 12, NULL, NULL, 0)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (37, N'LAPTOP ACER PREDATOR HELIOS 300 PH315-53-770L I7 10750H/ GTX1660Ti 6GB/ 8GB/ 512GB/ 15.6″/ FHD/ IPS/ 144HZ/ WIN10', NULL, N'laptop-acer-predator-helios-300-ph315-53-770l-i7-10750h-gtx1660ti-6gb-8gb-512gb-15-6-fhd-ips-144hz-win10', N'<p>- CPU: Intel&reg; Core&trade; i7-10750H (2.60GHz upto 5.00GHz, 12MB)</p>

<p>- RAM: 8GB DDR4 2933MHz (2 khe ram, n&acirc;ng cấp tối 32GB)</p>

<p>- Ổ cứng: 512GB PCIe NVMe SSD (n&acirc;ng cấp tối đa th&ecirc;m 2TB HDD 7200rpm, 2 khe M.2 chạy được RAID0 mỗi khe n&acirc;ng cấp được 1TBSSD PCIe NVMe)</p>

<p>- VGA: NVIDIA&reg; GeForce&reg; GTX 1660Ti 6GB GDDR6</p>

<p>- M&agrave;n h&igrave;nh: 15.6 inch FHD(1920 x 1080) IPS 144Hz 3ms slim bezel LCD (300nit)</p>

<p>- Pin: 4-cell, 59 Wh</p>

<p>- C&acirc;n nặng: 2.2 kg</p>

<p>- M&agrave;u sắc: Abyssal Black</p>

<p>- OS: Windows 10 Home</p>
', N'/Data/images/product/Helios%20300-228x228.jpg', N'<Images><Images>/Data/images/product/laptop-acer-predator-helios-300-ph315-53-70u6-1-500x500.jpg</Images><Images>/Data/images/product/laptop-acer-predator-helios-300-ph315-53-70u6-2-500x500.jpg</Images><Images>/Data/images/product/laptop-acer-predator-helios-300-ph315-53-70u6-3-500x500.jpg</Images><Images>/Data/images/product/laptop-acer-predator-helios-300-ph315-53-70u6-4-500x500.jpg</Images><Images>/Data/images/product/laptop-acer-predator-helios-300-ph315-53-70u6-6-500x500(1).jpg</Images><Images>/Data/images/product/laptop-acer-predator-helios-300-ph315-53-70u6-5-500x500.jpg</Images></Images>', CAST(34990000 AS Decimal(18, 0)), CAST(35890000 AS Decimal(18, 0)), NULL, NULL, 350, CAST(N'2020-12-18T01:48:44.680' AS DateTime), N'quang', NULL, NULL, 20, 1, 1002, 1, N'<p>LAPTOP ACER PREDATOR HELIOS 300 PH315-53-770L I7 10750H/GTX1660Ti 6GB/8GB/512GB/15.6&Prime;/FHD/IPS/144HZ/WIN10 giờ đ&acirc;y đ&atilde; chuyển sang t&ocirc;ng m&agrave;u xanh electric blue. Mang lại năng lượng chiến game tuyệt vời cho game thủ. B&agrave;n ph&iacute;m RGB 4 v&ugrave;ng được điều chỉnh dễ d&agrave;ng th&ocirc;ng qua ứng dụng Predator tr&ecirc;n điện thoại. Ứng dụng n&agrave;y cho ph&eacute;p điều chỉnh đ&egrave;n b&agrave;n ph&iacute;m, tốc độ quạt, tản nhiệt một c&aacute;ch dễ d&agrave;ng ngay tr&ecirc;n điện thoại. Sản phẩm đang được b&aacute;n tại <a href="http://tncstore.vn">TNC Store</a></p>

<p>&nbsp;</p>

<p><img src="https://www.tncstore.vn/image/catalog/laptop/laptop acer/Helios 300/laptop-acer-predator-helios-300-ph315-53-70u6-a.jpg" style="width:776px" /></p>
', 12, NULL, NULL, 3)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (38, N'Laptop Gaming MSI GF63 Thin 9SCSR 846VN - I7 9750H/ 8GB/ SSD 512GB/ 15.6" FHD/ GTX 1650Ti 4GB/ Win10', NULL, N'laptop-gaming-msi-gf63-thin-9scsr-846vn-i7-9750h-8gb-ssd-512gb-15-6-fhd-gtx-1650ti-4gb-win10', N'<p>- CPU: Intel&reg; Core&trade; i7-9750H (2.60GHz up to 4.50GHz, 12MB Cache)</p>

<p>- RAM: 8GB DDR4 2666MHz (2 khe)</p>

<p>- Ổ cứng: 512GB NVMe PCIe SSD + 1 slot 2.5&quot; (HDD/SSD)</p>

<p>- VGA: NVidia GeForce GTX 1650Ti Max-Q 4GB GDDR6</p>

<p>- M&agrave;n h&igrave;nh: 15.6 inch FHD (1920 x 1080) IPS, 144Hz,</p>

<p>- Pin: 3 cell, 51Whr</p>

<p>- C&acirc;n nặng: 1.86 kg</p>

<p>HĐH: Windows 10 Home</p>
', N'/Data/images/product/laptop-gaming-msi-gf63-thin-9sc-228x228.jpg', N'<Images><Images>/Data/images/product/laptop-gaming-msi-gf63-thin-9sc-500x500.jpg</Images><Images>/Data/images/product/laptop-msi-gf63-10scsr-4-500x500.png</Images><Images>/Data/images/product/laptop-msi-gf63-10scsr-3-500x500.png</Images><Images>/Data/images/product/laptop-msi-gf63-10scsr-1-500x500.png</Images></Images>', CAST(22490000 AS Decimal(18, 0)), CAST(23390000 AS Decimal(18, 0)), NULL, NULL, 520, CAST(N'2020-12-18T02:22:35.360' AS DateTime), N'quang', NULL, NULL, 20, 1, 1042, 1, N'<p>Laptop Gaming MSI GF63 Thin 9SCSR l&agrave; d&ograve;ng Laptop sử dụng CPU thế hệ thứ 9 với hiệu năng vượt trội so với thể hệ trước. Hiện sản phẩm đang được b&aacute;n tại <a href="http://tncstore.vn">TNC Store</a></p>

<p><img src="https://www.tncstore.vn/image/catalog/laptop/msi/GF63 10SCSR/laptop-msi-gf63-10scsr-b.jpg" style="width:1457px" /></p>
', 12, N'//www.youtube.com/embed/ychHISontvc', NULL, 4)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (39, N'Laptop Acer Gaming Nitro 5 2020 AN515-55-55E3 I5-10300H/ 16GB/ 512GB / RTX 2060 6GB/ 15.6"/ Win10', NULL, N'laptop-acer-gaming-nitro-5-2020-an515-55-55e3-i5-10300h-16gb-512gb-rtx-2060-6gb-15-6-win10', N'<p>- CPU: Intel&reg; Core&trade; I5-10300H (2.5 upto 4.5GHz, 4 nh&acirc;n 8 luồng, 8MB)<br />
- RAM: 16GB DDR4<br />
- Ổ cứng:&nbsp;SSD 512GB<br />
- VGA: nVidia Geforce RTX 2060 6GB<br />
- M&agrave;n h&igrave;nh: 15.6&quot; FHD (1920*1080) IPS 144Hz<br />
- HĐH: Windows 10<br />
- C&acirc;n nặng: 2.45 kg</p>
', N'/Data/images/product/Nitro%205%202020-228x228.jpg', N'<Images><Images>/Data/images/product/Nitro%205%202020-500x500.jpg</Images><Images>/Data/images/product/laptop-gaming-acer-nitro-5-2-500x500.jpg</Images><Images>/Data/images/product/laptop-gaming-acer-nitro-5-4-500x500.png</Images></Images>', CAST(29290000 AS Decimal(18, 0)), CAST(30790000 AS Decimal(18, 0)), NULL, NULL, 790, CAST(N'2020-12-18T02:57:12.740' AS DateTime), N'quang', NULL, NULL, 20, 10, 1002, 1, N'<p>Laptop Acer Gaming Nitro 5 2020 l&agrave; d&ograve;ng Nitro 5 phi&ecirc;n bản 2020 mới nhất, sử dụng CPU thế hệ thứ 10 mang lại hiệu năng cao so với d&ograve;ng tiền nhiệm, sản phẩm đ&atilde; c&oacute; mặt tại&nbsp;<a href="http://tncstore.vn/" style="background-color: rgb(255, 255, 255);">TNC Store</a></p>

<p style="text-align:center"><img src="https://www.tncstore.vn/image/catalog/laptop/laptop acer/Nitro 5 2020/laptop-acer-nitro-5-2020-55e3.jpg" style="width:753px" /></p>
', 12, N'//www.youtube.com/embed/g9lcEQlDb4c', NULL, 5)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (40, N'Laptop ASUS ROG Zephyrus Duo 15 GX550LXS-HC055R (i9-10980HK/ 32GB/ 1TB/ RTX 2080 Super Max-Q-8GB GDDR6/ 15.6" 4K/ Win 10)', NULL, N'laptop-asus-rog-zephyrus-duo-15-gx550lxs-hc055r-i9-10980hk-32gb-1tb-rtx-2080-super-max-q-8gb-gddr6-15-6-4k-win-10', N'<p>- CPU: Intel&reg; Core&trade; I9-10980HK (2.40 GHz upto 5.30 GHz, 16MB)</p>

<p>- RAM: 32GB DDR4 3200MHz on board (1 khe)</p>

<p>- Ổ cứng: 1TB M.2 NVMe PCIe 3.0 x4 + 1TB SSD with RAID 0 support</p>

<p>- VGA: nVidia Geforce RTX 2080 Super Max-Q-8GB GDDR6</p>

<p>- M&agrave;n h&igrave;nh: 15.6-inch, Non-glare UHD (3840 x 2160), IPS panel 60Hz, 100% Adobe RGB, Pantone&reg; Validated</p>

<p>- Pin: 4-cell, 90WHrs</p>

<p>- C&acirc;n nặng: 2.4 kg</p>

<p>- T&iacute;nh năng: Đ&egrave;n nền b&agrave;n ph&iacute;m, Numpad</p>

<p>- M&agrave;u sắc: X&aacute;m</p>

<p>- OS: Windows 10 Pro HIGH-END</p>
', N'/Data/images/product/laptop-asus-zephyrus-duo-15-228x228.png', N'<Images><Images>/Data/images/product/laptop-asus-rog-zephyrus-dou-15-gx550lws-hf102t-4-500x500.jpg</Images><Images>/Data/images/product/laptop-asus-rog-zephyrus-dou-15-gx550lws-hf102t-6-500x500.jpg</Images><Images>/Data/images/product/laptop-asus-rog-zephyrus-dou-15-gx550lws-hf102t-3-500x500.jpg</Images><Images>/Data/images/product/laptop-asus-rog-zephyrus-dou-15-gx550lws-hf102t-5-500x500.jpg</Images><Images>/Data/images/product/laptop-asus-rog-zephyrus-dou-15-gx550lws-hf102t-7-500x500.jpg</Images><Images>/Data/images/product/laptop-asus-rog-zephyrus-dou-15-gx550lws-hf102t-8-500x500.jpg</Images></Images>', CAST(119990000 AS Decimal(18, 0)), NULL, NULL, NULL, 255, CAST(N'2020-12-18T01:51:16.647' AS DateTime), N'quang', NULL, NULL, 20, 0, 1011, 1, N'<p dir="ltr" style="text-align:center"><strong>ROG ZEPHYRUS DUO 15 - VƯƠN ĐẾN ĐỈNH CAO MỚI</strong></p>

<div style="text-align: center;">&nbsp;</div>

<p dir="ltr" style="text-align:center"><span style="background-color:transparent; font-family:arial; font-size:11pt"><img src="https://lh3.googleusercontent.com/cZiT4bZhRkVpwSm5QIxg4btFi_4ee9p0CVEAa4vtQUpA6YAzolrXdzVbd-08Ir5zpe_wDK__LCG_y67fZzCVjedhvsDO1lfJ7beEppF0zc2Q6u3GtuFEkXlRKuTPlokxJ4Jb30_h" style="height:325px; margin-left:0px; margin-top:0px; width:602px" /></span></p>

<p dir="ltr" style="text-align:justify">&nbsp;</p>

<p dir="ltr" style="text-align:justify"><span style="background-color:transparent; font-family:arial; font-size:11pt">Mở rộng trải nghiệm s&aacute;ng tạo v&agrave; chơi game của bạn với </span><strong>Laptop Gaming</strong><strong>Asus ROG Zephyrus Duo 15</strong><span style="background-color:transparent; font-family:arial; font-size:11pt"> đột ph&aacute;, trang bị m&agrave;n h&igrave;nh phụ ROG ScreenPad Plus gi&uacute;p đưa trải nghiệm Windows 10 l&ecirc;n tầm cao mới.&nbsp;</span></p>

<p dir="ltr" style="text-align:justify"><span style="background-color:transparent; font-family:arial; font-size:11pt">Hệ thống tản nhiệt mới bằng kim loại lỏng v&agrave; thiết kế tản nhiệt đột ph&aacute; sẽ khai ph&aacute; tối đa sức mạnh của m&aacute;y với CPU Intel Core i9 thế hệ thứ 10 v&agrave; GPU NVIDIA RTX 2080 Super maxQ.&nbsp;</span></p>

<p dir="ltr" style="text-align:justify"><span style="background-color:transparent; font-family:arial; font-size:11pt">Lựa chọn giữa m&agrave;n h&igrave;nh 300Hz/3ms si&ecirc;u nhanh khi chơi game hoặc độ ph&acirc;n giải 4K sau khi thực hiện c&aacute;c t&aacute;c vụ chuy&ecirc;n nghiệp. Khả năng di động cực cao với pin dung lượng lớn 90Wh. Bạn c&oacute; thể s&aacute;ng tạo, chơi v&agrave; l&agrave;m việc ở bất kỳ đ&acirc;u với chiếc </span><strong>laptop gaming</strong><span style="background-color:transparent; font-family:arial; font-size:11pt"> n&agrave;y.</span></p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:center"><strong>ROG SCREEDPAD PLUS</strong></p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:center"><strong>N&Acirc;NG CAO KHẢ NĂNG CỦA BẠN</strong></p>

<p dir="ltr" style="text-align:center"><strong><img src="https://lh3.googleusercontent.com/BBrphsMaOBTU15TmuVS154ZKDDAmy8DHB2RY9gzgZJYB6pyGxMFc-obOwRsGc7mvs5L0qFcaBrwGUO72K08GpEKmgSfZr9iV7iAYzY_qN87LHD7hB2SaLZpF3wtb2z2HlkyY3yvL" style="height:272px; margin-left:0px; margin-top:0px; width:602px" /></strong></p>

<p dir="ltr" style="text-align:justify">&nbsp;</p>

<p dir="ltr" style="text-align:justify"><span style="background-color:transparent; font-family:arial; font-size:11pt">Tăng năng suất với </span><strong>laptop gaming</strong><span style="background-color:transparent; font-family:arial; font-size:11pt"> đầu ti&ecirc;n được trang bị m&agrave;n h&igrave;nh ROG ScreenPad Plus. C&oacute; g&oacute;c mở 15 độ gi&uacute;p bạn dễ d&agrave;ng trải nghiệm. M&agrave;n h&igrave;nh phụ đột ph&aacute; n&agrave;y dễ d&agrave;ng thực hiện đa nhiệm v&agrave; c&oacute; c&aacute;c ứng dụng được tối để tăng cường quy tr&igrave;nh l&agrave;m việc của bạn.&nbsp;</span></p>

<p dir="ltr" style="text-align:justify"><span style="background-color:transparent; font-family:arial; font-size:11pt">Điều khiển chức năng ph&aacute;t v&agrave; tr&ograve; chuyện tr&ecirc;n m&agrave;n h&igrave;nh trong khi gaming ở m&agrave;n h&igrave;nh ch&iacute;nh v&agrave; tận hưởng kh&ocirc;ng gian l&agrave;m việc lớn hơn với c&aacute;c c&ocirc;ng việc, dự &aacute;n s&aacute;ng tạo với kh&ocirc;ng gian m&agrave;n h&igrave;nh dư dả tr&ecirc;n </span><strong>laptop gaming</strong><span style="background-color:transparent; font-family:arial; font-size:11pt"> mỏng nhẹ n&agrave;y.</span></p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:center"><strong>HIỆU NĂNG TUYỆT VỜI</strong></p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:center"><strong>HIỆU NĂNG Ở ĐẲNG CẤP CAO NHẤT</strong></p>

<p dir="ltr" style="text-align:center"><strong><img src="https://lh6.googleusercontent.com/Q30id1ilqh4UA-yZJoVAAiuuXhTwSBoYvq6vJm901fffXD-KM_DwD8N-atNoqNR_SI5l6CHAUZRM49VHnV7QELNYv5RMnQ7q059wvMvPiHv5MZYomo2Ic8pEdgAU_pazeDeVwn4T" style="height:349px; margin-left:0px; margin-top:0px; width:602px" /></strong></p>

<p dir="ltr" style="text-align:justify">&nbsp;</p>

<p dir="ltr" style="text-align:justify"><span style="background-color:transparent; font-family:arial; font-size:11pt">L&agrave;m việc v&agrave; chơi game hiệu quả hơn với CPU Intel Core i9 thế hệ thứ 10 v&agrave; GPU NVIDIA GeForce RTX 2080 Super Max-Q tr&ecirc;n </span><strong>Laptop Gaming Zephyrus Duo 15</strong><span style="background-color:transparent; font-family:arial; font-size:11pt">. CPU c&oacute; tốc độ xử l&yacute; nhanh cho c&aacute;c t&aacute;c vụ nặng như chỉnh sửa ảnh, kết xuất 3D v&agrave; ph&aacute;t trực tiếp, trong khi GPU mạnh mẽ cho ph&eacute;p đạt tỷ lệ khung h&igrave;nh cao v&agrave; sự ch&acirc;n thực tuyệt vời nhằm đem lại trải nghiệm chơi game đắm ch&igrave;m. Khả năng mở rộng RAM l&ecirc;n tới 32GB DDR4-3200 v&agrave; ổ cứng SSD RAID O si&ecirc;u nhanh gi&uacute;p thực hiện đa nhiệm mượt m&agrave; v&agrave; giảm thời gian tải ứng dụng v&agrave; game của bạn.</span></p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:center"><strong>M&Agrave;N H&Igrave;NH</strong><br />
<strong>ĐỘ PH&Acirc;N GIẢI CAO C&Ugrave;NG TỐC ĐỘ L&Agrave;M MỚI NHANH</strong></p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:center"><strong><img src="https://lh4.googleusercontent.com/MEVhO4bFr6jSBiu0pD----0M6Dt8OhPkHF43m5Xqt8E2r9TBwx4CRUxkKOhjeVjlmb6tHs02wlMAi-iGBqGPtpQieeblkEKsCZ7M9CrmrzJ7xoD80JZF_U_oV0ta2XUcEemo6ytX" style="height:313px; margin-left:0px; margin-top:0px; width:602px" /></strong></p>

<p dir="ltr" style="text-align:justify">&nbsp;</p>

<p dir="ltr" style="text-align:justify"><span style="background-color:transparent; font-family:arial; font-size:11pt">Điều chỉnh m&agrave;n h&igrave;nh ch&iacute;nh ph&ugrave; hợp với nhu cầu của bạn. Nh&agrave; s&aacute;ng tạo nội dung sẽ y&ecirc;u th&iacute;ch dải m&agrave;u rộng v&agrave; độ ph&acirc;n giải cao của m&agrave;n h&igrave;nh 4K UHD, hiệu chỉnh tại nơi sản xuất cho kh&ocirc;ng gian m&agrave;u Adobe RGB ch&iacute;nh x&aacute;c 100%. Game thủ c&oacute; thể tận dụng tấm nền chơi game 300Hz FHD để trải nghiệm đồ họa game chuy&ecirc;n nghiệp. Thời gian phản hồi m&agrave;n h&igrave;nh m&aacute;y t&iacute;nh 3ms gi&uacute;p giảm thiểu ho&aacute; hiện tượng b&oacute;ng ma nhằm đem lại độ ch&iacute;nh x&aacute;c khi theo d&otilde;i c&aacute;c mục ti&ecirc;u di chuyển nhanh.&nbsp;</span></p>

<p dir="ltr" style="text-align:justify"><span style="background-color:transparent; font-family:arial; font-size:11pt">Chế độ NVIDIA G-Sync tr&ecirc;n chiếc </span><strong>laptop mỏng nhẹ</strong><span style="background-color:transparent; font-family:arial; font-size:11pt"> n&agrave;y đưa trải nghiệm h&igrave;nh ảnh l&ecirc;n đẳng cấp mới, đem lại độ mượt m&agrave; nhất. M&agrave;n h&igrave;nh phụ ScreenPad Plus bổ sung t&iacute;nh năng cảm ứng, hỗ trợ cho c&aacute;c bộ c&ocirc;ng cụ s&aacute;ng tạo của bạn.</span></p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:center"><strong>TẢN NHIỆT</strong></p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:center"><strong>Đ&Aacute;P ỨNG MỌI TH&Aacute;CH THỨC</strong></p>

<p dir="ltr" style="text-align:justify">&nbsp;</p>

<div style="text-align: center;"><img src="https://lh4.googleusercontent.com/NYmKlLY5coyOXoUX060hzS42rUxlUgHpRMqp1mnssF9_lGy_rwfB6f_BaTniRCZ8dBOAo8WL8iCJaccSdScmZFdZ1q1st4gaBL8-MxxRE0FJMsztWnvBo5pTeXVsIpZS3wkkZBkx" style="background-color:transparent; font-family:arial; font-size:11pt; font-weight:700; height:295px; margin-left:0px; margin-top:0px; white-space:pre-wrap; width:602px" /></div>

<div style="text-align: center;">&nbsp;</div>

<p><span style="background-color:transparent; font-family:arial; font-size:11pt">&Yacute; tưởng về tối đa ho&aacute; hiệu năng cho </span><strong>Laptop gaming</strong><span style="background-color:transparent; font-family:arial; font-size:11pt"> si&ecirc;u mỏng với hai m&agrave;n h&igrave;nh t&iacute;ch hợp đ&ograve;i hỏi Asus phải c&oacute; những cải tiến. Hệ thống AAS mới c&oacute; nền tảng l&agrave; Hệ thống kh&iacute; động lực chủ động nhưng c&oacute; th&ecirc;m khu vực lấy kh&iacute; v&agrave;o rộng hơn 28,5mm ở ph&iacute;a sau m&agrave;n h&igrave;nh phụ gi&uacute;p lấy được nhiều kh&ocirc;ng kh&iacute; hơn v&agrave; giảm tiếng ồn. Khi kết hợp với phương ph&aacute;p tản nhiệt mới như sử dụng keo tản nhiệt lỏng tr&ecirc;n CPU khiến cỗ m&aacute;y n&agrave;y c&oacute; hiệu năng đ&aacute;ng kinh ngạc. Phần mềm ROG Armoury Crate tối ưu ho&aacute; hiệu năng tản nhiệt v&agrave; &acirc;m thanh bằng c&aacute;ch chuyển đổi mượt m&agrave; giữa c&aacute;c chế độ hoạt động dựa tr&ecirc;n t&aacute;c vụ đang xử l&yacute;.</span></p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:center"><br />
<strong>THIẾT KẾ</strong><br />
<strong>N&Acirc;NG CẤP LAPTOP GAMING SI&Ecirc;U MỎNG</strong></p>

<p dir="ltr" style="text-align:justify">&nbsp;</p>

<div style="text-align: center;"><img src="https://lh5.googleusercontent.com/B6em-fdL0IhMx2zBtaIEo1AG3GyYcLxwRA0FF220Y0WusZQqbW9fnfNkZGLOqcRV65qYsvgWminP09ND57HiFtuVEpgOJsKnNpcBKphYANVnCcU6KcNJooqgFkAMB__mERXEMykJ" style="background-color:transparent; font-family:arial; font-size:11pt; font-weight:700; height:345px; margin-left:0px; margin-top:0px; white-space:pre-wrap; width:602px" /></div>

<div style="text-align: center;">&nbsp;</div>

<p><span style="background-color:transparent; font-family:arial; font-size:11pt">Hiệu năng vượt trội, thiết kế độc đ&aacute;o v&agrave; m&agrave;n h&igrave;nh phụ c&oacute; độ ch&iacute;nh x&aacute;c tuyệt vời. Kết quả l&agrave; một thiết kế độc nhất v&ocirc; nhị cho ph&eacute;p mở m&agrave;n h&igrave;nh phụ c&ugrave;ng với nắp lưng rất thuận tiện, đem lại g&oacute;c nh&igrave;n gi&uacute;p tương t&aacute;c với m&agrave;n h&igrave;nh cảm ứng đồng thời gi&uacute;p luồng kh&iacute; v&agrave;o lớn hơn. Tăng cường hiệu năng tản nhiệt tr&ecirc;n chiếc</span><strong> Laptop Gaming</strong><span style="background-color:transparent; font-family:arial; font-size:11pt"> mỏng nhẹ n&agrave;y.</span></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:center"><strong>KHẢ NĂNG N&Acirc;NG CẤP</strong><br />
<strong>PH&Ugrave; HỢP VỚI TƯƠNG LAI</strong></p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:justify">&nbsp;</p>

<div style="text-align: center;"><img src="https://lh4.googleusercontent.com/ObnCwsiaM6wOU3ebr3bShgATs4aYn0pJ0MpBtlQD4WiE35e-5eC09bygmIt1D2xCuxCSVXXSupiUb5QhzjEiB5FvMTnEIZHwBZretqJWRfoB147HAP02hBi6G1ysXq_H92yCGKsh" style="background-color:transparent; font-family:arial; font-size:11pt; font-weight:700; height:303px; margin-left:0px; margin-top:0px; white-space:pre-wrap; width:602px" /></div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<p><span style="background-color:transparent; font-family:arial; font-size:11pt">Hỗ trợ USB Type-C với Thunderbolt cho ph&eacute;p c&aacute;c nh&agrave; s&aacute;ng tạo, game thủ, người d&ugrave;ng c&oacute; thể mở rộng m&aacute;y trạm ở bất kỳ đ&acirc;u. </span><strong>Asus ROG Zephyrus Duo 1</strong><span style="background-color:transparent; font-family:arial; font-size:11pt">5 c&oacute; kết nối nhiều m&agrave;n h&igrave;nh để hoạt động đa nhiệm hiệu quả hơn hoặc bổ sung ổ cứng tốc độ cao để gửi v&agrave; chỉnh sửa tập tin đa phương tiện với tốc độ si&ecirc;u nhanh. Với băng tần giao diện tối đa l&ecirc;n tới 40 Gbps, bạn c&oacute; thể tr&igrave;nh chiếu đa phương tiện l&ecirc;n TV, m&agrave;n h&igrave;nh UHD hay thậm ch&iacute; với độ ph&acirc;n giải 8K. Tốc độ hệ thống v&agrave; độ phản hồi được tăng cường bởi 32GB RAM 3200MHz, thậm ch&iacute; c&oacute; thể dễ d&agrave;ng n&acirc;ng l&ecirc;n 48GB với một khe SO-DIMM bổ sung.</span></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:center"><strong>LINH HOẠT</strong><br />
<strong>DI ĐỘNG V&Agrave; MẠNH MẼ</strong></p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:center"><strong><img src="https://lh4.googleusercontent.com/lSFC_mFF_cJ9d-sXQnUnea4OmTNXn79zBjeAAgKYaXZwkwn0FFSmRaMTgSXFnLDYlbOytHi5GESJf4zkzdSUrJrh3fw8NcWCOvip-e9nS7sd5bg1F9S6G6lyMaHDmc2TmdgSr1I3" style="height:336px; margin-left:0px; margin-top:0px; width:602px" /></strong></p>

<p dir="ltr" style="text-align:justify">&nbsp;</p>

<p dir="ltr" style="text-align:justify"><span style="background-color:transparent; font-family:arial; font-size:11pt">Mỏng 20,9mm, nặng 2,4kg v&agrave; g&oacute;i gọn trong một bộ khung nh&ocirc;m-magie cứng c&aacute;p. </span><strong>Zephyrus Duo 15</strong><span style="background-color:transparent; font-family:arial; font-size:11pt"> cho ph&eacute;p bạn chơi game, s&aacute;ng tạo, ph&aacute;t trực tiếp v&agrave; l&agrave;m việc ở bất kỳ đ&acirc;u. Pin dung lượng lớn 90Wh cho ph&eacute;p bạn kh&ocirc;ng cần cắm sạc m&agrave; vẫn c&oacute; thể l&agrave;m việc v&agrave; giải tr&iacute; ở mọi nơi. Sạc Type-C với Thunderbolt 3 cho ph&eacute;p bạn sạc m&aacute;y từ pin sạc dự ph&ograve;ng n&ecirc;n bạn kh&ocirc;ng cần t&igrave;m kiếm ổ điện khi sắp hết pin. Với chiếc </span><strong>laptop gaming</strong><span style="background-color:transparent; font-family:arial; font-size:11pt"> n&agrave;y, c&aacute;c hoạt động h&agrave;ng ng&agrave;y như duyệt web hoặc ph&aacute;t trực tiếp video, bạn c&oacute; thể sử dụng nguồn 65W để di chuyển nhẹ nh&agrave;ng hơn.</span></p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:center"><strong>&Acirc;M THANH</strong><br />
<strong>TẬN HƯỞNG &Acirc;M THANH ESS SABRE KHOẺ KHOẮN</strong></p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:center"><strong><img src="https://lh3.googleusercontent.com/MbAGcP6qwCPdvRSbkjlAUqsLPwnYGPscsMbgnK0rZbZjVSQP45WXN5idDi3vk_BK9TOD6V0Lm0I2Dc_-REOQahC9iTc7YKwl3GA18n2PMEJQ8ZSB4OIhTTlzTgp-NTYSWQYiRZCk" style="height:308px; margin-left:0px; margin-top:0px; width:602px" /></strong></p>

<p dir="ltr" style="text-align:justify">&nbsp;</p>

<p dir="ltr" style="text-align:justify"><span style="background-color:transparent; font-family:arial; font-size:11pt">Đắm ch&igrave;m trong &acirc;m thanh trung thực. High-Res Audio cung cấp bởi ESS Sabre. Đeo tai nghe ưa th&iacute;ch của bạn để tận hưởng &acirc;m thanh v&ograve;m ảo trong trẻo, gi&agrave;u m&agrave;u sắc để c&oacute; trải nghiệm đắm ch&igrave;m. Sử dụng giắc cắm micro ri&ecirc;ng để cắm microphone khi tr&ograve; chuyện nh&oacute;m, ph&aacute;t trực tiếp v&agrave; nhiều hơn thế nữa. Hai loa khuếch đại th&ocirc;ng minh tr&ecirc;n chiếc </span><strong>laptop gaming</strong><span style="background-color:transparent; font-family:arial; font-size:11pt"> nằm trong giới hạn nhiệt độ v&agrave; khoảng lệch để tr&aacute;nh g&acirc;y hư hại đến loa. Tăng &acirc;m lượng l&ecirc;n m&agrave; kh&ocirc;ng l&agrave;m m&eacute;o &acirc;m thanh với bass trầm v&agrave; rộng hơn.</span></p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:center"><strong>B&Agrave;N PH&Iacute;M </strong><br />
<strong>CH&Igrave;A KHO&Aacute; ĐỂ TĂNG TỐC</strong></p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:center"><strong><img src="https://lh6.googleusercontent.com/9rqFqty2R-c-rTegujyjr0WDB_L333Jy1utHQbCvx1hbe1bwIYTLbkrhJvsAI2MjEfygYuRm3CjyOUmCAn9yIPMggUP5_C4OehqWhh3E5bQfKriYDJL57--dp4_40O7wc9AIpi_2" style="height:344px; margin-left:0px; margin-top:0px; width:602px" /></strong></p>

<p dir="ltr" style="text-align:justify">&nbsp;</p>

<p dir="ltr" style="text-align:justify"><span style="background-color:transparent; font-family:arial; font-size:11pt">Được thiết kế để nhập ch&iacute;nh x&aacute;c, b&agrave;n ph&iacute;m mang phong c&aacute;ch của m&aacute;y t&iacute;nh</span><strong> PC Gaming</strong><span style="background-color:transparent; font-family:arial; font-size:11pt">: khoảng c&aacute;ch giữa c&aacute;c ph&iacute;m chức năng rộng để dễ nhận diện, c&aacute;c ph&iacute;m n&oacute;ng để thiết lập những lệnh thiết yếu ngay trong tầm tay. Vị tr&iacute; tiến về ph&iacute;a trước gi&uacute;p đưa tay bạn ra khỏi vị tr&iacute; n&oacute;ng tr&ecirc;n khung, giảm nhiệt độ bề mặt khi chạy c&aacute;c game nặng trong khi linh kiện tr&ecirc;n tay c&oacute; thể th&aacute;o rời gi&uacute;p tăng độ c&ocirc;ng th&aacute;i học v&agrave; thoải m&aacute;i hơn khi sử dụng. H&agrave;nh tr&igrave;nh ph&iacute;m 1,4mm tr&ecirc;n </span><strong>Laptop Gaming</strong><span style="background-color:transparent; font-family:arial; font-size:11pt"> n&agrave;y cho ph&eacute;p g&otilde; dễ d&agrave;ng hơn nhằm tăng tốc độ g&otilde; của bạn. Tuỳ biến RGB tr&ecirc;n từng ph&iacute;m gi&uacute;p l&agrave;m nổi bật ph&iacute;m ch&iacute;nh v&agrave; ph&iacute;m tắt.</span></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:center"><span style="background-color:transparent; font-family:arial; font-size:11pt"><img src="https://lh5.googleusercontent.com/8pdXuyOp6iy6rrenfp-LOvbR5U8NrVvWrzAVHzuS2LTuW8lTZa0YuLkGIqxQX82_82t0VG4i7kFhNSVlfG2Gj4-YLITg3cxVgPwD9jGNPKAtCj12VAN_kOAPvEDgvbU3gNAp2hyn" style="height:285px; margin-left:0px; margin-top:0px; width:602px" /></span></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:justify">&nbsp;</p>

<p dir="ltr" style="text-align:justify"><span style="background-color:transparent; font-family:arial; font-size:11pt">H&atilde;y qu&ecirc;n bộ chuyển đổi đi với </span><strong>Zephyrus Duo 15</strong><span style="background-color:transparent; font-family:arial; font-size:11pt">. Cổng USB 3.2 Type-C Gen 2 với DisplayPort 1.4, Thunderbolt 3 v&agrave; khả năng truyền điện năng cho ph&eacute;p bạn kết nối với thiết bị thế hệ tiếp theo để truyền dữ liệu si&ecirc;u nhanh v&agrave; sạc nhanh. Trong khi 3 cổng USB 3.2 Type-A gi&uacute;p tăng cường kh&ocirc;ng gian cho linh kiện game của bạn. Hai giắc cắm &acirc;m thanh cho ph&eacute;p bạn dễ d&agrave;ng kết nối với microphone b&ecirc;n ngo&agrave;i để c&oacute; &acirc;m thanh ph&aacute;t v&agrave; tr&ograve; chuyện trong hơn. Chơi game v&agrave; giải tr&iacute; tr&ecirc;n m&agrave;n h&igrave;nh lớn với đầu ra HDMI 2.0b hỗ trợ độ ph&acirc;n giải 4K UHD ở tần số qu&eacute;t l&ecirc;n tới 60Hz.</span></p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:center"><strong>PHẦN MỀM</strong><br />
<strong>TINH CHỈNH V&Agrave; C&Aacute; NH&Acirc;N HO&Aacute; HỆ THỐNG ĐỒNG NHẤT</strong></p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:center"><strong><img src="https://lh3.googleusercontent.com/tfhaqQs252w7o1PVHPwciAmR8XGQPtqBRSfJTQDpDx7DR8b7f5vpgKXp6l9rJr6EVmDK6pRVJhsqb7PfhAMXb18_SLQaAgYrBa6dAK3d-BxWjpzefRBQyuAl0wdmGli9w_z72CWe" style="height:353px; margin-left:0px; margin-top:0px; width:602px" /></strong></p>

<p dir="ltr" style="text-align:center">&nbsp;</p>

<p dir="ltr" style="text-align:left"><span style="background-color:transparent; font-family:arial; font-size:11pt">ROG Armory Crate tr&ecirc;n </span><strong>Zephyrus Duo 15</strong><span style="background-color:transparent; font-family:arial; font-size:11pt"> hợp nhất chức năng điều khiển hệ thống v&agrave; &aacute;nh s&aacute;ng để đưa những t&ugrave;y chọn c&agrave;i đặt thiết yếu đến ngay trong tầm tay bạn trong một tiện &iacute;ch duy nhất. Bạn c&oacute; thể dễ d&agrave;ng x&aacute;c định t&ugrave;y chỉnh c&aacute;c cấu h&igrave;nh theo trường hợp gi&uacute;p tự động điều chỉnh khi bạn chơi những tựa game y&ecirc;u th&iacute;ch.</span></p>
', 24, N'//www.youtube.com/embed/bUOmRIxGdZc', NULL, 0)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (41, N'Laptop Asus ROG Zephyrus G15 GA502IV-AZ033T R7 4800HS/ 16GB/ SSD 512GB/ RTX 2060/ 15.6"/ FullHD/ 240Hz/ Win 10', NULL, N'laptop-asus-rog-zephyrus-g15-ga502iv-az033t-r7-4800hs-16gb-ssd-512gb-rtx-2060-15-6-fullhd-240hz-win-10', N'<div>- CPU: AMD Ryzen&trade; 7-4800HS (2.90GHz upto 4.20GHz, 8MB)</div>

<div>-RAM: 16GB DDR4 3200MHz (Max 32GB)+ 1slot</div>

<div>- Ổ cứng: 512G M.2 NVMe PCIe 3.0</div>

<div>- VGA: nVidia Geforce RTX 2060 6GB GDDR6</div>

<div>- M&agrave;n h&igrave;nh: 15.6 inch FHD (1920x1080) 240Hz</div>

<div>- Pin: 4Cell, 76WHr</div>

<div>- C&acirc;n nặng: 2.1kg</div>

<div>- T&iacute;nh năng: Đ&egrave;n nền b&agrave;n ph&iacute;m</div>

<div>- OS: Windows 10 SL</div>
', N'/Data/images/product/Zephyrus%20G15-228x228.jpg', N'<Images><Images>/Data/images/product/Laptop%20Asus%20ROG%20Zephyrus%20G15%20GA502IU-AL007T-2-500x500.jpg</Images><Images>/Data/images/product/Laptop%20Asus%20ROG%20Zephyrus%20G15%20GA502IU-AL007T-3-500x500.jpg</Images><Images>/Data/images/product/Laptop%20Asus%20ROG%20Zephyrus%20G15%20GA502IU-AL007T-4-500x500.jpg</Images><Images>/Data/images/product/Laptop%20Asus%20ROG%20Zephyrus%20G15%20GA502IU-AL007T-5-500x500.jpg</Images><Images>/Data/images/product/Laptop%20Asus%20ROG%20Zephyrus%20G15%20GA502IU-AL007T-6-500x500.jpg</Images></Images>', CAST(34890000 AS Decimal(18, 0)), CAST(37690000 AS Decimal(18, 0)), NULL, NULL, 1234, CAST(N'2020-12-18T01:53:19.927' AS DateTime), N'quang', NULL, NULL, 20, 0, 1011, 1, N'<p>Laptop Asus ROG Zephyrus G15 GA502IV-AZ033T được thiết kế tinh giản v&agrave; phong c&aacute;ch trầm lặng tinh tế gi&uacute;p cho ROG Zephyrus G15 ph&ugrave; hợp với mọi nơi từ c&aacute;c hệ thống chiến đấu v&agrave; hội chơi qua mạng LAN cho tới tr&ecirc;n lớp học hay trong tiệm c&agrave; ph&ecirc;. Sản phẩm đang được b&aacute;n tại <a href="http://tncstore.vn">TNC Store</a></p>

<p><img src="https://www.tncstore.vn/image/catalog/laptop/asus/ROG Zephyrus G15 GA502IU-AL007T/laptop-asus-rog-zephyrus-g15-ga502iu-al007t-a.jpg" style="width:801px" /></p>
', 24, NULL, NULL, 7)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (42, N'LAPTOP ASUS TUF FX505DT-HN478T R7-3750H/ GTX1650 4GB/ 8GB/ 512GB/ 15.6″/ 144HZ/ IPS/ WIN 10', NULL, N'laptop-asus-tuf-fx505dt-hn478t-r7-3750h-gtx1650-4gb-8gb-512gb-15-6-144hz-ips-win-10', N'<p>- CPU: AMD Ryzen 7-3750H (2.30 upto 4.00GHz, 4 nh&acirc;n 8 luồng, 4MB)</p>

<p>- RAM: 8GB DDR4 2400MHz (2 khe, tối đa 32GB)</p>

<p>- HDD: 512GB PCIe&reg; Gen3 SSD</p>

<p>- VGA: NVIDIA Geforce GTX 1650 4GB GDDR5</p>

<p>- M&agrave;n h&igrave;nh: 15.6 inch FHD (1920*1080) IPS, Non-Glare, 144Hz</p>

<p>- OS: Windows 10 SL</p>

<p>- Pin: 3 cell, 48WHrs</p>

<p>- C&acirc;n nặng: 2.2 kg</p>

<p>- T&iacute;nh năng: Đ&egrave;n nền b&agrave;n ph&iacute;m</p>
', N'/Data/images/product/laptop-asus-tuf-fx505dd-228x228.jpg', N'<Images><Images>/Data/images/product/laptop-asus-tuf-fx505dt-hn488t-2-500x500.jpg</Images><Images>/Data/images/product/laptop-asus-tuf-fx505dt-hn488t-4-500x500.jpg</Images><Images>/Data/images/product/laptop-asus-tuf-fx505dt-hn488t-5-500x500.jpg</Images><Images>/Data/images/product/laptop-asus-tuf-fx505dd-500x500.jpg</Images><Images>/Data/images/product/laptop-asus-tuf-fx505dt-hn488t-8-500x500.jpg</Images><Images>/Data/images/product/laptop-asus-tuf-fx505dt-hn488t-3-500x500.jpg</Images><Images>/Data/images/product/laptop-asus-tuf-fx505dt-hn488t-6-500x500.jpg</Images></Images>', CAST(17990000 AS Decimal(18, 0)), CAST(18890000 AS Decimal(18, 0)), NULL, NULL, 675, CAST(N'2020-12-18T01:58:16.643' AS DateTime), N'quang', NULL, NULL, 20, 0, 1011, 1, N'<p>LAPTOP ASUS TUF FX505DT-HN478T R5-3550H/GTX1650 4GB/8GB/512GB/15.6&Prime;/144HZ/IPS/WIN 10/GOLD STEEL RGB&nbsp;thuộc chuẩn TUF qu&acirc;n độ si&ecirc;u bền. Sản phẩm đang được ph&acirc;n phối ch&iacute;nh h&atilde;ng tại <a href="http://tncstore.vn">TNC Store</a></p>

<p><img src="https://www.tncstore.vn/image/catalog/laptop/asus/FX505DD AL186T/laptop-asus-tuf-gaming-fx505dd-al186t-a.jpg" style="width:792px" /></p>
', 24, NULL, NULL, 5)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (43, N'LAPTOP GAMING MSI GL65 LEOPARD 10SDK 242VN I7 10750H/1660TI 6GB/16GB/512GB/15.6”/FHD/144HZ/IPS/WIN 10', NULL, N'laptop-gaming-msi-gl65-leopard-10sdk-242vn-i7-10750h-1660ti-6gb-16gb-512gb-15-6-fhd-144hz-ips-win-10', N'<p>- CPU: Intel core i7-10750H (2.60GHz upto 5.00 GHz, 12MB)</p>

<p>- RAM: 16GB (8GB*2) DDR4 2666Mhz</p>

<p>- Ổ cứng: 512GB NVMe PCIe SSD + 1 slot 2.5&quot;</p>

<p>- VGA: NVIDIA&reg; GeForce&reg; GTX 1660 Ti 6GB GDDR6</p>

<p>- M&agrave;n h&igrave;nh: 15.6 inch FHD (1920*1080), IPS-Level 144Hz 72%NTSC Thin Bezel, close to 100%sRGB</p>

<p>- C&acirc;n nặng: 2.3 kg</p>

<p>- T&iacute;nh năng: Đ&egrave;n nền b&agrave;n ph&iacute;m</p>

<p>- OS: Windows 10 Home</p>
', N'/Data/images/product/MSI%20Leopard%20235VN-228x228.jpg', N'<Images><Images>/Data/images/product/laptop-gaming-msi-gl65-lepard-10sdk-242vn-2-500x500.jpg</Images><Images>/Data/images/product/laptop-gaming-msi-gl65-lepard-10sdk-242vn-5-500x500.jpg</Images><Images>/Data/images/product/MSI%20Leopard%20235VN-500x500.jpg</Images><Images>/Data/images/product/laptop-gaming-msi-gl65-lepard-10sdk-242vn-4-500x500.jpg</Images><Images>/Data/images/product/laptop-gaming-msi-gl65-lepard-10sdk-242vn-3-500x500.jpg</Images></Images>', CAST(33490000 AS Decimal(18, 0)), NULL, NULL, NULL, 1235, CAST(N'2020-12-18T02:24:05.873' AS DateTime), N'quang', NULL, NULL, 20, 0, 1042, 1, N'<div style="text-align: center;"><strong>Sự tiến ho&aacute;: Hiệu năng được tăng cường nhờ&nbsp;</strong></div>

<div style="text-align: center;"><span style="background-color:transparent; font-size:14pt">linh hồn rồng tối thượng</span></div>

<div style="text-align: center;"><span style="background-color:transparent; font-size:11pt">Chỉ c&oacute; kẻ mạnh mới th&iacute;ch nghi để tồn tại v&agrave; ph&aacute;t triển. H&atilde;y chọn Linh hồn rồng với mẫu Laptop chơi game mới nhất đến từ MSI, được trang bị bộ vi xử l&yacute; Intel&reg; Core &trade; i7 thế hệ </span><strong><img src="https://lh5.googleusercontent.com/HC01SrQCT5Kkti2vjtc4mEjw8PKWNm956uFO-3ndCvEhuqHNr4wJm3ehb8OHjTagdHwlVIvJa_tZ6CZXTZNQ0GYP3KDpHmpNOHUIhqB9xEKwZp9XILNGFXNKGc2D_ATuO0dlI743" style="height:377px; margin-left:0px; margin-top:0px; width:602px" /></strong><span style="background-color:transparent; font-size:11pt">thứ 10 (Comet Lake H) v&agrave; đồ họa GeForce&reg; GTX mới nhất được thiết kế cho c&aacute;c game thủ thời thượng. H&atilde;y đến với một Thế hệ ho&agrave;n to&agrave;n mới.</span></div>

<div style="text-align: center;"><img src="https://lh5.googleusercontent.com/-rSF2xQ1uIosvbjFpywqHcAqkiT7ZPkqekCVTnbQJfOHmAztpMQqsvF0gj19Qbj6BXHUaaspY3_ByigtDfVGIkRzdgdLqkwJnnNMBfR0e1a1I5wZBD0BtJJmJaAlOSjaTVNKJItg" style="background-color:transparent; font-size:11pt; height:339px; margin-left:0px; margin-top:0px; width:602px" /></div>

<div style="text-align: center;"><span style="background-color:transparent; font-size:14pt">Thiết kế nổi tiếng với&nbsp;</span></div>

<div style="text-align: center;"><span style="background-color:transparent; font-size:14pt">hai phi&ecirc;n bản LED RGB v&agrave; LED m&agrave;u đỏ</span></div>

<div style="text-align: center;"><img src="https://lh4.googleusercontent.com/GSfGL78rQab5MAO2J28I35RwtykLm5OG68W9DZM0QjDe4aDbC6VhojD71HNE8Av-b61Sz3q0WXipQmf1gfaI5Z2SRE_6wpiD2XAwcUqt_zNBg67TMZ8-U_Xoe7_8oxZm2IJYBwLN" style="background-color:transparent; font-size:11pt; height:313px; margin-left:0px; margin-top:0px; width:602px" /></div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;"><span style="background-color:transparent; font-size:14pt">Định nghĩa lại những g&igrave; c&oacute; thể</span></div>

<div style="text-align: center;"><span style="background-color:transparent; font-size:11pt">Bộ vi xử l&yacute; mới nhất Intel&reg; Core &trade; i7 thế hệ thứ 10 được tăng sức mạnh với hiệu năng lớn hơn 15% so với thế hệ trước. Tần số l&otilde;i đơn cao hơn cho trải nghiệm chơi game tốt hơn.</span></div>

<div style="text-align: center;"><span style="background-color:transparent; font-size:11pt">CPU: 6 nh&acirc;n.</span></div>

<div style="text-align: center;"><span style="background-color:transparent; font-size:11pt">Xung boost đơn nh&acirc;n l&ecirc;n đến 5.0 GHz.</span></div>

<div style="text-align: center;"><img src="https://lh3.googleusercontent.com/Z7fmzU_Lm7O0tIkbFGjn1NrWOOB3i4cQKp5Xc5zIHaTz8WKffkq_P1I9j_Pf66KNMZJOwOs-4w-ZCoCKJKE_5dDBYGB1cvAsmJX2mmsPcsmScI2wXk5YaCBAI8DAfaextUFb-SBy" style="background-color:transparent; font-size:11pt; height:351px; margin-left:0px; margin-top:0px; width:602px" /></div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;"><span style="background-color:transparent; font-size:14pt">NVIDIA Geforce GTX 16 Series&nbsp;</span></div>

<div style="text-align: center;"><span style="background-color:transparent; font-size:11pt">GeForce&reg; GTX 1660 Ti được x&acirc;y dựng với hiệu suất đồ họa mang t&iacute;nh đột ph&aacute; của kiến tr&uacute;c NVIDIA Turing &trade; đ&atilde; từng đoạt giải. Với hiệu suất ngang ngửa GeForce GTX 1070, đ&acirc;y l&agrave; một sự cải tiến hiệu năng r&otilde; rệt cho c&aacute;c tr&ograve; chơi phổ biến nhất hiện nay v&agrave; thậm ch&iacute; c&ograve;n nhanh hơn với c&aacute;c tựa game mới ph&aacute;t h&agrave;nh.</span></div>

<div style="text-align: center;"><img src="https://lh4.googleusercontent.com/lFadh_6LSg2656zjH3dr544pZ--lZdbPCXGcT6CihwmsVMerST2hBT5aSGFD82M1BiS4gmDy3hyhzYxyqg7HENZo1TisF9bEoiPCjOlp39vVnuoYgn36RuJOq2Mid8VKJXXcmDfw" style="background-color:transparent; font-size:11pt; height:288px; margin-left:0px; margin-top:0px; width:602px" /></div>

<div style="text-align: center;"><span style="background-color:transparent; font-size:11pt">Bảng test điểm chuẩn hiệu năng của GTX 16 Series so với c&aacute;c phi&ecirc;n bản tiền nhiệm</span></div>

<div style="text-align: center;"><span style="background-color:transparent; font-size:14pt">Hệ thống đ&egrave;n nền b&agrave;n ph&iacute;m Steel Series c&oacute; thể tuỳ chỉnh</span></div>

<div style="text-align: center;"><span style="background-color:transparent; font-size:11pt">T&ugrave;y chỉnh m&agrave;u sắc từng ph&iacute;m theo &yacute; th&iacute;ch của bạn v&agrave; nhận trạng th&aacute;i khi chơi game theo thời gian thực th&ocirc;ng qua &aacute;nh s&aacute;ng b&agrave;n ph&iacute;m hoặc thậm ch&iacute; điều chỉnh m&agrave;u đ&egrave;n nhảy theo giai điệu y&ecirc;u th&iacute;ch của bạn!</span></div>

<div style="text-align: center;"><img src="https://lh3.googleusercontent.com/eZ-y6wbeIj0JG8oWPQOvkw0vcX9F6j0FaAUXZGwPnUSrmFOnavXdLMONXJVhEPN2IHKXMkG7uhCrrBES-nyMmc1H3FZcWTOgXboswFPqva6Yuw7JwM8VWQHnVgWDmk0CoBAUGtOp" style="background-color:transparent; font-size:11pt; height:260px; margin-left:0px; margin-top:0px; width:602px" /></div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;"><span style="background-color:transparent; font-size:14pt">M&agrave;n h&igrave;nh với tấm nền IPS c&ugrave;ng tần số qu&eacute;t 144Hz đem lại tốc độ v&agrave; độ sắc n&eacute;t ho&agrave;n hảo</span></div>

<div style="text-align: center;"><span style="background-color:transparent; font-size:11pt">M&agrave;n h&igrave;nh chơi game c&oacute; tốc độ cực nhanh mang đến cho bạn h&igrave;nh ảnh sống động nhất. Bạn sẽ kh&ocirc;ng bao giờ bỏ lỡ bất cứ khoảnh khắc n&agrave;o.&nbsp;</span></div>

<div style="text-align: center;"><img src="https://lh5.googleusercontent.com/I-0SnR6stJGOceheDjeBeZAMpvL5c4GSfH8JtXmzdAGw8IlPAvw3qXqJ1-xyDneyTHRvioRvK2rc500Z0BynQijbDThkADkpyvLoLQP3mBsRRDmugT9XBqKJUO825F8fuNqLU7Ar" style="background-color:transparent; font-size:11pt; height:313px; margin-left:0px; margin-top:0px; width:602px" /></div>

<div style="text-align: center;"><span style="background-color:transparent; font-size:14pt">T&iacute;nh năng Matrix Display độc quyền</span></div>

<div style="text-align: center;"><span style="background-color:transparent; font-size:14pt">&nbsp;với tối đa l&ecirc;n đến 3 m&agrave;n h&igrave;nh c&ugrave;ng l&uacute;c</span></div>

<div style="text-align: center;"><span style="background-color:transparent; font-size:11pt">Mở rộng g&oacute;c nh&igrave;n tr&ecirc;n nhiều m&agrave;n h&igrave;nh với HDMI v&agrave; Mini DisplayPort, đạt chuẩn độ ph&acirc;n giải đầu ra l&ecirc;n đến 4K (3840x2160) gi&uacute;p n&acirc;ng cao hiệu suất l&agrave;m việc v&agrave; thỏa m&atilde;n c&aacute;c nhu cầu giải tr&iacute;.</span></div>

<div style="text-align: center;"><span style="background-color:transparent; font-size:11pt">&nbsp;</span></div>

<div style="text-align: center;"><img src="https://lh3.googleusercontent.com/7Lts6svVlVKuKiabZP24BMEYs23ZnHHztcnZJohOv2kgZUe1zDVvbmjjVrvGCExRhBu-aBTQGTCho4SCzrNUFp8NJxGsYCOwHH-ye29xZMa1BQAP0nBsDmlq0ULG5SpX2LG00ICN" style="background-color:transparent; font-size:11pt; height:212px; margin-left:0px; margin-top:0px; width:602px" /></div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;"><span style="background-color:transparent; font-size:15pt">C&aacute;ch mạng về bộ phận tản nhiệt cho gaming</span></div>

<div style="text-align: center;"><span style="background-color:transparent; font-size:11pt">C&aacute;c giải ph&aacute;p tản nhiệt chuy&ecirc;n dụng cho cả CPU v&agrave; GPU với tổng cộng 7 ống dẫn nhiệt đảm bảo hiệu suất tối đa khi chơi game cấu h&igrave;nh nặng.</span><span style="background-color:transparent; font-size:11pt"><img src="https://lh5.googleusercontent.com/2g9bVmfP6n3RvmzeJkwHhIqa-zJY9G33CzZuZXQx-X-QAdDMXBJTzWHWx9FbcMjOi0KikdNvyfcnwSsj_ME_PuZSxzcd-tIq58RAF0O8RXwXXJHk3xm7wx-bZ5IhKqJzQR7a3bPa" style="height:277px; margin-left:0px; margin-top:0px; width:602px" /></span></div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;"><span style="background-color:transparent; font-size:15pt">Trải nghiệm &acirc;m thanh cực đỉnh</span></div>

<div style="text-align: center;"><span style="background-color:transparent; font-size:11pt">Đắm m&igrave;nh trong những giai điệu chỉ c&oacute; trong bản gốc v&agrave; tận hưởng chất lượng &acirc;m thanh cao cấp.&nbsp;</span></div>

<div style="text-align: center;"><img src="https://lh6.googleusercontent.com/zxxDzncRY-lNqlkiR4YNG8kB3Oqq0pjcOoKEWiVbQn9V5uQkyxMKur_1orIkzyQ7v-fbHoTTA-fx_XK495xBLI5ZB-PRrSTfR1VOgaMxXGD2s6wgK3De5RqhW_kjxMpqCcG2GM0z" style="background-color:transparent; font-size:15pt; height:399px; margin-left:0px; margin-top:0px; width:602px" /></div>

<div style="text-align: center;"><span style="background-color:transparent; font-size:15pt">&Acirc;m thanh lớn hơn gấp 5 lần c&aacute;c loa kh&aacute;c,&nbsp;</span></div>

<div style="text-align: center;"><span style="background-color:transparent; font-size:15pt">cho sự cộng hưởng cao hơn v&agrave; chất lượng tốt hơn</span></div>

<div style="text-align: center;"><span style="background-color:transparent; font-size:11pt">Người chơi c&oacute; thể cảm nhận từng tiếng động cơ nhỏ nhất với bộ loa khổng lồ được n&acirc;ng cấp.</span></div>

<div style="text-align: center;"><span style="background-color:transparent; font-size:11pt">Thiết kế m&ocirc;-đun &acirc;m thanh độc quyền v&agrave; buồng &acirc;m thanh độc lập cho trải nghiệm &acirc;m thanh đỉnh cao.</span></div>

<div style="text-align: center;"><img src="https://lh5.googleusercontent.com/etmYVHSXF_K83vk8UQbrRYuFbN2uP81dgprwauif0YOfU0xeejEpbs3yEPdPdwJi_xpdiQOUjZuIcM141CTO4rqdhI1co-gFdE7Rvy65w3YCsG7_Zfw329PHBvjTPmYAYa-KZrg7" style="background-color:transparent; font-size:11pt; height:261px; margin-left:0px; margin-top:0px; width:602px" /></div>

<div style="text-align: center;"><span style="background-color:transparent; font-size:14pt">Cấp độ ho&agrave;n to&agrave;n mới của C&ocirc;ng nghệ &acirc;m thanh Nahimic 3 độc quyền&nbsp;</span></div>

<div style="text-align: center;"><span style="background-color:transparent; font-size:11pt">Hệ thống &acirc;m thanh v&ograve;m 3D được n&acirc;ng cấp v&agrave; bạn c&oacute; thể t&ugrave;y chỉnh ph&ugrave; hợp với nhu cầu nghe nhạc, xem phim hay c&aacute;c cuộc gọi.</span></div>

<div style="text-align: center;"><img src="https://lh4.googleusercontent.com/lFFqYYCdY_NeU1yccllSz8ufat1vAUUa7B1MS2r1QiItukOwLRQQSlpqHlhNb730JGk1q3Z5tsV77uAUhyv9QX6HyVY1EWGqiurLCuma-XB-MlRIsCf5kGdbu0ljcsjTAtMTccPO" style="background-color:transparent; font-size:11pt; height:195px; margin-left:0px; margin-top:0px; width:602px" /></div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;"><span style="background-color:transparent; font-size:15pt">Gia tăng sức mạnh cho cỗ m&aacute;y của bạn</span></div>

<div style="text-align: center;"><span style="background-color:transparent; font-size:11pt">Phần mềm độc quyền Dragon Center sẽ gi&uacute;p bạn kiểm so&aacute;t chiếc laptop theo c&aacute;ch ri&ecirc;ng của m&igrave;nh. C&aacute;c chức năng được tối ưu ho&aacute; cho mỗi t&aacute;c vụ cụ thể.</span></div>

<div style="text-align: center;"><img src="https://lh4.googleusercontent.com/YqKsE4QA0GIA6yWRQNF93hdjm6FBmlwt2Z0Zi13ya1Jq4wHV5MMiht40iJiF0dC7ithWdgVFeAln0yJdCjRaODB3gs_ZlKPOiAh6GbMKkmVYyPD9gsMMx1heMYd7rWlq7pDY-FX6" style="background-color:transparent; font-size:11pt; height:409px; margin-left:0px; margin-top:0px; width:602px" /></div>

<div style="text-align: center;"><img src="https://lh6.googleusercontent.com/G8DWNu1vlsiIXA18lYNRWTlcyleGNKTHc82uhJF5IvyNlAuZ2yMG4i48kMpyoCHL4VYO3ZO1Hw425dLgF-ebiklX046WtVb7UNi0dKWMDdFhEijaHeVMCRDkvRJksXByyWsG4bOY" style="background-color:transparent; font-size:15pt; height:417px; margin-left:0px; margin-top:0px; width:602px" /></div>

<div style="text-align: center;"><span style="background-color:transparent; font-size:15pt">MSI App Player</span></div>

<div style="text-align: center;"><span style="background-color:transparent; font-size:11pt">Được ph&aacute;t triển dưới sự hợp t&aacute;c độc quyền với BlueStacks, MSI App Player mang đến trải nghiệm chơi c&aacute;c tựa game di động tr&ecirc;n nền tảng PC, đồng thời tận dụng c&aacute;c t&iacute;nh năng được t&ugrave;y chỉnh như đ&egrave;n nền b&agrave;n ph&iacute;m v&agrave; đồ họa tốt hơn với c&aacute;c t&aacute;c vụ đa nhiệm.</span></div>

<div style="text-align: center;"><span style="background-color:transparent; font-size:11pt">&nbsp;</span><span style="background-color:transparent; font-size:11pt"><img src="https://lh4.googleusercontent.com/7qF6UsjrWMxuELJ1yIJS47E7QRD_OykwfwktRzDUCM11LSB5Txqzy-etXsbe6U0F3tNPu8SvRCUfPUTMbQLnsu2l_uxJFfqyxpykXQF4FWpfQxS1_6mcyH_v_YwbPTNSntxYkr6T" style="height:381px; margin-left:0px; margin-top:0px; width:602px" /></span></div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;">&nbsp;</div>

<div style="text-align: center;"><span style="background-color:transparent; font-size:15pt">SteelSeries Engine 3 (SSE3)</span></div>

<div style="text-align: center;"><span style="background-color:transparent; font-size:11pt">Biến b&agrave;n ph&iacute;m của bạn th&agrave;nh trung t&acirc;m chỉ huy bằng c&aacute;ch kết hợp nhiều ph&iacute;m th&agrave;nh một ph&iacute;m lệnh ch&iacute;nh v&agrave; đồng bộ h&oacute;a tr&ecirc;n tất cả c&aacute;c thiết bị của SteelSeries.</span></div>

<div style="text-align: center;"><img src="https://lh5.googleusercontent.com/6T6V-gQRzTt6yWOv1u4NKpj56IHmL6blV7gbzD0xxh2dbDdi80XjmsA-ykvlEpHejq7knpy5DENQDaHOasVg0FfX5KyoQJHFif59IWVfzfHLkI0QmziDWXuZ3Un4GmrgzlssweUo" style="background-color:transparent; font-size:11pt; height:351px; margin-left:0px; margin-top:0px; width:602px" /></div>

<p>&nbsp;</p>

<p style="text-align:center">&nbsp;</p>

<p>&nbsp;</p>
', 24, NULL, NULL, 0)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (44, N'Laptop ASUS TUF Gaming A17 FA706II-H7125T R5 4600H/ GTX 1650TI 4GB/ 8GB /512GB/ 17.3″ FHD IPS 120HZ', NULL, N'laptop-asus-tuf-gaming-a17-fa706ii-h7125t-r5-4600h-gtx-1650ti-4gb-8gb-512gb-17-3-fhd-ips-120hz', N'<p>- CPU: AMD Ryzen R5-4600H</p>

<p>- RAM: 8GB DDR4 3200MHz (2x SO-DIMM slots)</p>

<p>- Ổ cứng: 512GB PCIE SSD</p>

<p>- VGA: NVIDIA Geforce GTX 1650Ti 4GB&nbsp;</p>

<p>- M&agrave;n h&igrave;nh: 17.3 inch FHD IPS. Non-Glare, 120Hz Nanoedge</p>

<p>- Pin: 4Cell, 90WHrs</p>

<p>- C&acirc;n nặng: 2.6Kg</p>

<p>- HĐH: Windows 10 SL</p>
', N'/Data/images/product/laptop-asus-tuf-a17-228x228.png', N'<Images><Images>/Data/images/product/laptop-asus-tuf-a17-1-500x500.jpg</Images><Images>/Data/images/product/laptop-asus-tuf-a17-2-500x500.jpg</Images><Images>/Data/images/product/laptop-asus-tuf-a17-500x500.png</Images></Images>', CAST(20990000 AS Decimal(18, 0)), CAST(21990000 AS Decimal(18, 0)), NULL, NULL, 786, CAST(N'2020-12-18T01:59:50.653' AS DateTime), N'quang', NULL, NULL, 20, 0, 1011, 1, N'<p>Laptop ASUS TUF Gaming A17 l&agrave; d&ograve;ng Laptop với k&iacute;ch thước 17 inch cho bạn trải nghiệm game cũng như giải tr&iacute; tốt hơn. Sản phẩm hiện đang b&aacute;n tại <a href="http://tncstore.vn">TNC Store</a></p>

<p><img src="https://www.tncstore.vn/image/catalog/laptop/asus/TUF A17/laptop-asus-tuf-a17-a.jpg" style="width:655px" /></p>
', 24, NULL, NULL, 5)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (45, N'Laptop Asus TUF Gaming A17 FA706IU-H7133T R7-4800H/ 8GB/ GTX 1660TI 6GB/ 512GB/ 17.3″ FHD IPS 120HZ', NULL, N'laptop-asus-tuf-gaming-a17-fa706iu-h7133t-r7-4800h-8gb-gtx-1660ti-6gb-512gb-17-3-fhd-ips-120hz', N'<p>- CPU: AMD Ryzen R7-4800H (2.90GHz upto 4.20GHz, 8MB)</p>

<p>- RAM: 8GB DDR4 3200MHz (2x SO-DIMM slots)</p>

<p>- Ổ cứng: 512GB PCIE SSD</p>

<p>- VGA: NVIDIA Geforce GTX 1660Ti 6GB GDDR6</p>

<p>- M&agrave;n h&igrave;nh: 17.3 inch FHD IPS. Non-Glare, 120Hz Nanoedge</p>

<p>- Pin: 4Cell, 90WHrs</p>

<p>- C&acirc;n nặng: 2.6Kg</p>

<p>- HĐH: Windows 10 SL</p>
', N'/Data/images/product/laptop-asus-tuf-a17-228x228.png', N'<Images><Images>/Data/images/product/laptop-asus-tuf-a17-500x500.png</Images><Images>/Data/images/product/laptop-asus-tuf-a17-2-500x500.jpg</Images><Images>/Data/images/product/laptop-asus-tuf-a17-1-500x500.jpg</Images></Images>', CAST(26990000 AS Decimal(18, 0)), CAST(27990000 AS Decimal(18, 0)), NULL, NULL, 785, CAST(N'2020-12-18T02:20:02.937' AS DateTime), N'quang', NULL, NULL, 20, 0, 1011, 1, N'<p>Laptop Asus TUF Gaming A17 FA706IU-H7133T l&agrave; d&ograve;ng Laptop TUF A17 với k&iacute;ch thước 17 inch cho bạn trải nghiệm game cũng như giải tr&iacute; tốt hơn. Sản phẩm hiện đang b&aacute;n tại <a href="http://tncstore.vn">TNC Store</a></p>

<p><img src="https://www.tncstore.vn/image/catalog/laptop/asus/TUF A17/laptop-asus-tuf-a17-a.jpg" style="width:655px" /></p>
', NULL, NULL, NULL, 4)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (46, N'LAPTOP GAMING MSI GS66 STEALTH 10SE 407VN I7 10750H/ RTX2060/ 16GB/ 512GB/ 15.6″/ IPS/240HZ/ WIN 10', NULL, N'laptop-gaming-msi-gs66-stealth-10se-407vn-i7-10750h-rtx2060-16gb-512gb-15-6-ips-240hz-win-10', N'<p>- CPU: Intel&reg; Core&trade; i7-10750H (2.60GHz upto 5.00GHz, 12MB)</p>

<p>- RAM: 16GB(8GB x 2) DDR4 3200MHz (2 khe, tối đa 64GB)</p>

<p>- Ổ cứng: 512GB NVMe PCIe Gen3x4 SSD + 1 slot M2 PCie</p>

<p>- VGA: nVidia Geforce RTX 2060 6GB GDDR6</p>

<p>- M&agrave;n h&igrave;nh: 15.6 inch FHD (1920x1080), 240Hz, IPS-Level</p>

<p>- Pin: 4 cell, 99.9Whr</p>

<p>- C&acirc;n nặng: 2.1 kg</p>

<p>- T&iacute;nh năng: Đ&egrave;n nền b&agrave;n ph&iacute;m</p>

<p>- OS: Windows 10 Home</p>
', N'/Data/images/product/laptop-msi-GS66-STEALTH-228x228.png', N'<Images><Images>/Data/images/product/laptop-msi-GS66-STEALTH-500x500.png</Images><Images>/Data/images/product/laptop-gaming-msi-gs66-stealth-10se-407vn-5-500x500.jpg</Images><Images>/Data/images/product/laptop-gaming-msi-gs66-stealth-10se-407vn-2-500x500.jpg</Images><Images>/Data/images/product/laptop-gaming-msi-gs66-stealth-10se-407vn-4-500x500.jpg</Images><Images>/Data/images/product/laptop-gaming-msi-gs66-stealth-10se-407vn-3-500x500.jpg</Images></Images>', CAST(46990000 AS Decimal(18, 0)), NULL, NULL, NULL, 695, CAST(N'2020-12-18T02:26:02.200' AS DateTime), N'quang', NULL, NULL, 20, 0, 1042, 1, N'<p>LAPTOP GAMING MSI GS66 STEALTH 10SE 407VN&nbsp;tuyệt đẹp sở hữu sức mạnh được cung cấp bởi kiến tr&uacute;c GPU NVIDIA Turing mới v&agrave; nền tảng RTX c&aacute;ch mạng. Sản phẩm đang được b&aacute;n tại <a href="http://tncstore.vn">TNC Store</a></p>

<p><img src="https://www.tncstore.vn/image/catalog/laptop/msi/GS66 407VN/laptop-gaming-msi-gs66-stealth-10se-407vn-a.jpg" style="width:800px" /></p>
', 24, NULL, NULL, 0)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (47, N'LAPTOP ASUS ROG ZEPHYRUS S GX701LXS-HG038T RTX2080S/I7 10875H/32GB/1TB SSD/17.3”/IPS/300HZ/WIN 10', NULL, N'laptop-asus-rog-zephyrus-s-gx701lxs-hg038t-rtx2080s-i7-10875h-32gb-1tb-ssd-17-3-ips-300hz-win-10', N'<div>- CPU: Intel&reg; Core&trade; i7-10875H (2.30GHz upto 5.10GHz, 16MB)</div>

<div>- RAM: 32GB DDR4 3200MHz</div>

<div>- Ổ cứng: 1TB M.2 NVMe PCIe Gen3x4 SSD</div>

<div>- VGA: NVIDIA&reg; GeForce&reg; RTX 2080 SUPER&trade; 8GB GDDR6</div>

<div>- M&agrave;n h&igrave;nh: 17.3-inch Full HD (1920x1080) IPS-level panel, 300Hz, 3ms, 100% sRGB</div>

<div>- C&acirc;n nặng: 2.6 kg</div>

<div>- M&agrave;u sắc: Đen</div>

<div>- OS: Windows 10 Home</div>
', N'/Data/images/product/laptop-asus-zephyrus-s-228x228.png', N'<Images><Images>/Data/images/product/laptop-asus-rog-zephyrus-s-gx701lxs%20-1-500x500.jpg</Images><Images>/Data/images/product/laptop-asus-rog-zephyrus-s-gx701lxs%20-3-500x500.jpg</Images><Images>/Data/images/product/laptop-asus-rog-zephyrus-s-gx701lxs%20-2-500x500.jpg</Images><Images>/Data/images/product/laptop-asus-rog-zephyrus-s-gx701lxs%20-4-500x500.jpg</Images><Images>/Data/images/product/laptop-asus-rog-zephyrus-s-gx701lxs%20-5-500x500.jpg</Images><Images>/Data/images/product/laptop-asus-rog-zephyrus-s-gx701lxs%20-6-500x500.jpg</Images></Images>', CAST(84990000 AS Decimal(18, 0)), NULL, NULL, NULL, 773, CAST(N'2020-12-18T01:55:26.723' AS DateTime), N'quang', NULL, NULL, 20, 0, 1011, 1, N'<p>LAPTOP ASUS ROG ZEPHYRUS S GX701LXS-HG038T RTX2080S/I7 10875H/32GB/1TB SSD/17.3&rdquo;/IPS/300HZ/WIN 10&nbsp;l&agrave; d&ograve;ng laptop cao cấp nhất đến từ Asus. Sản phẩm đang được ph&acirc;n phối ch&iacute;nh h&atilde;ng tại&nbsp;<a href="http://tncstore.vn/">TNC Store</a></p>

<p><img src="https://www.tncstore.vn/image/catalog/laptop/asus/Zephyrus S HG038t/laptop-asus-rog-zephyrus-s-gx701lxs-a.jpg" style="width:800px" /></p>
', 24, NULL, NULL, 0)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (48, N'Laptop MSI Prestige 14 A10RAS 234VN - Rose Pink (I7-10510U/512GB SSD/MX330 2GB/8GB DDR4/14" FHD/Wifi 6 AX201/Win10)', NULL, N'laptop-msi-prestige-14-a10ras-234vn-rose-pink-i7-10510u-512gb-ssd-mx330-2gb-8gb-ddr4-14-fhd-wifi-6-ax201-win10', N'<p>- CPU: Intel&reg; Core&trade; I7-10510U (1.80GHz upto 4.90GHz, 8MB)</p>

<p>- RAM: 8GB(8GBx1)DDR4 2666MHz ( Chỉ c&oacute; 1 Slot)</p>

<p>- Ổ cứng: 512GB NVMe PCIe SSD</p>

<p>- VGA: nVidia Geforce&reg; MX330 2GB GDDR5</p>

<p>- M&agrave;n h&igrave;nh: 14.0 inch FHD (1920*1080), IPS-Level 60Hz 72%NTSC Thin Bezel, close to 100%sRGB</p>

<p>- C&acirc;n nặng: 1.29 kg</p>

<p>- T&iacute;nh năng: Đ&egrave;n nền b&agrave;n ph&iacute;m (Single-Color, White)</p>

<p>- M&agrave;u sắc: Rose Pink</p>

<p>- OS: Windows 10 Home</p>
', N'/Data/images/product/234VN-228x228.jpg', N'<Images><Images>/Data/images/product/234VN-500x500.jpg</Images><Images>/Data/images/product/laptop-msi-prestige-14-a10ras-234vn-rose-pink-1-500x500.jpg</Images><Images>/Data/images/product/laptop-msi-prestige-14-a10ras-234vn-rose-pink-3-500x500.jpg</Images><Images>/Data/images/product/laptop-msi-prestige-14-a10ras-234vn-rose-pink-2-500x500.jpg</Images><Images>/Data/images/product/laptop-msi-prestige-14-a10ras-234vn-rose-pink-5-500x500.jpg</Images></Images>', CAST(26990000 AS Decimal(18, 0)), CAST(27489000 AS Decimal(18, 0)), NULL, NULL, 652, CAST(N'2020-12-18T02:30:14.290' AS DateTime), N'quang', NULL, NULL, 20, 0, 1042, 1, N'<h1 dir="ltr" style="text-align:center"><strong>Th&ocirc;ng tin sản phẩm MSI Prestige 14 Evo</strong></h1>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:center"><strong>Bản chất của sự tinh hoa</strong></p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:center"><strong><img src="https://lh6.googleusercontent.com/lFlRCPngbWHD8v2rDPEH5jAvdt0rgP1IZ4KZ9kRlbDLfem9_thPyeQt3sH-noQxI5uRJnG61TCNJS4H8fsFDvJkes7LmwoGZ9yx6LENP6UbniEkpUMgx2V1ZLkOwP2r8kabW-8y8" style="height:363px; margin-left:0px; margin-top:0px; width:602px" /></strong></p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:center"><strong>Bộ xử l&yacute; Intel&reg; Core &trade; i7 thế hệ thứ 11</strong></p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:justify"><span style="background-color:transparent; font-family:arial; font-size:11pt">MSI thể hiện tinh thần của những nh&agrave; ti&ecirc;n phong bằng c&aacute;ch thiết kế bộ sưu tập </span><strong>Laptop mỏng nhẹ</strong><span style="background-color:transparent; font-family:arial; font-size:11pt"> tuyệt vời nhất - D&ograve;ng Prestige. Để duy tr&igrave; hiệu quả c&ocirc;ng việc cao hơn, những chiếc m&aacute;y được chế tạo tinh xảo n&agrave;y kh&ocirc;ng chỉ thể hiện phong c&aacute;ch độc đ&aacute;o m&agrave; hiệu năng c&ograve;n v&ocirc; c&ugrave;ng mạnh mẽ. Thiết kế mỏng v&agrave; nhẹ biến D&ograve;ng Prestige v&agrave; đặc trưng l&agrave; </span><strong>MSI Prestige 14 Evo</strong><span style="background-color:transparent; font-family:arial; font-size:11pt"> trở th&agrave;nh sản phẩm thời thượng v&agrave; n&acirc;ng cao năng suất l&agrave;m việc của bạn mọi l&uacute;c mọi nơi.</span></p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:center"><strong>Được truyền cảm hứng từ phong c&aacute;ch Aesthetics</strong></p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:justify"><span style="background-color:transparent; font-family:arial; font-size:11pt">Những &yacute; tưởng nay đ&atilde; trở th&agrave;nh hiện thực. Được chế t&aacute;c với c&aacute;c cạnh cắt kim cương v&agrave; kết cấu được l&agrave;m bằng vật liệu chất lượng cao, D&ograve;ng Prestige c&oacute; thiết kế độc đ&aacute;o nhưng vẫn mang t&iacute;nh thanh lịch, mang d&aacute;ng vẻ của một chiếc </span><strong>Laptop mỏng nhẹ</strong><span style="background-color:transparent; font-family:arial; font-size:11pt">.</span></p>

<p dir="ltr" style="text-align:center"><span style="background-color:transparent; font-family:arial; font-size:11pt"><img src="https://lh3.googleusercontent.com/jCHAVVKtEFRH703R_43lCOnZeCmfub_QqbFWMK3gJxsMCBZI25HukYOD2VD3bEvncjxLGvXvJ5qDG7gsFB_IwpC8yh9RIM5ZCgl3TBAtfZSDGgtLevMUg4tD1OD-n8pJNBa7wJGg" style="height:297px; margin-left:0px; margin-top:0px; width:602px" /></span></p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:center"><strong>Nền tảng Intel&reg; Evo &trade; ho&agrave;n to&agrave;n mới</strong></p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:center"><strong>Trải nghiệm phi thường ở mọi nơi</strong></p>

<p dir="ltr" style="text-align:justify"><strong>MSI Prestige 14 Evo</strong><span style="background-color:transparent; font-family:arial; font-size:11pt"> được x&aacute;c nhận bởi nền tảng Intel&reg; Evo &trade; với hiệu suất v&agrave; t&iacute;nh năng vượt trội gi&uacute;p bạn tiếp tục thăng tiến. Kết hợp với Intel&reg; Evo &trade;, </span><strong>MSI Prestige 14 Evo</strong><span style="background-color:transparent; font-family:arial; font-size:11pt"> mang đến sự kết hợp ho&agrave;n hảo giữa hiệu suất, khả năng phản hồi, thời lượng pin v&agrave; h&igrave;nh ảnh tuyệt đẹp cho một d&ograve;ng Laptop thời trang, c&oacute; độ thẩm mỹ cao.</span></p>

<p dir="ltr" style="text-align:center"><span style="background-color:transparent; font-family:arial; font-size:11pt"><img src="https://lh3.googleusercontent.com/zHCwEdm7N_DbGEhPn6hdlb764VlBTbTHJvxIKaHvAIDHcx5cTL07pJie63ujS9puS6D5tZf-8vdKcKn-VSHAVaWJ8xXpFtKsAkw2SRd5jhAclLw8EZe_X2lHFhjN9nEPYQCPf1qq" style="height:448px; margin-left:0px; margin-top:0px; width:602px" /></span></p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:center"><strong>Ph&aacute; vỡ mọi giới hạn về hiệu năng</strong></p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:justify"><span style="background-color:transparent; font-family:arial; font-size:11pt">D&ograve;ng Prestige sở hữu bộ vi xử l&yacute; Intel&reg; Core &trade; i7 thế hệ thứ 11 mới nhất v&agrave; card đồ họa Intel&reg; Iris&reg; Xe, mang lại hiệu năng mạnh mẽ nhưng vẫn rất gọn nhẹ, gi&uacute;p c&ocirc;ng việc của bạn lu&ocirc;n tr&ocirc;i chảy mọi l&uacute;c mọi nơi. Chiếc </span><strong>laptop mỏng nhẹ</strong><span style="background-color:transparent; font-family:arial; font-size:11pt"> n&agrave;y sở hữu hiệu năng cực đỉnh gi&uacute;p n&acirc;ng cao năng suất của bạn để bạn c&oacute; thể ho&agrave;n th&agrave;nh c&ocirc;ng việc một c&aacute;ch hiệu quả nhất.</span></p>

<p dir="ltr" style="text-align:center"><span style="background-color:transparent; font-family:arial; font-size:11pt"><img src="https://lh6.googleusercontent.com/fbXZ8osGquhViry-adL-IwGtg9pvqiTpQ2nw67skTuLjPTDEHjKUDH4eOUSCVzdnNasgQUMxTl8glnmkTyA1vQqhJO6G4WXlDyRvfbb8SpaRVlu-jWOxV8oX5LoI31PQHBZ9bMgA" style="height:440px; margin-left:0px; margin-top:0px; width:602px" /></span></p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:center"><strong>Hỗ trợ khe cắm ổ cứng PCIe thế hệ thứ 4&nbsp;</strong></p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:justify"><span style="background-color:transparent; font-family:arial; font-size:11pt">PCIe 4.0 th&uacute;c đẩy hiệu quả c&aacute;c c&ocirc;ng việc h&agrave;ng ng&agrave;y v&agrave; t&iacute;n hiệu c&oacute; độ tin cậy cao hơn v&agrave; độ thất tho&aacute;t &iacute;t hơn so với c&aacute;c thế hệ trước, gi&uacute;p cải thiện năng suất.</span></p>

<p dir="ltr" style="text-align:center"><span style="background-color:transparent; font-family:arial; font-size:11pt"><img src="https://lh6.googleusercontent.com/_64dkadTdCxoLhSn-IEamud1T2xWiOj9Mt01dL5pWIsVW6Buro2a9dWjdVIp6JpFTY_Fr686R4ZuOTqgqv2_OPuzh66QcAFmHLyKnhlvIrJ2gVYF5FrFuYcKdtgMsRXpFNhw5J7U" style="height:445px; margin-left:0px; margin-top:0px; width:602px" /></span></p>

<p dir="ltr"><span style="background-color:transparent; font-family:arial; font-size:11pt">Băng th&ocirc;ng của khe cắm PCle 4.0 gấp đ&ocirc;i so với PCIe 3.0</span></p>

<p dir="ltr" style="text-align:center"><span style="background-color:transparent; font-family:arial; font-size:11pt"><img src="https://lh4.googleusercontent.com/pmy4XJjIUWkhO4nSx5cxvyQoKcGZH5RjhB58K89oecaHJuHfkffDoCRO1OsagqqB0rjYA9EoFuSBWqnOUcg6ETTYPFZEu2iaNKnDipeajNv7D6c-iI_YojRFd0917gh9fERztjI1" style="height:196px; margin-left:0px; margin-top:0px; width:602px" /></span></p>

<p dir="ltr" style="text-align:center">&nbsp;</p>

<p dir="ltr" style="text-align:center"><strong>Thiết kế Tương lai</strong></p>

<p dir="ltr" style="text-align:justify"><span style="background-color:transparent; font-family:arial; font-size:11pt">C&oacute; cấu tạo khung nh&ocirc;m si&ecirc;u nhẹ v&agrave; mỏng, d&ograve;ng Prestige được thiết kế thuận tiện cho việc di chuyển v&agrave; mang phong c&aacute;ch thời thượng ở mỗi nơi bạn đặt ch&acirc;n tới.&nbsp;</span></p>

<p dir="ltr" style="text-align:justify"><span style="background-color:transparent; font-family:arial; font-size:11pt">Với mặt phẳng 180 &deg; v&agrave; viền si&ecirc;u mỏng nhằm tối đa h&oacute;a diện t&iacute;ch m&agrave;n h&igrave;nh, </span><strong>MSI Prestige 14 Evo</strong><span style="background-color:transparent; font-family:arial; font-size:11pt"> gi&uacute;p bạn dễ d&agrave;ng truyền tải &yacute; tưởng của m&igrave;nh đến kh&aacute;ch h&agrave;ng.</span></p>

<p dir="ltr" style="text-align:center"><strong>Si&ecirc;u gọn nhẹ</strong></p>

<p dir="ltr" style="text-align:justify"><span style="font-family:arial; font-size:11pt">Chiếc </span><strong>laptop mỏng nhẹ</strong><span style="font-family:arial; font-size:11pt"> n&agrave;y c&oacute; thiết kế cực kỳ gọn với c&acirc;n nặng chỉ 1,29 kg v&agrave; độ d&agrave;y 16mm n&ecirc;n rất dễ d&agrave;ng bỏ v&agrave;o balo mang theo b&ecirc;n m&igrave;nh khi di chuyển.</span></p>

<p dir="ltr" style="text-align:center"><strong><img src="https://lh4.googleusercontent.com/lw4zWmWNYzAFFtbMiH3O7Erlb_1QyP3Fc8SwGxvqVKTFS0IvrLMbby73N_dw6Suv0uaf95JKLeiZiQKKD-Gdd1KDIctkY0GoBe1JccaTF6fj1BFsb89noO4Je7e8mzicuUd1Hlw2" style="height:377px; margin-left:0px; margin-top:0px; width:602px" /></strong></p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:center"><strong>M&agrave;n h&igrave;nh Full HD với tấm nền IPS c&ugrave;ng phần viền mỏng thời thượng</strong></p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:center"><strong><img src="https://lh3.googleusercontent.com/z2apmeYJ7bnmyyF6GY_e7sV1sONqGE5p_gBaS0QkZaB-H5esODZSLPMbu3gLZc9FlAdcXdwccc9ks5bZGoeyzJMJqoeBDoNlX09WRhaN0pde_wHY6yPBeHtLMShzQZyhR3dQ0sK_" style="height:409px; margin-left:0px; margin-top:0px; width:602px" /></strong></p>

<p dir="ltr" style="text-align:center">&nbsp;</p>

<p dir="ltr" style="text-align:center"><strong>Chia sẻ th&ocirc;ng tin dễ d&agrave;ng</strong></p>

<p dir="ltr" style="text-align:center"><strong><img src="https://lh4.googleusercontent.com/4yQDB0sCDvY3FNnpAScmJ1ph5OgaHqahHVXF-a4EYzThnMIJ06r83oyLBhYw7S7jM6s9QNdSAOoM77HTdlvjVlaC-SW3Z_u8IRMfVD6ORGuBdm2f1i6iWbLoAZtWCAXEZ9qy_Cqh" style="height:479px; margin-left:0px; margin-top:0px; width:602px" /></strong></p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:center"><strong>Kết nối v&agrave; sạc</strong></p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:justify"><span style="background-color:transparent; font-family:arial; font-size:11pt">Sở hữu nhiều cổng Thunderbolt 4, bạn c&oacute; thể d&ugrave;ng c&aacute;c laptop Prestige để sạc nhanh thiết bị của m&igrave;nh, truyền dữ liệu ở tốc độ 40Gbps, c&oacute; thể kết nối với nhiều m&agrave;n h&igrave;nh v&agrave; thiết bị ngoại vi. Ngo&agrave;i ra, d&ograve;ng Prestige c&ograve;n trang bị đầu đọc thẻ tốc độ cao UHS-III mới nhất gi&uacute;p truyền dữ liệu một c&aacute;ch nhanh ch&oacute;ng.</span></p>

<p dir="ltr" style="text-align:center"><strong><img src="https://lh6.googleusercontent.com/6Fk0F2QuxPclvjSLtdz_jTFyiuk7uIms8vpZkReaj8VKXM8aq1YF4zb01zPBFbBVgzJQbPj4J5xaOfzhIQ8TbS7CJGf6RtRBD8dILl1p--V8SeHC-O8lv7iH_gUa_1GKnhmULrjm" style="height:387px; margin-left:0px; margin-top:0px; width:602px" /></strong></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:justify"><span style="background-color:transparent; font-family:arial; font-size:11pt">Cổng Thunderbolt 4 gi&uacute;p tiết kiệm thời gian sạc gấp 4 lần so với USB 3.2 Gen2</span></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:center"><span style="background-color:transparent; font-family:arial; font-size:11pt"><img src="https://lh5.googleusercontent.com/qeOfgpej6JWv8rQBPwAL08-jQ9XnA31FpBahtA-YBSHl3RGXatBrkb7LNEyxMThnaG0k2aw2pamEejr_TsOFZPRDvwLzE1lCKGaw-g4mutfhbjPp20TdCswUyR3IUeVwm-YDxQyl" style="height:203px; margin-left:0px; margin-top:0px; width:602px" /></span></p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:center"><strong>Độ bền vượt trội</strong></p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:justify"><span style="background-color:transparent; font-family:arial; font-size:11pt">Văn ph&ograve;ng của bạn c&oacute; thể ở bất cứ nơi n&agrave;o bạn muốn, D&ograve;ng Prestige&nbsp; gi&uacute;p duy tr&igrave; hiệu suất l&agrave;m việc nhờ pin thời lượng cao. Từ một qu&aacute;n c&agrave; ph&ecirc; hay một chuyến bay d&agrave;i ở nước ngo&agrave;i, chiếc </span><strong>Laptop mỏng nhẹ</strong><span style="background-color:transparent; font-family:arial; font-size:11pt"> n&agrave;y chắc chắn sẽ đ&aacute;p ứng mọi nhu cầu của bạn. D&ograve;ng Prestige tự h&agrave;o c&oacute; kết nối kh&ocirc;ng d&acirc;y mới nhất, đảm bảo tốc độ mạng nhanh nhất cho c&aacute;c cuộc gọi hội nghị hoặc việc truyền c&aacute;c dữ liệu lớn.</span></p>

<p dir="ltr" style="text-align:center"><span style="background-color:transparent; font-family:arial; font-size:11pt"><img src="https://lh5.googleusercontent.com/L2Mys70ZrXOlywyy7pyktmXKvoVextjBOs4DAHDxbFaBfDV4q1jTxJKZ4fZqwZ_DF3UsOKCxx5DQuJVJLeIECwe1QuwvBjbW21eEbl_akSHJHBLx-VxUKsRNrdMcHJyd3GXIZXIU" style="height:353px; margin-left:0px; margin-top:0px; width:602px" /></span></p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:justify"><span style="background-color:transparent; font-family:arial; font-size:11pt">Thời lượng pin của D&ograve;ng Prestige đạt 12 giờ sử dụng. Ở chế độ sạc nhanh, 15 ph&uacute;t sạc tương đương 1,5 giờ sử dụng.</span></p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:center"><span style="background-color:transparent; font-family:arial; font-size:11pt"><img src="https://lh3.googleusercontent.com/yCT0giRKFXqovAmgbINIKJjSHZGIBhXa_iqVZYpE3-COCvTggnI3fXv3qpsVMc9LBQk1rh4HwDxCAF7erCeQiCgTPBo6BepcWToplFeaRSgqEarkS4r16B9RpKkXBDYEB6t5qbAV" style="height:68px; margin-left:0px; margin-top:0px; width:602px" /></span></p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:center"><strong>C&ocirc;ng nghệ Windows Hello</strong></p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:justify"><span style="background-color:transparent; font-family:arial; font-size:11pt">Với Windows Hello, bạn c&oacute; thể đăng nhập bằng khu&ocirc;n mặt hoặc v&acirc;n tay của m&igrave;nh. Đăng nhập v&agrave;o Laptop mỏng nhẹ của bạn nhanh hơn gấp 3 lần so với d&ugrave;ng mật khẩu v&agrave; an to&agrave;n hơn. Tận hưởng trải nghiệm kh&ocirc;ng mật khẩu tr&ecirc;n c&aacute;c web được hỗ trợ với x&aacute;c thực FIDO 2 mới nhất.</span></p>

<p dir="ltr" style="text-align:center"><span style="background-color:transparent; font-family:arial; font-size:11pt"><img src="https://lh5.googleusercontent.com/f_69rB3HtVKMpt_xowQ2TTRc7pZYY3fTSvMB1P4Inydgik2SvoFMnyE_0FNQuPtmkI3UlcTaBIc04s3QzD1QKiDe6ylv5I1AMSD30y70cCl3QKHp1OjtVE8i4MnP8I2e86Y_nVfs" style="height:357px; margin-left:0px; margin-top:0px; width:602px" /></span></p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:center"><strong>Được thiết kế phục vụ nhu cầu của bạn</strong></p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:justify"><span style="background-color:transparent; font-family:arial; font-size:11pt">Để mang lại trải nghiệm đ&aacute;nh m&aacute;y tuyệt vời, d&ograve;ng Prestige được sản xuất với thiết kế bản lề 5 độ đặc biệt, c&oacute; thể tự động nghi&ecirc;ng b&agrave;n ph&iacute;m ở g&oacute;c đ&aacute;nh m&aacute;y tốt nhất. H&agrave;nh tr&igrave;nh ph&iacute;m tr&ecirc;n chiếc </span><strong>laptop mỏng nhẹ</strong><span style="background-color:transparent; font-family:arial; font-size:11pt"> d&agrave;y 1,5mm được tối ưu h&oacute;a gi&uacute;p g&otilde; chữ thoải m&aacute;i v&agrave; ch&iacute;nh x&aacute;c hơn.</span></p>

<p dir="ltr" style="text-align:center"><span style="background-color:transparent; font-family:arial; font-size:11pt"><img src="https://lh6.googleusercontent.com/ry-BZ6RnjRGcQnPlsdobRDLBvFWUNsN6gdzfDTK16HlOtNcXqCXgqPqPYaFGY7hR1W_XTuTVpPXCFRftQpyeIKKE9Ah--zKaUk49gncTrWXuU5giLwbPn-9oA4MWkTzxB8XA0W1B" style="height:572px; margin-left:0px; margin-top:0px; width:602px" /></span></p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:center"><strong>MSI Center cho C&ocirc;ng việc v&agrave; Kinh doanh</strong></p>

<p>&nbsp;</p>

<p dir="ltr"><span style="background-color:transparent; font-family:arial; font-size:11pt">MSI Center đưa sự tối ưu h&oacute;a l&ecirc;n tầm cao mới với c&aacute;c chế độ v&agrave; t&agrave;i nguy&ecirc;n hệ thống c&oacute; thể điều chỉnh dễ d&agrave;ng để ph&ugrave; hợp cho c&aacute;c t&igrave;nh huống v&agrave; nhu cầu cụ thể.</span></p>

<p dir="ltr" style="text-align:center"><span style="background-color:transparent; font-family:arial; font-size:11pt"><img src="https://lh5.googleusercontent.com/KRlvK-xs6Y1WU-OnOcKWieWJQDj6wHfOdXK12aO3_V__D3G6BiXqGr27lX-1Vgn7YHubnjwW8jof6tuS2qcVPix52PMVMxgv4h8BLbnrF1JKXVsv1nyyQZ_cwIEpFN3uGSxgGc3b" style="height:295px; margin-left:0px; margin-top:0px; width:602px" /></span></p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:center"><strong>Độ bền chuẩn qu&acirc;n sự</strong></p>

<p>&nbsp;</p>

<p dir="ltr"><span style="background-color:transparent; font-family:arial; font-size:11pt">Để theo đuổi những g&igrave; ho&agrave;n hảo nhất, d&ograve;ng Prestige đ&aacute;p ứng ti&ecirc;u chuẩn qu&acirc;n sự MIL-STD-810G về độ tin cậy v&agrave; độ bền. MSI lu&ocirc;n lu&ocirc;n nỗ lực tiến tới sự chuy&ecirc;n nghiệp, sử dụng c&aacute;c c&ocirc;ng nghệ h&agrave;ng đầu thế giới, v&agrave; </span><strong>MSI Prestige 14 Evo</strong><span style="background-color:transparent; font-family:arial; font-size:11pt"> ch&iacute;nh l&agrave; sản phẩm ti&ecirc;u biểu.</span></p>

<p dir="ltr" style="text-align:center"><span style="background-color:transparent; font-family:arial; font-size:11pt"><img src="https://lh4.googleusercontent.com/eIlmHnQyX3dflJstua6m1of31ov4ZmCo96wOrtqXywqQRp9ZkL8NTUk4NXIqwhFfSYBkyhP72n6jpRx8rFb9p0f3u80L4bVqQz1AKuwayfqO02w_VcM3LsrqpPyoRnhimZCIHYVN" style="height:240px; margin-left:0px; margin-top:0px; width:602px" /></span></p>

<p>&nbsp;</p>

<p dir="ltr" style="text-align:center"><strong>Sự c&acirc;n bằng tuyệt vời giữa c&ocirc;ng việc v&agrave; cuộc sống</strong></p>

<p>&nbsp;</p>

<p dir="ltr"><span style="background-color:transparent; font-family:arial; font-size:11pt">Từ c&ocirc;ng việc đến giải tr&iacute;, D&ograve;ng sản phẩm Prestige mang đến trải nghiệm h&igrave;nh ảnh v&agrave; &acirc;m thanh chất lượng cao gi&uacute;p n&acirc;ng cao chất lượng cuộc sống.</span></p>

<p dir="ltr" style="text-align:center"><span style="background-color:transparent; font-family:arial; font-size:11pt"><img src="https://lh6.googleusercontent.com/d9Gtx90DganZqIhUnDvRM_70KDDoBcbUZKYGpU-M626hKzEfVzW2ouvRZ39WW4QbXQuIHjQN1x3-gEEN6A6S9z5vrj-Z0YhCOa_Oaweq9cCJTR6SCTW8n8qjSphOydqkgjQpLF6E" style="height:323px; margin-left:0px; margin-top:0px; width:602px" /></span></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p dir="ltr"><span style="background-color:transparent; font-family:arial; font-size:11pt">D&ograve;ng Prestige 14 Evo:</span></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<ul>
	<li dir="ltr">
	<p dir="ltr"><span style="background-color:transparent; font-size:11pt">Bộ vixử l&yacute; Intel&reg; Core &trade; i7 thế hệ thứ 11 mới nhất.</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="background-color:transparent; font-size:11pt">Phần mềm Windows 10 Home.</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="background-color:transparent; font-size:11pt">Phần mềm Windows 10 Pro (Khuyến nghị d&ugrave;ng Windows 10 Pro cho doanh nghiệp)</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="background-color:transparent; font-size:11pt">Đồ họa Intel&reg; Iris Xe (A11M)</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="background-color:transparent; font-size:11pt">Si&ecirc;u nhẹ 1,29kg, Si&ecirc;u mỏng 16mm.</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="background-color:transparent; font-size:11pt">14 &rdquo;Full HD (1920x1080), xấp xỉ 100% sRGB. M&agrave;n h&igrave;nh viền mỏng thời thượng với tấm nền IPS tiết kiệm năng lượng.</span></p>
	</li>
	<li dir="ltr">
	<p dir="ltr"><span style="background-color:transparent; font-size:11pt">Tuổi thọ pin l&ecirc;n đến 12 giờ l&agrave;m việc.</span></p>
	</li>
</ul>
', 24, NULL, NULL, 2)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (49, N'Bàn Phím AKKO 3108 V2 One Piece - Chopper - Pink Switch', NULL, N'ban-phim-akko-3108-v2-one-piece-chopper-pink-switch', N'<p>- Dạng LED: Kh&ocirc;ng Led</p>

<p>- Dạng b&agrave;n ph&iacute;m: Ph&iacute;m cơ</p>

<p>- Loại Switch: Akko Pink Switch</p>

<p>- K&iacute;ch thuớc ph&iacute;m: Full Size</p>

<p>- K&ecirc; tay: Kh&ocirc;ng</p>
', N'/Data/images/product/ban-phim-co-akko-3108-v2-one-pi%C3%AAc-chopper-akko-switch-pink-a-228x228.jpg', N'<Images><Images>/Data/images/product/ban-phim-co-akko-3108-v2-one-pi%C3%AAc-chopper-akko-switch-pink-a-500x500.jpg</Images></Images>', CAST(1599000 AS Decimal(18, 0)), CAST(1699000 AS Decimal(18, 0)), NULL, NULL, 732, CAST(N'2020-12-18T02:49:55.740' AS DateTime), N'quang', NULL, NULL, 11, 0, 1005, 1, N'<h2>&nbsp;</h2>

<p>B&agrave;n Ph&iacute;m AKKO 3108 V2 One Piece - Chopper l&agrave;&nbsp;d&ograve;ng ph&iacute;m cơ m&agrave; AKKO d&agrave;nh ri&ecirc;ng cho c&aacute;c fanboy của tựa truyện One Piece đ&igrave;nh đ&aacute;m với m&agrave;u sắc đặc trưng của Chopper. Sản phẩm đang được b&aacute;n tại&nbsp;<a href="http://tncstore.vn/" style="color: rgb(35, 161, 209);">TNC Store</a></p>

<p><img src="https://www.tncstore.vn/image/catalog/b%C3%A0n%20ph%C3%ADm%20c%C6%A1/AKKO/3108S%20Black/ban-phim-akko-3108s-black-led-white-cherry-mx-blue-a.jpg" style="max-width:100%; width:800px" /></p>
', 12, NULL, NULL, 6)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (50, N'Bàn Phím AKKO 3108 V2 One Piece - Chopper - Orange Switch', NULL, N'ban-phim-akko-3108-v2-one-piece-chopper-orange-switch', N'<p>- Dạng LED: Kh&ocirc;ng Led</p>

<p>- Dạng b&agrave;n ph&iacute;m: Ph&iacute;m cơ</p>

<p>- Loại Switch: Akko Orange Switch</p>

<p>- K&iacute;ch thuớc ph&iacute;m: Full Size</p>

<p>- K&ecirc; tay: Kh&ocirc;ng</p>
', N'/Data/images/product/ban-phim-co-akko-3108-v2-one-pi%C3%AAc-chopper-akko-switch-orange-a-228x228.jpg', N'<Images><Images>/Data/images/product/ban-phim-co-akko-3108-v2-one-pi%C3%AAc-chopper-akko-switch-orange-a-500x500.jpg</Images></Images>', CAST(1599000 AS Decimal(18, 0)), CAST(1699000 AS Decimal(18, 0)), NULL, NULL, 732, CAST(N'2020-12-18T02:49:27.063' AS DateTime), N'quang', NULL, NULL, 11, 0, 1005, 1, N'<h2>&nbsp;</h2>

<p>B&agrave;n Ph&iacute;m AKKO 3108 V2 One Piece - Chopper l&agrave;&nbsp;d&ograve;ng ph&iacute;m cơ m&agrave; AKKO d&agrave;nh ri&ecirc;ng cho c&aacute;c fanboy của tựa truyện One Piece đ&igrave;nh đ&aacute;m với m&agrave;u sắc đặc trưng của Chopper. Sản phẩm đang được b&aacute;n tại&nbsp;<a href="http://tncstore.vn/" style="color: rgb(35, 161, 209);">TNC Store</a></p>

<p><img src="https://www.tncstore.vn/image/catalog/b%C3%A0n%20ph%C3%ADm%20c%C6%A1/AKKO/3108S%20Black/ban-phim-akko-3108s-black-led-white-cherry-mx-blue-a.jpg" style="max-width:100%; width:800px" /></p>
', NULL, NULL, NULL, 6)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (51, N'Bàn Phím AKKO 3108 V2 One Piece - Chopper - Blue Switch', NULL, N'ban-phim-akko-3108-v2-one-piece-chopper-blue-switch', N'<p>- Dạng LED: Kh&ocirc;ng Led</p>

<p>- Dạng b&agrave;n ph&iacute;m: Ph&iacute;m cơ</p>

<p>- Loại Switch: Akko Blue Switch</p>

<p>- K&iacute;ch thuớc ph&iacute;m: Full Size</p>

<p>- K&ecirc; tay: Kh&ocirc;ng</p>
', N'/Data/images/product/ban-phim-co-akko-3108-v2-one-pi%C3%AAc-chopper-akko-switch-blue-a-228x228.jpg', N'<Images><Images>/Data/images/product/ban-phim-co-akko-3108-v2-one-pi%C3%AAc-chopper-akko-switch-blue-a-500x500.jpg</Images></Images>', CAST(1599000 AS Decimal(18, 0)), CAST(1699000 AS Decimal(18, 0)), NULL, NULL, 699, CAST(N'2020-12-18T02:49:08.140' AS DateTime), N'quang', NULL, NULL, 11, 0, 1005, 1, N'<h2>&nbsp;</h2>

<p>B&agrave;n Ph&iacute;m AKKO 3108 V2 One Piece - Chopper l&agrave;&nbsp;d&ograve;ng ph&iacute;m cơ m&agrave; AKKO d&agrave;nh ri&ecirc;ng cho c&aacute;c fanboy của tựa truyện One Piece đ&igrave;nh đ&aacute;m với m&agrave;u sắc đặc trưng của Chopper. Sản phẩm đang được b&aacute;n tại&nbsp;<a href="http://tncstore.vn/" style="color: rgb(35, 161, 209);">TNC Store</a></p>

<p><img src="https://www.tncstore.vn/image/catalog/b%C3%A0n%20ph%C3%ADm%20c%C6%A1/AKKO/3108S%20Black/ban-phim-akko-3108s-black-led-white-cherry-mx-blue-a.jpg" style="max-width:100%; width:800px" /></p>
', 12, NULL, NULL, 6)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (52, N'Bàn Phím CoolerMaster CK350', NULL, N'ban-phim-coolermaster-ck350', N'<p><span style="font-family:roboto-r; font-size:13px">- Dạng LED: RGB</span><br />
<span style="font-family:roboto-r; font-size:13px">- Dạng b&agrave;n ph&iacute;m: Ph&iacute;m cơ</span><br />
<span style="font-family:roboto-r; font-size:13px">- Loại Switch: Outemu</span><br />
<span style="font-family:roboto-r; font-size:13px">- K&iacute;ch thước ph&iacute;m: Full Size</span><br />
<span style="font-family:roboto-r; font-size:13px">- K&ecirc; tay: Kh&ocirc;ng</span></p>
', N'/Data/images/product/ban-phim-cooler-master-ck350-2-228x228.png', N'<Images><Images>/Data/images/product/ban-phim-cooler-master-ck350-1-500x500.png</Images><Images>/Data/images/product/ban-phim-cooler-master-ck350-2-500x500.png</Images><Images>/Data/images/product/ban-phim-cooler-master-ck350-4-500x500.png</Images></Images>', CAST(1350000 AS Decimal(18, 0)), NULL, NULL, NULL, 952, CAST(N'2020-12-18T02:50:16.340' AS DateTime), N'quang', NULL, NULL, 11, 0, 1013, 1, N'<p>B&agrave;n Ph&iacute;m CoolerMaster CK350 l&agrave; d&ograve;ng b&agrave;n ph&iacute;m cơ gi&aacute; rẻ của CoolerMaster với led RGB rực rỡ. Sản phẩm hiện đang được b&aacute;n tại&nbsp;<a href="http://tncstore.vn/">TNC Store</a></p>

<p><img src="https://www.tncstore.vn/image/catalog/b%C3%A0n%20ph%C3%ADm%20c%C6%A1/CoolerMaster/CK350/ban-phim-cooler-master-ck350-a.jpg" style="width:965px" /></p>
', 24, N'//www.youtube.com/embed/M_gGUTYrUAk', NULL, 0)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (53, N'Bàn phím cơ Dareu EK810 - Queen Red Switch', NULL, N'ban-phim-co-dareu-ek810-queen-red-switch', N'<p>- Sử dụng switch &quot;D&quot; độc quyền</p>

<p>- Multi-LED - 7 m&agrave;u chia theo v&ugrave;ng</p>

<p>- Keycap ABS Doubleshot si&ecirc;u bền</p>

<p>- Thiết kế cổ điển, si&ecirc;u chắc chắn</p>
', N'/Data/images/product/ban-phim-co-dareu--ek810-queen-blue-switch-1-228x228%20(1).jpg', N'<Images><Images>/Data/images/product/ban-phim-co-dareu--ek810-queen-blue-switch-1-500x500.jpg</Images></Images>', CAST(599000 AS Decimal(18, 0)), CAST(699000 AS Decimal(18, 0)), NULL, NULL, 732, CAST(N'2020-12-18T02:53:44.937' AS DateTime), N'quang', NULL, NULL, 11, 0, 1017, 1, N'<p>B&agrave;n ph&iacute;m cơ Dareu EK810 - Queen&nbsp; l&agrave; d&ograve;ng ph&iacute;m cơ gi&aacute; rẻ với thiết kế m&agrave;u hồng ph&ugrave; hợp với những g&oacute;c m&aacute;y đồng bộ 1 m&agrave;u cho những con người c&aacute; t&iacute;nh. Sản phẩm đang được b&aacute;n tại <a href="http://tncstore.vn">TNC Store</a></p>

<p><img src="https://www.tncstore.vn/image/catalog/bàn phím cơ/dareu/Ek810/ban-phim-co-dareu--ek810-queen-blue-switch-2.jpg" style="width:888px" /></p>
', 24, NULL, NULL, 14)
INSERT [dbo].[Products] ([ID], [Title], [Code], [MetaTitle], [Description], [Thumb], [Images], [Price], [OldPrice], [MetaKeywords], [MetaDescription], [Quantity], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [CategoryID], [ViewCount], [BrandID], [UpTopHot], [Detail], [Guarantee], [Video], [Specification], [PercentSale]) VALUES (54, N'Bàn phím cơ Dareu EK810 - Queen Brown Switch', NULL, N'ban-phim-co-dareu-ek810-queen-brown-switch', N'<p>- Sử dụng switch &quot;D&quot; độc quyền</p>

<p>- Multi-LED - 7 m&agrave;u chia theo v&ugrave;ng</p>

<p>- Keycap ABS Doubleshot si&ecirc;u bền</p>

<p>- Thiết kế cổ điển, si&ecirc;u chắc chắn</p>
', N'/Data/images/product/ban-phim-co-dareu--ek810-queen-blue-switch-1-228x228.jpg', N'<Images><Images>/Data/images/product/ban-phim-co-dareu--ek810-queen-blue-switch-1-500x500.jpg</Images></Images>', CAST(599000 AS Decimal(18, 0)), CAST(699000 AS Decimal(18, 0)), NULL, NULL, 735, CAST(N'2020-12-18T02:53:24.763' AS DateTime), N'quang', NULL, NULL, 11, 0, 1017, 1, N'<p>B&agrave;n ph&iacute;m cơ Dareu EK810 - Queen&nbsp; l&agrave; d&ograve;ng ph&iacute;m cơ gi&aacute; rẻ với thiết kế m&agrave;u hồng ph&ugrave; hợp với những g&oacute;c m&aacute;y đồng bộ 1 m&agrave;u cho những con người c&aacute; t&iacute;nh. Sản phẩm đang được b&aacute;n tại <a href="http://tncstore.vn">TNC Store</a></p>

<p><img src="https://www.tncstore.vn/image/catalog/bàn phím cơ/dareu/Ek810/ban-phim-co-dareu--ek810-queen-blue-switch-2.jpg" style="width:888px" /></p>
', 24, NULL, NULL, 14)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
INSERT [dbo].[Roles] ([ID], [Name], [Description], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActived], [IsDeleted]) VALUES (N'FULL', N'Tất cả quyền', N'Quyền đươc đoc ghi', CAST(N'2014-04-05T10:17:22.000' AS DateTime), N'toanbn', CAST(N'2014-04-05T10:25:39.043' AS DateTime), N'toanbn', 1, 0)
INSERT [dbo].[Roles] ([ID], [Name], [Description], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActived], [IsDeleted]) VALUES (N'VIEW', N'Xem danh sách', N'Xem danh sách', CAST(N'2014-04-05T10:17:35.517' AS DateTime), N'toanbn', NULL, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Slides] ON 

INSERT [dbo].[Slides] ([ID], [Name], [Description], [Link], [Images], [Order], [GroupID], [Status]) VALUES (1, N'Black Friday 2020', NULL, N'/khuyen-mai-2020', N'/Data/images/slide/WEB%20-%20MAIN%20BANNER%20TNC%20(1).jpg', 1, NULL, 1)
INSERT [dbo].[Slides] ([ID], [Name], [Description], [Link], [Images], [Order], [GroupID], [Status]) VALUES (2, N'amd radeon rx 6000 series', NULL, N'/amd-radeon-rx-6000-series', N'/Data/images/slide/banner26112020.jpg', 2, NULL, 1)
INSERT [dbo].[Slides] ([ID], [Name], [Description], [Link], [Images], [Order], [GroupID], [Status]) VALUES (3, N'Combo Asus', NULL, N'/combo-asus', N'/Data/images/slide/125560377_285514662803044_6514851120731827816_n.png', 3, NULL, 1)
SET IDENTITY_INSERT [dbo].[Slides] OFF
GO
SET IDENTITY_INSERT [dbo].[Socials] ON 

INSERT [dbo].[Socials] ([ID], [Title], [Icon], [Link], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Order], [Status]) VALUES (1, N'facebook.com/tncstore', N'<svg width="65" height="65" viewBox="0 0 65 65" fill="none" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M0 0V65H65V0H0ZM43.0006 17.8881H37.92C36.9137 17.8881 35.8981 18.9281 35.8981 19.7019V24.8824H42.9906C42.705 28.8549 42.1187 32.4874 42.1187 32.4874H35.8619V55H26.5381V32.485H21.9994V24.9094H26.5381V18.7157C26.5381 17.5831 26.3087 10.0001 36.0913 10.0001H43.0007V17.8881H43.0006Z" fill="#005EC4"></path></svg>', N'https://www.facebook.com/tncstore', CAST(N'2020-12-06T15:10:10.580' AS DateTime), N'quang', NULL, NULL, 1, 1)
INSERT [dbo].[Socials] ([ID], [Title], [Icon], [Link], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Order], [Status]) VALUES (2, N'twitter.com/tncstore', N'<svg width="65" height="65" viewBox="0 0 65 65" fill="none" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M0 0V65H65V0H0ZM50.393 23.3227C50.4106 23.7189 50.4196 24.1171 50.4196 24.517C50.4196 36.7174 41.1336 50.785 24.152 50.785C18.9383 50.785 14.0854 49.2569 9.99986 46.6369C10.7221 46.7227 11.4569 46.7664 12.2023 46.7664C16.5277 46.7664 20.5084 45.2906 23.6683 42.8139C19.6283 42.7397 16.2186 40.0704 15.0436 36.4024C15.6076 36.5106 16.186 36.5686 16.7809 36.5686C17.6229 36.5686 18.4386 36.4551 19.2133 36.2446C14.99 35.3961 11.8074 31.665 11.8074 27.192C11.8074 27.153 11.8074 27.1143 11.8083 27.0757C13.0529 27.7671 14.4763 28.1826 15.9899 28.2306C13.5124 26.575 11.883 23.749 11.883 20.5463C11.883 18.8541 12.3383 17.2684 13.1331 15.9046C17.6864 21.4904 24.4893 25.1657 32.1621 25.5511C32.0046 24.8751 31.9226 24.1704 31.9226 23.447C31.9226 18.3487 36.0566 14.2151 41.1549 14.2151C43.8104 14.2151 46.2099 15.3361 47.8939 17.1303C49.9966 16.7167 51.9726 15.948 53.7564 14.8901C53.0673 17.0461 51.6034 18.855 49.6971 19.9979C51.5649 19.7746 53.344 19.2781 54.9997 18.5439C53.7623 20.3951 52.1971 22.0213 50.393 23.3227Z" fill="#68AEFA"></path></svg>', N'https://twitter.com/tncstore', CAST(N'2020-12-06T15:12:43.977' AS DateTime), N'quang', NULL, NULL, 2, 1)
INSERT [dbo].[Socials] ([ID], [Title], [Icon], [Link], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Order], [Status]) VALUES (3, N'youtube.com/c/TNCChannel', N'<svg width="65" height="65" viewBox="0 0 65 65" fill="none" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M0 0V65H65V0H0ZM54.2133 43.1373C53.6617 45.5301 51.7043 47.297 49.348 47.5601C43.7703 48.182 38.123 48.1861 32.4977 48.182C26.8747 48.1861 21.2274 48.182 15.648 47.5601C13.2911 47.2971 11.3339 45.5301 10.7851 43.1373C10 39.7306 10 36.0087 10 32.4999C10 28.991 10.0093 25.2709 10.7937 21.8641C11.3424 19.469 13.3004 17.7044 15.6543 17.4414C21.2343 16.8179 26.884 16.8154 32.507 16.8179C38.1294 16.8156 43.7773 16.8179 49.3567 17.4414C51.7136 17.7044 53.6709 19.469 54.222 21.8641C55.007 25.2709 55 28.991 55 32.4999C55 36.0087 54.9977 39.7306 54.2133 43.1373Z" fill="#F9495F"></path> <path fill-rule="evenodd" clip-rule="evenodd" d="M26.6934 39.4855C31.4744 37.0062 36.2131 34.5477 40.9988 32.0667C36.1992 29.5624 31.4611 27.0922 26.6934 24.6042V39.4855Z" fill="#F9495F"></path></svg>', N'https://www.youtube.com/channel/UCvLGkK-wBBaoXwV71Tgx08Q', CAST(N'2020-12-06T15:14:21.687' AS DateTime), N'quang', NULL, NULL, 3, 1)
INSERT [dbo].[Socials] ([ID], [Title], [Icon], [Link], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Order], [Status]) VALUES (4, N'instagram.com/tncstore_vn/', N'<svg width="65" height="65" viewBox="0 0 65 65" fill="none" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" clip-rule="evenodd" d="M43.6479 14.8997H21.3538C17.7957 14.8997 14.9004 17.7948 14.9004 21.3531V43.647C14.9004 47.2057 17.7957 50.1011 21.3538 50.1011H43.6479C47.2065 50.1011 50.1018 47.2057 50.1018 43.647V21.3531C50.1018 17.795 47.2065 14.8997 43.6479 14.8997ZM32.5004 44.0882C26.1113 44.0882 20.9125 38.8895 20.9125 32.4997C20.9125 26.1106 26.1113 20.9118 32.5004 20.9118C38.8902 20.9118 44.089 26.1106 44.089 32.4997C44.089 38.8895 38.8902 44.0882 32.5004 44.0882ZM44.4618 23.3081C42.9492 23.3081 41.7192 22.0781 41.7192 20.5663C41.7192 19.0543 42.9492 17.8243 44.4618 17.8243C45.9736 17.8243 47.2036 19.0543 47.2036 20.5663C47.2036 22.0782 45.9736 23.3081 44.4618 23.3081Z" fill="#FF8F02"></path> <path fill-rule="evenodd" clip-rule="evenodd" d="M32.5006 25.8088C28.8122 25.8088 25.8086 28.811 25.8086 32.4994C25.8086 36.1892 28.8122 39.1921 32.5006 39.1921C36.1904 39.1921 39.1918 36.1892 39.1918 32.4994C39.1918 28.811 36.1904 25.8088 32.5006 25.8088Z" fill="#FF8F02"></path> <path fill-rule="evenodd" clip-rule="evenodd" d="M0 0V65H65V0H0ZM54.9971 43.647C54.9971 49.9064 49.9064 54.9971 43.6471 54.9971H21.353C15.0943 54.9971 10.0029 49.9064 10.0029 43.647V21.353C10.0029 15.0943 15.0943 10.0029 21.353 10.0029H43.6471C49.9064 10.0029 54.9971 15.0943 54.9971 21.353V43.647Z" fill="#FF8F02"></path></svg>', N'https://www.instagram.com/tncstore_vn/', CAST(N'2020-12-06T15:15:14.657' AS DateTime), N'quang', NULL, NULL, 4, 1)
SET IDENTITY_INSERT [dbo].[Socials] OFF
GO
SET IDENTITY_INSERT [dbo].[SystemConfigs] ON 

INSERT [dbo].[SystemConfigs] ([ID], [Name], [UniqueKey], [Value], [Unit], [Description], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsDeleted]) VALUES (7, N'Tên hệ thống', N'SYSTEM_NAME', N'NEWLUX.VN', N'0', NULL, CAST(N'2014-03-22T00:00:00.000' AS DateTime), N'toanbn', CAST(N'2014-03-22T00:00:00.000' AS DateTime), N'toanbn', 0)
SET IDENTITY_INSERT [dbo].[SystemConfigs] OFF
GO
INSERT [dbo].[UserGroups] ([ID], [Name], [Description], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActived], [IsDeleted]) VALUES (N'ADMIN', N'Administrator', N'Nhóm quản tri cao nhất', CAST(N'2014-04-05T08:08:30.000' AS DateTime), N'toanbn', CAST(N'2014-04-05T09:58:30.203' AS DateTime), N'toanbn', 1, 0)
INSERT [dbo].[UserGroups] ([ID], [Name], [Description], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [IsActived], [IsDeleted]) VALUES (N'MEMBER', N'Thành viên', NULL, NULL, NULL, NULL, NULL, 1, 0)
GO
INSERT [dbo].[Users] ([UserName], [Avatar], [Password], [PasswordLevel2], [Email], [Mobile], [Name], [Address], [Sex], [UpdatedDate], [UpdatedBy], [LastLoginDate], [LastChangePassword], [GroupID], [CreatedDate], [CreatedBy]) VALUES (N'huyenpham', NULL, N'212aa204f0b6d82a08ec93e50a072c74', NULL, N'huyen@gmail.com', N'123456789', N'Phạm Lê Khánh Huyền', N'Hà Nội', 0, CAST(N'2020-11-29T20:20:46.440' AS DateTime), N'quang', CAST(N'2021-06-01T11:56:26.080' AS DateTime), NULL, N'MEMBER', NULL, NULL)
INSERT [dbo].[Users] ([UserName], [Avatar], [Password], [PasswordLevel2], [Email], [Mobile], [Name], [Address], [Sex], [UpdatedDate], [UpdatedBy], [LastLoginDate], [LastChangePassword], [GroupID], [CreatedDate], [CreatedBy]) VALUES (N'khaipham', NULL, N'1c29ba296625cbb6b680e6b82a6f7341', NULL, N'phamkhai@gmail.com', N'0123456789', N'Phạm Quang Khải', N'Hà Nội', 1, NULL, NULL, NULL, NULL, N'MEMBER', CAST(N'2021-01-07T07:37:37.140' AS DateTime), NULL)
INSERT [dbo].[Users] ([UserName], [Avatar], [Password], [PasswordLevel2], [Email], [Mobile], [Name], [Address], [Sex], [UpdatedDate], [UpdatedBy], [LastLoginDate], [LastChangePassword], [GroupID], [CreatedDate], [CreatedBy]) VALUES (N'quang', NULL, N'862edad6e6abd2892b168d8f565f4cd8', NULL, N'quangdz@gmail.com', N'0123456789', N'Trần Đăng Quang', N'Hà Nội', 1, CAST(N'2020-11-26T19:06:46.380' AS DateTime), N'quang', CAST(N'2021-01-07T06:16:52.373' AS DateTime), NULL, N'ADMIN', NULL, NULL)
GO
ALTER TABLE [dbo].[Feedbacks] ADD  CONSTRAINT [DF_Table_1_Time]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Feedbacks] ADD  CONSTRAINT [DF_Table_1_Checked]  DEFAULT ((0)) FOR [IsReaded]
GO
ALTER TABLE [dbo].[GroupSlides] ADD  CONSTRAINT [DF_GroupSlides_IsActived]  DEFAULT ((1)) FOR [IsActived]
GO
ALTER TABLE [dbo].[GroupSlides] ADD  CONSTRAINT [DF_GroupSlides_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[MenuTypes] ADD  CONSTRAINT [DF_MenuTypes_IsActived]  DEFAULT ((1)) FOR [IsActived]
GO
ALTER TABLE [dbo].[MenuTypes] ADD  CONSTRAINT [DF_MenuTypes_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_ViewCount]  DEFAULT ((0)) FOR [ViewCount]
GO
ALTER TABLE [dbo].[Roles] ADD  CONSTRAINT [DF_Roles_IsActived]  DEFAULT ((1)) FOR [IsActived]
GO
ALTER TABLE [dbo].[Roles] ADD  CONSTRAINT [DF_Roles_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Tags] ADD  CONSTRAINT [DF_Tags_IsActived]  DEFAULT ((1)) FOR [IsActived]
GO
ALTER TABLE [dbo].[Tags] ADD  CONSTRAINT [DF_Tags_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[UserGroups] ADD  CONSTRAINT [DF_UserGroups_IsActived]  DEFAULT ((1)) FOR [IsActived]
GO
ALTER TABLE [dbo].[UserGroups] ADD  CONSTRAINT [DF_UserGroups_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_GroupID]  DEFAULT ('MEMBER') FOR [GroupID]
GO
ALTER TABLE [dbo].[Menus]  WITH CHECK ADD  CONSTRAINT [FK_Menus_MenuTypes] FOREIGN KEY([GroupID])
REFERENCES [dbo].[MenuTypes] ([ID])
GO
ALTER TABLE [dbo].[Menus] CHECK CONSTRAINT [FK_Menus_MenuTypes]
GO
ALTER TABLE [dbo].[Newses]  WITH CHECK ADD  CONSTRAINT [FK_Newses_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([ID])
GO
ALTER TABLE [dbo].[Newses] CHECK CONSTRAINT [FK_Newses_Categories]
GO
ALTER TABLE [dbo].[NewsTags]  WITH CHECK ADD  CONSTRAINT [FK_NewsTags_Tags] FOREIGN KEY([TagID])
REFERENCES [dbo].[Tags] ([ID])
GO
ALTER TABLE [dbo].[NewsTags] CHECK CONSTRAINT [FK_NewsTags_Tags]
GO
ALTER TABLE [dbo].[Permissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_Roles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([ID])
GO
ALTER TABLE [dbo].[Permissions] CHECK CONSTRAINT [FK_Permissions_Roles]
GO
ALTER TABLE [dbo].[Permissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_UserGroups] FOREIGN KEY([GroupID])
REFERENCES [dbo].[UserGroups] ([ID])
GO
ALTER TABLE [dbo].[Permissions] CHECK CONSTRAINT [FK_Permissions_UserGroups]
GO
ALTER TABLE [dbo].[Permissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_Users] FOREIGN KEY([GroupID])
REFERENCES [dbo].[Users] ([UserName])
GO
ALTER TABLE [dbo].[Permissions] CHECK CONSTRAINT [FK_Permissions_Users]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Brands] FOREIGN KEY([BrandID])
REFERENCES [dbo].[Brands] ([ID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Brands]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_ProductCategories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[ProductCategories] ([ID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_ProductCategories]
GO
ALTER TABLE [dbo].[Photos]  WITH CHECK ADD  CONSTRAINT [FK_Photos_Albums] FOREIGN KEY([AlbumID])
REFERENCES [dbo].[Albums] ([ID])
GO
ALTER TABLE [dbo].[Photos] CHECK CONSTRAINT [FK_Photos_Albums]
GO
ALTER TABLE [dbo].[Slides]  WITH CHECK ADD  CONSTRAINT [FK_Slides_GroupSlides] FOREIGN KEY([GroupID])
REFERENCES [dbo].[GroupSlides] ([ID])
GO
ALTER TABLE [dbo].[Slides] CHECK CONSTRAINT [FK_Slides_GroupSlides]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_UserGroups] FOREIGN KEY([GroupID])
REFERENCES [dbo].[UserGroups] ([ID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_UserGroups]
GO
/****** Object:  StoredProcedure [dbo].[GetViewMenuBaseRole]    Script Date: 6/20/2021 1:49:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetViewMenuBaseRole]
@UserName varchar(6)
AS 
begin
SELECT f.* FROM
Users u INNER JOIN UserRole ur ON u.UserName = ur.UserName
inner join UserGroups ug on ur.GroupID = ug.ID
inner join Permissions p on ug.ID = p.GroupID
inner join Roles r on p.RoleID = r.ID
inner join Functions f on f.ID = p.FunctionID
where u.UserName = @UserName
end

GO
USE [master]
GO
ALTER DATABASE [ShopBanHang] SET  READ_WRITE 
GO
