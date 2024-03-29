USE [master]
GO
/****** Object:  Database [HotelManager]    Script Date: 06/02/2024 11:04:16 SA ******/
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
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 06/02/2024 11:04:16 SA ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 06/02/2024 11:04:16 SA ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 06/02/2024 11:04:16 SA ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 06/02/2024 11:04:16 SA ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 06/02/2024 11:04:16 SA ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 06/02/2024 11:04:16 SA ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 06/02/2024 11:04:16 SA ******/
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
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 06/02/2024 11:04:16 SA ******/
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
/****** Object:  Table [dbo].[Booking]    Script Date: 06/02/2024 11:04:16 SA ******/
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
/****** Object:  Table [dbo].[Comment]    Script Date: 06/02/2024 11:04:16 SA ******/
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
	[Rating] [int] NULL,
	[Like] [int] NOT NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 06/02/2024 11:04:16 SA ******/
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
/****** Object:  Table [dbo].[Room]    Script Date: 06/02/2024 11:04:16 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[Id] [char](36) NOT NULL,
	[RoomName] [nvarchar](50) NOT NULL,
	[Price] [int] NOT NULL,
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
	[IsActive] [bit] NOT NULL,
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
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231124031352_Update table room', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231128064623_NameMigration', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231130094312_UpdateTableComment', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231201065641_UpdateTableComment2', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231218023304_updatetableroom3', N'5.0.17')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'268e6ce9-d7c1-41d6-8ef0-bf65f11c7d93', N'Admin', N'Admin', N'1')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'5cbf1e71-7e63-47c2-9f2b-0ca1dc98009f', N'User', N'User', N'2')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'9fc0a7be-27b0-455c-ba5c-287b061da2d1', N'Boss', N'Boss', N'3')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5a292e83-ad84-4a4c-a222-9eda68f58476', N'5cbf1e71-7e63-47c2-9f2b-0ca1dc98009f')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a5c8379d-3c39-423a-ac3c-0d89e220361e', N'5cbf1e71-7e63-47c2-9f2b-0ca1dc98009f')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Avatar], [FullName], [Note]) VALUES (N'5a292e83-ad84-4a4c-a222-9eda68f58476', N'duccanhbg2k1@gmail.com', N'DUCCANHBG2K1@GMAIL.COM', N'duccanhbg2k1@gmail.com', N'DUCCANHBG2K1@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEJzgce5CNCf0rFZ4laJ8HlYgcybBJn263LdHguWdf+AIeYhWNO6GzHtpRMPBdqnmfg==', N'ANLJV5S4NVZJG3QMFNYYZTGIAJWUG5XC', N'a7561066-efe1-4928-a41d-507e43f90763', N'0123456789', 0, 0, NULL, 1, 0, NULL, N'mạc phàm', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Avatar], [FullName], [Note]) VALUES (N'a5c8379d-3c39-423a-ac3c-0d89e220361e', N'macpham2k1@gmail.com', N'MACPHAM2K1@GMAIL.COM', N'macpham2k1@gmail.com', N'MACPHAM2K1@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAECXrH+eicz4wOrT00VY9PvnEvHPR1RhygFkkGQH3fxkHOcv6oNzIPBKsPw6gYLAPQg==', N'4SGUITGCXXLWIMQJ7ERVQCR376MLOIRK', N'b11b478a-0c06-40bf-a0d0-dd459782aec6', N'0123456789', 0, 0, NULL, 1, 0, N'https://localhost:44356/images\sung jin woo.jpg', N'mạc phàm', N'nice and strong')
GO
INSERT [dbo].[Booking] ([Id], [RoomId], [EmailUser], [BookingDate], [EndDate], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Note]) VALUES (N'29c2163e-fa6b-4104-973b-5e6636bbabc5', N'b9daebd3-c1c5-486a-b3e0-d83cb9fa2cad', N'macpham2k1@gmail.com', CAST(N'2023-11-23' AS Date), CAST(N'2023-11-25' AS Date), CAST(N'2023-11-23' AS Date), N'Canhvd', CAST(N'2023-11-23' AS Date), N'Canhvd', N'string')
INSERT [dbo].[Booking] ([Id], [RoomId], [EmailUser], [BookingDate], [EndDate], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [Note]) VALUES (N'71b44dfd-d61a-438f-bfb3-c9c26b9bde91', N'b9daebd3-c1c5-486a-b3e0-d83cb9fa2cad', N'macpham2k1@gmail.com', NULL, NULL, CAST(N'2023-11-24' AS Date), N'Canhvd', CAST(N'2023-11-24' AS Date), N'Canhvd', NULL)
GO
INSERT [dbo].[Comment] ([Id], [RoomId], [UserId], [Content], [CreateDate], [Active], [Rating], [Like]) VALUES (N'075AA86B-185E-402E-8422-4340725B2929', N'2a5caa01-fa80-42ad-8f43-34bf93a96ea7', N'a5c8379d-3c39-423a-ac3c-0d89e220361e', N'ok', CAST(N'2023-12-01' AS Date), 1, NULL, 5)
INSERT [dbo].[Comment] ([Id], [RoomId], [UserId], [Content], [CreateDate], [Active], [Rating], [Like]) VALUES (N'3b9bc313-0f80-4625-acd0-4141ded9efc5', N'b9daebd3-c1c5-486a-b3e0-d83cb9fa2cad', N'a5c8379d-3c39-423a-ac3c-0d89e220361e', N'phòng vip nha', CAST(N'2023-12-01' AS Date), 1, NULL, 0)
INSERT [dbo].[Comment] ([Id], [RoomId], [UserId], [Content], [CreateDate], [Active], [Rating], [Like]) VALUES (N'4bc54f5a-2803-46b1-a5ad-d34ed7f2a783', N'b9daebd3-c1c5-486a-b3e0-d83cb9fa2cad', N'a5c8379d-3c39-423a-ac3c-0d89e220361e', N'Phòng rất ok nha mn', CAST(N'2023-12-01' AS Date), 1, NULL, 0)
INSERT [dbo].[Comment] ([Id], [RoomId], [UserId], [Content], [CreateDate], [Active], [Rating], [Like]) VALUES (N'5225EEB7-2A0C-450F-A04F-6A179285EB2D', N'2a5caa01-fa80-42ad-8f43-34bf93a96ea7', N'a5c8379d-3c39-423a-ac3c-0d89e220361e', N'aaaaa', CAST(N'2023-12-01' AS Date), 1, NULL, 0)
INSERT [dbo].[Comment] ([Id], [RoomId], [UserId], [Content], [CreateDate], [Active], [Rating], [Like]) VALUES (N'7344d712-9b98-4b73-aa82-2827f54ba4a9', N'd0bfbbb9-86a9-4b6d-8f57-a69331d25df3', N'a5c8379d-3c39-423a-ac3c-0d89e220361e', N'phòng đẹp', CAST(N'2023-12-04' AS Date), 1, NULL, 1)
INSERT [dbo].[Comment] ([Id], [RoomId], [UserId], [Content], [CreateDate], [Active], [Rating], [Like]) VALUES (N'9de2038f-22dc-4589-ba75-2f5d7a4d61c3', N'd0bfbbb9-86a9-4b6d-8f57-a69331d25df3', N'a5c8379d-3c39-423a-ac3c-0d89e220361e', N'phòng có máy lạnh', CAST(N'2023-12-04' AS Date), 1, NULL, 0)
INSERT [dbo].[Comment] ([Id], [RoomId], [UserId], [Content], [CreateDate], [Active], [Rating], [Like]) VALUES (N'a7d295b4-9454-486e-bd31-a25519b81c19', N'd0bfbbb9-86a9-4b6d-8f57-a69331d25df3', N'a5c8379d-3c39-423a-ac3c-0d89e220361e', N'ok', CAST(N'2023-12-04' AS Date), 1, NULL, 1)
INSERT [dbo].[Comment] ([Id], [RoomId], [UserId], [Content], [CreateDate], [Active], [Rating], [Like]) VALUES (N'B5C1C1EE-FF9E-41D7-8059-4EBB073245CA', N'2a5caa01-fa80-42ad-8f43-34bf93a96ea7', N'a5c8379d-3c39-423a-ac3c-0d89e220361e', N'phòng đẹp nha', CAST(N'2023-12-01' AS Date), 1, NULL, 0)
INSERT [dbo].[Comment] ([Id], [RoomId], [UserId], [Content], [CreateDate], [Active], [Rating], [Like]) VALUES (N'd6797dbe-d4a4-41c8-b062-65f25108c680', N'b9daebd3-c1c5-486a-b3e0-d83cb9fa2cad', N'a5c8379d-3c39-423a-ac3c-0d89e220361e', N'ok', CAST(N'2023-12-01' AS Date), 1, NULL, 0)
INSERT [dbo].[Comment] ([Id], [RoomId], [UserId], [Content], [CreateDate], [Active], [Rating], [Like]) VALUES (N'e381515d-67e7-4395-8095-3c605417a753', N'2a5caa01-fa80-42ad-8f43-34bf93a96ea7', N'a5c8379d-3c39-423a-ac3c-0d89e220361e', N'Phòng rất ok nha mn', CAST(N'2023-12-01' AS Date), 1, NULL, 0)
INSERT [dbo].[Comment] ([Id], [RoomId], [UserId], [Content], [CreateDate], [Active], [Rating], [Like]) VALUES (N'ea6e2e1d-4b52-4bdc-b4fb-6b6e5d255845', N'2a5caa01-fa80-42ad-8f43-34bf93a96ea7', N'a5c8379d-3c39-423a-ac3c-0d89e220361e', N'Phòng rất ok nha mn ^^', CAST(N'2023-12-01' AS Date), 1, NULL, 0)
INSERT [dbo].[Comment] ([Id], [RoomId], [UserId], [Content], [CreateDate], [Active], [Rating], [Like]) VALUES (N'string                              ', N'2a5caa01-fa80-42ad-8f43-34bf93a96ea7', N'a5c8379d-3c39-423a-ac3c-0d89e220361e', N'Phong ok', CAST(N'2023-12-01' AS Date), 1, 0, 0)
GO
INSERT [dbo].[Location] ([Id], [LocationName], [Views], [Decription], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [District], [Country]) VALUES (N'543198ab-354e-4e1a-8bdb-d998999f2fae', N'Bắc Giang', 10, N'98 Bắc Giang', CAST(N'2023-10-21' AS Date), N'canhvd', CAST(N'2023-10-21' AS Date), N'canhvd', N'Lạng Giang', N'Việt Nam')
INSERT [dbo].[Location] ([Id], [LocationName], [Views], [Decription], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [District], [Country]) VALUES (N'5c71371e-634f-40d5-bdf5-70705cac4e63', N'Hà Nội', 10, N'Hà Nội hay Hà Lội :))', CAST(N'2023-11-11' AS Date), N'CanhVD', CAST(N'2023-11-11' AS Date), N'CanhVD', N'Thanh Xuân', N'Việt Nam')
INSERT [dbo].[Location] ([Id], [LocationName], [Views], [Decription], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [District], [Country]) VALUES (N'cf326800-1c2d-4ea5-bd9a-877a498b3fb5', N'string', 0, N'string', CAST(N'2023-11-14' AS Date), N'CanhVD', CAST(N'2023-11-14' AS Date), N'CanhVD', N'string', N'string')
GO
INSERT [dbo].[Room] ([Id], [RoomName], [Price], [Views], [Image], [BookingDate], [EndDate], [Favorite], [Amenities], [RoomPhoneNumber], [RoomEmail], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [LocationId], [Tag], [Description], [Guests], [Bedroom], [Bath], [Bed], [QuantityRoom], [IsActive]) VALUES (N'2a5caa01-fa80-42ad-8f43-34bf93a96ea7', N'Khách sạn 005', 20, 10, N'https://travelfilm.vn/wp-content/uploads/2022/12/Hotel.jpg', NULL, NULL, 10, N'Phòng có bể bơi cực to', N'0123456789  ', N'phòng005@gmail.com', CAST(N'2023-11-12' AS Date), N'Canhvd', CAST(N'2023-11-12' AS Date), N'Canhvd', N'543198ab-354e-4e1a-8bdb-d998999f2fae', N'New', N'Phòng hiện đại và phong cách', 2, 2, 2, 1, 2, 1)
INSERT [dbo].[Room] ([Id], [RoomName], [Price], [Views], [Image], [BookingDate], [EndDate], [Favorite], [Amenities], [RoomPhoneNumber], [RoomEmail], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [LocationId], [Tag], [Description], [Guests], [Bedroom], [Bath], [Bed], [QuantityRoom], [IsActive]) VALUES (N'b9daebd3-c1c5-486a-b3e0-d83cb9fa2cad', N'Khách sạn 001', 30, 17, N'https://sbshouse.vn/wp-content/uploads/2022/01/nha-4-tang-dep-5.jpg', CAST(N'2023-10-21' AS Date), CAST(N'2023-10-21' AS Date), 10, N'bể bơi rộng, có phòng xông hơi, ban công thoáng mát', N'0123456789  ', N'phong001@gmail.com', CAST(N'2023-10-21' AS Date), N'canhvd', CAST(N'2023-10-21' AS Date), N'canhvd', N'543198ab-354e-4e1a-8bdb-d998999f2fae', N'Events', N'Phòng rất là đẹp nha ^^', 2, 2, 1, 1, 2, 1)
INSERT [dbo].[Room] ([Id], [RoomName], [Price], [Views], [Image], [BookingDate], [EndDate], [Favorite], [Amenities], [RoomPhoneNumber], [RoomEmail], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [LocationId], [Tag], [Description], [Guests], [Bedroom], [Bath], [Bed], [QuantityRoom], [IsActive]) VALUES (N'd0bfbbb9-86a9-4b6d-8f57-a69331d25df3', N'Khách sạn 003', 40, 10, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ08nnkjihn_srlcOyZJzZWL2jwOBr-QcZo_w&usqp=CAU', NULL, NULL, 10, N'Phòng có đầy đủ tiện nghi', N'0123456789  ', N'phong003@gmail.com', CAST(N'2023-11-12' AS Date), N'Canhvd', CAST(N'2023-11-12' AS Date), N'Canhvd', N'543198ab-354e-4e1a-8bdb-d998999f2fae', N'Event', N'Phòng rất là đẹp nha ^^', 2, 2, 2, 1, 2, 1)
INSERT [dbo].[Room] ([Id], [RoomName], [Price], [Views], [Image], [BookingDate], [EndDate], [Favorite], [Amenities], [RoomPhoneNumber], [RoomEmail], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [LocationId], [Tag], [Description], [Guests], [Bedroom], [Bath], [Bed], [QuantityRoom], [IsActive]) VALUES (N'd1199cc4-db43-41d4-84d0-27ce1032764a', N'Khách sạn 002', 50, 10, N'https://www.nhaban.vn/media.nb/layout_domain_resources/2/files/nb-cb961a66e949975dde768ae660a28ecc.jpg', NULL, NULL, 10, N'phòng có đầy đủ tiện nghi', N'0123456789  ', N'phong002@gmail.com', CAST(N'2023-11-12' AS Date), N'Canhvd', CAST(N'2023-11-12' AS Date), N'Canhvd', N'5c71371e-634f-40d5-bdf5-70705cac4e63', N'Event', N'Phòng rất là đẹp nha ^^', 2, 2, 2, 1, 2, 1)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 06/02/2024 11:04:16 SA ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 06/02/2024 11:04:16 SA ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 06/02/2024 11:04:16 SA ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 06/02/2024 11:04:16 SA ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 06/02/2024 11:04:16 SA ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 06/02/2024 11:04:16 SA ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 06/02/2024 11:04:16 SA ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Comment_UserId]    Script Date: 06/02/2024 11:04:16 SA ******/
CREATE NONCLUSTERED INDEX [IX_Comment_UserId] ON [dbo].[Comment]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Room_LocationId]    Script Date: 06/02/2024 11:04:16 SA ******/
CREATE NONCLUSTERED INDEX [IX_Room_LocationId] ON [dbo].[Room]
(
	[LocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Comment] ADD  DEFAULT ((0)) FOR [Like]
GO
ALTER TABLE [dbo].[Room] ADD  DEFAULT ('') FOR [LocationId]
GO
ALTER TABLE [dbo].[Room] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsActive]
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
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_AspNetUsers_UserId]
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
