USE [master]
GO
/****** Object:  Database [HotelManager]    Script Date: 23/11/2023 17:03:56 CH ******/
CREATE DATABASE [HotelManager]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HotelManager', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MACPHAM\MSSQL\DATA\HotelManager.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HotelManager_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MACPHAM\MSSQL\DATA\HotelManager_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [HotelManager] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HotelManager].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HotelManager] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HotelManager] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HotelManager] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HotelManager] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HotelManager] SET ARITHABORT OFF 
GO
ALTER DATABASE [HotelManager] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HotelManager] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HotelManager] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HotelManager] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HotelManager] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HotelManager] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HotelManager] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HotelManager] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HotelManager] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HotelManager] SET  ENABLE_BROKER 
GO
ALTER DATABASE [HotelManager] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HotelManager] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HotelManager] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HotelManager] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HotelManager] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HotelManager] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HotelManager] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HotelManager] SET RECOVERY FULL 
GO
ALTER DATABASE [HotelManager] SET  MULTI_USER 
GO
ALTER DATABASE [HotelManager] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HotelManager] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HotelManager] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HotelManager] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HotelManager] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HotelManager] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'HotelManager', N'ON'
GO
ALTER DATABASE [HotelManager] SET QUERY_STORE = ON
GO
ALTER DATABASE [HotelManager] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [HotelManager]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 23/11/2023 17:03:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 23/11/2023 17:03:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 23/11/2023 17:03:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 23/11/2023 17:03:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 23/11/2023 17:03:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 23/11/2023 17:03:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 23/11/2023 17:03:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Avatar] [nvarchar](max) NULL,
	[FullName] [nvarchar](max) NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 23/11/2023 17:03:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 23/11/2023 17:03:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[Id] [char](36) NOT NULL,
	[RoomId] [char](36) NOT NULL,
	[EmailUser] [nvarchar](256) NOT NULL,
	[BookingDate] [date] NULL,
	[EndDate] [date] NULL,
	[CreatedDate] [date] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[ModifiedDate] [date] NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[Note] [nvarchar](max) NULL,
 CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 23/11/2023 17:03:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[Id] [char](36) NOT NULL,
	[RoomId] [char](36) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[CreateDate] [date] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 23/11/2023 17:03:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[Id] [char](36) NOT NULL,
	[LocationName] [nvarchar](50) NOT NULL,
	[Views] [int] NULL,
	[Decription] [nvarchar](max) NULL,
	[CreatedDate] [date] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[ModifiedDate] [date] NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[District] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 23/11/2023 17:03:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[Id] [char](36) NOT NULL,
	[RoomName] [nvarchar](50) NOT NULL,
	[Price] [varchar](20) NOT NULL,
	[Views] [int] NULL,
	[Image] [nvarchar](max) NULL,
	[BookingDate] [date] NULL,
	[EndDate] [date] NULL,
	[Favorite] [int] NULL,
	[Amenities] [nvarchar](max) NULL,
	[RoomPhoneNumber] [char](12) NULL,
	[RoomEmail] [varchar](50) NULL,
	[CreatedDate] [date] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[ModifiedDate] [date] NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[LocationId] [char](36) NOT NULL,
	[Tag] [varchar](20) NULL,
	[Description] [nvarchar](max) NULL,
	[Guests] [int] NULL,
	[Bedroom] [int] NULL,
	[Bath] [int] NULL,
	[Bed] [int] NULL,
	[QuantityRoom] [int] NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231021031129_init', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231021031911_AddRoles', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231021040059_UpdateTableRoom', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231021042317_UpdateTableRoom2', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231112084656_UpdatePropertyRoom', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231114023856_UpdateSoomePropertyTableRoom', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231123040243_Add_Table_Booking', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231123041721_Add_Column_Note_Booking', N'5.0.17')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'1cab2010-9d1e-4cab-9080-6c63a4a6fa69', N'Boss', N'Boss', N'3')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'24c36dc8-469e-4ecc-88bc-61913d06108d', N'Admin', N'Admin', N'1')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'27235881-71ea-449e-8fd8-a6ed3c43f4dd', N'User', N'User', N'2')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd301435e-95e3-4ca3-9305-1c4babe85b5d', N'27235881-71ea-449e-8fd8-a6ed3c43f4dd')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Avatar], [FullName], [Note]) VALUES (N'12abb37f-b85b-4b8c-8b22-38d5b31ebc0e', N'laphong', N'LAPHONG', N'laphong01@gmail.com', N'LAPHONG01@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEKOxP89Qhn8v/e/J4mW6BsWRUBg6yGmkUOF6zZAtsC5bCAhAzOxVQDOhZvATgmR8Ww==', N'FNIX2BCN7K4DPVZA3QE532VHVQCDMX3X', N'3ebc0626-238c-45c0-a172-129fbebf684e', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Avatar], [FullName], [Note]) VALUES (N'15d04f88-eb62-4324-8f37-7ea1902a9a93', N'laphong2k1@gmail.com', N'LAPHONG2K1@GMAIL.COM', N'laphong2k1@gmail.com', N'LAPHONG2K1@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEJlFOXxeWQNr6l8V9HRHM9Zz0EW+b+6YhYCfhJJak5sxu2vMCokq226xyiidgUJruA==', N'76TMI7TZBEXDUCSR3W3O2IX2YHMDTGHL', N'eda690e5-e506-4e56-a390-c913eb038f75', N'0987654321', 0, 0, NULL, 1, 0, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Avatar], [FullName], [Note]) VALUES (N'2a27af7c-83b3-49f6-8b37-0c1c9c8e4db9', N'string', N'STRING', N'lamdong01@gmail.com', N'LAMDONG01@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEEQc48RfHwJhRkDiFm0zs9CwPGmoZcNh4UktwCKOUahzchF/HUKM7xG2l+F3o6pWmw==', N'JVQ4Q7JEK2NICBUJ5554H4MHGSHX667J', N'040da21b-6582-4a3b-b229-646b78a47c15', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Avatar], [FullName], [Note]) VALUES (N'30648020-4fec-492a-b6b8-e4c27a3f8c54', N'nguyenvana@gmail.com', N'NGUYENVANA@GMAIL.COM', N'nguyenvana@gmail.com', N'NGUYENVANA@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEF/136ksO+TI2SoVn8OJNlLb2AZSjGCCPnmrDAqrqNqOsfg/i+wU9EQwUhuKuFvTEw==', N'NH5PC3WDYDABMRE552IRK3ZYNFHFJYJK', N'1d8dd66f-bd97-49c4-a3de-ddb8908d5a93', N'0123456789', 0, 0, NULL, 1, 0, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Avatar], [FullName], [Note]) VALUES (N'40520e96-26d8-41b8-94dc-6cd09f1bf2c6', N'laphong@gmail.com', N'LAPHONG@GMAIL.COM', N'laphong@gmail.com', N'LAPHONG@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEIgZCjKlkmA7rsZp0eQGE76M08D0SxNNEdYxVMcfV3m/uda+KSYdtzOyHRCSp55S1w==', N'M4WPMFS5CUFCSWMA6APSH7B4B6ZT2OEL', N'3dffb1cc-9777-4742-89ef-6888d6118401', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Avatar], [FullName], [Note]) VALUES (N'56beb3f5-9fc3-4fc4-b27a-8947dd02e8cd', N'user@example.com', N'USER@EXAMPLE.COM', N'user@example.com', N'USER@EXAMPLE.COM', 0, N'AQAAAAIAAYagAAAAECd9gIS7Gdpm1dcppwS4rhKET+q8M1QUvrtryAcxdOzKFalO5CkKvUZT8ohYS3ujXg==', N'ODPMOXQ5AHMSTCFAOJ4QK3NCZ5VXR2FK', N'5b02dc92-b8c0-4989-9855-84a13f2ea20f', N'A1!', 0, 0, NULL, 1, 0, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Avatar], [FullName], [Note]) VALUES (N'9069aa0e-3f02-4e60-9bea-79a93119bbe6', N'lamdong@gmail.com', N'LAMDONG@GMAIL.COM', N'lamdong@gmail.com', N'LAMDONG@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEHUJAkdj5f25WFqLEDaypjR5gtc7oG6AMukk5e827CtWo7+rEXzg+wak8KuaI772pw==', N'OWCFD5OUBAFAC7XKWJWTEBYFGJZ65VLV', N'51f2d57a-4e21-4d34-a373-0abf5c432871', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Avatar], [FullName], [Note]) VALUES (N'c3f9ffa1-d005-4fa5-a0b4-9adbb31fe5dd', N'macpham@gmail.com', N'MACPHAM@GMAIL.COM', N'macpham@gmail.com', N'MACPHAM@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEPOhKavlGurz8QMOnnPJPXGKYs10LxiyJ9THpCtoOxt2q4bOJw7W14XMjMz25IqdVg==', N'BVUWMGNNT2MY5TEP4OOEO4VXLSLZYBFV', N'3064773a-6ab4-48f6-87f3-afb7dfc6dcdf', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Avatar], [FullName], [Note]) VALUES (N'd301435e-95e3-4ca3-9305-1c4babe85b5d', N'macpham2k1@gmail.com', N'MACPHAM2K1@GMAIL.COM', N'macpham2k1@gmail.com', N'MACPHAM2K1@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEKV4xJjJmz35cZXzwAJUL2M3D/RlxcRg342skyHz+lRnSeMoLYUEsAKhdq/n516yXw==', N'GCZUBKDY24DNXRYHA7CCYAQ7JRKJFU2I', N'c8382b3f-d0fd-4747-90f3-01fd496d4afb', N'0987654321', 0, 0, NULL, 1, 0, N'https://localhost:44356/images\sung jin woo.jpg', N'mạc phàm ', N'nice and strong')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Avatar], [FullName], [Note]) VALUES (N'ec97923f-2b01-4de7-b50d-19d428a13583', N'macpham', N'MACPHAM', N'macpham01@gmail.com', N'MACPHAM01@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEDbUfm/QtDI5gGsCHP+Xqo8OXvYqT4kRCylKE+bdxjiOumcOAHLnD6tRF30IixHIjw==', N'VMS5E5UQEE3TBOKNRX75VU3IB6SNS4KZ', N'105d95d6-d972-4f96-99d4-78c62718fdf6', NULL, 0, 0, NULL, 1, 0, NULL, NULL, NULL)
