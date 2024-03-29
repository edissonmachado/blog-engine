USE [master]
GO
/****** Object:  Database [BlogAuthentication]    Script Date: 10/28/2019 1:30:32 PM ******/
CREATE DATABASE [BlogAuthentication]
GO
ALTER DATABASE [BlogAuthentication] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BlogAuthentication] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BlogAuthentication] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BlogAuthentication] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BlogAuthentication] SET ARITHABORT OFF 
GO
ALTER DATABASE [BlogAuthentication] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [BlogAuthentication] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [BlogAuthentication] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BlogAuthentication] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BlogAuthentication] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BlogAuthentication] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BlogAuthentication] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BlogAuthentication] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BlogAuthentication] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BlogAuthentication] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BlogAuthentication] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BlogAuthentication] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BlogAuthentication] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BlogAuthentication] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BlogAuthentication] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BlogAuthentication] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BlogAuthentication] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [BlogAuthentication] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BlogAuthentication] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BlogAuthentication] SET  MULTI_USER 
GO
ALTER DATABASE [BlogAuthentication] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BlogAuthentication] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BlogAuthentication] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BlogAuthentication] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [BlogAuthentication]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 10/28/2019 1:30:32 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 10/28/2019 1:30:32 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 10/28/2019 1:30:32 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 10/28/2019 1:30:32 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 10/28/2019 1:30:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 10/28/2019 1:30:32 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 10/28/2019 1:30:32 PM ******/
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
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 10/28/2019 1:30:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'2.2.6-servicing-10079')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'076c8c02-0fff-4dcb-be73-f2eda9674865', N'Writer', N'WRITER', N'f73bcfdc-5a83-4c48-9dd9-93da9e8ed82c')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'2fb517c3-81ff-4db7-9560-294745133c4d', N'Approver', N'APPROVER', N'fa427597-43cd-4ceb-8665-be591dbf1a7c')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4c16d69a-338f-4c83-b1d0-f49d3c857ab2', N'076c8c02-0fff-4dcb-be73-f2eda9674865')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'807470ca-c8ed-4604-b0d1-041c2f5a3b53', N'2fb517c3-81ff-4db7-9560-294745133c4d')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'4c16d69a-338f-4c83-b1d0-f49d3c857ab2', N'User Writer', N'USER WRITER', N'user.writer@test.com', N'USER.WRITER@TEST.COM', 0, N'AQAAAAEAACcQAAAAEEk3V4jLiRs6v6Sq7PJ7vIFSdTGYzb74O9vVbbabseKGQY8G14Y+wgfmehxIA2wT2g==', N'MDRV24Q2DBJK3WH5CEI335CAKUEQDNV5', N'5a1df4be-6f04-4eee-a453-4aa3ed036343', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'3df6296a-6df2-433d-8764-63b6d303e230', N'User Other', N'USER OTHER', N'user.other@test.com', N'USER.OTHER@TEST.COM', 0, N'AQAAAAEAACcQAAAAEO3Y04ALA3bwxoPW1qqw4PhAQ+svZJJUM152TTFvGK/KCwd1vWstsFbd32d9jHkAbw==', N'EDJ2J7BTMQKZRSTUAMGYJA2AZVBT6UHL', N'd326e980-986a-4d8b-bfee-405bd63bd181', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'807470ca-c8ed-4604-b0d1-041c2f5a3b53', N'User Approver', N'USER APPROVER', N'user.approver@test.com', N'USER.APPROVER@TEST.COM', 0, N'AQAAAAEAACcQAAAAEM/1yYEhqFpxMuIYOBqrmksJ1ii+Bx3cUUireNBOHiCISmk3tCU/+uq1YKLKWR5pbQ==', N'WMAFQS2XX4UE7JAC2Z6TSF4OWGGJIMZM', N'a6ce3450-47b2-482e-a6fc-6b1766f1c58d', NULL, 0, 0, NULL, 1, 0)
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 10/28/2019 1:30:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 10/28/2019 1:30:32 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 10/28/2019 1:30:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 10/28/2019 1:30:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 10/28/2019 1:30:32 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [EmailIndex]    Script Date: 10/28/2019 1:30:32 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 10/28/2019 1:30:32 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
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
USE [master]
GO
ALTER DATABASE [BlogAuthentication] SET  READ_WRITE 
GO

USE [master]
GO
/****** Object:  Database [Blog]    Script Date: 10/28/2019 1:35:58 PM ******/
CREATE DATABASE [Blog]
GO
ALTER DATABASE [Blog] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Blog] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Blog] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Blog] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Blog] SET ARITHABORT OFF 
GO
ALTER DATABASE [Blog] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Blog] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Blog] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Blog] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Blog] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Blog] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Blog] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Blog] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Blog] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Blog] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Blog] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Blog] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Blog] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Blog] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Blog] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Blog] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Blog] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Blog] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Blog] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Blog] SET  MULTI_USER 
GO
ALTER DATABASE [Blog] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Blog] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Blog] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Blog] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Blog]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 10/28/2019 1:35:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Comment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AuthorName] [varchar](50) NOT NULL,
	[AuthorEmail] [varchar](50) NOT NULL,
	[Content] [text] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ParentPostId] [int] NOT NULL,
 CONSTRAINT [PK_Commet] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Post]    Script Date: 10/28/2019 1:35:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Post](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AuthorName] [varchar](50) NOT NULL,
	[Title] [varchar](255) NOT NULL,
	[Content] [text] NOT NULL,
	[LastChangedOn] [datetime] NOT NULL,
	[State] [tinyint] NOT NULL,
	[ApproverName] [varchar](50) NULL,
	[ApprovedOn] [datetime] NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Comment] ON 

USE [Blog]
GO
SET IDENTITY_INSERT [dbo].[Comment] ON 

GO
INSERT [dbo].[Comment] ([Id], [AuthorName], [AuthorEmail], [Content], [CreatedOn], [ParentPostId]) VALUES (1, N'User Other', N'user.other@test.com', N'Mauris sit amet sem ac ipsum dapibus rhoncus. Phasellus pulvinar sed mauris et mollis. Phasellus egestas non nulla in laoreet. Nunc efficitur justo non libero finibus porta. Morbi et ex et libero sagittis auctor.', CAST(N'2019-10-28 13:49:10.737' AS DateTime), 1)
GO
SET IDENTITY_INSERT [dbo].[Comment] OFF
GO
SET IDENTITY_INSERT [dbo].[Post] ON 

GO
INSERT [dbo].[Post] ([Id], [AuthorName], [Title], [Content], [LastChangedOn], [State], [ApproverName], [ApprovedOn]) VALUES (1, N'User Writer', N'First Test Post', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse condimentum enim quis mauris tincidunt tristique. In eget tristique orci. Nunc rutrum nunc eget hendrerit pharetra. Etiam ut leo urna. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Quisque dictum mattis odio, sit amet sodales odio posuere pulvinar. Donec interdum rutrum mauris, eget posuere lacus fringilla aliquet', CAST(N'2019-10-28 13:45:50.950' AS DateTime), 2, N'User Approver', CAST(N'2019-10-28 13:47:52.237' AS DateTime))
GO
INSERT [dbo].[Post] ([Id], [AuthorName], [Title], [Content], [LastChangedOn], [State], [ApproverName], [ApprovedOn]) VALUES (2, N'User Writer', N'Second Test Post', N'Mauris sit amet sem ac ipsum dapibus rhoncus. Phasellus pulvinar sed mauris et mollis. Phasellus egestas non nulla in laoreet. Nunc efficitur justo non libero finibus porta. Morbi et ex et libero sagittis auctor. Maecenas placerat magna eu nisi volutpat, quis mollis ante gravida. Etiam felis elit, porta ut convallis vel, ullamcorper vel elit. Ut velit lectus, semper eu augue a, aliquet consectetur nibh. Integer ac eleifend nibh. Nulla tincidunt, metus ac consectetur tempor, quam ante maximus est, a auctor nibh est quis magna. In id tincidunt sem, iaculis porttitor risus. Donec porttitor urna ac lectus ullamcorper rhoncus. Sed sodales lacus non rutrum venenatis. Donec euismod egestas nibh, eget ullamcorper justo posuere vel.', CAST(N'2019-10-28 13:46:20.840' AS DateTime), 0, NULL, NULL)
GO
INSERT [dbo].[Post] ([Id], [AuthorName], [Title], [Content], [LastChangedOn], [State], [ApproverName], [ApprovedOn]) VALUES (3, N'User Writer', N'Third Test Post', N'Sed diam enim, viverra eu felis non, mattis volutpat ligula. Sed non odio vitae magna pretium efficitur et eu mi. Nunc pellentesque, dui sit amet sodales aliquam, orci lectus maximus sem, nec sodales massa neque vitae purus. Ut vel turpis convallis, rutrum sapien et, laoreet massa. Proin nisl nisi, lobortis et tempus ullamcorper, consectetur sed arcu. Quisque nulla purus, tristique in fringilla sit amet, rutrum a dolor. Maecenas accumsan, enim ac ornare facilisis, arcu sapien faucibus tortor, tempus dignissim orci mi sit amet ligula. Phasellus fermentum augue ut tortor ornare lobortis. Duis ac sodales nunc, sed elementum metus. Praesent eros magna, volutpat eu aliquam ut, dapibus eget felis. Etiam sit amet metus odio. Proin non dolor ac nisl vestibulum interdum vel sit amet risus. Mauris nec ligula quam. Sed dictum sollicitudin purus, sagittis cursus felis feugiat ac. Curabitur feugiat non dui sed vehicula.', CAST(N'2019-10-28 13:47:06.947' AS DateTime), 1, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Post] OFF
GO