GO
INSERT [dbo].[Booking] ([Id], [RoomId], [EmailUser], [BookingDate], [EndDate], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Note]) VALUES (N'29c2163e-fa6b-4104-973b-5e6636bbabc5', N'b9daebd3-c1c5-486a-b3e0-d83cb9fa2cad', N'macpham2k1@gmail.com', CAST(N'2023-11-23' AS Date), CAST(N'2023-11-25' AS Date), CAST(N'2023-11-23' AS Date), N'Canhvd', CAST(N'2023-11-23' AS Date), N'Canhvd', N'string')
GO
INSERT [dbo].[Location] ([Id], [LocationName], [Views], [Decription], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [District], [Country]) VALUES (N'543198ab-354e-4e1a-8bdb-d998999f2fae', N'Bắc Giang', 10, N'98 Bắc Giang', CAST(N'2023-10-21' AS Date), N'canhvd', CAST(N'2023-10-21' AS Date), N'canhvd', N'Lạng Giang', N'Việt Nam')
INSERT [dbo].[Location] ([Id], [LocationName], [Views], [Decription], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [District], [Country]) VALUES (N'5c71371e-634f-40d5-bdf5-70705cac4e63', N'Hà Nội', 10, N'Hà Nội hay Hà Lội :))', CAST(N'2023-11-11' AS Date), N'CanhVD', CAST(N'2023-11-11' AS Date), N'CanhVD', N'Thanh Xuân', N'Việt Nam')
INSERT [dbo].[Location] ([Id], [LocationName], [Views], [Decription], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [District], [Country]) VALUES (N'cf326800-1c2d-4ea5-bd9a-877a498b3fb5', N'string', 0, N'string', CAST(N'2023-11-14' AS Date), N'CanhVD', CAST(N'2023-11-14' AS Date), N'CanhVD', N'string', N'string')
GO
INSERT [dbo].[Room] ([Id], [RoomName], [Price], [Views], [Image], [BookingDate], [EndDate], [Favorite], [Amenities], [RoomPhoneNumber], [RoomEmail], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [LocationId], [Tag], [Description], [Guests], [Bedroom], [Bath], [Bed], [QuantityRoom]) VALUES (N'2a5caa01-fa80-42ad-8f43-34bf93a96ea7', N'Khách sạn 005', N'50$/Day', 10, N'https://travelfilm.vn/wp-content/uploads/2022/12/Hotel.jpg', NULL, NULL, 10, N'Phòng có bể bơi cực to', N'0123456789  ', N'phòng005@gmail.com', CAST(N'2023-11-12' AS Date), N'Canhvd', CAST(N'2023-11-12' AS Date), N'Canhvd', N'543198ab-354e-4e1a-8bdb-d998999f2fae', N'New', N'Phòng hiện đại và phong cách', 2, 2, 2, 1, 2)
INSERT [dbo].[Room] ([Id], [RoomName], [Price], [Views], [Image], [BookingDate], [EndDate], [Favorite], [Amenities], [RoomPhoneNumber], [RoomEmail], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [LocationId], [Tag], [Description], [Guests], [Bedroom], [Bath], [Bed], [QuantityRoom]) VALUES (N'b9daebd3-c1c5-486a-b3e0-d83cb9fa2cad', N'Khách sạn 001', N'20$/Day', 17, N'https://sbshouse.vn/wp-content/uploads/2022/01/nha-4-tang-dep-5.jpg', CAST(N'2023-10-21' AS Date), CAST(N'2023-10-21' AS Date), 10, N'bể bơi rộng, có phòng xông hơi, ban công thoáng mát', N'0123456789  ', N'phong001@gmail.com', CAST(N'2023-10-21' AS Date), N'canhvd', CAST(N'2023-10-21' AS Date), N'canhvd', N'543198ab-354e-4e1a-8bdb-d998999f2fae', N'Events', N'Phòng rất là đẹp nha ^^', 2, 2, 1, 1, 2)
INSERT [dbo].[Room] ([Id], [RoomName], [Price], [Views], [Image], [BookingDate], [EndDate], [Favorite], [Amenities], [RoomPhoneNumber], [RoomEmail], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [LocationId], [Tag], [Description], [Guests], [Bedroom], [Bath], [Bed], [QuantityRoom]) VALUES (N'd0bfbbb9-86a9-4b6d-8f57-a69331d25df3', N'Khách sạn 003', N'20$/Day', 10, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ08nnkjihn_srlcOyZJzZWL2jwOBr-QcZo_w&usqp=CAU', NULL, NULL, 10, N'Phòng có đầy đủ tiện nghi', N'0123456789  ', N'phong003@gmail.com', CAST(N'2023-11-12' AS Date), N'Canhvd', CAST(N'2023-11-12' AS Date), N'Canhvd', N'543198ab-354e-4e1a-8bdb-d998999f2fae', N'Event', N'Phòng rất là đẹp nha ^^', 2, 2, 2, 1, 2)
INSERT [dbo].[Room] ([Id], [RoomName], [Price], [Views], [Image], [BookingDate], [EndDate], [Favorite], [Amenities], [RoomPhoneNumber], [RoomEmail], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [LocationId], [Tag], [Description], [Guests], [Bedroom], [Bath], [Bed], [QuantityRoom]) VALUES (N'd1199cc4-db43-41d4-84d0-27ce1032764a', N'Khách sạn 002', N'20$/Day', 10, N'https://www.nhaban.vn/media.nb/layout_domain_resources/2/files/nb-cb961a66e949975dde768ae660a28ecc.jpg', NULL, NULL, 10, N'phòng có đầy đủ tiện nghi', N'0123456789  ', N'phong002@gmail.com', CAST(N'2023-11-12' AS Date), N'Canhvd', CAST(N'2023-11-12' AS Date), N'Canhvd', N'5c71371e-634f-40d5-bdf5-70705cac4e63', N'Event', N'Phòng rất là đẹp nha ^^', 2, 2, 2, 1, 2)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 23/11/2023 17:03:56 CH ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 23/11/2023 17:03:56 CH ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 23/11/2023 17:03:56 CH ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 23/11/2023 17:03:56 CH ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 23/11/2023 17:03:56 CH ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 23/11/2023 17:03:56 CH ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 23/11/2023 17:03:56 CH ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Room_LocationId]    Script Date: 23/11/2023 17:03:56 CH ******/
CREATE NONCLUSTERED INDEX [IX_Room_LocationId] ON [dbo].[Room]
(
	[LocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Room] ADD  DEFAULT ('') FOR [LocationId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Room]  WITH CHECK ADD  CONSTRAINT [FK_Room_Location_LocationId] FOREIGN KEY([LocationId])
REFERENCES [dbo].[Location] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Room] CHECK CONSTRAINT [FK_Room_Location_LocationId]
GO
USE [master]
GO
ALTER DATABASE [HotelManager] SET  READ_WRITE 
GO
